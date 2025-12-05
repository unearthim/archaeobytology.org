# Archaeobytology Textbook Markdown to HTML Converter
# Converts all TEXTBOOK-*.md files to styled HTML pages

# Function to convert basic Markdown to HTML
function ConvertFrom-BasicMarkdown {
    param([string]$markdown)
    
    $html = $markdown
    
    # Convert headers (must be done in order from h6 to h1 to avoid conflicts)
    $html = $html -replace '(?m)^###### (.+)$', '<h6>$1</h6>'
    $html = $html -replace '(?m)^##### (.+)$', '<h5>$1</h5>'
    $html = $html -replace '(?m)^#### (.+)$', '<h4>$1</h4>'
    $html = $html -replace '(?m)^### (.+)$', '<h3>$1</h3>'
    $html = $html -replace '(?m)^## (.+)$', '<h2>$1</h2>'
    $html = $html -replace '(?m)^# (.+)$', '<h1>$1</h1>'
    
    # Convert bold and italic
    $html = $html -replace '\*\*\*(.+?)\*\*\*', '<strong><em>$1</em></strong>'
    $html = $html -replace '\*\*(.+?)\*\*', '<strong>$1</strong>'
    $html = $html -replace '\*(.+?)\*', '<em>$1</em>'
    $html = $html -replace '___(.+?)___', '<strong><em>$1</em></strong>'
    $html = $html -replace '__(.+?)__', '<strong>$1</strong>'
    $html = $html -replace '_(.+?)_', '<em>$1</em>'
    
    # Convert links
    $html = $html -replace '\[([^\]]+)\]\(([^\)]+)\)', '<a href="$2">$1</a>'
    
    # Convert inline code
    $html = $html -replace '`([^`]+)`', '<code>$1</code>'
    
    # Convert blockquotes (lines starting with >)
    $html = $html -replace '(?m)^> (.+)$', '<blockquote>$1</blockquote>'
    
    # Convert horizontal rules
    $html = $html -replace '(?m)^---$', '<hr>'
    $html = $html -replace '(?m)^___$', '<hr>'
    $html = $html -replace '(?m)^\*\*\*$', '<hr>'
    
    # Convert unordered lists (basic - lines starting with - or *)
    $lines = $html -split "`n"
    $inList = $false
    $result = @()
    
    foreach ($line in $lines) {
        if ($line -match '^[\-\*] (.+)$') {
            if (-not $inList) {
                $result += '<ul>'
                $inList = $true
            }
            $result += "  <li>$($matches[1])</li>"
        }
        elseif ($line -match '^\d+\. (.+)$') {
            if (-not $inList) {
                $result += '<ol>'
                $inList = $true
            }
            $result += "  <li>$($matches[1])</li>"
        }
        else {
            if ($inList) {
                # Close the list
                if ($result[-1] -match '<li>') {
                    $result += '</ul>'
                }
                else {
                    $result += '</ol>'
                }
                $inList = $false
            }
            $result += $line
        }
    }
    
    if ($inList) {
        $result += '</ul>'
    }
    
    $html = $result -join "`n"
    
    # Convert paragraphs (lines with content not already in tags)
    $lines = $html -split "`n"
    $result = @()
    $inParagraph = $false
    
    foreach ($line in $lines) {
        $trimmed = $line.Trim()
        
        # Skip if already a tag or empty
        if ($trimmed -eq '' -or $trimmed -match '^<[^>]+>') {
            if ($inParagraph) {
                $result += '</p>'
                $inParagraph = $false
            }
            $result += $line
        }
        else {
            if (-not $inParagraph) {
                $result += '<p>'
                $inParagraph = $true
            }
            $result += $line
        }
    }
    
    if ($inParagraph) {
        $result += '</p>'
    }
    
    return $result -join "`n"
}

# Function to extract title from markdown (first # heading)
function Get-MarkdownTitle {
    param([string]$markdown)
    
    if ($markdown -match '(?m)^# (.+)$') {
        return $matches[1]
    }
    return "Archaeobytology Chapter"
}

