# Chapter 10: Triage Workflow — From Discovery to Preservation

---

## Opening: The Clock Is Always Ticking

**March 17, 2023, 9:47 AM:** A Discord message in the Archive Team channel: "Credit Karma is shutting down their forums on April 15th. 28 days. Thousands of posts about personal finance from 2007-2023. Anyone on this?"

**9:52 AM:** Three people respond. They've never worked together before. One is a college student in California. One is a librarian in Germany. One is a retired programmer in Ohio.

**10:15 AM:** They've created a shared spreadsheet, assigned tasks, and started reconnaissance.

**April 14th, 11:58 PM:** The scraping is complete. 47,000 posts, 8,200 users, 16 years of financial advice—all captured. Total time: 27 days, 14 hours. They did it.

**April 15th, 12:01 AM:** Credit Karma's forums go offline. The original URLs return 404 errors. But the archive exists—backed up to Internet Archive, stored on three personal servers, uploaded as a torrent.

This is **triage workflow** in action: from discovery to preservation in less than a month. Every step matters. Every hour counts. One mistake, one delay, and the content is lost forever.

This chapter teaches you the **complete triage workflow**—an 8-phase process tested across hundreds of platform deaths. Whether you have 48 hours or 6 months, this framework will guide you from panic to preservation.

---

## The 8-Phase Triage Workflow

### Overview

**Phase 1: Discovery** — Detecting that content is endangered  
**Phase 2: Assessment** — Understanding scope, urgency, and feasibility  
**Phase 3: Mobilization** — Assembling team and resources  
**Phase 4: Capture** — Executing the scrape/download/preservation  
**Phase 5: Validation** — Verifying data integrity  
**Phase 6: Storage** — Securing long-term preservation  
**Phase 7: Access** — Making content discoverable and usable  
**Phase 8: Documentation** — Recording what you did and why  

Each phase has specific goals, tools, and decision points. Let's explore them in detail.

---

## Phase 1: Discovery — Detecting Endangerment

### Goal
Identify that content is at risk of disappearing before it's too late.

### Common Discovery Channels

**1. Official Announcements**
- Platform posts shutdown notice (GeoCities, Vine, Google+)
- Company blog, email to users, platform notification
- **Timeline:** Usually 30-90 days warning (sometimes less)

**2. Financial/Business Signals**
- Company files bankruptcy
- Acquisition by competitor (often precedes shutdown)
- Mass layoffs, especially engineering
- Stopping development (no updates in 12+ months)
- **Timeline:** Months to years before actual shutdown

**3. User Exodus**
- Mass migration to alternatives
- "I'm leaving [platform], find me at..." posts
- Decline in active users
- **Timeline:** Can indicate slow death (years) or precede rapid collapse

**4. Technical Degradation**
- Frequent outages
- Bugs not being fixed
- Security vulnerabilities left unpatched
- **Timeline:** Months before shutdown (or years of zombie state)

**5. Community Monitoring**
- Archive Team's Deathwatch (tracks endangered sites)
- Social media warnings (Twitter/Reddit threads)
- Journalism (tech news covering potential shutdowns)
- **Timeline:** Varies (can be early warning or last-minute)

**6. Policy Changes**
- Terms of Service updates that hostile to users
- Monetization changes (introducing paywalls, removing features)
- Content purges (Tumblr NSFW ban)
- **Timeline:** Immediate (policy goes into effect) or weeks

### Discovery Tools and Practices

**Proactive Monitoring:**
- Subscribe to platform announcements (email, RSS, social media)
- Use website monitoring tools (detect when site goes down)
- Follow tech journalism (The Verge, TechCrunch, Ars Technica)
- Join Archive Team Discord/IRC (community shares warnings)

**Reactive Response:**
- When you hear rumor, investigate immediately
- Don't wait for official confirmation (sometimes never comes)
- Err on side of caution (preserve early rather than late)

### Decision Point: Is This Worth Investigating?

**Rapid Assessment (5 minutes):**
- **Scale:** How much content exists?
- **Cultural value:** Does anyone care if this disappears?
- **Urgency:** How imminent is the threat?
- **Existing preservation:** Is someone else already handling this?

If answers suggest "yes, endangered and valuable," proceed to Phase 2.

---

## Phase 2: Assessment — Understanding the Challenge

### Goal
Determine scope, technical requirements, ethical concerns, and resource needs before committing to preservation.

### Assessment Checklist

#### A. Scope Assessment

