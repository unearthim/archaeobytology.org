# Chapter 7: Archaeological Methods for Digital Artifacts

---

## Opening: The Dig Site Is Ephemeral

In 1922, Howard Carter discovered Tutankhamun's tomb. The artifacts had been buried for 3,000 years. They would remain buried for 3,000 more if Carter didn't act. But once found, he had **time**—years to carefully excavate, photograph, catalog, and preserve each object.

In 2009, Archive Team discovered that GeoCities would shut down in three weeks. The "artifacts" had existed for 15 years. They would exist for **21 more days**, then vanish forever. No time for careful documentation. No room for archaeological precision. Just frantic scraping before the servers went dark.

This is the fundamental difference between physical and digital archaeology:

**Physical archaeology:**
- Sites persist for centuries
- Excavation is slow, methodical, non-destructive
- You can return to a site years later

**Digital archaeology:**
- Sites vanish in days or weeks
- Excavation is fast, opportunistic, often destructive (scraping overloads servers)
- You get **one chance**—once the platform dies, it's gone

Yet despite these differences, physical archaeology offers valuable methods for digital practice. Stratigraphic analysis, site surveys, provenance tracking, and ethical excavation frameworks all translate to digital contexts—if adapted properly.

This chapter explores how to **excavate digital artifacts** using archaeological methods modified for digital ephemera. You'll learn:
- Site reconnaissance and mapping
- Stratigraphic analysis of digital layers
- Excavation techniques (scraping, API harvesting, forensic recovery)
- Provenance and chain-of-custody documentation
- Ethical frameworks for excavation

By the end, you'll know how to approach a dying platform like an archaeological dig site—systematic, ethical, and effective.

---

## Part I: Site Reconnaissance — Mapping the Digital Landscape

### Before You Dig: Understanding the Site

Physical archaeologists don't start digging randomly. They survey the site, create maps, test soil composition, and plan their excavation strategy. Digital archaeologists must do the same.

### Step 1: Platform Architecture Assessment

**Goal:** Understand the platform's technical structure before attempting to preserve it.

**Questions to Answer:**

**1. What type of platform is this?**
- Static website (HTML/CSS, easy to scrape)
- Dynamic web app (JavaScript-heavy, requires browser automation)
- Mobile app (API-based, may require reverse engineering)
- Forum/BBS (database-driven, need to capture structure)
- Social network (graph-based, relationships matter as much as content)

**2. What are the data types?**
- Text (posts, comments, messages)
- Images (user photos, avatars, UI elements)
- Videos (hosted on platform or embedded from elsewhere?)
- Metadata (timestamps, user IDs, like counts, tags)
- Relationships (follows, friends, replies, shares)

**3. What's the scale?**
- How many users?
- How much content (posts, pages, files)?
- How much storage required?

**4. What are the access patterns?**
- Public (anyone can view)
- Login-required (need account)
- Private/friends-only (restricted access)
- Ephemeral (content disappears after viewing, like Snapchat)

