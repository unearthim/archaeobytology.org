# Appendix B: Essential Tools & Resources

---

## Introduction

This appendix provides a curated catalog of tools, software, services, and resources essential for Archaeobytological practice. Tools are organized by function and annotated with:
- **Purpose**: What the tool does
- **Skill Level**: Beginner, Intermediate, Advanced
- **Cost**: Free, Freemium, Paid
- **Platform**: Windows, macOS, Linux, Web-based
- **Open Source**: Yes/No

Tools are current as of 2025 but the digital preservation landscape evolves rapidly. Check the Archaeobytology community wiki (archaeobytology.org/wiki) for updates.

---

## I. Web Archiving & Scraping Tools

### 1. Wget
**Purpose**: Command-line tool for downloading websites recursively  
**Skill Level**: Beginner-Intermediate  
**Cost**: Free  
**Platform**: Windows, macOS, Linux  
**Open Source**: Yes  
**Website**: https://www.gnu.org/software/wget/

**What It Does**: Downloads web pages and their linked resources (images, CSS, JavaScript). Creates mirror copies of websites on your local machine.

**Basic Usage**:
```bash
wget --recursive --level=2 --no-parent --wait=1 https://example.com
```

**Best For**: Static HTML sites, simple scraping projects

**Limitations**: Doesn't handle JavaScript-heavy sites well, can't navigate login walls

---

### 2. HTTrack
**Purpose**: Website copier with GUI interface  
**Skill Level**: Beginner  
**Cost**: Free  
**Platform**: Windows, macOS, Linux  
**Open Source**: Yes  
**Website**: https://www.httrack.com/

**What It Does**: Similar to wget but with graphical interface. Easier for beginners who don't want command-line tools.

**Best For**: One-time website archiving, beginners

**Limitations**: Slower than command-line tools, less flexible configuration

---

### 3. ArchiveBox
**Purpose**: Self-hosted web archiving platform  
**Skill Level**: Intermediate  
**Cost**: Free  
**Platform**: Windows, macOS, Linux, Docker  
**Open Source**: Yes  
**Website**: https://archivebox.io/

**What It Does**: Creates permanent archives of web pages including HTML, screenshots, PDFs, videos, and git repositories. Provides web interface for browsing archives.

**Features**:
- Multiple capture methods (wget, Chrome headless, youtube-dl, etc.)
- Scheduled archiving (cron jobs)
- Full-text search
- Deduplication

**Best For**: Personal archiving projects, research collections, small organizations

**Setup Complexity**: Requires server or Docker knowledge

---

### 4. Webrecorder (ArchiveWeb.page)
**Purpose**: Browser-based interactive web archiving  
**Skill Level**: Beginner  
**Cost**: Free  
**Platform**: Web (browser extension also available)  
**Open Source**: Yes  
**Website**: https://archiveweb.page/

**What It Does**: Records your browsing session including JavaScript interactions, videos, and dynamic content. Creates WARC (Web ARChive) files you can replay.

**Features**:
- Captures JavaScript-heavy sites
- Records social media feeds (Twitter, Instagram)
- Exports to standard WARC format
- Replay archives offline

**Best For**: Social media archiving, dynamic websites, personal projects

**Unique Advantage**: Works in browser, no installation required

---

### 5. Heritrix
**Purpose**: Industrial-strength web crawler  
**Skill Level**: Advanced  
**Cost**: Free  
**Platform**: Java (cross-platform)  
**Open Source**: Yes  
**Website**: https://github.com/internetarchive/heritrix3

**What It Does**: Internet Archive's production crawler. Designed for massive-scale archiving (billions of URLs).

**Features**:
- Highly configurable crawl policies
- Distributed crawling
- Respects robots.txt
- Creates WARC files

**Best For**: Large institutions, comprehensive web archiving

**Limitations**: Steep learning curve, requires significant infrastructure

---

### 6. Browsertrix Crawler
**Purpose**: High-fidelity browser-based crawling  
**Skill Level**: Intermediate-Advanced  
**Cost**: Free  
**Platform**: Docker  
**Open Source**: Yes  
**Website**: https://github.com/webrecorder/browsertrix-crawler

