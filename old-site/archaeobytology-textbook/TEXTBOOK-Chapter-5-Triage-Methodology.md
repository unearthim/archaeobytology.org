# Chapter 5: Triage Methodology — The Custodial Filter and Ethical Preservation

---

## Opening: The Impossible Choice

October 16, 2016. Vine announces it will shut down in three months. Archive Team mobilizes immediately, but the math is brutal:

- **200 million videos** exist on Vine
- **Three months** until shutdown
- **Limited volunteers**, storage, and bandwidth

Even working around the clock, they can't save everything. They must choose.

Do they prioritize:
- **Viral videos** (most cultural impact, but already widely copied)?
- **Marginalized creators** (underrepresented voices, but lower view counts)?
- **Complete user archives** (preserving entire creator portfolios, but means fewer total creators saved)?
- **Representative sampling** (cross-section of Vine culture, but many individual voices lost)?

Every choice means something else dies. Every video saved means another left behind.

This is **triage**—borrowed from battlefield medicine, where doctors must decide which wounded soldiers to treat first when resources are scarce. In emergency rooms, triage saves lives by allocating attention efficiently. In digital preservation, triage saves culture by allocating effort strategically.

But triage is agony. It forces us to confront uncomfortable truths:
- Not everything can be saved
- Some artifacts matter more than others
- Scarcity requires hierarchy
- Every preservation decision is also a decision to let something die

This chapter explores how to make those impossible choices—not perfectly (perfection is impossible), but **ethically, systematically, and transparently**.

We call this framework the **Custodial Filter**: a methodology for deciding what to preserve, when to preserve it, and when—painfully—to let go.

---

## Part I: The Ethics of Triage

### Why Triage Is Necessary

**Infinite Culture, Finite Resources**

The internet produces content at a rate no human effort can fully capture:
- **Twitter**: 500 million tweets per day (2023)
- **YouTube**: 720,000 hours of video uploaded daily
- **Instagram**: 95 million photos and videos daily
- **TikTok**: Unknown, but comparable to YouTube
- **Plus**: Blogs, forums, Discord servers, newsletters, personal websites, etc.

