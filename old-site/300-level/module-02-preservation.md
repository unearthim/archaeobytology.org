# Module 2: Building a Preservation System

**Duration**: 2 weeks  
**Type**: Technical Implementation & Infrastructure Design

---

## Module Overview

You've investigated the dead. Now it's time to save the living.

In this module, you'll design and implement a working digital preservation system. You'll learn archival workflows, storage strategies, metadata standards, and the technical infrastructure needed to rescue content before it vanishes. This is hands-on Archive work—by the end, you'll have actually preserved something real.

---

## Learning Objectives

By the end of this module, you will be able to:

1. **Design preservation workflows**: Create systematic processes for intake, processing, storage, and access
2. **Implement storage infrastructure**: Set up reliable, redundant storage systems for digital artifacts
3. **Apply metadata standards**: Use Dublin Core, PREMIS, and other standards to document preserved content
4. **Use archival tools**: Operate Internet Archive tools, web scrapers, and archival software
5. **Preserve dynamic content**: Capture not just static files but interactive web experiences
6. **Document preservation decisions**: Create clear records of what was saved, why, and how

---

## Required Readings

### Primary Texts
- **Textbook Chapter 10**: Triage Workflow—From Discovery to Preservation
- **Textbook Chapter 11**: Sustainable Preservation Organizations

### Technical Standards
- Library of Congress, *"Sustainability of Digital Formats"*
- Dublin Core Metadata Initiative, *"Basic Guidelines"*
- PREMIS Editorial Committee, *"Data Dictionary for Preservation Metadata"*

### Case Studies
- Internet Archive, *"Wayback Machine Architecture"*
- Archive Team, *"Project Management Workflow"*
- UCLA Digital Library, *"Digital Preservation Policy"*

---

## Assignment Structure

### Week 1: Infrastructure & Tools

#### Part 1: Preservation System Design (Due: Day 3)

**Design a preservation infrastructure** for a specific use case. Choose one:

