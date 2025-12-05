# Module 3: Designing for Sovereignty

**Duration**: 2 weeks  
**Type**: Design Studio & System Prototyping

---

## Module Overview

You've examined the dead (Module 1) and learned to preserve them (Module 2). Now comes the Anvil: **building systems that can't be murdered**.

In this module, you'll apply the Three Pillars framework to design sovereign digital systems. You'll audit existing platforms for sovereignty violations, prototype alternatives, and design systems that give users control over their Declaration, Connection, and Ground. This is speculative design meets practical system-building.

---

## Learning Objectives

By the end of this module, you will be able to:

1. **Audit platforms for sovereignty**: Use the Three Pillars framework to identify control points and dependencies
2. **Design sovereign alternatives**: Prototype systems that preserve user autonomy
3. **Apply sovereignty principles**: Translate abstract principles (portability, federation, self-hosting) into concrete features
4. **Evaluate tradeoffs**: Understand when sovereignty conflicts with convenience, scale, or business models
5. **Prototype systems**: Create wireframes, architecture diagrams, and functional prototypes
6. **Think systemically**: See how technical decisions shape power relationships

---

## Required Readings

### Primary Texts
- **Textbook Chapter 4**: The Three Pillars of Digital Sovereignty
- **Textbook Chapter 12**: The Economics of Sovereignty
- **Textbook Chapter 13**: Distributed Commons Governance

### Technical Standards & Protocols
- Tim Berners-Lee, *"Solid Protocol" (overview)*
- ActivityPub specification (W3C)
- Anil Dash, *"The Web We Lost"* (2012)
- Cory Doctorow, *"Adversarial Interoperability"*

### Design References
- Ethan Zuckerman, *"The Case for Digital Public Infrastructure"*
- Darius Kazemi, *"Run Your Own Social"*
- IndieWeb principles documentation

---

## Assignment Structure

### Week 1: Platform Audit & Critique

#### Part 1: Three Pillars Sovereignty Audit (Due: Day 3)

**Choose a major platform to audit** from this list:

**Social Media**:
- Instagram
- TikTok
- Twitter/X
- Discord
- Reddit

**Content Platforms**:
- Medium
- Substack
- Patreon
- YouTube

**Infrastructure**:
- Gmail/Google Workspace
- iCloud
- Dropbox
- Notion

**Conduct a comprehensive sovereignty audit** using the Three Pillars framework:

---

**PILLAR 1: DECLARATION (Identity Sovereignty)**

**Questions to investigate**:
- Can users control their identity independent of the platform?
- Is identity portable to other platforms?
- Who owns the username/handle?
- Can users authenticate without the platform's permission?
- Is there decentralized identity support (WebID, DID)?

**Audit checklist**:
- [ ] Data export: Can you export your entire account?
- [ ] Identity portability: Can you move your followers/identity elsewhere?
- [ ] Username ownership: Do you control your handle if the platform dies?
- [ ] Authentication: Can you use your own auth system?
- [ ] Profile control: Can the platform change/delete your profile without consent?

**Rate on scale of 1-10** (1 = total platform control, 10 = full user sovereignty)

---

**PILLAR 2: CONNECTION (Communication Sovereignty)**

**Questions to investigate**:
- Are communication protocols open or proprietary?
- Can users connect across platforms (federation/interoperability)?
- Who controls the algorithm determining what you see?
- Can you export your social graph?
- Can you communicate if the company shuts down?

**Audit checklist**:
- [ ] Protocol openness: Can other apps talk to this platform?
- [ ] Federation support: Can you follow users on other instances?
- [ ] Algorithm control: Can you choose your own feed algorithm?
- [ ] Data portability: Can you export your connections/followers?
- [ ] Platform independence: Can you keep your social graph if you leave?

**Rate on scale of 1-10**

---

**PILLAR 3: GROUND (Infrastructure Sovereignty)**

**Questions to investigate**:
- Can users self-host this platform?
- Who controls the servers and infrastructure?
- Is the codebase open source?
- Can you run a private instance?
- What happens if the company goes bankrupt?

**Audit checklist**:
- [ ] Self-hosting: Can you run your own server?
- [ ] Open source: Is the code available for inspection/forking?
- [ ] Data ownership: Where is data stored physically?
- [ ] Infrastructure dependencies: What proprietary services are required?
- [ ] Exit options: Can you migrate to self-hosted if needed?

**Rate on scale of 1-10**

---

**Your Audit Report (4-5 pages) must include**:

1. **Executive Summary**: Overall sovereignty score (average of three pillars) and key findings

2. **Detailed Pillar Analysis**: For each pillar, provide:
   - Rating and justification
   - Specific examples of sovereignty violations
   - Screenshots or documentation of restrictions

3. **Power Analysis**: Who benefits from these sovereignty violations?
   - Platform company (how?)
   - Advertisers or third parties
   - Governments or law enforcement
   - Who loses? (users, creators, communities)

4. **Comparison to Sovereign Alternative**: 
   - Name a more sovereign alternative (e.g., Mastodon vs. Twitter)
   - Compare scores across all three pillars
   - Why don't more people use the sovereign alternative?