**What It Does**: Uses real browsers (Chrome) to capture JavaScript-heavy sites with perfect fidelity. Creates WARC files.

**Best For**: Modern web apps, single-page applications, sites requiring JavaScript

---

### 7. Archive-It
**Purpose**: Subscription web archiving service  
**Skill Level**: Beginner  
**Cost**: Paid (subscription based on storage)  
**Platform**: Web-based  
**Open Source**: No  
**Website**: https://archive-it.org/

**What It Does**: Managed web archiving service by Internet Archive. Point-and-click interface for creating and managing web archives.

**Features**:
- Scheduled recurring crawls
- Metadata management
- Public or private collections
- Integration with Wayback Machine

**Best For**: Institutions without technical staff, organizations needing reliable managed service

**Cost**: Starts ~$1,500/year for small collections

---

## II. Media Preservation Tools

### 8. youtube-dl / yt-dlp
**Purpose**: Video downloader for YouTube and 1000+ sites  
**Skill Level**: Intermediate  
**Cost**: Free  
**Platform**: Windows, macOS, Linux  
**Open Source**: Yes  
**Website**: https://github.com/yt-dlp/yt-dlp

**What It Does**: Downloads videos from streaming platforms including metadata, subtitles, thumbnails.

**Basic Usage**:
```bash
yt-dlp --write-description --write-info-json --write-thumbnail https://youtube.com/watch?v=VIDEO_ID
```

**Best For**: Video archiving, preserving YouTube/Vimeo/TikTok content

**Note**: yt-dlp is actively maintained fork of youtube-dl (use yt-dlp)

---

### 9. gallery-dl
**Purpose**: Image gallery downloader  
**Skill Level**: Intermediate  
**Cost**: Free  
**Platform**: Windows, macOS, Linux  
**Open Source**: Yes  
**Website**: https://github.com/mikf/gallery-dl

**What It Does**: Downloads images from image hosting sites (Imgur, Flickr, DeviantArt, Twitter, etc.)

**Best For**: Image archiving, art preservation, meme collections

---

### 10. FFmpeg
**Purpose**: Multimedia conversion and processing  
**Skill Level**: Intermediate-Advanced  
**Cost**: Free  
**Platform**: Windows, macOS, Linux  
**Open Source**: Yes  
**Website**: https://ffmpeg.org/

**What It Does**: Converts video/audio formats, extracts frames, creates thumbnails, transcodes for preservation.

**Best For**: Format migration, creating preservation masters, generating access copies

**Example**:
```bash
ffmpeg -i input.flv -c:v libx264 -c:a aac output.mp4
```

---

## III. Emulation & Obsolescence Tools

### 11. Flashpoint Archive
**Purpose**: Flash game and animation preservation  
**Skill Level**: Beginner  
**Cost**: Free  
**Platform**: Windows, Linux  
**Open Source**: Partially  
**Website**: https://bluemaxima.org/flashpoint/

**What It Does**: Preserves and plays 500,000+ Flash games and animations using embedded emulators.

**Features**:
- Curated, playable collection
- Built-in launcher
- Metadata and screenshots
- Regular updates

**Best For**: Playing preserved Flash content, research, nostalgia

**Download Size**: ~1TB for full collection (smaller curated versions available)

---

### 12. Ruffle
**Purpose**: Flash Player emulator in Rust  
**Skill Level**: Beginner  
**Cost**: Free  
**Platform**: Web (browser extension), Desktop  
**Open Source**: Yes  
**Website**: https://ruffle.rs/

**What It Does**: Open-source Flash Player replacement that runs in browsers and as standalone app.

**Best For**: Viewing archived Flash content, embedding Flash in modern websites

**Status**: Under active development, not 100% compatible yet

---

### 13. MAME (Multiple Arcade Machine Emulator)
**Purpose**: Arcade game preservation  
**Skill Level**: Intermediate  
**Cost**: Free  
**Platform**: Windows, macOS, Linux  
**Open Source**: Yes  
**Website**: https://www.mamedev.org/

**What It Does**: Emulates arcade hardware to preserve vintage arcade games.

