# Chapter 8: Digital Forensics for Archaeobytologists

---

## Opening: The Crime Scene Is Digital

In 2019, a hard drive arrived at the Internet Archive. It had been recovered from a dumpster behind a defunct web hosting company. The company had gone bankrupt, its servers sold for scrap, its customer data—thousands of personal websites from the early 2000s—abandoned.

The hard drive was physically intact but logically corrupted. The file system was damaged. File names were mangled or missing. Timestamps were wrong. Some files were partially overwritten with random data. But somewhere in those magnetic sectors were websites that existed nowhere else—personal blogs, family photos, amateur art portfolios. Digital artifacts on the verge of permanent loss.

This required **digital forensics**: the practice of recovering, analyzing, and authenticating digital evidence from damaged, deleted, or deliberately obscured sources.

Digital forensics emerged from law enforcement (recovering deleted files from criminals' computers) and IT security (analyzing malware, investigating breaches). But Archaeobytologists need these same skills for different purposes:

- **Recovering deleted content** (when users or platforms erase artifacts)
- **Analyzing corrupted files** (bit rot, damaged storage media)
- **Authenticating artifacts** (proving a file is what it claims to be)
- **Extracting hidden data** (metadata, version histories, deleted revisions)
- **Reverse engineering formats** (when documentation is lost)

Unlike law enforcement, we're not building criminal cases. Unlike IT security, we're not defending against attacks. We're **rescuing cultural artifacts from technological decay**.

This chapter teaches digital forensics adapted for Archaeobytological practice. You'll learn:

- File system analysis and data recovery
- Metadata extraction and interpretation
- Format identification and conversion
- Authenticity verification and chain of custody
- Emulation and compatibility layers
- Ethical boundaries (when forensics becomes invasion)

By the end, you'll be able to take a corrupted hard drive, deleted website, or mysterious file format and systematically extract whatever cultural value remains.

---

## Part I: Foundations of Digital Forensics

### The Digital Artifact as Evidence

Physical artifacts are tangible—you can touch a clay pot, examine it with eyes and hands. Digital artifacts are **abstract**—they're electromagnetic patterns interpreted by software.

This abstraction creates both challenges and opportunities:

**Challenges:**
- **Fragility**: Flip one bit, and an entire file becomes unreadable
- **Dependency**: Files require specific software to interpret (a .doc file is meaningless without Word or a compatible reader)
- **Mutability**: Digital files can be silently altered (no visible wear like on physical objects)
- **Ephemerality**: Storage media degrades (magnetic fields fade, flash memory loses charge)

**Opportunities:**
- **Perfect copying**: Digital files can be duplicated without loss (unlike physical artifacts)
- **Deep analysis**: Can examine file structure bit-by-bit (like x-raying a painting)
- **Metadata richness**: Digital files carry embedded information (creation date, author, edit history)
- **Automated processing**: Can analyze thousands of files programmatically (impossible with physical artifacts)

### The Forensic Workflow

Digital forensics follows a systematic process:

**1. Acquisition** (get a copy without altering the original)
**2. Preservation** (create forensic images, maintain chain of custody)
**3. Analysis** (examine the data, extract information)
**4. Documentation** (record findings, methods, provenance)
**5. Presentation** (make findings accessible to non-technical audiences)

This workflow ensures:
- **Integrity**: Original evidence isn't contaminated
- **Reproducibility**: Others can verify your findings
- **Transparency**: Methods are documented
- **Legal defensibility**: Even though we're not in court, rigorous methods build credibility

---

## Part II: File System Forensics — Finding the Lost

### Understanding File Systems

When you delete a file, it doesn't vanish immediately. The operating system marks the space as "available" but doesn't erase the data until something overwrites it. This is why "deleted" files can often be recovered.

**Common File Systems:**

**FAT32** (old Windows, USB drives)
- Simple structure
- No journaling (prone to corruption)
- Easy to recover deleted files

**NTFS** (modern Windows)
- Complex structure with metadata
- Journaling (tracks changes, helps recovery)
- Harder but more sophisticated recovery

**ext4** (Linux)
- Journaling filesystem
- Can recover recently deleted files from journal

**APFS** (modern macOS)
- Encryption by default (complicates recovery)
- Snapshots (may preserve deleted files)

**HFS+** (older macOS)
- Similar to NTFS in recoverability

### Data Carving: Recovering Files Without Metadata

When file systems are severely damaged (corrupted directory structure, missing file allocation table), you can't rely on the filesystem to tell you where files are. Instead, you use **data carving**: scanning raw disk sectors looking for file signatures.

**How It Works:**

Every file type has a **signature** (magic bytes) at the beginning:

- **JPEG**: `FF D8 FF` (first three bytes)
- **PNG**: `89 50 4E 47` (‰PNG)
- **PDF**: `25 50 44 46` (%PDF)
- **ZIP**: `50 4B 03 04` (PK..)
- **GIF**: `47 49 46 38` (GIF8)

Data carving tools scan the entire disk, looking for these signatures. When found, they extract the file.

**Tools:**
- **Foremost**: Carves files based on headers/footers
- **Scalpel**: Fast carving with configurable signatures
- **PhotoRec**: Specializes in photos but handles many formats
- **Bulk Extractor**: Carves and analyzes (finds emails, URLs, credit cards)

**Example: Carving a Corrupted USB Drive**

```bash
# Install PhotoRec (comes with TestDisk)
sudo apt install testdisk

# Run PhotoRec on drive (replace /dev/sdX with actual device)
sudo photorec /dev/sdX

# Navigate menus:
# 1. Select partition
# 2. Choose file systems to search
# 3. Select output directory
# 4. Wait (can take hours for large drives)
```

**Result:** PhotoRec dumps recovered files into output directory, organized by type. Files are renamed generically (f0001.jpg, f0002.png) since metadata is lost.

**Limitations:**
- No original filenames (metadata gone)
- No directory structure (everything dumped together)
- Fragmented files may be incomplete (if portions were overwritten)
- Many false positives (random data matching signatures)

**Archaeological Application:**

When you recover an old hard drive from a defunct web hosting company, data carving may be your only option. You won't know which files belong to which user or what they were originally named, but you'll have the actual content—which is better than nothing.

### File System Timeline Analysis

Even when files aren't deleted, **timestamps** reveal important information:

**MAC Times:**
- **M**odified: When file content last changed
- **A**ccessed: When file was last opened
- **C**hanged: When metadata (permissions, ownership) last changed

**Plus NTFS adds:**
- **Created**: When file was first created

**Why Timestamps Matter:**

**Example 1: Identifying Original Creator**
- A website claims to have been "online since 1998"
- File timestamps show HTML files created in 2003
- Either the claim is false, or files were re-uploaded (migration?)
- Forensic investigation needed

**Example 2: Detecting Tampering**
- Archive claims to be "untouched original" from 2005
- Modified timestamps are 2019
- Someone edited files after archiving
- Need to determine what changed

**Tools:**
- **fls** (Sleuth Kit): Lists files with MAC times
- **mactime** (Sleuth Kit): Creates timeline from fls output
- **log2timeline/Plaso**: Comprehensive timeline analysis

**Example: Creating a Timeline**

```bash
# Install Sleuth Kit
sudo apt install sleuthkit

# Create body file (filesystem metadata)
fls -r -m C: /dev/sdX > bodyfile.txt

# Create timeline
mactime -b bodyfile.txt -d > timeline.csv

# Analyze timeline (Excel, grep, Python)
grep "2009-10" timeline.csv  # Find files from Oct 2009
```

**Archaeological Application:**

When analyzing a preserved platform, timeline analysis reveals:
- When was content created? (chronology of community)
- When was site last updated? (signs of abandonment)
- When were files accessed? (usage patterns, popular content)

---

## Part III: Metadata Forensics — The Hidden Stories

### What Is Metadata?

Metadata is "data about data"—information embedded in files describing their creation, modification, and context.

**Types of Metadata:**

**1. File System Metadata** (from OS)
- Timestamps (created, modified, accessed)
- Size, location, permissions
- Captured by filesystem, not embedded in file

**2. Embedded Metadata** (inside file)
- **EXIF** (photos): Camera model, GPS location, date/time
- **ID3** (MP3s): Artist, album, genre, cover art
- **PDF**: Author, creation software, edit history
- **Office docs**: Author name, organization, edit time, revision history

**3. Application Metadata** (created by software)
- **HTML**: Generator meta tags (`<meta name="generator" content="WordPress">`)
- **Images**: Software used (Photoshop layers, GIMP xcf data)
- **Videos**: Codec, bitrate, editing software

### Extracting Metadata

**Tool: ExifTool** (universal metadata reader)

```bash
# Install ExifTool
sudo apt install libimage-exiftool-perl

# Extract all metadata from a file
exiftool photo.jpg

# Extract specific fields
exiftool -CreateDate -Make -Model photo.jpg

# Process entire directory, export to CSV
exiftool -csv -r /path/to/photos/ > metadata.csv

# Remove metadata (privacy scrubbing)
exiftool -all= photo.jpg
```

**Example Output (JPEG from phone):**

```
File Name                       : IMG_2034.jpg
File Size                       : 2.3 MB
File Modification Date/Time     : 2018:11:15 14:23:01
File Type                       : JPEG
EXIF Version                    : 0231
Date/Time Original              : 2018:11:15 14:22:58
Create Date                     : 2018:11:15 14:22:58
Make                            : Apple
Camera Model Name               : iPhone 7
Lens Model                      : iPhone 7 back camera 3.99mm f/1.8
GPS Latitude                    : 37 deg 46' 30.12" N
GPS Longitude                   : 122 deg 25' 9.84" W
GPS Altitude                    : 15 m Above Sea Level
```

**What This Reveals:**
- Photo taken Nov 15, 2018 at 2:22 PM
- Taken with iPhone 7
- Location: San Francisco (GPS coordinates)
- File modified slightly after creation (uploaded? edited?)

### Privacy and Metadata

**Ethical Dilemma:** Metadata often contains **personally identifiable information** (PII):

- GPS coordinates (where someone lives, works, travels)
- Phone/camera serial numbers (can track individual)
- Author names, organization names (identity)
- Full edit history (who touched the file)

**Archaeobytologist's Responsibility:**

**When preserving:**
- Be aware metadata exists
- Decide: preserve it (research value) or strip it (privacy)?
- Document your decision

**When publishing:**
- **Don't** publish GPS coordinates from personal photos
- **Do** preserve GPS for historically significant events (protest locations, disaster sites)
- **Strip** metadata from ordinary personal files
- **Keep** metadata for public figures, official documents

**Case Study: Geotagged Photos from Protests**

Photos from 2020 Black Lives Matter protests contain GPS metadata. Should archivists preserve it?

**Arguments FOR:**
- Historical record (where protests occurred)
- Research value (studying protest geography)

**Arguments AGAINST:**
- Identifies protesters (could face retaliation)
- Law enforcement could use for prosecution

**Compromise:**
- Preserve photos with GPS
- **Restrict access** (research-only, IRB approval)
- **Publish photos with GPS stripped** (public version)
- **Aggregate data** (publish heatmap of protest locations, not individual coordinates)

### Metadata as Provenance

Metadata helps establish **provenance**—the history and origin of an artifact.

**Example: Authenticating a Leaked Document**

Someone claims to have a "leaked internal memo from Facebook, dated 2016."

**Forensic Analysis:**

```bash
exiftool memo.pdf
```

**Output reveals:**
```
Producer: Microsoft Word 2019
CreateDate: 2021:03:15 09:34:22
ModifyDate: 2021:03:15 09:34:22
Author: John Smith
```

**Findings:**
- Created in 2021 (not 2016)
- Author listed as "John Smith" (was this Facebook employee? check LinkedIn)
- Created with Word 2019 (was Word 2019 available in 2016? No—released 2018)

**Conclusion:** Document is likely fabricated or misdated. Further investigation needed.

**Forensic Best Practice:**
- Never trust dates in filenames or document text
- Check embedded metadata
- Cross-reference with external evidence (news archives, wayback machine)

---

## Part IV: Format Forensics — Identifying the Unknown

### The Format Identification Problem

You receive a folder of files from a defunct platform. Many have no file extensions, or wrong extensions (`.dat`, `.tmp`, `.db`). How do you figure out what they are?

**Don't trust extensions.** Extensions are metadata (easily changed). Instead, examine the **file signature**.

### Magic Numbers and File Signatures

Every file format has a **magic number**—specific bytes at the beginning that identify the type.

**Common Signatures:**

| Format | Hex Signature | ASCII |
|--------|---------------|-------|
| JPEG | `FF D8 FF` | ... |
| PNG | `89 50 4E 47 0D 0A 1A 0A` | ‰PNG.... |
| GIF | `47 49 46 38` | GIF8 |
| PDF | `25 50 44 46` | %PDF |
| ZIP | `50 4B 03 04` | PK.. |
| MP3 | `49 44 33` or `FF FB` | ID3 or ÿû |
| EXE | `4D 5A` | MZ |
| SQLite | `53 51 4C 69 74 65 20 66 6F 72 6D 61 74 20 33 00` | SQLite format 3. |

**Tool: `file` command** (Unix)

```bash
# Identify file type
file unknown_file.dat
# Output: unknown_file.dat: PNG image data, 800 x 600, 8-bit/color RGB, non-interlaced

# Check multiple files
file *
```

**Tool: DROID** (UK National Archives)

- GUI tool for format identification
- Uses PRONOM registry (comprehensive format database)
- Generates reports on entire directories

### Obsolete and Proprietary Formats

**The Hardest Cases:**

**1. Proprietary formats with no documentation**
- Company went bankrupt, format specs lost
- Example: Lotus 123 spreadsheets (.wk1, .wk3)

**2. Custom binary formats**
- Platform created its own format for efficiency
- Example: Vine's proprietary video container

**3. Encrypted or obfuscated formats**
- DRM-protected files
- Example: iTunes FairPlay (before DRM removal)

**Strategies:**

**A. Search for Format Documentation**
- Archive.org (old software manuals)
- FileFormat.info
- "Just Solve the File Format Problem" wiki
- Ask old forums, mailing lists

**B. Reverse Engineer**
- Hex editor: examine file structure
- Strings command: extract readable text
- Binwalk: analyze binary structure
- Compare multiple examples to find patterns

**C. Find Old Software**
- Run original software in emulator
- Example: Run MS-DOS programs in DOSBox to open ancient file formats

**D. Convert via Emulation**
- Open file in original software, export to modern format
- Lossy but better than nothing

**Example: Recovering WordPerfect 5.1 Documents**

WordPerfect was dominant in 1980s-90s. Many legal documents, dissertations, novels exist only in .wpd format.

**Solution:**
1. Download WordPerfect 5.1 (abandonware)
2. Run in DOSBox emulator
3. Open .wpd files
4. Export to ASCII or RTF (WordPerfect can do this)
5. Import to modern word processor

**Alternative:** LibreOffice can open some WordPerfect formats (but not perfectly).

---

## Part V: Emulation and Compatibility

### When Files Require Specific Environments

Some digital artifacts aren't just files—they're **experiences** that require specific software, hardware, or operating systems.

**Categories:**

**1. Software Applications**
- Need specific OS (Windows 95 programs won't run on modern Windows)
- Example: Old educational CD-ROMs

**2. Websites with Complex JavaScript**
- Need specific browser versions
- Example: Flash-based sites (need Flash Player)

**3. Games**
- Need specific hardware (arcade machines, consoles)
- Example: 1980s arcade games on custom boards

**4. Interactive Art**
- Need specific plugins, environments
- Example: Java applets, Shockwave

### Emulation Strategies

**Strategy 1: OS Emulation**

Run the entire original operating system in a virtual machine.

**Tools:**
- **VirtualBox**: Run Windows XP, Linux, older systems
- **QEMU**: Low-level emulation, supports many architectures
- **DOSBox**: Emulate MS-DOS (for 1980s-90s software)

**Example: Running Windows 95 Software**

1. Download Windows 95 ISO (abandonware/legally gray)
2. Create VirtualBox VM
3. Install Windows 95
4. Install old software (from CD image or floppy disk image)
5. Take VM snapshot (preserve working state)
6. Users can run VM, experience software as originally intended

**Strategy 2: Browser-Based Emulation**

Internet Archive's approach: run emulators in web browser.

**Technologies:**
- **Emularity**: JavaScript-based emulation framework
- **JSMESS**: Arcade/console emulator in JavaScript
- **Ruffle**: Flash emulator in WebAssembly

**Example: Internet Archive's Software Collection**

- Visit: archive.org/details/softwarelibrary
- Click any old program
- Emulator loads in browser
- Run 1980s software without installing anything

**Strategy 3: Format Migration**

Convert old formats to modern equivalents (lossy but pragmatic).

**Examples:**
- Flash → HTML5 (recreate interactions in modern web tech)
- QuickTime → MP4 (convert video codec)
- WordPerfect → DOCX (lose some formatting but preserve text)

**Trade-offs:**
- **Emulation**: High fidelity, but requires maintaining emulators
- **Migration**: Lower fidelity, but content accessible in modern tools

**Best Practice:** Do both when possible. Preserve original + create migrated version.

---

## Part VI: Authentication and Chain of Custody

### Proving a Digital Artifact Is Authentic

Physical artifacts can be authenticated through material analysis (carbon dating, paint chemistry). Digital artifacts are **perfectly copyable**—a copy is identical to original. So how do you prove authenticity?

### Cryptographic Hashing

A **hash** is a unique fingerprint of a file. Change one bit, and the hash changes completely.

**Common Hash Functions:**
- **MD5**: 128-bit hash (fast but cryptographically broken—don't use for security)
- **SHA-1**: 160-bit hash (deprecated, collisions found)
- **SHA-256**: 256-bit hash (current standard)
- **SHA-512**: 512-bit hash (even stronger)

**Example: Computing SHA-256 Hash**

```bash
# Hash a single file
sha256sum file.jpg
# Output: a1b2c3d4e5f6... file.jpg

# Hash all files in directory
find . -type f -exec sha256sum {} \; > manifest.txt

# Verify files haven't changed
sha256sum -c manifest.txt
# Output: file.jpg: OK
```

**Use Cases:**

**1. Proving Integrity**
- Archive Team publishes GeoCities torrent with SHA-256 hashes
- You download torrent, compute hashes
- If they match, you know data wasn't corrupted in transit

**2. Detecting Tampering**
- Hash preserved website when first captured
- Years later, re-hash to verify nothing changed
- If hash differs, investigate (bit rot? deliberate alteration?)

**3. Chain of Custody**
- Hash original source
- Hash after each processing step (conversion, migration)
- Document all hashes
- Proves artifact's history

### Digital Signatures

For legally significant documents, **cryptographic signatures** prove:
- **Who** created/signed the document
- **When** it was signed
- **That it hasn't been altered** since signing

**How It Works:**
1. Author creates document
2. Author signs with private key (generates signature)
3. Anyone can verify signature with author's public key
4. Signature proves: (a) author had private key, (b) document unchanged

**Tools:**
- **GnuPG**: Sign and verify documents
- **OpenSSL**: Cryptographic operations
- **Adobe Acrobat**: PDF signatures

**Archaeological Application:**

When archiving controversial or historically important documents (leaked memos, government records, deleted tweets), sign them immediately. This proves:
- You had the document at time of signing
- Document hasn't been altered since
- Protects against accusations of fabrication

---

## Part VII: Forensic Documentation

### Recording Your Process

Forensic work is worthless if you can't explain what you did. Document everything:

### Acquisition Documentation

**Record:**
- Source device (hard drive model, serial number)
- Date/time acquired
- Who acquired it (chain of custody)
- Tools used (software versions)
- Hashes (original source)

**Example Log:**

```
=== Forensic Acquisition Log ===
Date: 2024-11-15
Examiner: Jane Smith
Case: GeoCities Hard Drive Recovery

Source Device:
  Make: Western Digital
  Model: WD5000AAKS
  Serial: WD-XXXX1234
  Capacity: 500GB
  
Acquisition Method:
  Tool: dd (GNU coreutils 8.32)
  Command: dd if=/dev/sdb of=geocities_hdd.img bs=4M status=progress
  Duration: 3 hours 42 minutes
  
Verification:
  SHA-256 (source): a1b2c3d4...
  SHA-256 (image):  a1b2c3d4...
  Match: YES
  
Notes:
  - Drive had bad sectors (dd_rescue used to skip)
  - Approximately 2.3% of drive unreadable
  - Bad sectors logged in bad_sectors.txt
```

### Analysis Documentation

**Record:**
- What you found
- How you found it (specific commands, tools)
- Screenshots (visual proof)
- Interpretation (what does this mean?)

**Example Analysis Notes:**

```
File: mystery_file.dat
Location: /recovered_data/sector_2314/mystery_file.dat

1. Format Identification
   Command: file mystery_file.dat
   Result: "SQLite 3.x database"
   
2. Schema Analysis
   Command: sqlite3 mystery_file.dat ".schema"
   Result: Tables: users, posts, comments
   
3. Content Extraction
   Command: sqlite3 mystery_file.dat "SELECT * FROM posts LIMIT 10"
   Result: 10 rows exported to sample.csv
   
4. Interpretation
   This appears to be a forum database. Contains:
   - 12,342 users
   - 45,678 posts
   - 123,456 comments
   Dates range from 2004-03-15 to 2009-08-22
   
5. Conclusion
   Likely a phpBB or vBulletin forum database.
   Requires further analysis to identify specific platform.
```

---

## Part VIII: Ethical Boundaries in Forensics

### When Forensics Becomes Invasion

Digital forensics is powerful—but power requires ethical limits.

### Scenarios Where Forensics Is Inappropriate

**1. Private Communications**
- Deleted emails, DMs, chats
- Just because you *can* recover them doesn't mean you *should*

**2. Intimate Content**
- Personal photos, videos, journals
- Respect people's decision to delete

**3. Trade Secrets / Proprietary Information**
- Corporate data on abandoned servers
- May be legally protected even if physically accessible

**4. Ongoing Harm**
- Harassment campaigns, doxxing, revenge porn
- Forensic recovery could perpetuate harm

### Forensic Ethics Framework

**Ask before analyzing:**

**1. Consent**
- Did creator consent to preservation?
- Can you obtain consent now?

**2. Public Interest**
- Is this historically/culturally significant?
- Does public value outweigh privacy concerns?

**3. Harm Potential**
- Could forensic recovery cause harm?
- To whom? How severe?

**4. Alternative Methods**
- Can you achieve your goal without forensics?
- Is less invasive method available?

**Example: The Deleted Political Tweet**

A politician deletes a tweet. You have forensic tools to recover it from cached data. Should you?

**Analysis:**
- **Public figure**: Yes (higher scrutiny justified)
- **Public interest**: If tweet is newsworthy, yes
- **Harm**: Minimal (politician chose public platform)
- **Alternatives**: Check Wayback Machine, Politwoops (already doing this)

**Conclusion:** Ethical to recover and publish (accountability > privacy for public officials).

**Example: The Abandoned Teenager's Blog**

You recover a hard drive with a teenager's private blog from 2005 (they're now 35). Should you publish it?

**Analysis:**
- **Private person**: Higher privacy expectation
- **Consent**: Can't easily contact them
- **Public interest**: Low (unless exceptional historical value)
- **Harm**: Could embarrass them (teenage writing)

**Conclusion:** Don't publish without consent. Document that it existed, archive privately, contact them if possible.

---

## Conclusion: The Forensic Archaeobytologist

Digital forensics transforms you from passive archivist to **active investigator**. You don't just accept what platforms give you—you dig deeper, recover what was lost, authenticate what's dubious, and extract meaning from the opaque.

Every corrupted hard drive, every deleted file, every mysterious format is a puzzle. Your forensic skills determine whether that puzzle is solved or remains forever mysterious.

But with great power comes great responsibility. Forensics can invade privacy, resurrect deliberately forgotten content, and cause harm. The Custodial Filter applies here too: just because you can recover something doesn't mean you should.

In the next chapter, we'll explore **the ethics of preservation in depth**—examining the hardest dilemmas Archaeobytologists face, and building frameworks for navigating them.

For now, practice your forensic skills. Find an old hard drive, a corrupted file, a mysterious binary. Apply these methods. Document your process. And ask: What stories are hidden in these bits?

The artifacts are waiting. Now go uncover them.

---

## Discussion Questions

1. **Metadata Privacy**: You're archiving a photo collection from a defunct platform. GPS coordinates reveal protesters' locations. Do you strip the metadata or preserve it for research?

2. **Format Obsolescence**: You find files in a proprietary format with no documentation. Do you spend weeks reverse-engineering it, or accept that some content will be lost?

3. **Deleted Content**: A user intentionally deleted their account and content. You have a backup. Do you preserve it?

4. **Authentication**: Someone claims a document is a "leaked corporate memo." Your forensic analysis shows metadata inconsistencies. How do you publish your findings without enabling misinformation?

5. **Emulation vs. Migration**: Is it better to maintain perfect fidelity through emulation (expensive, complex) or accept some loss through format migration (pragmatic, sustainable)?

6. **Chain of Custody**: How do you prove to skeptics that an archived artifact is authentic and unaltered?

---

## Exercise: Forensic Recovery Project

**Task**: Conduct a forensic analysis of a digital artifact.

**Part 1: Acquire an Artifact** (Choose one)
- Old USB drive from a drawer
- Downloaded corrupt file from internet
- Deleted file from your own computer (practice recovery)
- Mystery file with wrong/missing extension

**Part 2: Forensic Analysis** (1000 words)

Document:
1. **Acquisition**: How did you obtain it? Document device info, date, method
2. **Hashing**: Compute SHA-256, document hash
3. **Format Identification**: What type of file? Use `file` command or DROID
4. **Metadata Extraction**: What metadata exists? Use ExifTool
5. **Content Analysis**: What's inside? Can you open it? Recover data?
6. **Timeline**: When was it created, modified, accessed?
7. **Findings**: What did you learn? Any surprises?

**Part 3: Ethical Reflection** (500 words)
- Was this analysis ethical?
- Did you encounter private information?
- How would you handle this if archiving for public access?
- What would you do differently?

**Part 4: Documentation** (Create forensic report)
- Professional-style report documenting your process
- Include: acquisition log, tool commands, screenshots, findings, conclusions

---

## Further Reading

### On Digital Forensics Methods

- Carrier, Brian. *File System Forensic Analysis*. Addison-Wesley, 2005.
  - Comprehensive technical reference on filesystem analysis

- Casey, Eoghan. *Digital Evidence and Computer Crime*. Academic Press, 2011.
  - Forensic investigation methodology

- Jones, Keith, et al. *Real Digital Forensics: Computer Security and Incident Response*. Addison-Wesley, 2005.
  - Practical forensics for investigators

### On Format Preservation

- Brown, Adrian. *Practical Digital Preservation*. Facet Publishing, 2013.
  - Format identification, migration, emulation strategies

- Kirschenbaum, Matthew. *Mechanisms: New Media and the Forensic Imagination*. MIT Press, 2008.
  - Theoretical foundation for digital forensics in humanities

### On Emulation

- Rosenthal, David S. H. "Emulation & Virtualization as Preservation Strategies." Report for Mellon Foundation, 2015.
  - Technical and institutional challenges of emulation

- Internet Archive. "Software Preservation." https://archive.org/details/softwarelibrary
  - Practical examples of browser-based emulation

### Tools Documentation

- The Sleuth Kit: http://www.sleuthkit.org/
- ExifTool: https://exiftool.org/
- Autopsy (GUI for Sleuth Kit): https://www.autopsy.com/
- DROID: https://digital-preservation.github.io/droid/

---

**End of Chapter 8**

*Next: Chapter 9 — The Custodial Filter: Ethics of Preservation*