**Deliverable**: Upload sovereignty audit PDF with screenshots

---

#### Part 2: Redesign for Sovereignty (Due: End of Week 1)

**Take the platform you audited and redesign it** for maximum sovereignty while maintaining core functionality.

**Your redesign should address**:

**Pillar 1: Declaration Fixes**

How to make identity sovereign:
- Implement decentralized identifiers (DIDs)
- Allow username portability (like domain names)
- Support multiple auth methods (not just platform login)
- Enable profile ownership (users control their own data)

**Design deliverables**:
- Diagram showing decentralized identity architecture
- User flow: "How do I keep my identity if I leave this platform?"
- Wireframes of improved profile/auth UI

**Pillar 2: Connection Fixes**

How to make communication sovereign:
- Adopt open protocols (ActivityPub, Matrix, AT Protocol)
- Implement federation (talk to other instances)
- Allow algorithmic choice (users pick their feed algorithm)
- Support social graph export and import

**Design deliverables**:
- Architecture diagram showing federated communication
- User flow: "How do I follow friends across different platforms?"
- Mockups of algorithmic choice UI

**Pillar 3: Ground Fixes**

How to make infrastructure sovereign:
- Open source the entire stack
- Support self-hosting with clear documentation
- Minimize dependencies on proprietary services
- Design for graceful degradation if company fails

**Design deliverables**:
- Technical architecture diagram (self-hosted version)
- Deployment guide outline: "How to run your own instance"
- Comparison chart: hosted service vs. self-hosted

---

**Your Redesign Document (6-8 pages) must include**:

1. **Sovereignty Principles**: What specific sovereignty goals does this redesign achieve?

2. **Technical Architecture**:
   - System diagram showing components
   - Protocol choices and justifications
   - Data flow diagrams
   - Federation/decentralization strategy