**Best For**: Arcade game preservation, historical research

---

### 14. DOSBox
**Purpose**: DOS emulator  
**Skill Level**: Beginner  
**Cost**: Free  
**Platform**: Windows, macOS, Linux  
**Open Source**: Yes  
**Website**: https://www.dosbox.com/

**What It Does**: Emulates MS-DOS environment for running old DOS games and software.

**Best For**: 1980s-1990s software preservation

---

### 15. Internet Archive's Emularity
**Purpose**: Browser-based emulation framework  
**Skill Level**: Advanced (for setup), Beginner (for use)  
**Cost**: Free  
**Platform**: Web-based  
**Open Source**: Yes  
**Website**: https://github.com/db48x/emularity

**What It Does**: JavaScript framework for running emulators in web browsers. Powers Internet Archive's software collection.

**Best For**: Making preserved software publicly playable via web

---

## IV. Forensics & Data Recovery

### 16. The Sleuth Kit / Autopsy
**Purpose**: Digital forensics and file recovery  
**Skill Level**: Advanced  
**Cost**: Free  
**Platform**: Windows, macOS, Linux  
**Open Source**: Yes  
**Website**: https://www.sleuthkit.org/

**What It Does**: Analyzes disk images, recovers deleted files, examines file systems.

**Best For**: Forensic analysis of hard drives, recovering deleted content

---

### 17. FTK Imager
**Purpose**: Disk imaging tool  
**Skill Level**: Intermediate  
**Cost**: Free  
**Platform**: Windows  
**Open Source**: No  
**Website**: https://www.exterro.com/ftk-imager

**What It Does**: Creates forensic disk images (bit-by-bit copies) for preservation and analysis.

**Best For**: Creating preservation masters of physical media

---

### 18. PhotoRec
**Purpose**: File recovery tool  
**Skill Level**: Intermediate  
**Cost**: Free  
**Platform**: Windows, macOS, Linux  
**Open Source**: Yes  
**Website**: https://www.cgsecurity.org/wiki/PhotoRec

**What It Does**: Recovers deleted files from hard drives, memory cards, etc.

**Best For**: Recovering accidentally deleted content, salvaging corrupted media

---

### 19. Bulk Extractor
**Purpose**: Digital forensics tool for extracting information  
**Skill Level**: Advanced  
**Cost**: Free  
**Platform**: Windows, macOS, Linux  
**Open Source**: Yes  
**Website**: https://github.com/simsong/bulk_extractor

**What It Does**: Scans disk images and extracts emails, credit cards, URLs, etc. without mounting filesystem.

**Best For**: Analyzing large datasets, finding specific types of information

---

## V. Metadata & Organization

### 20. Tropy
**Purpose**: Research photo management and annotation  
**Skill Level**: Beginner  
**Cost**: Free  
**Platform**: Windows, macOS, Linux  
**Open Source**: Yes  
**Website**: https://tropy.org/

**What It Does**: Organize, annotate, and tag research photos. Add metadata, transcribe, and create citations.

**Best For**: Managing archival photos, research collections

---

### 21. Omeka
**Purpose**: Web publishing platform for digital collections  
**Skill Level**: Intermediate  
**Cost**: Free (self-hosted) or Paid (Omeka.net)  
**Platform**: Web-based (PHP)  
**Open Source**: Yes  
**Website**: https://omeka.org/

**What It Does**: Create online exhibits and digital archives with rich metadata.

**Features**:
- Dublin Core metadata
- Exhibit builder
- Item management
- Public/private collections

**Best For**: Small museums, libraries, digital humanities projects

---

### 22. Collective Access
**Purpose**: Museum and archival collections management  
**Skill Level**: Advanced  
**Cost**: Free  
**Platform**: Web-based (PHP)  
**Open Source**: Yes  
**Website**: https://collectiveaccess.org/

**What It Does**: Full-featured collections management system with cataloging, media management, and public access.

**Best For**: Museums, archives, larger institutions

---

### 23. Calibre
**Purpose**: eBook management  
**Skill Level**: Beginner  
**Cost**: Free  
**Platform**: Windows, macOS, Linux  
**Open Source**: Yes  
**Website**: https://calibre-ebook.com/

