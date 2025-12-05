# Module 1: Autopsy of a Platform Death

**Duration**: 2 weeks  
**Type**: Forensic Analysis & Case Study

---

## Module Overview

In this module, you will conduct a complete forensic autopsy of a murdered digital platform. You'll trace the circumstances of its death, document what remains, analyze the murder weapon (corporate strategy, market forces, or technological obsolescence), and extract lessons that inform future preservation efforts.

This is applied digital forensics work—you're not just reading about platform death, you're investigating an actual corpse.

---

## Learning Objectives

By the end of this module, you will be able to:

1. **Identify the murder weapon**: Distinguish between corporate murder, abandonment, technological rot, and market forces
2. **Conduct digital forensics**: Document what remains of a dead platform using archival tools and techniques
3. **Trace platform evolution**: Reconstruct the platform's lifecycle from launch to death
4. **Analyze power dynamics**: Identify who benefited from the platform's death and who was harmed
5. **Extract preservation lessons**: Translate forensic findings into actionable preservation strategies

---

## Required Readings

### Primary Texts
- **Textbook Chapter 7**: Archaeological Methods for Digital Artifacts
- **Textbook Chapter 8**: Digital Forensics for Archaeobytologists
- **Textbook Chapter 9**: The Custodial Filter—Ethics of Preservation

### Case Studies
- Archive Team, *"The GeoCities Rescue"* (2009)
- Jason Scott, *"The Death of Google Reader"* (2013)
- Tarleton Gillespie, *"Platform Politics: How Platforms Shape Speech"* (selected chapters)

### Technical Resources
- Internet Archive Wayback Machine documentation
- Archive Team's warrior toolkit
- Web scraping ethics guidelines (EFF)

---

## Assignment Structure

### Week 1: Investigation & Documentation

#### Part 1: Platform Selection & Murder Profile (Due: Day 3)

**Choose a murdered platform from this list** (or propose your own):

**Corporate Murders**:
- Google Reader (2013) - Strategic abandonment
- Vine (2017) - Parent company decision
- Google+ (2019) - Failed experiment
- Allo (2019) - Messaging consolidation
- Windows Phone (2017) - Platform war casualty

**Quiet Deaths**:
- Delicious (2017) - Sold, neglected, died
- Friendster (2015) - Pivoted, then vanished
- StumbleUpon (2018) - Sold for parts
- Flickr Commons (degraded) - Slow strangulation

**Sudden Collapses**:
- Megaupload (2012) - Legal seizure
- Backpage (2018) - Federal shutdown
- Parler (2021) - Infrastructure denial

**Living Dead** (still technically online but functionally murdered):
- MySpace (2003-2019) - Murdered by design changes
- Tumblr (2018 onwards) - NSFW ban killed community
- DeviantArt (2019 onwards) - Eclipse redesign exodus

**Your Task**:

Create a **Murder Profile** document (2-3 pages) that includes:

1. **Platform Vital Statistics**:
   - Launch date
   - Peak user base
   - Official death date (if applicable)
   - Corporate ownership history

2. **The Murder Weapon**:
   - What killed this platform?
   - Was it murder (intentional), manslaughter (negligent), or natural causes?
   - Quote executive statements, press releases, or leaked internal documents

3. **Victims & Beneficiaries**:
   - Who lost the most? (users, creators, communities)
   - Who benefited? (competitors, acquirers, executives)
   - What cultural knowledge was destroyed?

4. **Preservation Status**:
   - What has been saved? (Internet Archive, Archive Team, user backups)
   - What is lost forever?
   - Are there active preservation efforts?

**Deliverable**: Upload Murder Profile PDF to course platform

---

#### Part 2: Forensic Documentation (Due: End of Week 1)

**Conduct a forensic investigation** of your chosen platform using these methods:

##### A. Wayback Machine Archaeology
- Search Internet Archive for snapshots of your platform
- Document key design changes over time
- Screenshot critical moments (launches, redesigns, final days)
- Create a visual timeline of the platform's evolution

##### B. Digital Corpse Examination
If the platform still exists in zombie form:
- Document current state vs. archived peak
- Screenshot degraded features or removed functionality
- Test what still works vs. what's broken
- Note what data is still accessible vs. lost

