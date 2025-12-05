# Simple Markdown to HTML Converter for Archaeobytology Textbook

Write-Host "Converting Markdown files to HTML..." -ForegroundColor Cyan

# Get all markdown files
$files = Get-ChildItem -Filter "TEXTBOOK-*.md" | Sort-Object Name
Write-Host "Found $($files.Count) files" -ForegroundColor Green

$converted = 0

foreach ($file in $files) {
    Write-Host "Processing: $($file.Name)" -ForegroundColor Yellow
    
    # Read content
    $markdown = Get-Content $file.FullName -Raw -Encoding UTF8
    
    # Remove horizontal rules first (before any other processing)
    $markdown = $markdown -replace '(?m)^\s*---\s*$', ''
    $markdown = $markdown -replace '(?m)^\s*\*\*\*\s*$', ''
    $markdown = $markdown -replace '(?m)^\s*___\s*$', ''
    
    # Extract title (first # heading)
    $title = "Archaeobytology"
    if ($markdown -match '(?m)^# (.+)$') {
        $title = $matches[1]
    }
    
    # Basic markdown to HTML conversion
    $html = $markdown
    
    # Headers
    $html = $html -replace '(?m)^###### (.+)$', '<h6>$1</h6>'
    $html = $html -replace '(?m)^##### (.+)$', '<h5>$1</h5>'
    $html = $html -replace '(?m)^#### (.+)$', '<h4>$1</h4>'
    $html = $html -replace '(?m)^### (.+)$', '<h3>$1</h3>'
    $html = $html -replace '(?m)^## (.+)$', '<h2>$1</h2>'
    $html = $html -replace '(?m)^# (.+)$', '<h1>$1</h1>'
    
    # Bold and italic
    $html = $html -replace '\*\*\*(.+?)\*\*\*', '<strong><em>$1</em></strong>'
    $html = $html -replace '\*\*(.+?)\*\*', '<strong>$1</strong>'
    $html = $html -replace '\*([^\*]+?)\*', '<em>$1</em>'
    
    # Links
    $html = $html -replace '\[([^\]]+)\]\(([^\)]+)\)', '<a href="$2">$1</a>'
    
    # Code
    $html = $html -replace '`([^`]+)`', '<code>$1</code>'
    
    # Blockquotes
    $html = $html -replace '(?m)^> (.+)$', '<blockquote>$1</blockquote>'
    
    # Wrap in paragraphs (simple approach)
    $lines = $html -split "`r?`n"
    $result = @()
    $inPara = $false
    
    foreach ($line in $lines) {
        $trimmed = $line.Trim()
        if ($trimmed -match '^<(h[1-6]|blockquote|hr|ul|ol|li)') {
            if ($inPara) {
                $result += '</p>'
                $inPara = $false
            }
            $result += $line
        }
        elseif ($trimmed -eq '') {
            if ($inPara) {
                $result += '</p>'
                $inPara = $false
            }
            $result += ''
        }
        else {
            if (-not $inPara) {
                $result += '<p>'
                $inPara = $true
            }
            $result += $line
        }
    }
    if ($inPara) {
        $result += '</p>'
    }
    
    $htmlContent = $result -join "`n"
    
    # Create full HTML page
    $fullPage = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$title | Archaeobytology</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&family=Lora:ital,wght@0,400;0,600;1,400&display=swap" rel="stylesheet">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Lora', serif; line-height: 1.8; color: #2E2E2E; background: #F8F7F4; padding: 2rem 1rem; }
        .container { max-width: 800px; margin: 0 auto; background: #FFFFFF; padding: 3rem; border-radius: 15px; box-shadow: 0 4px 20px rgba(46,46,46,0.1); border: 1px solid #D1D1D1; }
        h1, h2, h3, h4, h5, h6 { font-family: 'Inter', sans-serif; color: #2E2E2E; margin-top: 2rem; margin-bottom: 1rem; line-height: 1.3; }
        h1 { font-size: 2.5rem; font-weight: 700; margin-top: 0; border-bottom: 3px solid #A1824A; padding-bottom: 0.5rem; }
        h2 { font-size: 2rem; font-weight: 700; margin-top: 2.5rem; }
        h3 { font-size: 1.5rem; font-weight: 600; color: #5A7D8C; }
        h4 { font-size: 1.25rem; font-weight: 600; color: #5A7D8C; }
        p { margin-bottom: 1.25rem; font-size: 1.1rem; }
        a { color: #A93400; text-decoration: underline; transition: color 0.3s; }
        a:hover { color: #A95C3D; }
        strong { font-weight: 600; }
        em { font-style: italic; }
        code { font-family: 'Courier New', monospace; background: #F8F7F4; padding: 0.2rem 0.4rem; border-radius: 3px; border: 1px solid #D1D1D1; }
        blockquote { border-left: 4px solid #A1824A; padding: 1rem 1.5rem; margin: 1.5rem 0; font-style: italic; color: #5A7D8C; background: #F8F7F4; border-radius: 0 8px 8px 0; }
        hr { border: none; border-top: 2px solid #D1D1D1; margin: 2rem 0; }
        .nav { text-align: center; padding: 1rem 0; border-top: 2px solid #D1D1D1; margin-top: 2rem; }
        .nav a { display: inline-block; padding: 0.75rem 1.5rem; background: #A93400; color: #F8F7F4; text-decoration: none; border-radius: 8px; font-family: 'Inter', sans-serif; font-weight: 600; margin: 0.5rem; }
        .nav a:hover { background: #A95C3D; }
    </style>
</head>
<body>
    <div class="container">
        <article>
$htmlContent
        </article>
        <div class="nav">
            <a href="index.html">Back to Table of Contents</a>
        </div>
    </div>
</body>
</html>
"@
    
    # Save HTML file
    $htmlFile = $file.Name -replace '\.md$', '.html'
    [System.IO.File]::WriteAllText((Join-Path $PWD $htmlFile), $fullPage, [System.Text.Encoding]::UTF8)
    
    Write-Host "  Created: $htmlFile" -ForegroundColor Green
    $converted++
}

Write-Host ""
Write-Host "✅ Converted $converted files successfully!" -ForegroundColor Green
Write-Host "Open textbook.html in a browser to start reading" -ForegroundColor Cyan