**What It Does**: Organize, convert, and read eBooks. Powerful metadata editor.

**Best For**: Managing personal book collections, format conversion

---

## VI. Storage & Backup

### 24. Nextcloud
**Purpose**: Self-hosted cloud storage  
**Skill Level**: Intermediate  
**Cost**: Free (self-hosted)  
**Platform**: Web-based (PHP)  
**Open Source**: Yes  
**Website**: https://nextcloud.com/

**What It Does**: Personal cloud storage like Dropbox but self-hosted. Sync files across devices.

**Features**:
- File sharing
- Calendar/contacts
- Collaborative editing
- End-to-end encryption

**Best For**: Personal sovereignty, institutional storage

---

### 25. Syncthing
**Purpose**: Peer-to-peer file synchronization  
**Skill Level**: Beginner-Intermediate  
**Cost**: Free  
**Platform**: Windows, macOS, Linux, Android  
**Open Source**: Yes  
**Website**: https://syncthing.net/

**What It Does**: Syncs files between devices without central server. True peer-to-peer.

**Best For**: Personal backups, distributed storage without cloud dependency

---

### 26. Restic
**Purpose**: Encrypted backup program  
**Skill Level**: Intermediate  
**Cost**: Free  
**Platform**: Windows, macOS, Linux  
**Open Source**: Yes  
**Website**: https://restic.net/

**What It Does**: Fast, encrypted, deduplicated backups to local or cloud storage.

**Best For**: Secure long-term backups

---

### 27. Duplicati
**Purpose**: Encrypted backup with cloud support  
**Skill Level**: Beginner-Intermediate  
**Cost**: Free  
**Platform**: Windows, macOS, Linux  
**Open Source**: Yes  
**Website**: https://www.duplicati.com/

**What It Does**: Encrypted backups to cloud storage (S3, Google Drive, Dropbox, etc.)

**Best For**: Encrypted cloud backups, scheduled backups

---

## VII. Distributed & P2P Technologies

### 28. IPFS (InterPlanetary File System)
**Purpose**: Distributed file storage protocol  
**Skill Level**: Advanced  
**Cost**: Free  
**Platform**: Cross-platform  
**Open Source**: Yes  
**Website**: https://ipfs.tech/

**What It Does**: Content-addressed, peer-to-peer file system. Files stored across network, retrieved by hash.

**Best For**: Censorship-resistant storage, distributed archives

**Challenges**: Requires peers to "pin" content (host it) or content disappears

---

### 29. BitTorrent / qBittorrent
**Purpose**: Peer-to-peer file sharing  
**Skill Level**: Beginner  
**Cost**: Free  
**Platform**: Windows, macOS, Linux  
**Open Source**: Yes (qBittorrent)  
**Website**: https://www.qbittorrent.org/

**What It Does**: Download and seed torrents. Distributed file sharing without central server.

**Best For**: Distributing large archives (GeoCities torrent), redundant preservation

---

### 30. Dat / Hyperdrive
**Purpose**: Peer-to-peer data sharing protocol  
**Skill Level**: Advanced  
**Cost**: Free  
**Platform**: Cross-platform  
**Open Source**: Yes  
**Website**: https://dat.foundation/

**What It Does**: Like BitTorrent but with versioning and live updates. Share datasets P2P.

**Best For**: Scientific datasets, collaborative archiving

---

## VIII. Web Publishing & Sovereignty Tools

### 31. WordPress (Self-Hosted)
**Purpose**: Content management system  
**Skill Level**: Beginner-Intermediate  
**Cost**: Free (software), hosting costs vary  
**Platform**: Web-based (PHP)  
**Open Source**: Yes  
**Website**: https://wordpress.org/

**What It Does**: Build websites and blogs with full control. Powers 40%+ of the web.

**Best For**: Personal websites, institutional sites, blogs with custom domains

---

### 32. Ghost
**Purpose**: Publishing platform for newsletters and memberships  
**Skill Level**: Beginner (hosted) to Intermediate (self-hosted)  
**Cost**: Freemium (Ghost Pro) or Free (self-hosted)  
**Platform**: Web-based (Node.js)  
**Open Source**: Yes  
**Website**: https://ghost.org/