##### C. Social Autopsy
- Search Twitter, Reddit, and blogs for user reactions to the death
- Find #RIPPlatform posts, eulogies, and migration announcements
- Document user-created preservation efforts (data exports, backup communities)
- Capture screenshots of mourning and anger

##### D. Technical Forensics
- Use `curl` or browser dev tools to examine what remains
- Check for broken API endpoints
- Document dead links and 404 errors
- Look for archived API documentation or developer resources

**Deliverable**: Create a **Forensic Report** (5-7 pages) with:
- 10-15 annotated screenshots showing platform evolution and death
- Timeline of key events
- Analysis of what was saved vs. what was lost
- Assessment of preservation quality and completeness

**Tools You'll Need**:
- Internet Archive Wayback Machine
- Archive Team wiki
- Screenshot tools (Nimbus, FireShot, or built-in browser tools)
- (Optional) Web scraping tools like `wget` or `httrack`

---

### Week 2: Analysis & Lessons

#### Part 3: Cause of Death Analysis (Due: Mid-Week 2)

Write a **4-6 page analytical essay** that answers:

**1. What Killed This Platform?**

Analyze the murder weapon using the framework from Chapter 8:

- **Corporate Strategy Murder**: Did executives intentionally kill a thriving platform for business reasons?
- **Negligent Manslaughter**: Was the platform abandoned and left to die?
- **Technological Obsolescence**: Did changing technology make the platform impossible to maintain?
- **Market Forces**: Did competitors or platform consolidation squeeze it out?
- **Legal/Political Pressure**: Was it shut down by governments or threatened by regulation?

**2. Who Made the Decision?**

- Name names: Which executives, boards, or agencies decided the platform's fate?
- What were their stated reasons vs. likely actual reasons?
- Were users consulted? Were they warned?
- How much notice was given before shutdown?

**3. What Was Lost?**

Quantify the cultural destruction:
- How much content was lost?
- How many communities were displaced?
- What unique cultural practices died with the platform?
- What irreplaceable knowledge vanished?

**4. Could It Have Been Prevented?**

Apply the Three Pillars framework:
- **Declaration**: Did users have identity sovereignty, or were they locked to the platform?
- **Connection**: Could communities migrate, or were they trapped by proprietary protocols?
- **Ground**: Did users control their infrastructure, or were they dependent on corporate servers?

If the platform had been designed with sovereignty principles, could it have survived its corporate owner's decision?

**Citation Requirements**:
- Minimum 8 sources
- Include executive statements, news coverage, and user testimonials
- Use proper Chicago/MLA citation format

**Deliverable**: Upload essay as PDF

---

#### Part 4: Preservation Recommendations (Due: End of Week 2)

Based on your forensic work, create a **Preservation Action Plan** (3-4 pages) for platforms facing similar threats.

**Your plan should include**:

**1. Early Warning System**
- What signals indicated this platform was at risk?
- How could preservationists have detected the threat earlier?
- What monitoring systems should be in place?

**2. Triage Assessment**
Using the Custodial Filter from Chapter 9:
- **Significance**: Was this platform historically/culturally significant enough to warrant major preservation effort?
- **Fragility**: How vulnerable was the content? (proprietary formats, dynamic content, etc.)
- **Feasibility**: Could it have been preserved with available tools and resources?
- **Redundancy**: Were there alternative archives or user-created backups?
- **Ethics**: Were there privacy concerns or reasons NOT to preserve certain content?

**3. Preservation Strategy**
If you were Archive Team planning a rescue operation:
- What tools would you use? (scrapers, API access, distributed crawling)
- What content would you prioritize? (user data, cultural artifacts, technical documentation)
- How would you coordinate with the community?
- What legal risks would you face?

**4. Post-Death Revival Options**
- Could this platform be resurrected as a community-run alternative?
- Are there open-source replacements with similar features?
- How could users migrate to sovereign alternatives?
- What would a Three Pillars redesign look like?

**5. Lessons for Future Platforms**
- What design principles would have prevented this death?
- What sovereignty features should have been built in from day one?
- How can current platforms learn from this case?

**Deliverable**: Upload Preservation Action Plan as PDF

---

## Assessment Rubric