**5. What are the technical barriers?**
- Rate limiting (how many requests per hour?)
- JavaScript rendering (can't scrape with simple wget)
- CAPTCHAs (need human intervention)
- DRM/encryption (legally/technically protected)
- APIs (do they exist? are they documented?)

**Example: GeoCities Architecture Assessment (2009)**

| Dimension | Assessment |
|-----------|------------|
| Type | Static HTML sites (mostly) |
| Data types | HTML, images, GIFs, MIDI files, JavaScript |
| Scale | ~30 million sites, estimated TB of data |
| Access | Public (no login required) |
| Barriers | Rate limiting (Yahoo would block aggressive scrapers), broken links (sites linked to each other, many links dead) |
| Strategy | Distributed scraping (many volunteers, different IPs), prioritize unique content over duplicates |

### Step 2: Existing Documentation

**Check what's already known:**

**Internet Archive's Wayback Machine:**
- Has it been crawled? When? How comprehensively?
- Gaps in coverage?

**Platform's Official Archives:**
- Does the platform provide data export tools?
- What format? How complete?

**Community Knowledge:**
- Are there fan wikis, documentation, user guides?
- Former employees willing to share insider knowledge?

**Technical Documentation:**
- API documentation (if APIs exist)
- Terms of Service (what's legal to scrape?)
- robots.txt (what does platform want crawled?)

**Example: Vine Documentation Check (2016)**

- **Wayback Machine:** Some Vines captured, but incomplete (many videos not archived)
- **Official Export:** Vine provided "Download Your Vines" tool (good, but required users to act)
- **Community:** Vine Wiki documented popular creators, memes, culture
- **API:** Public API existed (allowed bulk downloading until shutdown)

**Decision:** Use API while it exists, supplement with manual scraping for videos API misses.

### Step 3: Reconnaissance Scraping

**Goal:** Capture a small sample to understand structure before full excavation.

**Method:**
1. Scrape 100-1000 pages/posts (small representative sample)
2. Analyze structure:
   - What HTML tags are used?
   - Where is metadata stored? (JSON in page source? Separate API calls?)
   - What's the URL pattern? (Can you enumerate all pages?)
3. Test tools:
   - Does wget work? Or need Selenium (browser automation)?
   - How fast can you scrape without getting blocked?

**Deliverable:** Reconnaissance report documenting:
- Platform structure
- Technical barriers
- Estimated scale
- Recommended tools
- Estimated time to complete full excavation

**Example: Small Forum Reconnaissance**

```
Platform: Example Forum (phpBB)
Date: 2024-11-15
Estimated Shutdown: 2024-12-01 (15 days)

Structure:
- Forum software: phpBB 3.2
- Content: 10,000 threads, ~50,000 posts
- Users: 1,500 registered, ~500 active

Technical Assessment:
- Public access (no login for reading)
- Standard HTML structure (easy to parse)
- URL pattern: /viewtopic.php?t=[thread_id]
- Thread IDs appear sequential (can enumerate)

Barriers:
- Rate limit: ~60 requests/minute before 503 errors
- Some images externally hosted (may be lost)
- User profile pages require login (skip for now)

Strategy:
- Use wget with --wait=1 (stay under rate limit)
- Scrape all threads over 5 days
- Capture HTML + images
- Parse HTML to extract structured data (JSON)

Estimated Storage: 2-5GB
Estimated Time: 5 days (continuous scraping)
```

---

## Part II: Stratigraphic Analysis — Understanding Digital Layers

Physical archaeologists use **stratigraphy**—the study of layers—to understand how a site was formed over time. Lower layers are older; upper layers are more recent. Disruptions in layers indicate events (fires, floods, invasions).

Digital platforms also have layers. Understanding them is crucial for preservation.

### Digital Stratigraphy: The Technology Stack

**Layer 1: Content (Surface Layer)**
- What users see: posts, images, videos
- This is the "archaeological treasure"—the artifacts themselves

**Layer 2: Metadata (Context Layer)**
- Timestamps, user IDs, like counts, tags, geolocation
- Essential for interpreting content

**Layer 3: Relationships (Social Layer)**
- Follower graphs, reply threads, retweets/shares
- Network structure that gives content meaning

**Layer 4: Platform Affordances (Infrastructure Layer)**
- Character limits (Twitter's 140/280), video length limits (Vine's 6 seconds)
- UI design (Facebook's "like" button, Tumblr's reblog)
- These shape what could be expressed

**Layer 5: Code and Protocols (Base Layer)**
- HTML/CSS, JavaScript, APIs
- The technical substrate everything else is built on

**Why This Matters:**

If you only preserve Layer 1 (content), you lose context. A tweet without timestamp, author, and reply chain is nearly meaningless. A Vine without knowledge that it's 6 seconds (platform affordance) loses its cultural significance.

**Best Practice:** Preserve **all accessible layers**, not just content.

### Temporal Stratigraphy: Change Over Time

Platforms evolve. Preserving multiple snapshots captures this evolution.

**Example: Twitter's Stratigraphy (2006-2025)**

| Period | Character Limit | Key Features | Cultural Context |
|--------|----------------|--------------|------------------|
| 2006-2009 | 140 characters | SMS-based, public only | Early adopters, tech culture |
| 2010-2013 | 140 | @mentions, hashtags, retweets | Mainstream adoption, Arab Spring |
| 2014-2017 | 140 | Embedded images/video, polls | Visual turn, meme culture |
| 2017-2022 | 280 | Threads, longer tweets | Discourse shift, Trump era |
| 2022-2025 | 280+ | Elon ownership, chaos | Decline, exodus to alternatives |

If you only archived Twitter in 2025, you'd miss how 140-character limit shaped early Twitter culture. Stratigraphic preservation (periodic snapshots) captures evolution.

### Excavating Through Layers: Practical Example

**Scenario:** Preserving a Tumblr blog (before or after NSFW purge).

**Layer 1 — Content:**
- Use Tumblr's API or export tool to download posts
- Format: JSON or HTML
- Includes text, images, embedded media

**Layer 2 — Metadata:**
- Post timestamps (when was this published?)
- Tags (how did author categorize this?)
- Post type (text, photo, quote, link, chat, audio, video)
- Note count (likes + reblogs)

**Layer 3 — Relationships:**
- Reblog chain (who reblogged from whom?)
- Follower graph (if accessible)
- External links (what other sites/blogs mentioned?)

**Layer 4 — Platform Affordances:**
- Tumblr's "reblog" culture (different from Twitter's "quote tweet")
- Tag system (used for discovery, not just categorization)
- Dashboard feed (algorithmic? chronological?)

**Layer 5 — Code:**
- Tumblr's HTML theme (custom CSS)
- Embedded JavaScript (any interactive elements?)

**Preservation Strategy:**
1. Download JSON export (Layers 1-2)
2. Scrape full HTML (captures Layer 4 affordances via design)
3. Reconstruct reblog chains from metadata (Layer 3)
4. Document platform context in README (Layer 4 cultural norms)

---

## Part III: Excavation Techniques — Tools and Methods

### Technique 1: Simple Web Scraping (Static Sites)

**Use Case:** Static HTML sites (blogs, personal homepages, early web).

**Tools:**
- **wget**: Command-line downloader (recursive crawling)
- **HTTrack**: GUI-based website copier
- **ArchiveBox**: Modern, full-featured archiver

**Example: wget Command**

```bash
wget --recursive --level=5 --no-parent --wait=1 \
     --convert-links --page-requisites \
     --user-agent="ArchiveBot/1.0" \
     https://example.com
```

**Explanation:**
- `--recursive`: Follow links
- `--level=5`: Crawl up to 5 levels deep
- `--no-parent`: Don't ascend to parent directories
- `--wait=1`: Wait 1 second between requests (polite crawling)
- `--convert-links`: Make links work offline
- `--page-requisites`: Download CSS, images, JavaScript
- `--user-agent`: Identify yourself (ethical scraping)

**Pros:**
- Fast, simple, reliable for static sites

**Cons:**
- Fails on JavaScript-heavy sites (doesn't execute JS)
- Can't handle logins or authenticated content

### Technique 2: Browser Automation (Dynamic Sites)

**Use Case:** JavaScript-heavy sites (React, Angular apps) or sites requiring interaction.

**Tools:**
- **Selenium**: Browser automation framework
- **Puppeteer**: Headless Chrome control (Node.js)
- **Playwright**: Modern cross-browser automation

**Example: Puppeteer Script (Simplified)**

```javascript
const puppeteer = require('puppeteer');
const fs = require('fs');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  
  // Navigate to page
  await page.goto('https://example.com/post/12345');
  
  // Wait for dynamic content to load
  await page.waitForSelector('.post-content');
  
  // Extract content
  const content = await page.evaluate(() => {
    return {
      title: document.querySelector('.post-title').innerText,
      body: document.querySelector('.post-content').innerText,
      timestamp: document.querySelector('.post-date').innerText
    };
  });
  
  // Save as JSON
  fs.writeFileSync('post_12345.json', JSON.stringify(content, null, 2));
  
  await browser.close();
})();
```

**Pros:**
- Handles JavaScript rendering
- Can simulate user interactions (clicks, scrolls)
- Can log in to authenticated sites

**Cons:**
- Slower than wget (must render pages)
- More complex to set up

### Technique 3: API Harvesting (Structured Data)

**Use Case:** Platforms with public APIs (Twitter, Reddit, Mastodon).

**Tools:**
- **Platform-specific libraries**: tweepy (Twitter), PRAW (Reddit)
- **HTTP clients**: curl, requests (Python), fetch (JavaScript)

**Example: Twitter API (Pre-Elon, when API was good)**

```python
import tweepy
import json

# Authenticate
auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)
api = tweepy.API(auth)

# Download user's timeline
tweets = []
for tweet in tweepy.Cursor(api.user_timeline, screen_name='example_user', tweet_mode='extended').items():
    tweets.append({
        'id': tweet.id_str,
        'text': tweet.full_text,
        'created_at': str(tweet.created_at),
        'retweet_count': tweet.retweet_count,
        'favorite_count': tweet.favorite_count
    })

# Save as JSON
with open('example_user_tweets.json', 'w') as f:
    json.dump(tweets, f, indent=2)
```

**Pros:**
- Structured data (JSON, XML)
- Includes metadata (timestamps, IDs, relationships)
- Respects rate limits (built into libraries)

**Cons:**
- Platform must have API (many don't, or shut it down before dying)
- Rate limits can be restrictive (slow)
- APIs often sunset before platforms die (Twitter 2023)

### Technique 4: Database Extraction (Direct Access)

**Use Case:** You have legitimate access to platform's database (employee, owner, partnership).

**Method:**
- SQL dump (if relational database)
- NoSQL export (if MongoDB, CouchDB, etc.)
- File system copy (if files stored on disk)

**Example: MySQL Dump**

```bash
mysqldump -u username -p database_name > backup.sql
```

**Pros:**
- Complete, perfect fidelity
- Includes all metadata, relationships, deleted content

**Cons:**
- Rare (requires cooperation from platform)
- May include sensitive data (must redact)

### Technique 5: Forensic Recovery (Post-Mortem)

**Use Case:** Platform already shut down, but you might recover fragments.

**Methods:**

**Google Cache:**
- Search `cache:example.com` in Google
- Captures recent snapshots (but only for indexed pages)

**Wayback Machine:**
- Check Internet Archive's Wayback Machine
- May have periodic snapshots

**User Backups:**
- Ask former users if they exported their data
- Crowdsource fragments

**Web Archives:**
- Other web archives (UK Web Archive, Library of Congress)

**Old Hard Drives:**
- If servers were sold/discarded, forensic data recovery possible (rare, expensive)

**Example: MySpace Music Recovery Attempt**

After MySpace lost 50 million songs (2019):
- Internet Archive had some (but not comprehensive)
- Users who downloaded MP3s shared them
- Some songs recovered via Google Cache before it expired
- Most (~90%) permanently lost

**Lesson:** Forensic recovery is last resort. Success rate is low. Better to preserve proactively.

---

## Part IV: Provenance and Chain of Custody

### Why Provenance Matters

In physical archaeology, **provenance** (where an artifact came from) is crucial. An Egyptian vase in a museum is worthless if you don't know which tomb it came from. Context gives meaning.

In digital archaeology, provenance includes:
1. **Where did you get this?** (scraped from live site? downloaded via API? recovered from backup?)
2. **When did you capture it?** (date/time of preservation)
3. **Who captured it?** (individual, institution, bot)
4. **What modifications were made?** (did you redact personal info? convert formats?)

Without provenance, digital artifacts lose credibility.

### Chain of Custody Documentation

**Best Practice:** Document every step from capture to storage.

**Template: Provenance Record**

```
Artifact: GeoCities site "geocities.com/SiliconValley/1234"
Captured: 2009-11-15 03:42 UTC
Method: wget recursive scrape
Captured By: Archive Team volunteer #7823
Source State: Live website (platform still online)
Completeness: 87% (some images 404'd during capture)
Storage: Initial storage on volunteer's hard drive
Transfer: Uploaded to Archive Team torrent 2009-11-20
Current Location: Internet Archive, GeoCities torrent seed
Format: Original HTML + images (no conversion)
Modifications: None (bit-perfect capture)
Verification: MD5 checksums recorded at capture
Access: Public (torrent freely downloadable)
```

**Why Each Field Matters:**

- **Captured date:** Proves this is snapshot from specific moment
- **Method:** Explains why some content might be missing (wget can't execute JavaScript)
- **Completeness:** Honest about gaps (87% is still valuable)
- **Chain of custody:** Volunteer → Torrent → Internet Archive (transparent)
- **Modifications:** None (proves authenticity)
- **Verification:** Checksums prove files unchanged since capture

### Metadata Standards

Use existing standards when possible:

**Dublin Core:**
- Standard metadata for digital objects
- Fields: Creator, Date, Title, Description, Format, Rights

**METS (Metadata Encoding and Transmission Standard):**
- Library of Congress standard
- Used for complex digital objects (multiple files, relationships)

**PREMIS (Preservation Metadata):**
- Focuses on provenance and preservation actions
- Records: who did what, when, why

**Example: Dublin Core for Preserved Vine**

```xml
<metadata>
  <dc:title>Vine #284619204 "Why You Always Lying"</dc:title>
  <dc:creator>Nicholas Fraser (@downgoes.fraser)</dc:creator>
  <dc:date>2015-09-02</dc:date>
  <dc:type>Video (6 seconds, looped)</dc:type>
  <dc:format>MP4 (H.264)</dc:format>
  <dc:description>Viral Vine meme, 30M+ loops, inspired song</dc:description>
  <dc:rights>Fair Use (platform shutdown, cultural preservation)</dc:rights>
  <dc:source>Vine.co (platform shut down 2017)</dc:source>
  <dc:coverage>Internet Archive, Vine Archive Collection</dc:coverage>
  <dc:identifier>IA-Vine-284619204</dc:identifier>
</metadata>
```

---

## Part V: Ethical Excavation

### Archaeology's Ethical Evolution

Physical archaeology has a dark history:
- Colonial looting (British Museum filled with stolen artifacts)
- Destroying sites (19th-century excavations were destructive)
- Ignoring indigenous communities (treating their ancestors as "objects of study")

Modern archaeology has reformed:
- **Repatriation**: Returning artifacts to communities of origin
- **Community consultation**: Indigenous peoples have say in excavations
- **Non-destructive methods**: Ground-penetrating radar instead of digging
- **Context preservation**: Documenting everything, not just taking treasures

**Digital archaeology must learn these lessons.**

### Ethical Principles for Digital Excavation

**1. Minimize Harm**

**To the platform:**
- Don't overload servers (respect rate limits)
- Identify your scraper (user-agent string)
- Stop if platform asks (honor robots.txt)

Even if you oppose the platform's business model, harming their infrastructure isn't ethical (hurts users, not executives).

**To users:**
- Don't expose private information
- Respect deleted content (if user intentionally deleted, presume they wanted it gone—with exceptions for public figures)

**2. Respect robots.txt (Mostly)**

`robots.txt` is a file that tells crawlers what they can/can't scrape.

**Example:**
```
User-agent: *
Disallow: /private/
Disallow: /user-settings/
Allow: /public/
```

**Ethical debate:**
- **Strict interpretation**: Always obey robots.txt (it's the site owner's wishes)
- **Preservation exception**: Platform is dying, robots.txt doesn't apply (saving culture > obeying soon-to-be-dead platform)

**Compromise:**
- Respect robots.txt for living platforms
- Override for dying platforms (with documentation: "We scraped despite robots.txt because platform announced shutdown")

**3. Document Ethical Decisions**

When you make ethically contested choices (scraping private content, overriding robots.txt, preserving deleted posts), **document why**.

**Example:**

```
ETHICAL NOTE: Tumblr Post #12345

This post was deleted by the author in 2018 (pre-NSFW purge).
We preserved it because:
1. Author is public figure (political activist with 100k followers)
2. Post documents historically significant event (protest organization)
3. Post was public for 3 years (widely shared, cited in news)

However, we restricted access:
- Not searchable via Google
- Requires researcher credentials to view
- Will honor takedown request if author contacts us

Decision made: 2024-11-15
Decision maker: [Archivist ID]
```

**Transparency builds trust.**

**4. Community Consultation (When Possible)**

If you're preserving a community's content (fandom, activist group, cultural community), **ask them**.

**Example: Fan Fiction Archive**

Before scraping abandoned LiveJournal fandom:
1. Post in fandom spaces: "We're considering archiving [fandom] LiveJournal. Thoughts?"
2. Listen to concerns (privacy, consent, cultural norms)
3. Adapt plans (maybe restrict access, or honor individual takedown requests)

Not always possible (no time, or community scattered). But when possible, consultation is ethical.

**5. Allow Takedowns**

Even after preserving, respect author requests to remove their content.

**Process:**
1. Public takedown request form
2. Verify requester is original author (prevent abuse)
3. Remove content within reasonable time (7-30 days)
4. Document removal (provenance: "Content removed 2024-11-20 at author's request")

---

## Part VI: Case Study — Excavating a Dying Forum

### Scenario: Small Community Forum (2024)

**Background:**
- Forum: "VintageGamers" (retro gaming community)
- Software: vBulletin 3.8 (old forum software)
- Content: 15 years of discussions (2009-2024)
- Size: 5,000 members, 100,000 posts
- Announcement: Shutting down in 30 days (hosting costs too high)

**Reconnaissance (Days 1-3):**

1. **Platform assessment:**
   - vBulletin forum (database-driven)
   - Public content (no login to read, but login to see images)
   - URL pattern: `/showthread.php?t=[thread_id]`
   - Estimated 10,000 threads

2. **Existing documentation:**
   - Not in Internet Archive (robots.txt blocked crawlers)
   - No official export tool
   - Community members panicking, want it saved

3. **Contact admin:**
   - Email forum owner: "Can you provide database dump?"
   - Owner agrees! (relieved someone cares)
   - Owner provides MySQL dump (20MB compressed)

**Database Excavation (Days 4-7):**

1. **Import database locally:**
   ```bash
   mysql -u root -p < vintagegamers_backup.sql
   ```

2. **Analyze schema:**
   - Tables: `posts`, `threads`, `users`, `attachments`
   - Relationships: `thread_id` links posts to threads
   - Metadata: timestamps, user IDs, post counts

3. **Export to JSON:**
   ```python
   import mysql.connector
   import json
   
   db = mysql.connector.connect(host="localhost", user="root", password="...", database="vintagegamers")
   cursor = db.cursor()
   
   # Export threads
   cursor.execute("SELECT thread_id, title, user_id, post_date FROM threads")
   threads = [{'id': row[0], 'title': row[1], 'user_id': row[2], 'date': str(row[3])} for row in cursor.fetchall()]
   
   with open('threads.json', 'w') as f:
       json.dump(threads, f, indent=2)
   
   # (Repeat for posts, users, etc.)
   ```

4. **Download attachments:**
   - Images stored in `/attachments/` directory
   - Use wget to download all:
   ```bash
   wget -r -l 1 -A jpg,png,gif https://vintagegamers.com/attachments/
   ```

**Curation (Days 8-14):**

1. **Redact personal info:**
   - Email addresses in user profiles → removed
   - IP addresses in logs → removed
   - Private messages → excluded from export

2. **Add metadata:**
   - Create `README.md` documenting forum history
   - List notable threads ("Best of VintageGamers")
   - Interview longtime members (oral history)

3. **Build search interface:**
   - Use Elasticsearch to index posts
   - Simple web UI: search by keyword, date, user

**Preservation (Days 15-30):**

1. **Upload to Internet Archive:**
   - Create "VintageGamers Archive" collection
   - Upload database dump, JSON exports, attachment images, README

2. **Seed BitTorrent:**
   - Create torrent of full archive
   - Ensure redundancy (if IA ever goes down)

3. **Announce to community:**
   - Post in forum: "Archive complete! Here's where to find it."
   - Community grateful, downloads personal copies

**Provenance Record:**

```
Archive: VintageGamers Forum (2009-2024)
Captured: 2024-11-01 to 2024-11-15
Method: MySQL database dump provided by forum administrator
Captured By: [Archaeobytologist Name], with admin cooperation
Completeness: 100% (full database export)
Redactions: Email addresses, IP addresses, private messages removed
Storage: Internet Archive + BitTorrent
Format: MySQL dump (raw), JSON (parsed), HTML (rendered)
Access: Public (Internet Archive), with restricted personal data
License: CC BY-NC-SA 4.0 (preserves community content, non-commercial)
```

**Outcome:**
- Forum shuts down on schedule
- 100% of content preserved
- Community can still access their history
- Future researchers can study retro gaming community

---

## Conclusion: The Archaeologist's Mindset

Digital excavation isn't just about running scripts. It's about bringing an **archaeological mindset** to ephemeral platforms:

**1. Systematic:** Survey before digging. Plan your excavation. Document everything.

**2. Stratigraphic:** Preserve all layers (content, metadata, relationships, affordances), not just surface.

**3. Contextual:** Provenance matters. Where did this come from? When? Who captured it?

**4. Ethical:** Minimize harm. Respect communities. Be transparent about contested choices.

**5. Urgent:** Unlike physical archaeology, you don't have centuries. You have days or weeks. Move fast—but systematically.

In the next chapter, we'll dive deeper into **Digital Forensics**—the technical methods for recovering data from damaged, corrupted, or deliberately deleted sources. Sometimes, platforms don't give you clean MySQL dumps. Sometimes, you're working with fragments, corrupted files, and deleted evidence.

Digital forensics teaches you how to work with what's broken.

---

## Discussion Questions

1. **Methodology:** Should digital archaeology prioritize speed (scrape everything quickly) or precision (careful documentation)? How do you balance urgency with rigor?

2. **Ethics:** Is it ethical to scrape a platform that explicitly forbids it (robots.txt, ToS) if the platform is dying and content will be lost?

3. **Provenance:** Why does documenting where you got an artifact matter? What happens if provenance is unclear or contested?

4. **Stratigraphic Layers:** What digital "layers" do you think are most important to preserve? Content? Metadata? Relationships? Platform affordances?

5. **Community Consultation:** When is it necessary to consult communities before preserving their content? When is it acceptable to preserve without asking?

6. **Personal Practice:** Have you ever "excavated" your own digital artifacts (downloaded Facebook archive, exported tweets)? What did you learn?

---

## Exercise: Plan a Digital Excavation

**Scenario:** A platform you use announces shutdown in 60 days. Plan its excavation.

**Choose a platform:**
- Small forum you participate in
- Discord server you're part of
- Niche social network
- Personal blog community

**Part 1: Reconnaissance Report** (500 words)
- Platform type, scale, data types
- Technical barriers (login walls, APIs, rate limits)
- Existing documentation (Wayback Machine, community wikis)
- Estimated preservation time and storage

**Part 2: Excavation Strategy** (800 words)
- What tools will you use? (wget, Puppeteer, API clients)
- What layers will you preserve? (content, metadata, relationships)
- What's your timeline? (week-by-week plan)
- How will you handle rate limits or technical barriers?

**Part 3: Ethical Framework** (500 words)
- What content should NOT be preserved? (privacy, consent, harm)
- Will you respect robots.txt? Why/why not?
- Will you consult the community? How?
- How will you handle takedown requests?

**Part 4: Provenance Documentation** (300 words)
- Write a provenance record for your imagined excavation
- Include: capture method, date, completeness, modifications, storage

**Part 5: Reflection** (200 words)
- What's the hardest part of this excavation?
- What ethical dilemmas did you face?
- Would you actually do this if the platform announced shutdown?

---

## Further Reading

### On Web Archiving Methods

- Brügger, Niels. *The Archived Web: Doing History in the Digital Age*. MIT Press, 2018.
  - How to work with web archives as historical sources

- Niu, Jinfang. "An Overview of Web Archiving." *D-Lib Magazine* 18, no. 3/4 (2012).
  - Technical methods for web preservation

- Archive Team. "So You Want to Archive a Website." https://wiki.archiveteam.org/
  - Practical guide from guerrilla archivists

### On Digital Forensics

- Carrier, Brian. *File System Forensic Analysis*. Addison-Wesley, 2005.
  - Technical deep dive on recovering deleted data

- Kirschenbaum, Matthew. *Mechanisms: New Media and the Forensic Imagination*. MIT Press, 2008.
  - Humanistic approach to digital forensics

### On Archaeological Methods (Physical)

- Renfrew, Colin, and Paul Bahn. *Archaeology: Theories, Methods, and Practice*. Thames & Hudson, 2016.
  - Classic textbook (useful for understanding stratigraphic thinking)

- Hodder, Ian. "The Interpretation of Documents and Material Culture." In *Handbook of Qualitative Research*, edited by Norman Denzin and Yvonna Lincoln, 393-402. Sage, 2000.
  - Interpretive archaeology (translates to digital context)

### On Ethics

- Society for American Archaeology. "Principles of Archaeological Ethics." https://www.saa.org/
  - Professional ethics code (adaptable to digital)

- Caswell, Michelle. *Urgent Archives: Enacting Liberatory Memory Work*. Routledge, 2021.
  - Ethics of archiving marginalized communities

---

**End of Chapter 7**

*Next: Chapter 8 — Digital Forensics for Archaeobytologists*