**What It Does**: Blogging platform with built-in newsletter and membership features.

**Best For**: Writers who want sovereignty + monetization

---

### 33. Hugo / Jekyll (Static Site Generators)
**Purpose**: Generate static HTML websites from markdown  
**Skill Level**: Intermediate  
**Cost**: Free  
**Platform**: Cross-platform  
**Open Source**: Yes  
**Websites**: https://gohugo.io/ | https://jekyllrb.com/

**What It Does**: Convert markdown files to HTML websites. No database, just files.

**Best For**: Fast, secure websites, GitHub Pages hosting, technical users

---

### 34. Mastodon
**Purpose**: Federated social networking  
**Skill Level**: Advanced (self-hosting), Beginner (joining instance)  
**Cost**: Free (software), hosting costs vary  
**Platform**: Web-based (Ruby)  
**Open Source**: Yes  
**Website**: https://joinmastodon.org/

**What It Does**: Twitter-like social media but federated. Anyone can run an instance.

**Best For**: Social networking with sovereignty, community hosting

---

## IX. Digital Preservation Standards & Utilities

### 35. DROID (Digital Record Object Identification)
**Purpose**: File format identification  
**Skill Level**: Intermediate  
**Cost**: Free  
**Platform**: Windows, macOS, Linux (Java)  
**Open Source**: Yes  
**Website**: https://digital-preservation.github.io/droid/

**What It Does**: Identifies file formats and versions for preservation planning.

**Best For**: Surveying collections, format migration planning

---

### 36. Archivematica
**Purpose**: Digital preservation system  
**Skill Level**: Advanced  
**Cost**: Free  
**Platform**: Linux  
**Open Source**: Yes  
**Website**: https://www.archivematica.org/

**What It Does**: Complete digital preservation workflow from ingest to access. Creates OAIS-compliant preservation packages.

**Best For**: Institutions with professional archival requirements

---

### 37. LOCKSS (Lots of Copies Keep Stuff Safe)
**Purpose**: Distributed preservation network  
**Skill Level**: Advanced  
**Cost**: Free (software), membership costs vary  
**Platform**: Linux  
**Open Source**: Yes  
**Website**: https://www.lockss.org/

**What It Does**: Creates distributed dark archives where institutions preserve copies of content.

**Best For**: Consortial preservation, journal archiving

---

## X. Learning & Reference Resources

### 38. Archive Team Wiki
**Purpose**: Documentation of rescue projects and methods  
**Skill Level**: All levels  
**Cost**: Free  
**Website**: https://wiki.archiveteam.org/

**What It Provides**: Guides for archiving specific platforms, tool documentation, community projects.

**Best For**: Learning web archiving, finding ongoing rescue projects

---

### 39. Digital Preservation Coalition (DPC)
**Purpose**: Professional organization for digital preservation  
**Skill Level**: All levels  
**Cost**: Free resources, membership fees for institutions  
**Website**: https://www.dpconline.org/

**What It Provides**: Handbook, tech watch reports, training, community

---

### 40. Library of Congress Digital Preservation
**Purpose**: Government standards and guidance  
**Skill Level**: All levels  
**Cost**: Free  
**Website**: https://www.loc.gov/preservation/digital/

**What It Provides**: Format recommendations, case studies, technical standards

---

## XI. Community & Collaboration

### 41. Internet Archive Scholar
**Purpose**: Academic paper search in preserved collections  
**Skill Level**: Beginner  
**Cost**: Free  
**Website**: https://scholar.archive.org/

**What It Provides**: Search 25+ million academic articles including deleted/paywalled content

---

### 42. Hypothes.is
**Purpose**: Web annotation tool  
**Skill Level**: Beginner  
**Cost**: Free  
**Platform**: Web (browser extension)  
**Open Source**: Yes  
**Website**: https://hypothes.is/

**What It Does**: Collaborative annotation of web pages and PDFs.

**Best For**: Research collaboration, shared analysis of archived content

---