### Murder Profile (20 points)
- **Accuracy of facts** (5 pts): Correct dates, statistics, and ownership history
- **Quality of murder weapon analysis** (10 pts): Clear identification of cause of death with evidence
- **Victim/beneficiary analysis** (5 pts): Thoughtful consideration of who was harmed and who profited

### Forensic Report (25 points)
- **Documentation completeness** (10 pts): Thorough use of Wayback Machine and other sources
- **Visual evidence quality** (10 pts): Clear, annotated screenshots showing key changes
- **Technical detail** (5 pts): Evidence of hands-on investigation, not just reading about the platform

### Cause of Death Essay (30 points)
- **Analytical depth** (15 pts): Sophisticated understanding of platform death causes
- **Use of evidence** (10 pts): Strong integration of primary sources and user testimonials
- **Writing quality** (5 pts): Clear, well-organized, properly cited

### Preservation Action Plan (25 points)
- **Strategic thinking** (10 pts): Practical, feasible preservation strategies
- **Application of course concepts** (10 pts): Clear use of Three Pillars and Custodial Filter frameworks
- **Creativity** (5 pts): Innovative ideas for prevention or post-death revival

---

## Discussion Forum Prompts

Participate in weekly discussions (required):

**Week 1: Murder Weapons**
Post a 200-word summary of your platform's cause of death. What was the murder weapon? Could it have been prevented? Respond to at least two classmates' posts.

**Week 2: Preservation Ethics**
Debate: "Some platforms deserve to die." When is preservation NOT the right answer? Should we let toxic platforms stay dead? Use your case study as evidence.

---

## Optional Deep Dive: Activist Archaeology

For extra credit, document a **platform that's dying RIGHT NOW**:

1. Identify a platform currently at risk (corporate acquisition rumors, user exodus, financial trouble)
2. Create a preservation plan BEFORE it dies
3. If you're ambitious: actually preserve some of it using Archive Team tools
4. Share your findings with the class

**Platforms currently at risk** (as of late 2025):
- Twitter/X (ongoing Musk-era exodus)
- Reddit (IPO pressures, API wars)
- Medium (business model struggles)
- Substack (funding questions)
- Discord (acquisition rumors)

---

## Technical Resources & Tools

### Preservation Tools
- **Internet Archive Wayback Machine**: https://archive.org/web/
- **Archive Team Warrior**: Distributed archiving toolkit
- **HTTrack**: Website copier
- **Wget**: Command-line download tool
- **Webrecorder**: Browser-based archiving

### Forensic Analysis
- Browser developer tools (Network tab, Storage inspector)
- **Postman**: API testing
- **WhatRuns**: Browser extension to identify technologies
- **BuiltWith**: Technology profiler

### Citation & Documentation
- **Zotero**: Citation management
- **Hypothesis**: Web annotation tool
- **Markdown**: Simple documentation format

---

## Recommended Supplementary Materials

### Documentaries
- *GeoCities: The Lost City of the Web* (2019)
- *Downloaded* (2013) - About Napster's death
- *The Internet's Own Boy* (2014) - Aaron Swartz and digital preservation

### Articles & Essays
- Maciej Cegłowski, "Website Obesity Crisis"
- Darius Kazemi, "Run Your Own Social"
- Anil Dash, "The Web We Lost" (2012)

### Podcasts
- *Reply All* #158 - "We Know What You Did"
- *Longform* - Jason Scott interview on digital preservation

---

## Getting Help

**Office Hours**: Tuesdays 2-4pm, Thursdays 10am-12pm (Zoom link in syllabus)

**Discussion Forum**: Post questions about tool usage, ethics, or case selection

**Archive Team IRC**: #archiveteam on EFNet (they're friendly and helpful!)

**Library Resources**: Contact digital preservation librarian for access to restricted archives

---

## Next Module Preview

In **Module 2: Building a Preservation System**, you'll move from investigation to action. You'll design and implement your own small-scale preservation infrastructure, applying lessons learned from platform autopsies to build resilient archival systems.

**Get ready to**: Set up storage, design workflows, and actually preserve something before it dies.

---

*"The dead cannot speak for themselves. We speak for them by preserving their artifacts, honoring their communities, and learning from their murders."*  
— The Archaeobytologist's Vow