Even with unlimited storage (which doesn't exist), the **labor of curation**—adding metadata, providing context, ensuring accessibility—is scarce.

**Platform Death Accelerates Urgency**

When a platform announces shutdown, the timeline collapses:
- GeoCities: 3 weeks warning
- Vine: 3 months warning
- Google Reader: 4 months warning
- Tumblr NSFW purge: 2 weeks warning

In crisis mode, triage becomes life-or-death for artifacts.

**Preservation Requires Stewardship**

Saving bits is relatively cheap (storage costs drop constantly). But **meaningful preservation** requires:
- Metadata creation (who, what, when, why, context)
- Format migration (as technology evolves)
- Access infrastructure (search, browse, display)
- Legal navigation (copyright, privacy, consent)
- Institutional maintenance (organizations must survive decades)

These activities consume human time and expertise—resources that will always be scarce.

### The Ethical Stakes of Triage

**Who Decides What's Worth Saving?**

Triage decisions encode **power and values**:
- If we prioritize "viral" content, we amplify mainstream voices and erase margins
- If we prioritize "cultural significance," we risk bias toward dominant cultures
- If we prioritize ease of preservation, we lose complex, fragile artifacts
- If we prioritize consent, we may lose important historical evidence

Every triage framework embodies ethical commitments, whether explicit or not.

**The Permanence of Loss**

Physical artifacts can be rediscovered—buried ruins excavated, manuscripts found in attics. But digital artifacts **vanish completely** when platforms shut down. There's no archaeological dig 100 years later to recover what we failed to save.

Triage decisions are **irreversible**. What we don't preserve now is lost forever.

**The Burden of Custodianship**

To preserve is to claim **custodial responsibility**:
- You decide what future generations can know about this era
- You become a gatekeeper—your choices shape historical memory
- You bear ethical weight of what you saved and what you didn't

This burden can't be escaped. Even choosing *not* to preserve is a choice with consequences.

---

## Part II: The Custodial Filter — A Five-Question Framework

The **Custodial Filter** is a systematic methodology for triage. Before preserving any artifact, ask five questions:

### Question 1: Cultural Significance

**Does this artifact represent a community, movement, or cultural moment that would otherwise be lost?**

**Criteria:**
- **Representational value**: Does it document an underrepresented community?
- **Historical importance**: Does it capture a significant event or movement?
- **Aesthetic innovation**: Does it represent creative achievement or technical pioneering?
- **Community meaning**: Do people who created/used this consider it important?

**High Significance Examples:**
- **Early Black Twitter threads** (2010-2015): Document emergence of hashtag activism (#BlackLivesMatter, #SayHerName)
- **Early trans YouTubers** (2006-2012): Chronicle transition vlogs before mainstream visibility
- **GeoCities fan communities** (1995-2000): Archive of early fandom, particularly marginalized fandoms (slash fiction, queer representation)

**Lower Significance Examples:**
- **Corporate spam accounts**: Minimal cultural value, widely preserved elsewhere if needed
- **Duplicate viral videos**: Already archived by multiple sources
- **Auto-generated content**: Bot posts with no human creative input

**Challenge: Whose Significance?**

What's "significant" is contested:
- Academic historians prioritize different artifacts than community members
- Mainstream culture dismisses subcultures as trivial (but those subcultures have rich internal meaning)
- Future generations may value what present dismisses

**Best Practice:** Default to **over-preservation** when significance is uncertain. We can't predict what future scholars will want to study.

### Question 2: Technical Fragility

**How close to disappearance is this artifact?**

**Fragility Spectrum:**

**Critical (Hours/Days)**
- Platform announced shutdown imminent
- Server errors suggest infrastructure collapse
- DMCA takedowns being issued
- Legal threats to hosting

**High (Weeks/Months)**
- Platform announced future shutdown
- Company in financial distress
- Terms of Service changes pending (mass deletions coming)
- Migration waves beginning (users leaving)

**Medium (Years)**
- Platform declining but stable
- No imminent shutdown threat
- Content still accessible but endangered long-term

**Low (Decades)**
- Stable institutions (library collections, government archives)
- Already preserved with redundancy
- Open formats, no proprietary lock-in

**Triage Priority:**
- **Critical fragility → Act immediately** (even if cultural significance is uncertain)
- **Low fragility → Defer** (focus on more endangered artifacts)

**Example: GeoCities vs. Library of Congress**

When both GeoCities and LOC's web archive need attention:
- **GeoCities**: Critical fragility (3 weeks to shutdown) → Priority 1
- **LOC**: Low fragility (institutional stability, funded mandate) → Priority 3

### Question 3: Rescue Difficulty

**How hard is this artifact to preserve?**

**Ease Assessment:**

**Easy (Can automate)**
- Static HTML pages (wget scraper)
- Public APIs with bulk export
- Standard formats (plain text, images, HTML)
- Already-crawled by Internet Archive

**Medium (Requires manual effort)**
- Dynamic content (JavaScript-heavy sites)
- Private/login-walled content
- Embedded media (Flash, Java applets)
- Metadata extraction needed

**Hard (Technical barriers)**
- Complex databases without export tools
- DRM-protected content
- Real-time/ephemeral content (Snapchat stories, Clubhouse rooms)
- Server-side logic required for functionality

**Very Hard (Near-impossible)**
- Fully encrypted with lost keys
- Proprietary formats with no documentation
- Deleted content with no backups
- Hardware-specific content (arcade games requiring original boards)

**Triage Tension:**

Should you spend 100 hours preserving one hard artifact, or preserve 100 easy artifacts in the same time?

**No universal answer**, but factors to consider:
- If hard artifact is uniquely significant (e.g., only documentation of a marginalized community), worth the effort
- If easy artifacts are low-significance duplicates, hard artifact may be better use of time
- If you're in crisis mode (imminent shutdown), prioritize quantity (easy artifacts)

**Example: Flash Games**

Flashpoint Project prioritized Flash games (medium-hard difficulty) because:
- High cultural significance (entire generation's childhood)
- Critical fragility (Flash Player discontinued)
- Doable difficulty (emulation possible with effort)

They chose one hard project over many easy ones—and succeeded.

### Question 4: Existing Redundancy

**Is someone else already preserving this?**

**Check for Redundancy:**
- **Internet Archive's Wayback Machine**: Has it been crawled?
- **Library of Congress**: Do they have it? (Web archive, Twitter archive)
- **Other institutions**: University archives, national libraries, museums
- **Community efforts**: Fan archives, Discord channels, subreddit backups
- **Individual users**: Have creators exported their own content?

**Redundancy Matrix:**

| Situation | Action |
|-----------|--------|
| No one preserving | **Urgent priority** (you might be the only chance) |
| One fragile preservation | **Valuable redundancy** (create backup of backup) |
| Multiple stable institutions | **Lower priority** (focus elsewhere unless you add unique value) |
| Already in Internet Archive + LOC + universities | **Deprioritize** (unless you're doing different kind of curation) |

**Exception: "Preserve Differently"**

Even if something is archived, you might preserve it differently:
- Internet Archive: Comprehensive but minimal metadata
- Your project: Smaller sample with rich contextualization
- Both add value

**Example: Vine**

Internet Archive scraped Vine comprehensively (quantity). Individual fans created curated collections (quality—"Best Vines 2013-2017"). Both were valuable.

### Question 5: Consent and Ethics

***Should* we preserve this?**

This is the hardest question—and the one most often skipped. Just because you *can* preserve something doesn't mean you *should*.

**Ethical Red Flags:**

**Privacy Violations**
- Personal information shared under expectation of ephemerality (Snapchat-style content)
- Medical, financial, or intimate details
- Children's content (especially if they can't consent now)
- Location data that could enable stalking

**Potential for Harm**
- Revenge porn or non-consensual intimate images
- Doxxing (personal addresses, phone numbers)
- Harassment campaigns
- Misinformation that continues to cause harm

**Contested Consent**
- Creator deleted content intentionally (wanted it forgotten)
- Content was private or "friends-only" (context collapse if made public)
- Platform TOS forbade scraping (legal gray area)

**Cultural Sensitivity**
- Indigenous knowledge that communities want kept within community
- Religious or spiritual content with access restrictions
- Closed cultural practices not meant for outsiders

**Trauma and Re-traumatization**
- 9/11 jumper photos (newsworthy but deeply painful)
- Mass shooting livestreams
- Graphic violence or suffering

**The Ethical Tension:**

Preservation often conflicts with privacy/consent:
- **Historian's view**: "Everything is historically important; preserve now, restrict access if needed"
- **Privacy advocate's view**: "People have a right to be forgotten; preservation without consent is violence"

**No Easy Resolution**, but principles to guide:

**Principle 1: Minimize Harm**
- If preserving causes direct, immediate harm (endangers someone's safety), don't do it
- Example: Don't archive doxxing threads that reveal someone's address

**Principle 2: Respect Explicit Deletion**
- If a creator *intentionally* deleted something (not platform-deleted), presume they wanted it gone
- Exception: Public figures, historical importance (politicians deleting compromising tweets)

**Principle 3: Restrict Access When Appropriate**
- Preserve but don't make public (researcher-only access, embargoes)
- Example: Archive controversial forum but require IRB approval to access

**Principle 4: Community Consultation**
- When preserving community-created content, ask the community
- Example: Indigenous archives often require tribal consultation

**Principle 5: Transparent Decision-Making**
- Document *why* you preserved or didn't
- Allow for appeals/reconsideration

**Case Study: Tumblr NSFW Purge**

In 2018, Tumblr banned all "adult content," deleting millions of posts, many of which were:
- LGBTQ+ identity exploration
- Sex education resources
- Art (nudes, erotic fiction)
- Sex worker portfolios

**Ethical Dilemma:** Should archivists preserve purged content?

**Arguments FOR:**
- Cultural/historical significance (LGBTQ+ history)
- Censorship resistance (corporation shouldn't decide what's "obscene")
- Creators may have lost only copies

**Arguments AGAINST:**
- Some creators wanted content ephemeral (chosen not to archive personally)
- Adult content has complex consent issues (performers may not want redistribution)
- Legal risks (some purged content may have been illegal, archivists don't want liability)

**What Actually Happened:**
- Some archivists saved portions (research access only)
- Many creators self-archived (exported their own blogs)
- Much was permanently lost (no comprehensive rescue)

**Ethical Assessment:**
- No single right answer
- Case-by-case determination based on consent signals, cultural value, harm potential

---

## Part III: The Triage Decision Matrix

Combine all five questions into a **scoring system** to prioritize artifacts systematically.

### Scoring Framework (0-5 scale for each dimension)

**Cultural Significance** (0 = spam, 5 = irreplaceable cultural artifact)

**Technical Fragility** (0 = stable/safe, 5 = will disappear in hours)

**Rescue Feasibility** (0 = impossible, 5 = trivial to preserve; *inverted for priority*)

**Redundancy Gap** (0 = many redundant copies, 5 = unique, no other preservation)

**Ethical Clarity** (0 = serious ethical problems, 5 = clearly ethical to preserve)

### Example Triage Matrix: Vine Shutdown

| Artifact | Significance | Fragility | Feasibility | Redundancy | Ethics | **Total** | **Priority** |
|----------|--------------|-----------|-------------|------------|--------|-----------|--------------|
| Viral memes (already copied) | 4 | 5 | 5 | 2 | 5 | 21 | Medium |
| Small creator archives | 5 | 5 | 4 | 5 | 5 | 24 | **High** |
| Corporate brand accounts | 2 | 5 | 5 | 1 | 5 | 18 | Low |
| Private accounts | 3 | 5 | 3 | 5 | 2 | 18 | Low (ethics) |
| Representative sample | 4 | 5 | 5 | 4 | 5 | 23 | High |

**Priority Ranking:**
1. **Small creator archives** (24 points) — Unique voices, no other preservation, highly fragile
2. **Representative sample** (23 points) — Cultural cross-section, high feasibility
3. **Viral memes** (21 points) — Significant but already widely copied
4. **Private accounts** (18 points) — Ethical concerns override other factors
5. **Corporate accounts** (18 points) — Low cultural value

### Triage in Action: Three Scenarios

#### Scenario 1: Imminent Shutdown (48 hours)

**Situation:** Small forum announces shutdown in 2 days. 10,000 posts, no warning.

**Triage Decision:**
- **Significance**: Medium (small community, but may be only documentation)
- **Fragility**: Critical (48 hours)
- **Feasibility**: Medium (need to scrape + login walls)
- **Redundancy**: High (probably no one else saving)
- **Ethics**: Medium (public forum, but check for privacy issues)

**Action:** **Immediate scrape**. Archive everything, sort out curation later. In crisis, preservation > perfection.

**Method:**
1. Use wget or HTTrack to scrape visible content
2. Ask community members for database dump (if possible)
3. Archive now, curate later (when not under deadline)

#### Scenario 2: Declining Platform (1-2 years warning)

**Situation:** Google+ shutdown announced for 2019. Company gives 1 year notice.

**Triage Decision:**
- **Significance**: Medium (smaller than Facebook/Twitter, but had communities)
- **Fragility**: High (shutdown certain) but not immediate
- **Feasibility**: Medium-high (Google provided data export tools)
- **Redundancy**: Low (Google+ not widely archived)
- **Ethics**: High (users had export options, most content public)

**Action:** **Systematic preservation with community partnership**

**Method:**
1. Partner with Internet Archive for Wayback crawls
2. Create guides for users to export their own data
3. Identify high-value communities (e.g., Photography+ had professional communities)
4. Curate sample collections (not everything, but representative)
5. Take full year to do it right (not crisis mode)

#### Scenario 3: Ongoing Platform with Contested Content

**Situation:** Twitter still operational, but waves of account suspensions. Some suspended accounts have historically important content.

**Triage Decision:**
- **Significance**: Varies (some accounts very significant, others not)
- **Fragility**: Medium (accounts suspended but may be reinstated, or may be permanent)
- **Feasibility**: High (if archived before suspension; impossible after)
- **Redundancy**: Low (Twitter doesn't preserve suspended accounts)
- **Ethics**: Complex (some suspensions justified, some censorship)

**Action:** **Selective proactive archiving with ethical review**

**Method:**
1. Identify accounts with high historical/cultural value (activists, journalists, politicians)
2. Proactively archive (before suspension) using tools like Twitter Archiver
3. For already-suspended: check if Internet Archive captured (Wayback Machine)
4. Ethical case-by-case: Don't archive hate groups, do archive wrongfully suspended activists
5. Restrict access for contentious material (researcher-only)

---

## Part IV: Practical Triage Workflows

### Workflow 1: Crisis Triage (Platform Shutdown Imminent)

**Phase 1: Assess (Hours 1-4)**
1. How much time until shutdown?
2. How much content exists?
3. Who else is archiving?
4. What tools are available?

**Phase 2: Mobilize (Hours 4-24)**
1. Recruit volunteers (Archive Team, Twitter, Reddit)
2. Set up infrastructure (servers, storage, coordination)
3. Divide labor (different people scrape different sections)

**Phase 3: Execute (Remaining time)**
1. **Quantity over quality**: Save everything you can
2. Metadata is secondary (just get the bits)
3. Accept losses (you won't get everything)

**Phase 4: Post-Shutdown**
1. Consolidate scraped data
2. Remove duplicates
3. Begin curation (add metadata, organize)
4. Make accessible (upload to Internet Archive, create search interface)

**Example: GeoCities Rescue**
- 3 weeks warning → Archive Team scraped 650GB
- Post-shutdown → Organized into browseable torrent
- Years later → Cameron's World and other curated projects emerged

### Workflow 2: Anticipatory Preservation (Platform Declining)

**Phase 1: Monitor (Ongoing)**
- Watch for signs of platform instability (layoffs, financial trouble, user exodus)
- Begin proactive archiving *before* shutdown announced

**Phase 2: Plan (When decline evident)**
1. Identify most valuable content (communities, creators, cultural artifacts)
2. Assess redundancy (what's already archived?)
3. Develop curation strategy (can't save everything, but can save representative sample)

**Phase 3: Execute (Before crisis)**
1. Methodical crawling (not frantic scraping)
2. Add metadata as you go
3. Coordinate with platform (ask for data dumps, export tools)

**Phase 4: Maintain (After shutdown)**
1. Preserve archives long-term (storage, format migration)
2. Make accessible (search, browse, context)
3. Document (write history of the platform for future scholars)

**Example: LiveJournal Migration**
- Decline gradual (2007-2017)
- Many users migrated to Dreamwidth, taking archives
- Internet Archive captured public posts
- By time Russian ownership happened (2017), most preservation already done

### Workflow 3: Continuous Curation (Ongoing Platforms)

**Phase 1: Define Scope**
- You can't archive the entire internet
- Choose specific communities, topics, or creators to follow

**Phase 2: Automate**
- Set up tools to continuously archive (RSS readers, auto-scrapers, bot accounts)
- Example: ArchiveTeam's "web sheriff" bots monitor for site deaths

**Phase 3: Curate Regularly**
- Review captured content quarterly
- Add metadata, context, interpretation
- Identify gaps (what are you missing?)

**Phase 4: Respond to Crises**
- When your monitored platforms face threats, escalate to crisis mode
- You have head start (already archiving proactively)

**Example: Internet Archive's Wayback Machine**
- Continuous crawling since 1996
- 800+ billion pages captured
- When site dies, already have historical snapshots

---

## Part V: Ethical Edge Cases

### Edge Case 1: The Deleted Tweet from a Public Figure

**Scenario:** A politician tweets something racist, then deletes it 20 minutes later. Should you archive it?

**Ethical Considerations:**

**FOR Archiving:**
- Public figure's public statement (not private communication)
- Accountability: politicians should be held responsible for their words
- Historical record: deletion is an act of historical revisionism

**AGAINST Archiving:**
- Person deleted it (signal they regret it, want it forgotten)
- Could be taken out of context or misunderstood
- Perpetuates harm by keeping racist content circulating

**Custodial Filter Analysis:**
- **Significance**: High (public accountability)
- **Fragility**: Critical (already deleted, may vanish from screenshots)
- **Feasibility**: Easy (single tweet, text)
- **Redundancy**: Medium (others likely screenshotted, but could be lost)
- **Ethics**: Medium-high (public figure, accountability trumps right to be forgotten)

**Recommendation:** **Preserve with context**
- Archive the tweet + surrounding context (what prompted it, reactions, apology if any)
- Include in politician's archival record
- Make accessible (not hidden, but not amplified—no need to splash it on front page)

### Edge Case 2: The Fan Fiction Archive

**Scenario:** A LiveJournal community for a specific fandom (slash fiction, LGBTQ+ content) is abandoned. Creators have scattered. Should you archive?

**Ethical Considerations:**

**FOR Archiving:**
- LGBTQ+ cultural history (much early queer culture happened in fandom)
- Risk of permanent loss (creators may not have backups)
- Literary/cultural value (transformative works, creative community)

**AGAINST Archiving:**
- Many authors used pseudonyms, may not want real identities connected
- Some authors were minors when writing (consent issues)
- Fan fiction culture values ephemerality (archives disrupt gift economy)
- Copyright gray area (transformative works, but still derivative)

**Custodial Filter Analysis:**
- **Significance**: High (queer history, literary culture)
- **Fragility**: High (no one maintaining it)
- **Feasibility**: Medium (may need login, scraping fanfic sites common)
- **Redundancy**: Low (likely not preserved elsewhere)
- **Ethics**: Complex (consent unclear, cultural sensitivity needed)

**Recommendation:** **Archive with restrictions**
1. Scrape the content (preserve the bits)
2. Don't make fully public (no Google indexing)
3. Researcher access only (require application, explain use)
4. Allow author-requested takedowns (if someone says "please remove my fic," do it)
5. Document the community culture (not just stories, but context of why this mattered)

### Edge Case 3: The Hate Forum

**Scenario:** A white supremacist forum announces shutdown. It documents radicalization pathways and extremist organizing. Should you archive?

**Ethical Considerations:**

**FOR Archiving:**
- Research value (understanding radicalization, deradicalization efforts need data)
- Legal accountability (evidence of planned violence)
- Historical record (documenting extremism is important, even/especially if ugly)

**AGAINST Archiving:**
- Amplifies hate speech (giving platform to harmful ideology)
- Could be used as recruitment tool (if archive is public)
- Privacy of victims (hate content often targets individuals)
- Moral complicity (by preserving, are you endorsing?)

**Custodial Filter Analysis:**
- **Significance**: Medium-high (historical/research value, but harmful)
- **Fragility**: High (extremist sites often shut down by hosts or law enforcement)
- **Feasibility**: Medium (may require Tor, technical barriers)
- **Redundancy**: Low (mainstream archives avoid extremist content)
- **Ethics**: Low (serious concerns about harm)

**Recommendation:** **Very restricted archive, if at all**

**Option A (Maximum Security):**
1. Archive for research only (no public access)
2. Require IRB approval + academic credentials to access
3. Redact personal information of victims
4. Coordinate with law enforcement (if active threats)
5. Provide to hate-monitoring organizations (ADL, SPLC)

**Option B (Don't Archive):**
- Some things should be lost
- If research value is low and harm potential is high, destruction is ethical
- Document that it existed (metadata, description) without preserving content itself

**Most archivists choose Option A:** Preserve but lock down tightly. History includes ugly things, and understanding extremism requires evidence.

### Edge Case 4: The Private Message Leak

**Scenario:** Someone leaks a trove of private Discord messages revealing corporate malfeasance. The messages are newsworthy but were shared under expectation of privacy. Should you archive?

**Ethical Considerations:**

**FOR Archiving:**
- Public interest (corporate wrongdoing should be documented)
- Whistleblower protection (if original leaker is endangered, redundant copies help)
- Historical record (evidence of how corporations operate behind closed doors)

**AGAINST Archiving:**
- Privacy violation (people wrote those messages expecting privacy)
- Consent (participants didn't agree to archiving)
- Collateral damage (leaks often include innocent bystanders' private info)

**Custodial Filter Analysis:**
- **Significance**: High (public interest, accountability)
- **Fragility**: Medium (leak may be taken down via DMCA, threats)
- **Feasibility**: Easy (already leaked, just need to copy)
- **Redundancy**: Medium (likely others saving, but could be suppressed)
- **Ethics**: Low-medium (privacy violation vs. public interest)

**Recommendation:** **Selective archive with redaction**
1. Archive the newsworthy messages (evidence of wrongdoing)
2. Redact personal information of non-involved parties (people who just happened to be in the server)
3. Remove sensitive personal details (even of wrongdoers—focus on the malfeasance, not their kids' names)
4. Make available to journalists and researchers
5. Consider time embargo (publish now, release full archive in 10 years when people involved are less vulnerable)

**Principle:** Public interest can override privacy, but minimize collateral damage.

---

## Part VI: Institutional Triage Policies

### Building a Triage Policy for Your Organization

If you're creating an archive, museum, or preservation institution, codify your triage principles:

**Policy Components:**

**1. Mission Statement**
- What are you preserving and why?
- Example: "We preserve LGBTQ+ digital culture to ensure queer history isn't erased"

**2. Significance Criteria**
- What makes something worth preserving in your collection?
- Be specific: representational gaps, community value, historical importance

**3. Ethical Red Lines**
- What will you NOT preserve, no matter what?
- Examples: "We do not preserve non-consensual intimate images" or "We do not archive active doxxing campaigns"

**4. Restricted Access Guidelines**
- Under what conditions do you restrict access?
- Who can access restricted materials?

**5. Takedown Process**
- How can people request removal of material?
- What's the review process?

**6. Transparency Commitment**
- How do you document triage decisions?
- Do you publish criteria publicly?

**Example: The Internet Archive's Policy (Simplified)**

- **Mission**: "Universal access to all knowledge"
- **Significance**: Broad crawling (no strict curation—preserve as much as possible)
- **Ethics**: Respect robots.txt (if site owner says "don't crawl," they don't), DMCA takedowns honored
- **Access**: Public by default, but allow author/site owner opt-out
- **Transparency**: Public-facing form for takedown requests, documents policies on website

**Example: A Hypothetical Trans Archive's Policy**

- **Mission**: "Preserve trans people's digital self-documentation and community organizing"
- **Significance**: Prioritize trans creators, especially early/formative content (pre-2010), survival resources, community organizing
- **Ethics**: Strong consent focus—reach out to creators when possible, honor deletion requests, never out people
- **Access**: Public access for educational/research use, but some material (private forums, DMs) restricted to trans researchers only
- **Transparency**: Advisory board of trans community members reviews contested triage decisions

---

## Part VII: When to Let Go

### The Hardest Lesson: Accepting Loss

Not everything can be saved. Sometimes, the ethical choice—or the practical choice—is to **let something die**.

**When to Let Go:**

**1. Ethical Harm Outweighs Value**
- If preserving actively hurts people (doxxing, revenge porn), don't do it

**2. No Viable Path to Preservation**
- Some artifacts are technologically impossible to save (encrypted with lost keys, hardware-specific with no working hardware)

**3. Resources Better Spent Elsewhere**
- If saving one low-value artifact means letting a high-value artifact die, let the low-value one go

**4. Respecting Intentional Ephemerality**
- Some cultures and communities value impermanence (Snapchat culture, Buddhist sand mandalas)
- Forcing permanence violates cultural values

**The Grief of Triage**

Letting artifacts die is painful. You're choosing what future generations can never know. You're accepting that some stories will be lost, some voices silenced, some memories erased.

This grief is unavoidable. The role of the Archaeobytologist includes **mourning**.

**But:** Grief that paralyzes is counterproductive. Mourn, then act. Save what you can. Document what you couldn't save (at least record that it existed). Move forward.

**The Triage Paradox:**

The better you get at triage, the more aware you become of loss. Beginners think they can save everything. Experts know they can't—and carry the weight of every choice.

This is the burden of custodianship.

---

## Conclusion: Triage as Ethical Practice

The Custodial Filter isn't a formula—it's a **framework for ethical deliberation**. It forces you to ask hard questions:
- What makes this artifact matter?
- How urgently endangered is it?
- Can we realistically save it?
- Are others already saving it?
- **Should** we save it?

Every triage decision is an **ethical act**. You're deciding what the future can know about the past. You're allocating scarce resources (time, labor, storage, attention). You're potentially overriding someone's wishes (to be forgotten, to be private).

These decisions should be:
- **Systematic** (not arbitrary or impulsive)
- **Transparent** (document your reasoning)
- **Revisable** (be willing to reconsider)
- **Humble** (acknowledge you could be wrong)

The Custodial Filter provides structure for these decisions—not certainty, but **rigorous ethical thinking**.

In the next chapter, we'll explore the boundaries of Archaeobytology as a discipline—how it differs from adjacent fields, what makes it distinct, and why it deserves recognition as its own domain of study.

But first, practice triage. Look at your own digital life. What would you save if you had 48 hours to archive everything? What would you let go? And how would you justify those choices?

The Custodial Filter begins with seeing your own values clearly.

---

## Discussion Questions

1. **Personal Triage**: If your email account announced shutdown in 48 hours, what would you prioritize saving? Why? What would you let go?

2. **Ethical Boundaries**: Where do you draw the line? What content should never be archived, even if historically significant?

3. **Competing Values**: How do you balance (a) preserving everything for future research vs. (b) respecting privacy and consent?

4. **Bias and Representation**: How can triage avoid reproducing systemic biases (racism, sexism, class privilege)? Is "objective" triage possible?

5. **Institutional vs. Individual**: Should triage decisions be made by institutions (museums, archives) or individuals (you with your hard drive)? What are the pros/cons of each?

6. **Future Regret**: Imagine it's 2075. What digital culture from 2020s do you think future historians will wish we'd preserved but didn't?

---

## Exercise: Conduct a Triage Simulation

**Scenario**: You have 72 hours and 1TB of storage to archive a dying platform before it shuts down. The platform has:
- 50,000 user accounts
- 5 million posts (text, images, videos)
- 200 communities/groups
- 10 years of history

You cannot save everything. Conduct triage.

**Part 1: Define Your Values** (300 words)
- What's your preservation mission?
- What criteria matter most to you (representation, popularity, rarity, etc.)?

**Part 2: Apply the Custodial Filter** (500 words)

Create a triage matrix for these artifact types:
1. Viral posts (high engagement, widely seen)
2. Marginalized community content (LGBTQ+, disability, etc.)
3. Long-form creative work (fiction, art, tutorials)
4. Personal journaling/diaries
5. Corporate/brand accounts

Score each on:
- Cultural Significance (0-5)
- Technical Fragility (0-5)
- Rescue Feasibility (0-5)
- Redundancy Gap (0-5)
- Ethical Clarity (0-5)

**Part 3: Make Decisions** (500 words)
- Given your 1TB limit, what do you save?
- What do you deprioritize or leave behind?
- How do you handle ethical dilemmas (private content, deleted posts)?

**Part 4: Reflect** (200 words)
- How did it feel to make these choices?
- What surprised you about your own values?
- Would you make different choices under different constraints?

---

## Further Reading

### On Triage and Preservation Ethics

- Caswell, Michelle. "Seeing Yourself in History: Community Archives and the Fight Against Symbolic Annihilation." *The Public Historian* 36, no. 4 (2014): 26-37.
- Flinn, Andrew. "Community Histories, Community Archives: Some Opportunities and Challenges." *Journal of the Society of Archivists* 28, no. 2 (2007): 151-176.
- Jimerson, Randall. *Archives Power: Memory, Accountability, and Social Justice*. SAA, 2009.

### On Privacy and Consent

- Nissenbaum, Helen. *Privacy in Context: Technology, Policy, and the Integrity of Social Life*. Stanford, 2009.
- Solove, Daniel. *Nothing to Hide: The False Tradeoff Between Privacy and Security*. Yale, 2011.
- Rosen, Jeffrey. "The Right to Be Forgotten." *Stanford Law Review Online* 64 (2012): 88.

### On Digital Preservation Methods

- Brügger, Niels, and Ralph Schroeder, eds. *The Web as History*. UCL Press, 2017.
- Kirschenbaum, Matthew, et al. "Digital Materiality: Preserving Access to Computers as Complete Environments." *iPRES* (2009).
- Archives Team. "So You Want to Archive a Website." https://wiki.archiveteam.org/

### On Ethics of Difficult Knowledge

- Simon, Roger, et al. "Witness as Study: Attending to the Testimonies of Trauma, Memory, and Injustice." *Equity & Excellence in Education* 38, no. 3 (2005): 191-198.
- Caswell, Michelle. *Urgent Archives: Enacting Liberatory Memory Work*. Routledge, 2021.

---

**End of Chapter 5**

*Next: Chapter 6 — Discipline Formation and Boundaries: Why Archaeobytology Needs to Exist*