# Function to generate HTML page
function New-HTMLPage {
    param(
        [string]$title,
        [string]$content,
        [string]$prevLink = "",
        [string]$prevTitle = "",
        [string]$nextLink = "",
        [string]$nextTitle = ""
    )
    
    $navHtml = ""
    if ($prevLink -or $nextLink) {
        $navHtml = @"
        <nav class="chapter-nav">
            <div class="nav-left">
$(if ($prevLink) { "                <a href=`"$prevLink`" class=`"nav-btn`">← Previous: $prevTitle</a>" } else { "" })
            </div>
            <div class="nav-center">
                <a href="textbook.html" class="nav-btn nav-home">📚 Table of Contents</a>
            </div>
            <div class="nav-right">
$(if ($nextLink) { "                <a href=`"$nextLink`" class=`"nav-btn`">Next: $nextTitle →</a>" } else { "" })
            </div>
        </nav>
"@
    }
    
    return @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="$title - Archaeobytology Textbook">
    <title>$title | Archaeobytology</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&family=Lora:ital,wght@0,400;0,600;1,400&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Lora', serif;
            line-height: 1.8;
            color: #2E2E2E;
            background: #F8F7F4;
            padding: 2rem 1rem;
        }
        
        .container {
            max-width: 800px;
            margin: 0 auto;
            background: #FFFFFF;
            padding: 3rem;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(46, 46, 46, 0.1);
            border: 1px solid #D1D1D1;
        }
        
        h1, h2, h3, h4, h5, h6 {
            font-family: 'Inter', sans-serif;
            color: #A93400;
            margin-top: 2rem;
            margin-bottom: 1rem;
            line-height: 1.3;
        }
        
        h1 {
            font-size: 2.5rem;
            font-weight: 700;
            color: #A93400;
            margin-top: 0;
            border-bottom: 3px solid #A1824A;
            padding-bottom: 0.5rem;
        }
        
        h2 {
            font-size: 2rem;
            font-weight: 700;
            color: #A93400;
            margin-top: 2.5rem;
        }
        
        h3 {
            font-size: 1.5rem;
            font-weight: 600;
            color: #5A7D8C;
        }
        
        h4 {
            font-size: 1.25rem;
            font-weight: 600;
            color: #5A7D8C;
        }
        
        h5, h6 {
            font-size: 1.1rem;
            font-weight: 600;
            color: #8E8E8E;
        }
        
        p {
            margin-bottom: 1.25rem;
            font-size: 1.1rem;
        }
        
        a {
            color: #A93400;
            text-decoration: underline;
            transition: color 0.3s ease;
        }
        
        a:hover {
            color: #A95C3D;
        }
        
        strong {
            font-weight: 600;
            color: #2E2E2E;
        }
        
        em {
            font-style: italic;
        }
        
        code {
            font-family: 'Courier New', monospace;
            background: #F8F7F4;
            padding: 0.2rem 0.4rem;
            border-radius: 3px;
            font-size: 0.95em;
            border: 1px solid #D1D1D1;
        }
        
        blockquote {
            border-left: 4px solid #A1824A;
            padding-left: 1.5rem;
            margin: 1.5rem 0;
            font-style: italic;
            color: #5A7D8C;
            background: #F8F7F4;
            padding: 1rem 1.5rem;
            border-radius: 0 8px 8px 0;
        }
        
        ul, ol {
            margin: 1.25rem 0 1.25rem 2rem;
        }
        
        li {
            margin-bottom: 0.75rem;
            font-size: 1.1rem;
        }
        
        hr {
            border: none;
            border-top: 2px solid #D1D1D1;
            margin: 2rem 0;
        }
        
        .chapter-nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 1rem;
            margin-bottom: 2rem;
            padding-bottom: 2rem;
            border-bottom: 2px solid #D1D1D1;
            flex-wrap: wrap;
        }
        
        .nav-left, .nav-right {
            flex: 1;
            min-width: 200px;
        }
        
        .nav-right {
            text-align: right;
        }
        
        .nav-center {
            flex: 0 0 auto;
        }
        
        .nav-btn {
            font-family: 'Inter', sans-serif;
            display: inline-block;
            padding: 0.75rem 1.25rem;
            background: #A93400;
            color: #F8F7F4;
            text-decoration: none;
            border-radius: 8px;
            font-weight: 600;
            font-size: 0.95rem;
            transition: background 0.3s ease, transform 0.2s ease;
            border: 2px solid #A95C3D;
        }
        
        .nav-btn:hover {
            background: #A95C3D;
            transform: translateY(-2px);
        }
        
        .nav-home {
            background: #5A7D8C;
            border-color: #5A7D8C;
        }
        
        .nav-home:hover {
            background: #4A6D7C;
        }
        
        footer {
            margin-top: 3rem;
            padding-top: 2rem;
            border-top: 2px solid #D1D1D1;
            text-align: center;
            color: #8E8E8E;
            font-size: 0.9rem;
        }
        
        footer a {
            color: #A93400;
        }
        
        @media (max-width: 768px) {
            body {
                padding: 1rem 0.5rem;
            }
            
            .container {
                padding: 1.5rem;
            }
            
            h1 {
                font-size: 2rem;
            }
            
            h2 {
                font-size: 1.5rem;
            }
            
            .chapter-nav {
                flex-direction: column;
            }
            
            .nav-left, .nav-right {
                width: 100%;
                text-align: center;
            }
            
            .nav-btn {
                display: block;
                margin: 0.5rem 0;
            }
        }
    </style>
</head>
<body>
    <div class="container">
$navHtml
        
        <article class="chapter-content">
$content
        </article>
        
$navHtml
        
        <footer>
            <p>&copy; 2025 Archaeobytology Project | <a href="https://archaeobytology.org">archaeobytology.org</a></p>
            <p>Licensed under Creative Commons BY-SA 4.0</p>
        </footer>
    </div>
</body>
</html>
"@
}

# Main conversion logic
Write-Host "🔨 Archaeobytology Markdown to HTML Converter" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# Get all TEXTBOOK markdown files
$mdFiles = Get-ChildItem -Filter "TEXTBOOK-*.md" | Sort-Object Name

if ($mdFiles.Count -eq 0) {
    Write-Host "❌ No TEXTBOOK-*.md files found in current directory" -ForegroundColor Red
    exit 1
}

Write-Host "📚 Found $($mdFiles.Count) markdown files to convert" -ForegroundColor Green
Write-Host ""

# Create a mapping of files for navigation
$fileMap = @()
foreach ($file in $mdFiles) {
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    $title = Get-MarkdownTitle -markdown $content
    $htmlFileName = $file.Name -replace '\.md$', '.html'
    
    $fileMap += @{
        MdFile = $file.Name
        HtmlFile = $htmlFileName
        Title = $title
        Content = $content
    }
}

# Convert each file
for ($i = 0; $i -lt $fileMap.Count; $i++) {
    $current = $fileMap[$i]
    $prev = if ($i -gt 0) { $fileMap[$i-1] } else { $null }
    $next = if ($i -lt $fileMap.Count - 1) { $fileMap[$i+1] } else { $null }
    
    Write-Host "Converting: $($current.MdFile)" -ForegroundColor Yellow
    Write-Host "  Title: $($current.Title)" -ForegroundColor Gray
    
    # Convert markdown to HTML
    $htmlContent = ConvertFrom-BasicMarkdown -markdown $current.Content
    
    # Generate full HTML page
    $fullHtml = New-HTMLPage `
        -title $current.Title `
        -content $htmlContent `
        -prevLink $(if ($prev) { $prev.HtmlFile } else { "" }) `
        -prevTitle $(if ($prev) { $prev.Title } else { "" }) `
        -nextLink $(if ($next) { $next.HtmlFile } else { "" }) `
        -nextTitle $(if ($next) { $next.Title } else { "" })
    
    # Write to file
    $fullHtml | Out-File -FilePath $current.HtmlFile -Encoding UTF8
    
    Write-Host "  ✅ Created: $($current.HtmlFile)" -ForegroundColor Green
    Write-Host ""
}

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "✨ Conversion complete! Created $($fileMap.Count) HTML files" -ForegroundColor Green
Write-Host ""
Write-Host "Open textbook.html to start reading!" -ForegroundColor Cyan