3. **User Experience**:
   - Wireframes or mockups (at least 5 screens)
   - User flows for key sovereignty features
   - How do you make sovereignty usable? (it's often technically complex)

4. **Tradeoff Analysis**:
   - What do you lose by prioritizing sovereignty?
   - Performance impacts (federation can be slow)
   - User experience complexity (self-hosting is hard)
   - Business model challenges (how do you fund this?)

5. **Migration Path**:
   - How do existing users move to your sovereign redesign?
   - Can it interoperate with the current platform?
   - What's your adoption strategy?

**Design Toolkit**:
- Figma or Sketch for mockups (free accounts available)
- Draw.io or Lucidchart for architecture diagrams
- Markdown for technical documentation

**Deliverable**: Upload redesign document with diagrams and mockups as PDF

---

### Week 2: Prototype & Test

#### Part 3: Functional Prototype (Due: End of Week 2)

**Build a working prototype** of one sovereignty feature from your redesign.

**Choose your prototype complexity**:

**Option A: Design Prototype** (no coding required)
- High-fidelity interactive mockup in Figma
- Demonstrate key user flows for sovereignty features
- Include at least 10 linked screens
- Focus on UX of sovereignty (making the complex simple)

**Option B: Technical Prototype** (coding required)
- Build a minimal working version of one feature
- Must demonstrate a sovereignty principle in action
- Can use existing frameworks/tools
- Focus on technical feasibility

**Option C: Protocol Integration** (for the ambitious)
- Implement ActivityPub or AT Protocol in a simple app
- Federation must actually work (connect to Mastodon, Bluesky, etc.)
- Demonstrate two-way communication
- Document the integration process

---

**Suggested Prototypes**:

**Declaration (Identity)**:
- Portable profile system using WebID or DIDs
- Username that works across multiple platforms
- Self-sovereign authentication demo

**Connection (Communication)**:
- Simple federated microblog (connect to Mastodon)
- Algorithmic feed selector (swap feed algorithms)
- Social graph export/import tool

**Ground (Infrastructure)**:
- One-click self-hosting deployment script
- Mirror service (sync content to personal archive)
- Graceful degradation demo (works offline)

---

**Your Prototype Documentation (3-4 pages) must include**:

1. **What You Built**: Clear description of the feature

2. **How It Demonstrates Sovereignty**: Which pillar(s) does this address?

3. **Technical Implementation**:
   - For design prototypes: Tool used, design decisions, interaction patterns
   - For code prototypes: Tech stack, architecture, key code snippets
   - For protocol integrations: Which spec, how you implemented it, challenges

4. **User Testing**: 
   - Have at least 3 people try your prototype
   - Document feedback: What worked? What confused them?
   - What would you change based on testing?

5. **Next Steps**: If you had another month, what would you build next?

**Deliverable**: 
- For design prototypes: Figma link + PDF walkthrough
- For code prototypes: GitHub repo + README + demo video
- For protocol integrations: Working demo + integration guide

---

## Assessment Rubric

### Sovereignty Audit (25 points)
- **Comprehensiveness** (10 pts): All three pillars thoroughly analyzed
- **Evidence quality** (10 pts): Screenshots, documentation, specific examples
- **Power analysis** (5 pts): Clear understanding of who benefits from current design

### Redesign Document (30 points)
- **Technical feasibility** (10 pts): Realistic architecture and protocols
- **UX consideration** (10 pts): Sovereignty features are usable, not just technically possible
- **Tradeoff honesty** (5 pts): Acknowledges costs of sovereignty
- **Visual quality** (5 pts): Clear diagrams and mockups

### Functional Prototype (30 points)
- **Sovereignty demonstration** (15 pts): Actually implements a sovereignty principle
- **Technical execution** (10 pts): Works as intended, no major bugs
- **Documentation** (5 pts): Clear explanation and setup instructions

### Overall Integration (15 points)
- **Coherence** (10 pts): Audit → Redesign → Prototype form a logical progression
- **Critical thinking** (5 pts): Demonstrates sophisticated understanding of sovereignty tradeoffs

---

## Discussion Forum Prompts

**Week 1: Sovereignty vs. Convenience**
Most people choose convenient platforms over sovereign ones. Is this a failure of education, design, or are people making a rational choice to trade sovereignty for features? Use your audit as evidence.

**Week 2: Can Sovereignty Scale?**
Mastodon, Matrix, and other federated systems struggle to reach mainstream adoption. Is this a fundamental limitation of sovereign design, or a solvable UX problem? Share findings from your prototype testing.

---

## Technical Resources

### Design Tools
- **Figma**: Free for students, collaborative interface design
- **Excalidraw**: Simple, open-source diagramming
- **Draw.io**: Free architecture diagrams

### Prototyping Frameworks

**For Federation**:
- **Mastodon**: Ruby on Rails, ActivityPub
- **Misskey**: Node.js, ActivityPub
- **Lemmy**: Rust, ActivityPub
- **Bluesky AT Protocol**: TypeScript

**For Self-Hosting**:
- **YunoHost**: One-click self-hosting platform
- **Sandstorm**: Personal cloud platform
- **Docker Compose**: Easy multi-container deployments

**For Decentralized Identity**:
- **Solid**: Tim Berners-Lee's decentralized data protocol
- **DID**: W3C Decentralized Identifiers
- **IndieAuth**: OAuth for personal websites

### Protocol Documentation
- **ActivityPub**: https://www.w3.org/TR/activitypub/
- **AT Protocol**: https://atproto.com/
- **Matrix**: https://matrix.org/docs/spec/
- **Solid**: https://solidproject.org/TR/protocol

---

## Real-World Case Studies

### Sovereign Successes

**Mastodon** (2016-present):
- 10M+ users across 15K+ instances
- Survived multiple Twitter exoduses
- Demonstrates federation at scale

**Matrix/Element** (2019-present):
- Used by French government
- Bridges to proprietary chat systems
- Shows interoperability is possible

**Nextcloud** (2016-present):
- Self-hosted alternative to Google Workspace
- 400K+ servers deployed
- Proves demand for infrastructure sovereignty

### Sovereign Challenges

**Diaspora** (2010-2015):
- Early federated Facebook alternative
- Failed to achieve critical mass
- Lesson: Sovereignty alone isn't enough

**Ello** (2014-2015):
- Ad-free, privacy-focused social network
- Couldn't sustain business model
- Lesson: Economics matter

**Peach** (2016):
- Innovative mobile-first design
- No federation or open protocols
- Dead within a year
- Lesson: Sovereignty enables survival

---

## Recommended Supplementary Materials

### Books
- Doctorow, *"How to Destroy Surveillance Capitalism"*
- Zuckerman, *"Mistrust"*
- Schneier, *"Data and Goliath"*

### Articles
- Mike Masnick, *"Protocols, Not Platforms"*
- Eben Moglen, *"Freedom in the Cloud"*
- Devine Lu Linvega, *"Hundred Rabbits"* (off-grid sovereignty)

### Videos
- Aral Balkan, *"Privacy is the right to a future tense"*
- Eugen Rochko, *"How ActivityPub Works"* (Strange Loop)

---

## Optional Advanced Project

**For Extra Credit: Build a Bridge**

Create a tool that connects a proprietary platform to an open protocol:
- Twitter → Mastodon crossposting
- Instagram → PixelFed sync
- Discord → Matrix bridge

This demonstrates **adversarial interoperability**—forcing sovereignty onto closed platforms.

---

## Getting Help

**Office Hours**: Design critiques available by appointment

**Lab Sessions**: Technical prototyping help (Thursdays 4-6pm)

**Community Resources**: 
- Fediverse developers are very welcoming
- IndieWeb chat for decentralized web questions
- r/selfhosted for infrastructure sovereignty

---

## Next Module Preview

In **Module 4: Triage Simulation**, you'll face the hardest ethical questions in preservation: *What deserves to be saved when you can't save everything?*

You'll navigate a high-pressure simulation where resources are scarce, platforms are dying fast, and every decision has consequences.

**Get ready to**: Make impossible choices under time pressure and defend your decisions.

---

*"Sovereignty is not a luxury for the technologically sophisticated. It is a basic human right in the digital age. We design for sovereignty or we design for murder."*