**Option A: Personal Web Archive**
- Preserve your own digital footprint (social media, blogs, websites you've created)
- Design for individual/small team use
- Budget: Free or under $50/month

**Option B: Community Archive**
- Preserve a specific online community (subreddit, Discord server, forum)
- Design for 5-10 volunteer archivists
- Budget: Under $200/month

**Option C: Endangered Content Collection**
- Preserve a category of at-risk content (indie web, GeoCities-style sites, web comics)
- Design for distributed volunteer effort
- Budget: Grant-funded ($5-10K/year)

**Your Design Document (3-4 pages) must include**:

**1. Mission & Scope**
- What are you preserving?
- Why is it at risk?
- What are the boundaries of your collection? (dates, types, geographic scope)
- What will you NOT preserve? (out of scope content)

**2. Storage Architecture**

Choose your storage strategy:

**Cold Storage Options**:
- External hard drives (cheap, manual, at-risk if single copy)
- Network Attached Storage / NAS (prosumer, raid redundancy)
- Cloud storage (AWS S3, Backblaze B2, Internet Archive)

**Hot Storage Options** (for access/discovery):
- Local web server
- Static site generator (Jekyll, Hugo)
- Archive hosting service (Omeka, CollectiveAccess)

**Redundancy Strategy**:
- How many copies? (follow 3-2-1 rule: 3 copies, 2 media types, 1 offsite)
- Where are copies stored?
- How often are backups verified?

**3. Technical Stack**

Specify your tools for:

**Capture**:
- Web scraping: wget, httrack, webrecorder
- Social media: twitter-scraper, gallery-dl, youtube-dl
- Dynamic content: Webrecorder, Conifer, Browsertrix

**Processing**:
- File validation: JHOVE, DROID, Siegfried
- Format conversion: FFmpeg, ImageMagick, Pandoc
- Virus scanning: ClamAV

**Metadata**:
- Schema: Dublin Core, PREMIS, or custom
- Database: SQLite, PostgreSQL, or spreadsheet
- Tools: OpenRefine, Tropy, Omeka

**Access**:
- How will users discover preserved content?
- Search interface or browsing?
- Public or restricted access?

**4. Workflow Diagram**

Create a flowchart showing:
- Content discovery → Triage → Capture → Processing → Storage → Access
- Decision points: What gets preserved? How much metadata?
- Human roles: Who does what?

**Deliverable**: Upload design document with workflow diagram as PDF

---

#### Part 2: Hands-On Preservation (Due: End of Week 1)

**Actually preserve something**. Conduct a real preservation operation using the tools you specified.

**Choose a preservation target**:

**Small-Scale** (recommended for beginners):
- A personal website or blog that's inactive (with permission)
- A small subreddit or forum thread
- A YouTube channel or Instagram account
- A collection of 50-100 articles from a dying news site

**Medium-Scale** (for confident technologists):
- An entire small website or blog network
- A Discord server's public channels (with mod permission)
- A complete Twitter account's history
- A webcomic archive

**Ambitious** (for experienced archivists):
- A small online community (forum, GeoCities-style neighborhood)
- A category of endangered content (indie game devlogs, personal sites)
- A protest movement's digital artifacts
- A grassroots organization's web presence

**Your Preservation Report (4-5 pages) must document**:

**1. Pre-Capture Assessment**
- What did you decide to preserve?
- Why is it at risk or significant?
- What format(s) is the content in?
- How much data? (estimated size, number of files)

**2. Technical Process**

Document every command you ran:

```bash
# Example documentation format:
wget --mirror --page-requisites --adjust-extension \
     --convert-links --wait=2 \
     https://example.com
```

Include:
- Tools used and why you chose them
- Problems encountered and how you solved them
- Workarounds for technical limitations
- Time spent (be honest about how long it took!)

**3. Metadata Creation**

Create a **preservation record** for each item or collection:

Minimum metadata fields (Dublin Core):
- Title
- Creator
- Date (original creation + preservation date)
- Description (50-200 words)
- Format (file types, codecs, versions)
- Source (original URL)
- Rights (copyright status, preservation justification)
- Identifier (unique ID in your system)

**4. Quality Assurance**

Verify your preservation:
- Did everything capture correctly?
- Are files readable and uncorrupted?
- Did you get images, CSS, JavaScript?
- Can dynamic content be replayed?
- What's missing? (broken links, external dependencies)

**5. Storage & Backup**

Document how you stored the preserved content:
- Where are the files? (local, cloud, both)
- What's your backup strategy?
- How will you verify integrity over time? (checksums, periodic testing)

**Deliverable**: 
- Upload preservation report as PDF
- Submit sample metadata records (CSV or JSON)
- Include 3-5 screenshots showing before/after or archival interface

---

### Week 2: Metadata, Ethics & Sustainability

#### Part 3: Metadata & Documentation (Due: Mid-Week 2)

**Create a comprehensive metadata system** for your preserved content.

**Task 1: Metadata Schema Design**

Expand beyond basic Dublin Core. Create a **custom metadata schema** for your specific collection type.

Required elements:
- All 15 Dublin Core elements
- PREMIS preservation metadata (capture method, software versions, fixity)
- Custom fields relevant to your content type

Example custom fields for a social media archive:
- Original post timestamp
- Engagement metrics (likes, shares, comments)
- Thread structure (replies, quote tweets)
- Content warnings or tags
- Platform-specific metadata (subreddit, hashtags, etc.)

**Task 2: Metadata Entry**

Create detailed metadata for at least 10 significant items from your preservation:
- Use your custom schema
- Export as CSV, JSON, or XML
- Include both human-readable and machine-readable formats

**Task 3: Documentation Package**

Write a **Collection Policy Document** (2-3 pages) that includes:

**Scope Statement**:
- What's in this collection?
- What collection boundaries did you define?
- What's explicitly excluded?

**Capture Methodology**:
- Tools and techniques used
- Capture settings and parameters
- Date(s) of capture

**Known Limitations**:
- What couldn't be captured?
- What quality compromises were made?
- What's missing or incomplete?

**Preservation Decisions**:
- Why was this content prioritized?
- What ethical considerations arose?
- Who was consulted (if applicable)?

**Future Maintenance**:
- How often will this be re-captured (if ongoing)?
- Who's responsible for updates?
- What's the long-term plan?

**Deliverable**: 
- Upload metadata files (CSV/JSON)
- Upload Collection Policy PDF

---

#### Part 4: Ethics & Access (Due: End of Week 2)

**Navigate the ethical complexities** of preservation and access.

**Write a 4-5 page ethics analysis** addressing:

**1. Permission & Consent**

For the content you preserved:
- Did you have explicit permission?
- Was the content publicly accessible or behind login?
- If it was public, does that mean it should be preserved?
- Did you contact creators or community members?

Analyze using these frameworks:
- **Legal**: Copyright, terms of service, DMCA
- **Ethical**: Informed consent, community norms, contextual integrity
- **Practical**: What would happen if creators objected?

**2. Privacy & Harm**

Consider the risks:
- Could this preservation harm individuals?
- Is personal information exposed?
- Are there vulnerable communities involved?
- Could this be used for doxxing, harassment, or surveillance?

Apply **Helen Nissenbaum's "Contextual Integrity"**:
- What were the original context norms?
- Does preservation violate those norms?
- How can you preserve content while respecting privacy?

**3. Access Restrictions**

Design an **access policy**:

**Open Access**: Anyone can view preserved content
- When is this appropriate?
- What content should be public?

**Restricted Access**: Researchers only, registration required
- What's the justification?
- How do you verify researcher credentials?

**Dark Archive**: Preserved but not accessible
- When is preservation without access ethical?
- How do you document something you won't show?

**Embargoed**: Time-delayed release
- What embargo period makes sense?
- Who decides when to lift it?

**4. Takedown Policy**

What happens if someone objects to their content being preserved?

Write a **takedown procedure**:
- How can creators request removal?
- What's your decision process?
- Will you preserve metadata even if you remove content?
- How do you balance preservation mission vs. individual rights?

**Case Study to Address**:

*A small forum you archived includes intense personal posts from 2010-2015. Users were teens then; they're adults now. One user emails you: "I was 15 when I wrote that stuff. It's embarrassing and I don't consent to it being preserved. Delete everything I wrote."*

**What do you do?** Analyze using:
- Legal rights (terms of service, copyright)
- Ethical obligations (consent, harm)
- Preservation principles (significance, completeness)
- Practical considerations (feasibility of removal)

**Deliverable**: Upload ethics analysis essay as PDF

---

## Assessment Rubric

### Preservation System Design (20 points)
- **Completeness** (10 pts): All components specified (storage, tools, workflow)
- **Feasibility** (5 pts): Realistic for stated budget and resources
- **Documentation quality** (5 pts): Clear diagrams and explanations

### Hands-On Preservation (30 points)
- **Technical execution** (15 pts): Successfully preserved target content
- **Documentation thoroughness** (10 pts): Detailed process notes and commands
- **Quality assurance** (5 pts): Verified completeness and integrity

### Metadata & Documentation (25 points)
- **Metadata schema design** (10 pts): Appropriate fields for content type
- **Metadata quality** (10 pts): Accurate, complete records
- **Collection policy** (5 pts): Clear scope and preservation decisions

### Ethics Analysis (25 points)
- **Ethical reasoning** (15 pts): Sophisticated analysis of consent and harm
- **Access policy design** (5 pts): Thoughtful, practical restrictions
- **Takedown procedure** (5 pts): Balances preservation and individual rights

---

## Discussion Forum Prompts

**Week 1: Tool Failures**
Share a technical problem you encountered during preservation. What broke? How did you troubleshoot it? Failure is part of the process—let's learn from each other.

**Week 2: The Right to Be Forgotten**
Debate: Do individuals have a right to remove themselves from digital archives? Should Internet Archive honor takedown requests for old social media posts? Where's the line between historical preservation and personal privacy?

---

## Technical Resources & Tools

### Capture Tools

**Web Archiving**:
- **wget**: `wget --mirror --page-requisites --convert-links [URL]`
- **HTTrack**: GUI-based website copier
- **Webrecorder.io**: Browser-based high-fidelity capture
- **Browsertrix-Crawler**: Modern web archiving with JavaScript support

**Social Media**:
- **gallery-dl**: Instagram, Twitter, Reddit, Tumblr
- **youtube-dl** / **yt-dlp**: Video platform downloads
- **PSAW**: Reddit archive scraper
- **twarc**: Twitter API client for researchers

**Dynamic Content**:
- **Webrecorder Desktop**: Capture interactive web apps
- **Conifer**: Cloud-based web archiving
- **ArchiveBox**: Self-hosted archiving suite

### Storage Solutions

**Free/Cheap**:
- Internet Archive (free, unlimited)
- Backblaze B2 ($5/TB/month)
- Google Drive (15GB free, $2/100GB)

**Prosumer**:
- Synology/QNAP NAS ($400-1000 hardware)
- AWS S3 Glacier (long-term cold storage)

**Institutional**:
- Preservica (commercial DAM)
- Archivematica (open-source preservation)
- DSpace (institutional repository)

### Metadata Tools

- **OpenRefine**: Clean and transform messy data
- **Tropy**: Photo metadata management
- **Omeka**: Collection management with Dublin Core
- **ExifTool**: Extract metadata from media files

### Format Validation

- **JHOVE**: File format validation
- **DROID**: Format identification
- **Siegfried**: Fast format identification
- **MediaInfo**: Audio/video format inspector

---

## Real-World Examples

### Successful Preservation Projects

**Internet Archive**:
- 600+ billion web pages preserved
- Wayback Machine infrastructure
- $36M annual operating budget

**Archive Team**:
- 500+ platform rescue operations
- Distributed volunteer model
- Crisis response preservation

**Personal Examples**:
- Jason Scott's personal archive (500TB+)
- Decentralized social media backup tools
- Scholar-activists preserving protest movements

### Failed Preservation Attempts

**GeoCities Partial Save** (2009):
- Only ~650GB of ~1TB captured
- Lost pages still being discovered
- Lesson: Need better coordination

**Flickr Commons Near-Miss** (2019):
- Announced deletion of 1TB of photos
- Community scramble to save
- Lesson: Always have backups

---

## Recommended Supplementary Materials

### Books
- *Digital Preservation* by Ross Harvey (technical primer)
- *Preservation of Electronic Records* by William Saffady
- *Stewarding Digital Humanities* by Jennifer Guiliano

### Online Courses
- Library Juice Academy, "Digital Preservation"
- DPOE, "Digital Preservation Essentials"
- Internet Archive, "Web Archiving Basics"

### Communities
- Archive Team IRC (#archiveteam on EFNet)
- IIPC (International Internet Preservation Consortium)
- Digital Preservation Coalition

---

## Getting Help

**Office Hours**: Book time to troubleshoot technical issues

**Lab Hours**: Open lab sessions with hands-on assistance (Wed 6-8pm)

**Community Support**: Archive Team community is incredibly helpful for tool questions

**Library Resources**: Digital preservation librarian can help with metadata standards and institutional tools

---

## Next Module Preview

In **Module 3: Designing for Sovereignty**, you'll switch from Archive to Anvil. You'll apply the Three Pillars framework to design systems that CAN'T be murdered—platforms built with sovereignty principles from day one.

**Get ready to**: Audit platforms, prototype alternatives, and design for resistance against corporate control.

---

*"We do not preserve to keep the past frozen. We preserve so that the lessons of the dead can teach the living how to build systems that resist murder."*