**Content Inventory:**
- How many pages/posts/users/files?
- What media types? (text, images, video, audio, documents)
- What time span? (1 year? 20 years?)
- What languages/communities represented?

**Example: Credit Karma Forums**
- 47,000 posts across 12 subforums
- Text + occasional images (hosted externally)
- 2007-2023 (16 years)
- Primarily English, US-focused

**Storage Estimate:**
- Text: ~500 words/post × 47k posts = 23.5M words ≈ 150MB text
- Images: ~500 external links, assume 20% capturable = 100 images × 500KB = 50MB
- **Total estimated:** 200MB (small! very doable)

#### B. Technical Assessment

**Platform Architecture:**
- Static HTML or dynamic JavaScript?
- Public access or login-required?
- API available? Rate limits?
- Search/browse mechanisms?

**Preservation Difficulty:**
- Easy (wget-able): ★☆☆☆☆
- Medium (requires browser automation): ★★★☆☆
- Hard (heavily DRM'd, real-time only): ★★★★★

**Tools Needed:**
- Basic scraping: wget, HTTrack, ArchiveBox
- Dynamic sites: Selenium, Playwright, browser automation
- API harvesting: Python scripts, API clients
- Forensic recovery: specialized tools (if site partially dead)

**Example: Credit Karma Forums Technical Profile**
- Dynamic site (JavaScript-rendered pagination)
- Login required (but free account creation)
- No public API
- **Difficulty:** ★★★☆☆ (need browser automation + account)

#### C. Urgency Assessment

**Time Until Loss:**
- Shutdown announced: Count down from announcement date
- No announcement but signs of death: Estimate (weeks? months?)
- Already partially dead: URGENT (capture what remains)

**Timeline Categories:**
- **Critical (< 1 week):** Drop everything, act now
- **Urgent (1-4 weeks):** High priority, mobilize quickly
- **High (1-3 months):** Important, plan thoroughly
- **Medium (3-6 months):** Time for systematic approach
- **Low (6+ months):** Monitor, begin planning

**Example: Credit Karma**
- 28 days from discovery to shutdown = **Urgent**
- Can't be leisurely, but can plan

#### D. Resource Assessment

**Labor:**
- Can one person do this? Or need team?
- How many hours estimated?
- What skills needed? (coding, systems admin, metadata, etc.)

**Infrastructure:**
- How much storage? (Do you have it?)
- Bandwidth? (Will download take days?)
- Computing power? (Scraping 10M pages needs beefy machine)

**Budget:**
- Free (volunteer labor + personal resources)?
- Small budget ($100-1000 for servers/storage)?
- Grant-funded ($10k+ for major project)?

**Example: Credit Karma**
- Labor: 2-3 people, ~40 hours each (part-time over 4 weeks)
- Storage: 200MB (trivial—USB drive sufficient)
- Bandwidth: Minimal (small text files)
- Budget: $0 (volunteer effort)

#### E. Ethical Assessment (Custodial Filter)

**Cultural Significance:** Medium-high (personal finance advice, especially recession-era)

**Technical Fragility:** High (28 days to shutdown)

**Rescue Feasibility:** Medium (doable with browser automation)

**Redundancy:** None (no other known preservation effort)

**Ethical Concerns:**
- Privacy: Posts may contain personal financial details
- Consent: Users didn't expect permanent archiving
- Harm potential: Low (financial advice, not doxxing or harassment)

**Decision:** **Preserve with restricted access**
- Capture everything
- Researcher-only access (not public searchable web)
- Allow user-requested takedowns

#### F. Legal Assessment

**Copyright:**
- Who owns the content? (Platform TOS usually claims license, but users retain copyright)
- Fair use argument? (Archiving for research/scholarship)
- DMCA risk? (Platform could issue takedown if they notice)

**Terms of Service:**
- Does TOS forbid scraping? (Usually yes, but rarely enforced for preservation)
- Are you violating contract by scraping? (Technically yes, but ethical override)

**Privacy Laws:**
- GDPR (if EU users)? Right to be forgotten vs. archival interest
- CCPA (California)? Data export vs. data retention

**Risk Assessment:**
- Low risk: Defunct platform unlikely to sue preservationists
- Medium risk: Active platform might send cease-and-desist
- High risk: Legally protected content (DRM, government secrets)

**Example: Credit Karma**
- Fair use: Strong argument (educational/research archiving)
- TOS violation: Yes, but platform dying (unlikely to enforce)
- Privacy: Medium concern (financial discussions)
- **Risk:** Low overall (proceed but don't publicize widely)

### Output of Phase 2: Go/No-Go Decision

After assessment, decide:

**GO**: Proceed with preservation
- Timeline: [realistic schedule]
- Team needed: [number of people, skills]
- Tools required: [specific software/hardware]
- Budget: [if any]
- Ethical framework: [access restrictions, takedown policy]

**NO-GO**: Don't preserve (because...)
- Too large (beyond capacity)
- Too technically difficult (lack skills/tools)
- Ethically problematic (more harm than good)
- Redundant (someone else already doing it better)
- Not urgent (can wait, revisit later)

**DEFER**: Monitor but don't act yet
- Not urgent enough
- Waiting for more information
- Hoping platform survives

---

## Phase 3: Mobilization — Assembling Resources

### Goal
Get team, tools, and infrastructure ready before capture begins.

### 3A: Team Formation

**Solo vs. Collaborative:**

**When to work solo:**
- Small project (< 100 hours work)
- Simple tools (basic scraping)
- No deadline pressure (can take months)

**When to recruit team:**
- Large project (> 100 hours)
- Tight deadline (need parallel effort)
- Specialized skills needed (you can't do everything)

**Recruiting:**
- **Archive Team Discord/IRC:** Post call for volunteers
- **Social media:** Twitter, Reddit (r/DataHoarder)
- **Academic networks:** Colleagues, students
- **Local communities:** Library listservs, tech meetups

**Team Roles:**
- **Coordinator:** Manages overall effort, tracks progress
- **Technical lead:** Designs scraping strategy, writes code
- **Scrapers:** Run tools, troubleshoot issues
- **Validators:** Check data integrity, spot gaps
- **Metadata curator:** Organizes captured content
- **Legal/ethical advisor:** Navigates consent/privacy issues

**Example: Credit Karma Team**
- 3 volunteers (found via Archive Team)
- Coordinator = college student (had free time, organized)
- Technical lead = retired programmer (wrote scraping scripts)
- Scraper = librarian (ran tools, captured pages)

### 3B: Tool Selection and Setup

**Scraping Tools:**

**Static Sites:**
- `wget` (command-line, recursive downloading)
- `HTTrack` (GUI, mirrors entire websites)
- `ArchiveBox` (modern, all-in-one archiving)

**Dynamic Sites (JavaScript-heavy):**
- `Selenium` (browser automation, Python/Java)
- `Playwright` (modern alternative to Selenium)
- `Puppeteer` (Node.js browser control)

**API Harvesting:**
- `PRAW` (Reddit API, Python)
- `Tweepy` (Twitter API, Python)
- Custom scripts (platform-specific APIs)

**Forensic Recovery:**
- `Webrecorder` (captures dynamic content, WARC format)
- `Heritrix` (Internet Archive's crawler)
- `Browsertrix Crawler` (cloud-based crawling)

**Example: Credit Karma Stack**
- Selenium (browser automation for dynamic pagination)
- Python (scripting)
- SQLite (local database to track progress)
- rsync (backup to multiple locations)

### 3C: Infrastructure Setup

**Storage:**
- Local: External hard drives (cheap, reliable for small projects)
- Cloud: AWS S3, Google Cloud Storage (for large projects)
- Distributed: IPFS, BitTorrent (censorship-resistant)
- Institutional: University servers, Internet Archive

**Compute:**
- Personal laptop (small projects)
- VPS (DigitalOcean, Linode) (medium projects, avoid IP bans)
- Cloud compute (AWS EC2) (large-scale scraping)

**Bandwidth:**
- Residential internet: Usually sufficient (but may hit caps)
- VPS/cloud: Unmetered bandwidth (expensive but fast)

**Backup Strategy:**
- **3-2-1 rule:** 3 copies, 2 different media types, 1 offsite
- Real-time sync (rsync while scraping, don't wait until end)
- Checksums (verify data integrity)

**Example: Credit Karma Infrastructure**
- Storage: 3 USB drives (1 per team member) + Internet Archive upload
- Compute: Personal laptops (no VPS needed, small scale)
- Bandwidth: Residential (200MB download didn't strain anything)

### 3D: Coordination Tools

**Communication:**
- Discord/Slack (real-time chat)
- GitHub Issues (track tasks, bugs)
- Shared spreadsheet (who's doing what, progress tracking)

**Documentation:**
- Wiki or shared doc (technical notes, scraping strategies)
- Git repository (for code)
- Progress log (daily updates)

**Example: Credit Karma Coordination**
- Discord private channel (3-person team)
- Google Spreadsheet (tracking forum sections, who scraped what)
- GitHub repo (Python scripts + documentation)

---

## Phase 4: Capture — Executing the Preservation

### Goal
Download/scrape/capture the endangered content before it disappears.

### 4A: Capture Strategy

**Breadth vs. Depth:**
- **Breadth-first:** Capture as many items as possible (may be shallow)
- **Depth-first:** Capture complete item details (may miss some items)

**Example:**
- Breadth: Scrape all post titles and links (fast, ensures you have IDs)
- Depth: Download full post content, comments, attachments (slower, but complete)

**Best practice:** Breadth first (get IDs of everything), then depth (fill in details). If time runs out, you at least have a list of what existed.

**Parallelization:**
- Multiple scrapers running simultaneously (different sections/users)
- Be careful: Too aggressive = IP ban
- Use delays, rotate IPs/user agents

### 4B: Capture Execution

**Step 1: Initial Crawl (Breadth)**
- Map the site structure (what sections exist?)
- Enumerate all items (posts, users, pages)
- Store URLs/IDs in database

**Step 2: Content Download (Depth)**
- For each item, fetch full content
- Save text, images, videos, metadata
- Record relationships (replies, quotes, etc.)

**Step 3: Iterative Refinement**
- Identify gaps (missing content, broken links)
- Re-scrape failed items
- Validate as you go (don't wait until end)

**Example: Credit Karma Capture Process**

**Day 1-3: Reconnaissance**
- Manually browse forums to understand structure
- Identify 12 subforums, ~4,000 threads per forum
- Estimate: 47,000 posts total

**Day 4-7: Initial Crawl**
- Selenium script navigates forum pages
- Extracts thread IDs and post IDs
- Stores in SQLite database (47,211 post IDs captured)

**Day 8-20: Content Download**
- For each post ID, fetch:
  - Post text (HTML + plaintext)
  - Author username and join date
  - Timestamp (posted date)
  - Like/reply counts
  - Quoted text (if reply)
- Save as JSON files (one per post)
- Progress: ~2,500 posts/day (3 people × ~800 posts each)

**Day 21-26: Gap Filling**
- Identified 342 posts that failed to download (timeouts, errors)
- Re-scraped with slower rate
- Success: 47,155 / 47,211 (99.88% capture rate)

**Day 27: Final Validation**
- Spot-checked 100 random posts (all looked good)
- Calculated checksums for all files
- Created manifest (list of all files + checksums)

### 4C: Dealing with Technical Challenges

**Challenge 1: Rate Limiting**
- Platform blocks you after X requests per minute
- **Solution:** Add delays (time.sleep() between requests), rotate IPs (VPN/proxies), use multiple accounts

**Challenge 2: JavaScript Rendering**
- Content doesn't appear in raw HTML (loaded by JS)
- **Solution:** Use browser automation (Selenium, Playwright), not simple wget

**Challenge 3: Login Walls**
- Need account to access content
- **Solution:** Create throwaway account (use privacy-respecting email), automate login in scraper

**Challenge 4: CAPTCHAs**
- Bot detection blocks automated access
- **Solution:** Manual CAPTCHA solving, CAPTCHA-solving services (2captcha, anti-captcha), reduce scraping speed (look more human)

**Challenge 5: Dynamic URLs**
- URLs change on each visit (session IDs, tokens)
- **Solution:** Extract content IDs, construct stable URLs, use API if available

**Challenge 6: Server Instability**
- Dying platform's servers are flaky (timeouts, errors)
- **Solution:** Retry failed requests, save progress frequently, accept imperfect capture

### 4D: Ethical Boundaries During Capture

**Don't:**
- Overload dying servers (cause outage for remaining users)
- Scrape private content without consent
- Violate clear legal restrictions (DRM-protected content)
- Ignore takedown requests (if someone asks you to stop, consider it)

**Do:**
- Be respectful (slow scraping, don't hammer servers)
- Document decisions (why you preserved X but not Y)
- Provide opt-out (let people request removal later)

---

## Phase 5: Validation — Verifying Data Integrity

### Goal
Ensure captured data is complete, accurate, and uncorrupted.

### 5A: Completeness Checks

**Quantitative:**
- Did you get everything? (Compare scraped count to expected count)
- How many items failed? (Acceptable loss rate: < 1%)

**Example: Credit Karma**
- Expected: 47,211 posts
- Captured: 47,155 posts
- Missing: 56 posts (0.12% loss—acceptable)

**Qualitative:**
- Random sampling: Spot-check 100 items (do they look correct?)
- Edge cases: Check first post, last post, longest post, shortest post
- Relationships: Do replies correctly link to parent posts?

### 5B: Integrity Checks

**File Corruption:**
- Generate checksums (MD5, SHA-256) for every file
- Verify checksums after transfer (detect corruption during copy)

**Format Validation:**
- Are files readable? (Open JSON, parse HTML, view images)
- Are encodings correct? (UTF-8 for text, not garbled)

**Metadata Accuracy:**
- Timestamps make sense? (No posts "from the future")
- Usernames consistent? (No missing or duplicated users)

### 5C: Documentation of Gaps

**What's Missing:**
- List items you couldn't capture (with reasons)
- Example: "Posts 234, 457, 891 returned 404 (already deleted before scrape)"

**Known Issues:**
- Broken images (external links dead)
- Incomplete threads (some replies missing)
- Corrupted formatting (HTML parser issues)

**Why Documentation Matters:**
- Future researchers need to know limits of collection
- Transparency about what's incomplete
- Legal protection ("we preserved what we could access")

---

## Phase 6: Storage — Long-Term Preservation

### Goal
Store captured data securely with redundancy for decades-long access.

### 6A: Storage Formats

**Raw Captures:**
- WARC files (Web ARChive format—standard for web preservation)
- JSON (structured data, easy to parse)
- Database dumps (SQL exports)

**Derived Formats:**
- Static HTML (browseable offline)
- PDFs (human-readable, archival quality)
- CSV (for datasets, spreadsheet-compatible)

**Media:**
- Images: PNG/JPEG (lossless or high-quality)
- Video: MP4/WebM (widely supported codecs)
- Audio: FLAC/MP3 (lossless or high-bitrate)

**Example: Credit Karma Storage**
- Primary: JSON files (one per post) + SQLite database
- Derived: Static HTML site (browseable offline)
- Uploaded: WARC files to Internet Archive

### 6B: Redundancy Strategy

**Local Redundancy:**
- Multiple hard drives (3+ copies)
- Different physical locations (not all in one apartment)

**Cloud Redundancy:**
- Upload to Internet Archive (free, stable institution)
- AWS S3 Glacier (cheap long-term storage, but not free)
- IPFS (distributed, censorship-resistant)

**Community Redundancy:**
- Torrent (BitTorrent allows distributed hosting)
- Share with other archivists (trust network)

**Example: Credit Karma Redundancy**
1. USB drive #1 (coordinator's backup)
2. USB drive #2 (technical lead's backup)
3. USB drive #3 (scraper's backup)
4. Internet Archive upload (public institution)
5. BitTorrent (uploaded to Archive Team tracker)

**Result:** 5 copies, multiple custodians, extremely unlikely to be fully lost

### 6C: Metadata Preservation

**Collection-level metadata:**
- What is this? (Credit Karma Forums archive)
- When was it captured? (March-April 2023)
- Who captured it? (Archive Team volunteers)
- How much? (47,155 posts, 8,200 users)
- What's missing? (56 posts unavailable)

**Item-level metadata:**
- Post ID, author, timestamp, content, replies, likes

**Technical metadata:**
- Scraping tools used
- Checksums for files
- File formats and encodings

**Store metadata in:**
- README.md (human-readable)
- JSON manifest (machine-readable)
- Dublin Core XML (library standard)

---

## Phase 7: Access — Making Content Discoverable

### Goal
Ensure captured content is usable by researchers, communities, and the public.

### 7A: Access Levels

**Public Access:**
- Full content searchable on open web
- **Appropriate for:** Public posts, low privacy concerns, culturally significant
- **Example:** Internet Archive's Wayback Machine

**Researcher Access:**
- Require application, academic credentials, or agreement
- **Appropriate for:** Sensitive content, privacy concerns, contested material
- **Example:** University archives with restricted collections

**Community Access:**
- Available only to original community members
- **Appropriate for:** Private forums, cultural protocols (Indigenous archives)
- **Example:** Invite-only Discord with archived content

**Dark Archive:**
- Preserved but not accessible (yet)
- **Appropriate for:** Ethically fraught content, legal uncertainty, time embargo
- **Example:** Preserve now, review access in 50 years

**Example: Credit Karma Access Decision**
- Public metadata (list of posts, authors, dates)—searchable
- Full content researcher-only (financial details sensitive)
- User-requested takedowns honored

### 7B: Access Infrastructure

**Static HTML Site:**
- Browse/search offline or on local server
- Tools: Custom scripts, static site generators (Hugo, Jekyll)

**Database + Web Interface:**
- MySQL/PostgreSQL + web app (Flask, Django)
- Allows advanced search, filtering

**Upload to Platforms:**
- Internet Archive (free hosting, discoverable)
- GitHub (for code + datasets < 100GB)
- Zenodo (academic datasets, DOI assignment)

**Example: Credit Karma Access**
- Static site generated from JSON (browseable offline)
- Uploaded to Internet Archive (public metadata + researcher-access content)
- Torrent (full download for other archivists)

### 7C: Discovery Mechanisms

**How do people find this archive?**

**Documentation:**
- Blog post announcing completion
- Social media (Twitter, Reddit)
- Archive Team wiki page

**Indexing:**
- Internet Archive indexed by Google
- Scholarly databases (if deposited to university)

**Community Outreach:**
- Contact original users (if possible)
- Notify journalists/researchers who might care

---

## Phase 8: Documentation — Recording the Process

### Goal
Document what you did, why, and what happened for future archivists and researchers.

### 8A: Technical Documentation

**Scraping Process:**
- What tools? What settings?
- How long did it take?
- What worked? What failed?

**Challenges Encountered:**
- Technical problems and solutions
- Rate limiting workarounds
- Data quality issues

**Final Statistics:**
- Items captured
- Storage size
- Time spent
- Team size

**Example: Credit Karma Documentation (excerpt)**

```
# Credit Karma Forums Archive - Technical Documentation

## Timeline
- Discovery: March 17, 2023
- Capture: March 19 - April 14, 2023 (27 days)
- Shutdown: April 15, 2023

## Team
- 3 volunteers (Archive Team)

## Tools
- Selenium (Python) for browser automation
- SQLite for progress tracking
- rsync for backups

## Statistics
- 47,155 posts captured (99.88% of estimated total)
- 8,200 unique users
- 2007-2023 (16 years of content)
- Total size: 187 MB (compressed)

## Challenges
- Dynamic pagination required browser automation
- Server timeouts during peak hours (scraped during US nighttime)
- 56 posts returned 404 (likely deleted by users before scrape)

## Storage
- 5 redundant copies (3 USB drives, Internet Archive, BitTorrent)
```

### 8B: Ethical Documentation

**Decisions Made:**
- Why this content?
- Why this access level?
- How did you handle privacy/consent?

**Takedown Policy:**
- How can people request removal?
- What's your response process?

**Future Considerations:**
- Should access restrictions be lifted eventually?
- Who decides?

### 8C: Historical Documentation

**Why This Mattered:**
- What was this platform's cultural significance?
- Who used it? For what?
- Why did it die?

**Contextual Essay:**
- Write 500-1000 words explaining the platform and its role
- Include for future researchers who won't remember it

**Example: Credit Karma Context (excerpt)**

> Credit Karma was a free credit-monitoring service that launched forums in 2007. During the Great Recession (2008-2009), these forums became a vital resource for people navigating financial hardship—debt, bankruptcy, foreclosure, unemployment. Users shared advice, support, and strategies for rebuilding credit. The forums remained active through 2023, documenting 16 years of American financial struggles and recovery. Credit Karma shut down the forums as part of a platform redesign focused on mobile apps. The decision prioritized sleek user experience over community memory, erasing nearly two decades of peer support and financial education.

### 8D: Lessons Learned

**What Would You Do Differently?**
- Start earlier?
- Use different tools?
- Recruit more help?

**Advice for Future Archivists:**
- What worked well?
- What to avoid?

**Meta-Reflection:**
- How did this project change your thinking about preservation?

---

## Case Study: The Complete Triage Workflow in Action

### The GeoCities Rescue (2009)

Let's trace the entire workflow through Archive Team's legendary GeoCities rescue:

**Phase 1: Discovery**
- October 26, 2009: Yahoo announces GeoCities will shut down November 26
- Archive Team hears via tech news
- **Timeline: 31 days**

**Phase 2: Assessment**
- Scope: ~30 million sites (estimated 10+ TB of data)
- Technical: Simple HTML (mostly), but massive scale
- Urgency: Critical (1 month)
- Resources: Volunteer network (Archive Team has ~50 active members)
- Ethics: Public content, cultural treasure, no privacy concerns
- **Decision: GO (this is huge, we must try)**

**Phase 3: Mobilization**
- Team: ~100 volunteers recruited (IRC, Twitter)
- Roles: Coordinators (tracked progress), scrapers (ran wget), validators (checked captures)
- Tools: wget (simple but effective for static HTML)
- Infrastructure: Personal computers + Internet Archive upload
- Coordination: Archive Team IRC channel (24/7 chat)

**Phase 4: Capture**
- Strategy: Divide by "neighborhoods" (GeoCities organized sites into themed sections: /SiliconValley/, /Tokyo/, etc.)
- Each volunteer took a neighborhood
- Breadth-first: Enumerate all sites, then download content
- Challenges: Yahoo rate-limited aggressive scrapers (volunteers rotated IPs, added delays)
- **Result: 650 GB captured** (fraction of total, but significant)

**Phase 5: Validation**
- Checked file counts, looked for corruption
- Known gaps: Many sites missed (not enough time/bandwidth)
- **Completeness: ~10-15%** (still, 650GB is massive)

**Phase 6: Storage**
- Uploaded to Internet Archive
- Created BitTorrent (distributed to hundreds of archivists)
- Multiple volunteers kept local copies

**Phase 7: Access**
- Internet Archive hosts browseable interface
- BitTorrent available for full download
- OoCities.org (community project to host GeoCities mirrors)

**Phase 8: Documentation**
- Archive Team wiki documents entire process
- Media coverage (Wired, Ars Technica, NPR)
- Academic papers cite GeoCities archive

**Legacy:**
- GeoCities rescue established Archive Team's reputation
- Proved that volunteer networks can save platforms
- Inspired future rescues (Vine, Google+, Yahoo Groups, etc.)

---

## Workflow Variations for Different Scenarios

### Scenario 1: Emergency Triage (< 48 hours)

**Compress the workflow:**
- **Phase 1 (Discovery):** Immediate (someone alerts you)
- **Phase 2 (Assessment):** 30 minutes (quick check)
- **Phase 3 (Mobilization):** 1 hour (grab tools, alert others)
- **Phase 4 (Capture):** 24-36 hours (aggressive scraping, accept gaps)
- **Phase 5 (Validation):** Minimal (spot-check, full validation later)
- **Phase 6 (Storage):** Quick upload to Internet Archive
- **Phase 7 (Access):** Defer (just preserve first, organize later)
- **Phase 8 (Documentation):** Brief notes (expand later)

**Priority:** Speed over perfection. Save something rather than nothing.

### Scenario 2: Systematic Preservation (6+ months)

**Expand the workflow:**
- **Phase 2:** Thorough assessment (weeks of analysis)
- **Phase 3:** Professional team (hire researchers, not just volunteers)
- **Phase 4:** Careful capture (high fidelity, complete metadata)
- **Phase 5:** Extensive validation (manual review of samples)
- **Phase 6:** Archival-quality storage (institutional partnerships)
- **Phase 7:** Polished access (custom web interface, finding aids)
- **Phase 8:** Scholarly publication (write paper on process + findings)

**Priority:** Quality and comprehensiveness. Create gold-standard archive.

### Scenario 3: Guerrilla Archiving (Legal Gray Area)

**Stealth considerations:**
- **Phase 3:** Work solo or small trusted team (no public announcements)
- **Phase 4:** Use VPN/Tor (anonymize scraping)
- **Phase 6:** Encrypted storage (protect yourself if content controversial)
- **Phase 7:** Dark archive or anonymous torrent (not publicly credited)
- **Phase 8:** Minimal documentation (protect participants)

**Priority:** Survival (yours and the archive's). Preserve ethically but carefully.

---

## Conclusion: The Workflow Is Your Map

Digital preservation under deadline is chaos. Platforms die with little warning. Servers vanish. URLs break. The clock ticks down.

**The workflow is your map through chaos.** It won't make preservation easy, but it will make it systematic. When you panic (and you will), return to the workflow:

1. **What phase am I in?**
2. **What's the goal of this phase?**
3. **What's the next action?**

The workflow has been tested across hundreds of platform deaths. It works. It's saved millions of digital artifacts. It will guide you through your first rescue—and your hundredth.

Next chapter: **Part III: Institution Building** begins. We've learned to excavate, analyze, triage, and preserve. Now we must build institutions that can sustain this work for decades—organizations that outlive founders, survive funding crises, and resist corporate capture.

The rescue is only the beginning. The real work is building systems that prevent future murders.

But first: practice the workflow. Find an endangered platform. Walk through the phases. Preserve something.

The clock is always ticking. Start now.

---

## Discussion Questions

1. **Personal Experience**: Have you ever tried to preserve digital content before a deadline (even personal—like backing up your own social media)? What went well? What did you wish you'd known?

2. **Workflow Adaptation**: Which scenario (emergency, systematic, guerrilla) would be hardest for you? Why? What skills would you need to develop?

3. **Team Dynamics**: The Credit Karma example had 3 strangers collaborate effectively. What made that work? What could go wrong?

4. **Validation Trade-offs**: In emergency triage, validation is minimal. How do you decide "good enough" when perfection isn't possible?

5. **Access Decisions**: The Credit Karma archive restricted full content to researchers. Agree or disagree? Where would you draw the line?

6. **Future Scenarios**: Imagine a platform shutdown in 2030. What might be different (technology, laws, culture)? How would the workflow need to adapt?

---

## Exercise: Conduct a Practice Triage

**Scenario**: It's November 2025. A small platform called "BookTalk" (fictional) announces it will shut down in 60 days. It's a reading discussion forum with:
- 5,000 users
- 250,000 posts (book reviews, discussion threads)
- 15 years of history (2010-2025)
- Dynamic JavaScript site (requires login)

**Your Task**: Walk through the 8-phase workflow.

**Phase 1: Discovery** (Already done—you just heard the news)

**Phase 2: Assessment** (500 words)
- Complete the assessment checklist
- Scope, technical, urgency, resources, ethics, legal
- Make a GO/NO-GO decision

**Phase 3: Mobilization** (300 words)
- Would you work solo or recruit a team?
- What tools would you use?
- What infrastructure do you need?

**Phase 4: Capture** (500 words)
- Design your scraping strategy
- Breadth vs. depth approach
- Timeline (how many days for each step?)
- What could go wrong?

**Phase 5: Validation** (200 words)
- How would you verify completeness?
- What checks would you run?

**Phase 6: Storage** (300 words)
- What formats?
- How many redundant copies?
- Where would you store them?

**Phase 7: Access** (300 words)
- What access level? (public, researcher, community, dark)
- Why?
- How would people discover this archive?

**Phase 8: Documentation** (200 words)
- What would you document?
- For whom?

**Reflection** (300 words)
- What was hardest to decide?
- What would you need to learn to actually do this?
- Would you commit to this project? Why or why not?

---

## Further Reading

### On Preservation Workflows

- Bailey, Jefferson. "Disrespect des Fonds: Rethinking Arrangement and Description in Born-Digital Archives." *Archive Journal* 3 (2013).
- Lee, Christopher. "A Framework for Contextual Information in Digital Collections." *Journal of Documentation* 67, no. 1 (2011): 95-143.
- Prom, Christopher. "Managing Risks in Web Archiving: Best Practices and Guidelines." *Digital Preservation Coalition*, 2018.

### On Rapid Response Archiving

- Archive Team. "Warrior Documentation." https://wiki.archiveteam.org/index.php/ArchiveTeam_Warrior
- Brügger, Niels. "Web Archiving: The Urgent Need for Preservation." In *Web Archiving*, edited by Niels Brügger and Ralph Schroeder, 1-20. MIT Press, 2017.
- Summers, Ed, et al. "Learning to Crawl: Towards a Framework for the History of Web Archiving." *International Journal of Digital Humanities* 1 (2019): 105-124.

### On Data Integrity and Validation

- Duranti, Luciana, and Corinne Rogers. "Trust in Digital Records: An Increasingly Cloudy Legal Area." *Computer Law & Security Review* 28, no. 5 (2012): 522-531.
- Rosenthal, David S.H. "Formats Considered Harmful." *iPRES 2014 Conference* (2014).

### On Access and Ethics

- Caswell, Michelle. "Seeing Yourself in History: Community Archives and the Fight Against Symbolic Annihilation." *The Public Historian* 36, no. 4 (2014): 26-37.
- Punzalan, Ricardo, and Michelle Caswell. "Critical Directions for Archival Approaches to Social Justice." *Library Quarterly* 86, no. 1 (2016): 25-42.

### Primary Sources

- Archive Team Wiki. https://wiki.archiveteam.org/
- Internet Archive. "Wayback Machine Documentation." https://archive.org/web/
- Digital Preservation Coalition. "Rapid Assessment Model." https://www.dpconline.org/

---

**End of Chapter 10**

*Next: Part III — Institution Building*
*Chapter 11 — Sustainable Preservation Organizations: Building the Archive*