### 43. Zotero
**Purpose**: Reference management  
**Skill Level**: Beginner  
**Cost**: Free (with storage limits)  
**Platform**: Windows, macOS, Linux  
**Open Source**: Yes  
**Website**: https://www.zotero.org/

**What It Does**: Organize research sources, generate citations, share libraries.

**Best For**: Academic research, bibliography management

---

## XII. Advanced / Specialized Tools

### 44. Scrapyd
**Purpose**: Web scraping framework  
**Skill Level**: Advanced  
**Cost**: Free  
**Platform**: Python (cross-platform)  
**Open Source**: Yes  
**Website**: https://scrapyd.readthedocs.io/

**What It Does**: Deploy and run web scraping spiders at scale.

**Best For**: Custom large-scale scraping projects

---

### 45. Selenium
**Purpose**: Browser automation  
**Skill Level**: Advanced  
**Cost**: Free  
**Platform**: Cross-platform  
**Open Source**: Yes  
**Website**: https://www.selenium.dev/

**What It Does**: Automate web browser interactions for scraping JavaScript-heavy sites.

**Best For**: Archiving dynamic web apps, automated testing

---

### 46. Beautiful Soup
**Purpose**: HTML/XML parsing library (Python)  
**Skill Level**: Intermediate  
**Cost**: Free  
**Platform**: Python (cross-platform)  
**Open Source**: Yes  
**Website**: https://www.crummy.com/software/BeautifulSoup/

**What It Does**: Parse and extract data from HTML documents.

**Best For**: Custom scrapers, data extraction

---

### 47. ExifTool
**Purpose**: Metadata reading/writing for images  
**Skill Level**: Intermediate  
**Cost**: Free  
**Platform**: Windows, macOS, Linux  
**Open Source**: Yes  
**Website**: https://exiftool.org/

**What It Does**: Read and write metadata in images, videos, PDFs.

**Best For**: Extracting metadata, adding preservation info to files

---

### 48. Voyant Tools
**Purpose**: Text analysis and visualization  
**Skill Level**: Beginner  
**Cost**: Free  
**Platform**: Web-based  
**Open Source**: Yes  
**Website**: https://voyant-tools.org/

**What It Does**: Analyze text corpuses with visualizations (word clouds, trends, etc.)

**Best For**: Analyzing preserved text collections, research

---

## XIII. Infrastructure & Hosting

### 49. DigitalOcean / Linode / Vultr
**Purpose**: Cloud VPS hosting  
**Skill Level**: Intermediate-Advanced  
**Cost**: Paid (~$5-50/month)  
**Platform**: Cloud infrastructure  
**Website**: Various

**What They Do**: Provide virtual servers for hosting tools, websites, archives.

**Best For**: Self-hosting projects, institutional infrastructure

---

### 50. GitHub / GitLab
**Purpose**: Version control and code hosting  
**Skill Level**: Intermediate  
**Cost**: Free (with limits)  
**Platform**: Web-based  
**Open Source**: GitLab self-hosted is  
**Website**: https://github.com | https://gitlab.com

**What They Do**: Host code repositories, documentation, static sites (GitHub Pages).

**Best For**: Collaborative development, documentation, portfolio

---

## Conclusion

This toolkit represents the essential software infrastructure for Archaeobytological practice. Key principles:

1. **Open Source First**: Prioritize tools you control (no vendor lock-in)
2. **Standard Formats**: Use WARC, JSON, CSV, plain text (future-proof)
3. **Redundancy**: Multiple tools for critical functions (no single points of failure)
4. **Learning Curve**: Start with beginner tools, grow into advanced ones
5. **Community**: Join user communities (Archive Team, COPTR, DPC) to learn

The field evolves rapidly—new tools emerge, old ones are abandoned. Check the Archaeobytology Wiki regularly for updates.

**Next Steps**:
- Install 3-5 tools from this list that match your current projects
- Join Archive Team IRC or Discord to see tools in action
- Contribute to tool documentation when you learn something useful

Tools are just means—the goal is preserving digital culture and building sovereign alternatives. Choose tools that serve those ends.

---

**For Updates**: Visit archaeobytology.org/tools for latest versions and community recommendations.

