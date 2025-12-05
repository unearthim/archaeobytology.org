# Chapter 13: Distributed Commons Governance — Building the Seed Bank

---

## Opening: The Problem of Scale

In 2014, the Internet Archive held approximately 15 petabytes of data—one of the largest digital collections in the world. Impressive. Essential. But also: **terrifying**.

All that cultural memory, concentrated in one organization, in two physical locations (San Francisco and Alexandria). What if:
- A fire destroys the data centers?
- A lawsuit bankrupts the organization?
- A government decides to shut it down?
- Climate change floods the facilities?
- A cyberattack encrypts everything?

Brewster Kahle, founder of the Internet Archive, knows this risk. He's said publicly: "We need more Internet Archives." Not mirrors of the Internet Archive—but **independent preservation organizations** running parallel efforts, creating redundancy.

But here's the problem: preservation at scale requires **collective action**. One person can't preserve the internet. One organization can struggle but ultimately faces existential risks. We need **many organizations** working together—a **distributed commons** for digital preservation.

Yet commons are famously unstable. Garrett Hardin's "Tragedy of the Commons" (1968) argues that shared resources inevitably collapse: everyone takes, no one maintains, the commons degrades until it's useless.

**This chapter asks:** How do we build a **Seed Bank**—a distributed network of preservation nodes that cooperate to preserve digital culture—without falling into tragedy of the commons?

The answer comes from Elinor Ostrom, who proved Hardin wrong. Commons *can* be governed sustainably—if designed correctly. This chapter applies Ostrom's principles to digital preservation, showing how to build governance systems that resist collapse.

We'll explore:
- Ostrom's 8 Design Principles for sustainable commons
- Case studies: LOCKSS (success), Mastodon (challenges), Software Heritage (academic model)
- How to design governance for distributed preservation
- Technical architecture for Seed Banks (distributed storage, federated governance)
- Why this is harder than it sounds (and how to succeed anyway)

---

## Part I: Elinor Ostrom and the Governing the Commons

### The Tragedy of the Commons (Wrong)

**Garrett Hardin's Argument (1968):**
- Imagine a pasture shared by herders
- Each herder benefits from adding another cow (more milk/meat)
- Cost of overgrazing is shared among all herders
- Rational self-interest → everyone adds cows → pasture collapses
- **Solution:** Private property or government control

**Applied to Digital Preservation:**
- Internet Archive preserves web (public good)
- Everyone benefits from using it
- No one pays (free access)
- Costs are borne by one organization
- Eventually: Funding crisis, collapse

Hardin's logic suggests: Digital preservation commons can't work. Either privatize it (paywalls, licenses) or nationalize it (government mandate, taxes).

### Ostrom's Rebuttal (Right)

**Elinor Ostrom's Research (1990):**
- Studied commons that *didn't* collapse: irrigation systems in Spain, forests in Japan, fisheries in Maine
- Found: Commons governed by communities (not private owners or states) can be sustainable
- Key: **Design principles** that prevent overuse and ensure maintenance

**Won Nobel Prize in Economics (2009)** for proving Hardin wrong.

**Applied to Digital Preservation:**
- Distributed preservation networks (Seed Banks) can work
- If designed with Ostrom's principles
- Communities of preservation organizations can self-govern
- No need for monopoly (Internet Archive) or government takeover

### Ostrom's 8 Design Principles

Ostrom identified eight characteristics of sustainable commons:

1. **Clearly Defined Boundaries**
2. **Proportionality Between Benefits and Costs**
3. **Collective Choice Arrangements**
4. **Monitoring**
5. **Graduated Sanctions**
6. **Conflict Resolution Mechanisms**
7. **Minimal Recognition of Rights**
8. **Nested Enterprises** (for large-scale commons)

Let's examine each principle and how it applies to digital preservation.

---

## Part II: Applying Ostrom's Principles to Digital Preservation

### Principle 1: Clearly Defined Boundaries

**Ostrom's Principle:**
- Who has rights to use the commons? (Clear membership)
- What are the boundaries of the resource? (What's included/excluded?)

**Why It Matters:**
- Without boundaries, outsiders can exploit the commons without contributing
- Without clear resource definition, disputes arise over what's being governed

**Applied to Seed Bank:**

**Who can participate?**
- Define membership criteria
  - Universities with archival capacity?
  - Non-profits with preservation mandates?
  - Volunteers meeting technical requirements?
- Not open to anyone (risk of bad actors overwhelming system)
- But not so exclusive that you can't scale

**What's being preserved?**
- Scope of the commons: All web content? Specific platforms? Specific geographies?
- Clear policy on what gets preserved (use Custodial Filter from Chapter 5)
- Boundaries prevent mission creep ("We preserve murdered platforms, not general web archiving")

**Example: LOCKSS (Lots of Copies Keep Stuff Safe)**

**Membership:**
- University libraries and academic institutions
- Must meet technical requirements (storage, bandwidth, uptime)
- Must commit to preservation mandate (not just using it for free)

**Resource Boundaries:**
- Academic journals and books
- Not general web content (that's Internet Archive's domain)
- Clear scope prevents overlap and confusion

**Result:** LOCKSS has run for 20+ years with 300+ participating libraries. Boundaries work.

### Principle 2: Proportionality Between Benefits and Costs

**Ostrom's Principle:**
- Costs of maintaining the commons should be proportional to benefits received
- Those who use more should contribute more

**Why It Matters:**
- If heavy users don't pay their share, resentment builds, cooperation collapses
- Freeloaders undermine collective will to maintain commons

**Applied to Seed Bank:**

**Challenge:** Digital preservation has unusual economics:
- Marginal cost of one more user accessing data is near-zero (unlike grazing land, which depletes)
- But infrastructure costs are real: storage, bandwidth, maintenance

**Proportionality Mechanisms:**

**1. Storage-Based Contributions**
- Organizations contribute storage proportional to what they preserve
- If you preserve 1TB, you provide 1TB+ of storage (redundancy)

**2. Bandwidth-Based Contributions**
- Heavy downloaders provide bandwidth to others (BitTorrent model)
- Upload/download ratios

**3. Labor Contributions**
- Some orgs provide storage, others provide metadata curation, others provide technical development
- Value different contributions (not just storage)

**4. Financial Sliding Scale**
- Wealthy universities pay more, small non-profits pay less
- But everyone contributes *something* (even if token)

**Example: LOCKSS Implementation**

**Costs:**
- Libraries pay annual membership fee (sliding scale based on size)
- Provide servers and storage (technical contribution)
- Participate in governance (labor contribution)

**Benefits:**
- Access to entire LOCKSS archive
- Redundancy for their own collections (others preserve their journals)
- Collective preservation cheaper than individual efforts

**Proportionality:** Large research universities pay more, small colleges pay less, but all contribute. Balanced.

### Principle 3: Collective Choice Arrangements

**Ostrom's Principle:**
- People affected by rules should participate in making/modifying them
- Not top-down imposition—democratic or consensus-based governance

**Why It Matters:**
- Rules imposed externally are resented and resisted
- Collective choice creates buy-in and legitimacy

**Applied to Seed Bank:**

**Who decides:**
- What gets preserved? (Content policy)
- How it's preserved? (Technical standards)
- Who gets access? (Public, researchers, restricted?)
- How to allocate resources? (Storage priorities)

**Governance Models:**

**1. One Member, One Vote**
- All participating organizations have equal say
- Democratic but slow
- Risk: Large and small orgs weighted equally (is that fair?)

**2. Weighted Voting**
- Vote weight proportional to contribution (storage, funding, labor)
- More equitable but complex
- Risk: Wealthy orgs dominate

**3. Consensus Decision-Making**
- Major decisions require consensus (not just majority)
- Ensures minority voices heard
- Risk: Gridlock

**4. Federated Councils**
- Representatives from subgroups (geographic regions, institution types, technical roles)
- Balances representation with efficiency

**Example: Mastodon's Governance Struggles**

**Mastodon Approach:**
- Each instance governed by its admin(s)
- No central governance over whole network
- ActivityPub protocol decisions made by W3C (external standards body)

**Problems:**
- No mechanism for collective decision on network-wide issues (moderation, defederation policies)
- Admins burn out (all burden on individuals)
- Large instances dominate (network effects concentrate power despite federation)

**Lesson:** Collective choice requires *structure*. Pure decentralization without governance mechanisms fails.

### Principle 4: Monitoring

**Ostrom's Principle:**
- Someone must monitor compliance with rules
- Monitors should be accountable to users (not external authorities)

**Why It Matters:**
- Without monitoring, freeloaders go undetected
- But monitoring by external authorities (police, government) breeds resentment

**Applied to Seed Bank:**

**What to Monitor:**

**1. Technical Compliance**
- Are nodes providing promised storage?
- Is data being preserved correctly (checksums, bit rot detection)?
- Are nodes online and accessible?

**2. Participation**
- Are members contributing labor (metadata, curation)?
- Are they participating in governance (voting, meetings)?

**3. Ethical Compliance**
- Are members following Custodial Filter? (Not preserving harmful content in violation of policy)
- Respecting access restrictions?

**How to Monitor:**

**Automated Technical Monitoring:**
- Software checks: Are nodes responding? Are checksums valid?
- Bandwidth and storage metrics
- Alerts when nodes fail

**Peer Monitoring:**
- Members audit each other (rotating responsibility)
- Transparent metrics (everyone can see who's contributing)
- Community accountability (not centralized enforcement)

**Example: LOCKSS's Polling System**

**Mechanism:**
- LOCKSS nodes periodically "poll" each other: "Do you have this file? Is your checksum correct?"
- If discrepancies detected, nodes vote: Which version is correct?
- Majority consensus repairs corrupted copies
- No central authority—peer-to-peer verification

**Result:** Automated monitoring + collective verification. No single point of failure.

### Principle 5: Graduated Sanctions

**Ostrom's Principle:**
- Rule violations should be met with sanctions
- Sanctions should escalate: warning → fine → suspension → expulsion
- Not immediate harsh punishment (which breeds resentment)

**Why It Matters:**
- Without sanctions, rules are meaningless
- But overly harsh sanctions create fear and reduce cooperation

**Applied to Seed Bank:**

**Violation Types:**

**Minor Violations:**
- Missing a governance meeting
- Temporary technical downtime (server maintenance)
- Late financial contribution

**Moderate Violations:**
- Persistent non-participation
- Repeated technical failures (unreliable node)
- Minor policy violations (preserving out-of-scope content)

**Major Violations:**
- Deliberately preserving harmful content in violation of Custodial Filter
- Attempting to monetize shared data (violating commons ethos)
- Sabotage (deleting others' data)

**Graduated Response:**

**1st Violation (Minor):** Warning, offer support (maybe they need technical help)

**2nd Violation (Moderate):** Formal reprimand, reduce privileges (e.g., lower storage quota)

**3rd Violation (Major):** Suspension (temporary loss of access and voting rights)

**4th Violation (Severe):** Expulsion (removed from network)

**Appeal Process:**
- Members can appeal sanctions
- Neutral arbitration panel reviews

**Example: Academic Consortium Models**

Many academic consortia (library networks, research cooperatives) use graduated sanctions:
- First violation → email reminder
- Second → formal letter from consortium director
- Third → loss of specific benefits (can't borrow from other libraries)
- Fourth → expulsion (rare, reserved for egregious violations)

**Key:** Sanctions are **restorative**, not purely punitive. Goal is to bring violators back into compliance, not to purge members.

### Principle 6: Conflict Resolution Mechanisms

**Ostrom's Principle:**
- Disputes will arise—need fast, low-cost, legitimate ways to resolve them
- Local resolution better than external courts

**Why It Matters:**
- Without conflict resolution, disputes fester, cooperation breaks down
- Expensive litigation destroys commons (costs exceed benefits)

**Applied to Seed Bank:**

**Common Disputes:**

**1. Resource Allocation**
- "Why does University X get more storage than us?"
- "Our node is down; who's responsible for lost data?"

**2. Content Disputes**
- "Should we preserve this controversial content?"
- "Someone violated the Custodial Filter; what do we do?"

**3. Governance Disputes**
- "This policy was passed unfairly; some members weren't consulted"
- "The voting process is biased toward large institutions"

**4. Technical Disputes**
- "Node Y isn't maintaining their checksums correctly"
- "Our data was corrupted; who's liable?"

**Resolution Mechanisms:**

**Tier 1: Direct Negotiation**
- Parties try to resolve dispute themselves
- Encouraged before escalation

**Tier 2: Mediation**
- Neutral member mediates
- Non-binding (parties can reject mediation outcome)

**Tier 3: Arbitration**
- Panel of 3-5 members hears case
- Binding decision (parties agree to abide by outcome)
- Faster and cheaper than courts

**Tier 4: External Courts** (last resort)
- Only for major legal issues (breach of contract, fraud)
- Avoided if possible (expensive, slow, undermines commons)

**Example: Wikipedia's Dispute Resolution**

Wikipedia has multi-tiered conflict resolution:
- Direct talk page discussion
- Third Opinion (neutral editor weighs in)
- Requests for Comment (community input)
- Arbitration Committee (binding decision)

**Lesson:** Most disputes resolved at lower tiers. Arbitration is rare. System works because it's fast, low-cost, and legitimate (community-run, not external).

### Principle 7: Minimal Recognition of Rights

**Ostrom's Principle:**
- External authorities (government, courts) should recognize the community's right to self-govern
- Don't need full legal sovereignty, but need enough autonomy to enforce rules

**Why It Matters:**
- If external authorities constantly override community rules, self-governance is impossible
- Need legal protection from outsiders who want to undermine or destroy the commons

**Applied to Seed Bank:**

**What Rights Are Needed?**

**1. Right to Exist**
- Legal recognition as an entity (non-profit, cooperative, consortium)
- Can enter contracts, own property (servers, storage)

**2. Right to Make Rules**
- Can set membership criteria, content policies, technical standards
- Not overridden by government unless violating law

**3. Right to Exclude**
- Can remove bad actors
- Not forced to include everyone (boundaries matter)

**4. Right to Fair Use / Preservation**
- Legal protection for preservation activities (scraping, format migration)
- Copyright exceptions for archival purposes

**5. Right to Federate**
- Can form partnerships with other preservation networks
- Not locked into national boundaries or single legal jurisdiction

**Threats to Rights:**

**Legal:**
- Copyright lawsuits (preserving content without permission)
- DMCA takedowns (if content violates IP law)
- Platform Terms of Service (scraping prohibited, legal gray area)

**Political:**
- Government censorship (forced to remove content)
- National security claims (data seizure)
- Taxation or regulation that makes preservation unaffordable

**How to Secure Rights:**

**1. Legal Structuring**
- Incorporate as 501(c)(3) non-profit (US) or charitable trust (UK) or equivalent
- Protects from certain liabilities, provides tax advantages

**2. Advocacy**
- Lobby for "Right to Archive" laws
- Expand fair use for preservation
- Fight restrictive copyright (Section 1201 of DMCA in US)

**3. International Cooperation**
- Distribute nodes globally (no single government can shut down entire network)
- Partner with organizations in multiple jurisdictions

**Example: Internet Archive's Legal Battles**

**Challenges:**
- Sued by publishers over Controlled Digital Lending (book scanning)
- Frequent DMCA takedowns for archived web content
- Threatened by record labels over audio preservation

**Defense:**
- Fair use arguments (preservation is non-commercial, transformative)
- Public advocacy (builds political support)
- International presence (if US law becomes hostile, shift focus elsewhere)

**Lesson:** Commons need legal protection. Pure grassroots self-governance isn't enough if external authorities can destroy you.

### Principle 8: Nested Enterprises (For Large Commons)

**Ostrom's Principle:**
- For large commons, organize in nested layers
- Local decisions at local level, regional at regional, global at global
- Subsidiarity: Decisions made at lowest effective level

**Why It Matters:**
- Single governance structure for massive commons doesn't scale
- Nested layers allow local autonomy while maintaining coordination

**Applied to Seed Bank:**

**Nested Structure Example:**

**Layer 1: Individual Nodes**
- Single institution (university, non-profit, library)
- Runs own servers, decides local policies (what to prioritize, how much storage to allocate)
- Autonomous within consortium guidelines

**Layer 2: Regional Consortia**
- Groups of nodes in same geography (e.g., "Northeast US Consortium," "European Seed Bank Alliance")
- Coordinate regional priorities, share resources, handle regional disputes

**Layer 3: Global Network**
- All regional consortia coordinate
- Set global standards (technical protocols, ethical guidelines)
- Handle cross-regional issues (international copyright, data sovereignty)

**Decision Allocation:**

**Local Level:**
- Which specific content to preserve
- Technical implementation details (hardware, software)
- Day-to-day operations

**Regional Level:**
- Resource sharing within region
- Regional content priorities (e.g., European consortium prioritizes European platforms)
- Regional legal compliance

**Global Level:**
- Network-wide standards and protocols
- Conflict resolution between regions
- Major policy changes (ethics, access, membership criteria)

**Example: LOCKSS's Nested Structure**

**Individual Libraries:**
- Run LOCKSS boxes (servers)
- Decide what to preserve (within LOCKSS framework)

**LOCKSS Alliance:**
- Consortium of participating libraries
- Coordinates technical standards, shares metadata

**LOCKSS Program (at Stanford):**
- Central organization providing software and coordination
- Not top-down control—facilitative role

**Result:** Local autonomy + global coordination. Libraries aren't dictated to, but also aren't isolated.

---

## Part III: Case Studies in Distributed Commons

### Case Study 1: LOCKSS (Success Story)

**LOCKSS = Lots of Copies Keep Stuff Safe**

**Launched:** 1999 (Stanford University Libraries)

**Mission:** Distributed digital preservation for academic journals and books

**Ostrom Principles Implementation:**

**1. Boundaries:**
- Membership: Academic libraries meeting technical criteria
- Resource: Scholarly publications (not general web)

**2. Proportionality:**
- Libraries contribute storage proportional to usage
- Sliding scale membership fees

**3. Collective Choice:**
- Governance board includes library representatives
- Major decisions voted on by members

**4. Monitoring:**
- Automated polling system (nodes verify each other's data)
- Transparent metrics (uptime, storage, participation)

**5. Graduated Sanctions:**
- Non-compliant nodes warned, then suspended, then expelled (rare)

**6. Conflict Resolution:**
- Disputes handled by governance board
- Mediation before arbitration

**7. Minimal Recognition:**
- Non-profit consortium legally recognized
- Fair use protections for preservation

**8. Nested Enterprises:**
- Individual libraries → Regional networks → Global LOCKSS Alliance

**Results:**
- 300+ participating libraries worldwide
- 20+ years of stable operation
- Petabytes of preserved content
- No major tragedies of commons

**Why It Worked:**
- Clear mission and boundaries
- Strong technical foundation (automated monitoring, peer verification)
- Academic culture of cooperation (libraries already collaborate)
- Sustainable funding (membership fees + grants)

**Lessons:** Ostrom's principles work. But require:
- Careful design from start
- Ongoing maintenance of governance
- Cultural fit (participants value commons)

### Case Study 2: Mastodon (Mixed Results)

**Mastodon:** Federated social network (launched 2016)

**Model:** Anyone can run an instance; instances federate via ActivityPub

**Ostrom Principles Analysis:**

**1. Boundaries:** ❌ **Weak**
- Anyone can start an instance (no membership criteria)
- No clear definition of "what is Mastodon network" (any ActivityPub server can join)
- Result: Toxic instances proliferate, defederation wars

**2. Proportionality:** ❌ **Absent**
- Users on large instances consume resources (bandwidth, moderation) but don't contribute
- Small instances subsidize large ones (infrastructure costs borne unevenly)
- No mechanism to enforce proportional contribution

**3. Collective Choice:** ⚠️ **Fragmented**
- Each instance admin makes rules for their instance
- No network-wide governance (deliberate choice, but creates problems)
- Major decisions (protocol changes) made by W3C (external body)

**4. Monitoring:** ⚠️ **Limited**
- No network-wide monitoring (each instance monitors itself)
- Bad actors can spin up new instances faster than they're defederated

**5. Graduated Sanctions:** ❌ **Absent**
- Only tool: Defederation (nuclear option—completely sever connection)
- No middle ground (warning, temporary suspension, etc.)

**6. Conflict Resolution:** ❌ **Absent**
- No formal mechanism for resolving disputes between instances
- Admins handle conflicts ad hoc (often poorly)

**7. Minimal Recognition:** ✅ **Strong**
- Legally: Mastodon is just software; instances are independent entities
- No central organization to sue or shut down

**8. Nested Enterprises:** ❌ **Absent**
- Flat structure (instances federate directly, no regional coordination)
- No higher-level governance

**Results:**
- Rapid growth (millions of users)
- But: Admin burnout, moderation nightmares, defederation drama
- Large instances recentralize (Mastodon.social dominates)
- Network effects undermine federation (most users on a few big instances)

**Why It Struggled:**
- **No governance designed in**—assumed federation = automatic self-governance
- Ostrom's principles ignored (implicitly or explicitly)
- Result: Some of Hardin's predictions came true (overuse, collapse of cooperation)

**Lessons:**
- Pure decentralization without governance doesn't work
- Need explicit commons governance, not assumption that "protocol solves it"
- Federation is necessary but not sufficient

### Case Study 3: Software Heritage (Academic Model)

**Software Heritage:** Preserving all open-source software (launched 2016)

**Model:** Academic consortium funded by Inria (French research institute) + partners

**Ostrom Principles Implementation:**

**1. Boundaries:** ✅ **Clear**
- Resource: Open-source software (not proprietary)
- Membership: Academic institutions and non-profits committed to preservation

**2. Proportionality:** ⚠️ **Weak**
- Inria provides most funding (imbalanced)
- Contributors provide mirrors (storage) but not all equally
- Needs better proportionality as it scales

**3. Collective Choice:** ⚠️ **Limited**
- Governance by Inria + advisory board
- Not fully democratic (participants have input but Inria has veto)
- Transitioning to more participatory model

**4. Monitoring:** ✅ **Strong**
- Automated crawlers monitor GitHub, GitLab, etc.
- Checksums verify integrity
- Mirrors regularly audited

**5. Graduated Sanctions:** ❓ **N/A** (so far)
- No major violations yet (early stage)

**6. Conflict Resolution:** ⚠️ **Informal**
- Academic disputes handled through traditional academic channels
- No formal arbitration process

**7. Minimal Recognition:** ✅ **Strong**
- UNESCO partnership (international recognition)
- French government support (legal standing)

**8. Nested Enterprises:** ⚠️ **Emerging**
- Inria (central) → Partner institutions (regional) → Mirrors (local)
- Structure is forming but not fully nested yet

**Results:**
- 15+ billion source code files archived
- Growing academic and industry support
- Stable funding (for now—depends on Inria)

**Why It Works (So Far):**
- Strong institutional backing (Inria)
- Clear mission and technical competence
- Academic culture of openness

**Vulnerabilities:**
- Funding concentration (too dependent on Inria)
- Governance not fully participatory (top-down elements)
- Needs to scale proportionality and nested governance

**Lessons:**
- Academic commons can work but need explicit governance
- Early centralization (Inria) was pragmatic (fast start) but must transition to distributed governance for long-term sustainability

---

## Part IV: Technical Architecture for the Seed Bank

### Distributed Storage Models

**Challenge:** How do you technically implement a Seed Bank where many organizations cooperate?

**Models:**

#### 1. Peer-to-Peer (BitTorrent-style)

**How It Works:**
- Each node stores chunks of data
- Nodes share chunks with each other
- Redundancy through replication (each chunk stored on multiple nodes)

**Pros:**
- Highly resilient (no single point of failure)
- Scales with number of nodes (more nodes = more capacity)

**Cons:**
- Coordination complexity (how to ensure chunks are distributed evenly?)
- Discovery problem (how do you find what you need?)
- Freeloaders (leechers who download but don't upload)

**Example:** IPFS (InterPlanetary File System)
- Content-addressed storage (files identified by hash, not location)
- Nodes pin content they care about
- Network collectively preserves pinned content

**For Seed Bank:**
- Works well for technical infrastructure
- But needs governance layer (Ostrom principles) to prevent freeloading

#### 2. Federated Repositories

**How It Works:**
- Each organization runs a full repository (or mirrors subset)
- Repositories sync with each other periodically
- Metadata standardized (everyone knows what everyone else has)

**Pros:**
- Each node is autonomous (can operate independently)
- Clear responsibility (each org manages its own repository)

**Cons:**
- Requires significant resources per node (each must store large amounts)
- Sync complexity (keeping repositories aligned)

**Example:** LOCKSS
- Each library runs a LOCKSS box
- Boxes poll each other to verify integrity
- If one box fails, others have copies

**For Seed Bank:**
- Best model for institutional commons
- Matches Ostrom's principles (clear boundaries, monitoring, etc.)

#### 3. Centralized Coordination, Distributed Storage

**How It Works:**
- Central registry tracks what each node stores (metadata)
- Nodes store actual data (distributed)
- Central registry doesn't store content (only pointers)

**Pros:**
- Easy discovery (query central registry: "who has this file?")
- Nodes can specialize (some store rare items, others common items)

**Cons:**
- Central registry is single point of failure (for discovery, not storage)
- Risk of centralization creep (registry gains too much power)

**Example:** Archive.org + mirrors
- Internet Archive is primary (central)
- Mirrors exist globally (distributed storage)
- Archive.org coordinates but doesn't control mirrors

**For Seed Bank:**
- Pragmatic hybrid
- But must ensure central registry doesn't become bottleneck or dictator

### Governance-Integrated Architecture

**Key Insight:** Governance can't be afterthought—must be *built into* technical architecture.

**Design Patterns:**

#### Smart Contracts for Proportionality

**Use blockchain/smart contracts to enforce:**
- Storage contributions (can't withdraw more than you deposit)
- Bandwidth limits (upload/download ratios)
- Automated sanctions (node falls below threshold → reduced access)

**Pros:** Self-enforcing, transparent, automated

**Cons:** Requires crypto infrastructure (complexity, cost), immutable (hard to change rules)

**Best for:** Technical compliance (storage, bandwidth, uptime)

#### Voting Mechanisms in Protocol

**Embed governance in protocol:**
- Major changes require majority vote of nodes
- Nodes vote by running updated software
- Forks if consensus fails (like blockchain forks)

**Pros:** Democratic, decentralized

**Cons:** Slow (consensus takes time), can fork network

**Best for:** Major protocol changes (technical standards, access policies)

#### Reputation Systems

**Track node behavior:**
- Nodes earn reputation for uptime, correct checksums, participation
- High-reputation nodes get priority (bandwidth, storage)
- Low-reputation nodes sanctioned (reduced access, eventually expelled)

**Pros:** Incentivizes good behavior, graduated sanctions

**Cons:** Gameable (Sybil attacks, reputation washing), requires trusted reputation oracle

**Best for:** Monitoring and sanctions (Ostrom principles 4-5)

---

## Part V: Building Your Own Seed Bank

### Step-by-Step: Launching a Distributed Preservation Network

**Phase 1: Coalition Formation (Year 1)**

**Goals:**
- Recruit 5-10 founding members (organizations committed to preservation)
- Establish shared mission and values
- Draft initial governance charter

**Activities:**
1. **Identify potential partners:**
   - Universities with archival programs
   - Libraries with digital collections
   - Non-profits focused on preservation (regional Internet Archives, etc.)

2. **Host founding workshop:**
   - Day-long meeting to discuss vision, values, governance
   - Agree on Ostrom principles implementation
   - Sign founding charter

3. **Secure seed funding:**
   - Apply for grants (Mellon, Knight, NEH)
   - Pitch: "Building distributed commons for digital preservation"
   - Initial funding for technical infrastructure + coordination

**Phase 2: Technical Infrastructure (Year 1-2)**

**Goals:**
- Deploy technical infrastructure (storage, networking, monitoring)
- Pilot with small collection (test the system)

**Activities:**
1. **Choose technical model:**
   - Federated repositories (LOCKSS-style)?
   - P2P (IPFS-style)?
   - Hybrid (centralized coordination, distributed storage)?

2. **Deploy pilot:**
   - Each founding member sets up node
   - Preserve test collection (e.g., one murdered platform's archive)
   - Verify redundancy, checksums, access

3. **Build monitoring systems:**
   - Automated health checks (nodes online?)
   - Peer verification (checksums correct?)
   - Dashboard showing network status

**Phase 3: Governance Formalization (Year 2)**

**Goals:**
- Adopt formal governance structure
- Recruit additional members (grow to 20-30 organizations)

**Activities:**
1. **Adopt governance bylaws:**
   - Membership criteria (who can join?)
   - Voting procedures (one org one vote? weighted?)
   - Conflict resolution process (mediation, arbitration)

2. **Elect governance board:**
   - Representatives from member organizations
   - Committees (technical, content policy, ethics, fundraising)

3. **Launch membership drive:**
   - Recruit new members (target: double membership)
   - Onboarding process (technical setup, governance training)

**Phase 4: Scale and Diversify (Years 3-5)**

**Goals:**
- Grow to 50-100 members
- Preserve significant collections (multiple murdered platforms)
- Achieve financial sustainability

**Activities:**
1. **Expand preservation scope:**
   - Move beyond pilot to major collections
   - Coordinate triage (use Custodial Filter to prioritize)

2. **Diversify funding:**
   - Membership fees (sliding scale)
   - Grants (ongoing)
   - Earned revenue (services to non-members? consulting?)

3. **Build nested structure:**
   - Regional consortia form (US, Europe, Asia, etc.)
   - Global coordination body emerges
   - Local autonomy with global standards

**Phase 5: Long-Term Sustainability (Years 5+)**

**Goals:**
- Self-sustaining commons (no dependence on single funder)
- Recognized as essential infrastructure
- Continual innovation (technical, governance)

**Activities:**
1. **Institutionalize:**
   - Become recognized by governments, universities, funders
   - Partnerships with major institutions (Library of Congress, national libraries)

2. **Adapt and evolve:**
   - Governance reviews (Are Ostrom principles still working?)
   - Technical upgrades (storage tech, protocols evolve)
   - Policy updates (new ethical challenges, content types)

3. **Build next generation:**
   - Train new members (how to run nodes, participate in governance)
   - Document knowledge (guides, case studies, lessons learned)
   - Inspire new Seed Banks (your model becomes template for others)

---

## Part VI: Why This Is Hard (And How to Succeed Anyway)

### The Challenges

**1. Collective Action Problem**
- Everyone benefits from preservation commons, but contributing is costly
- Temptation to free-ride (let others do the work)
- Ostrom's principles mitigate but don't eliminate this

**2. Technical Complexity**
- Distributed systems are hard to build and maintain
- Not all organizations have technical capacity
- Asymmetry in capabilities (big universities vs. small libraries)

**3. Funding Uncertainty**
- Commons require sustained funding
- Grants end, memberships fluctuate
- Economic downturns threaten budgets

**4. Governance Fatigue**
- Democratic governance is labor-intensive (meetings, votes, deliberation)
- Volunteers burn out
- Risk of oligarchy (few active members make all decisions)

**5. Value Alignment**
- Members must share commitment to commons
- If some see it as extractive opportunity (monetize data), trust collapses
- Cultural fit matters—can't force cooperation

### Success Factors

**1. Start Small**
- Don't try to preserve entire internet on day one
- Pilot with committed founding members
- Prove model works, then scale

**2. Design Governance First**
- Don't build tech and add governance later (Mastodon's mistake)
- Ostrom's principles from founding charter
- Governance evolves but core principles remain

**3. Invest in Social Infrastructure**
- Commons succeed when members know and trust each other
- Regular meetings, workshops, social events
- Build relationships, not just technical systems

**4. Make Contribution Easy**
- Lower barriers to participation (technical documentation, training, support)
- Graduated membership (start as observer, become full member)
- Recognize non-technical contributions (curation, governance, outreach)

**5. Celebrate Successes**
- Acknowledge contributions publicly
- Show impact (we preserved X platforms, saved Y terabytes)
- Build collective pride in commons

**6. Be Patient**
- Commons take years to stabilize
- Early challenges don't mean failure
- Ostrom's principles work but need time

---

## Conclusion: The Seed Bank as Hope

The Seed Bank isn't just a technical solution—it's a **political vision**. It says:

- Digital culture doesn't have to depend on monopolies (Internet Archive is wonderful but shouldn't be sole preserver)
- Commons can work (Ostrom proved it, LOCKSS demonstrates it)
- Cooperation is possible (even in competitive, scarce-resource environments)
- We can govern ourselves (don't need corporations or governments to do it for us)

Building a Seed Bank is hard. It requires:
- Technical expertise (distributed systems, storage, networking)
- Governance sophistication (Ostrom's principles aren't intuitive)
- Sustained commitment (decades, not months)
- Cultural alignment (participants must value commons)

But it's possible. LOCKSS has done it for 20+ years. Other commons can too.

The alternative—centralized preservation monopolies or no preservation at all—is unacceptable. Digital culture is too important, too fragile, too valuable to leave to one organization or to chance.

**The Seed Bank is how we preserve digital sovereignty at scale.** Not one Archive owned by one organization, but a distributed network of Archives cooperating as a commons.

In the next chapter, we'll explore the **Haunted Forest**—how to build memory institutions that don't just store Umbrabytes, but interpret them, give them meaning, and make them accessible to future generations.

For now, consider: What would it take to start a Seed Bank in your community? Who would you invite? What would you preserve? And how would you govern it together?

The commons begins with an invitation. Will you extend it?

---

## Discussion Questions

1. **Tragedy Avoided?** Ostrom proved Hardin wrong for physical commons (forests, fisheries). Does her work apply to digital commons, or are there fundamental differences?

2. **Trust and Scale:** LOCKSS works with 300 libraries. Could it scale to 3,000? 30,000? At what point does commons governance break down?

3. **Mastodon's Dilemma:** Should Mastodon retroactively add governance? Or is pure federation the point (even if it causes problems)?

4. **Your Contribution:** If you joined a Seed Bank, what could you contribute? (Technical, financial, labor, curation?) What would you need to participate?

5. **Commons vs. Cooperation:** Is a commons (shared resource) better than cooperation between independent archives? What do we gain/lose with commons model?

6. **Nested Governance:** How many layers of nesting are optimal? (Node → regional → global? More layers? Fewer?)

---

## Exercise: Design a Seed Bank

**Task:** Design a Seed Bank for preserving murdered social media platforms.

**Part 1: Apply Ostrom's Principles** (1500 words)

For each of the 8 principles, specify:
1. How you'll implement it in your Seed Bank
2. Specific mechanisms (technical, governance, cultural)
3. Potential challenges and how to address them

**Part 2: Technical Architecture** (1000 words)

Choose and justify:
- Storage model (P2P, federated, hybrid?)
- Monitoring systems (automated, peer-review, reputation?)
- Access model (public, restricted, tiered?)
- Technologies (IPFS, LOCKSS, custom, blockchain, other?)

**Part 3: Founding Coalition** (500 words)

Who would you recruit as founding members?
- What types of organizations (universities, libraries, non-profits, individuals?)
- What commitments would you ask for (storage, funding, labor?)
- How would you build trust among members?

**Part 4: Sustainability Plan** (500 words)

How do you keep this going for 20+ years?
- Funding sources (grants, fees, earned revenue?)
- Governance evolution (how to prevent ossification or oligarchy?)
- Technical maintenance (who updates software, migrates formats?)

**Part 5: Reflection** (300 words)

- What's the biggest challenge you anticipate?
- Would you actually want to participate in this Seed Bank? Why/why not?
- Is commons model realistic, or too idealistic?

---

## Further Reading

### Elinor Ostrom

- Ostrom, Elinor. *Governing the Commons: The Evolution of Institutions for Collective Action*. Cambridge University Press, 1990.
  - The foundational text—must read

- Ostrom, Elinor. "Beyond Markets and States: Polycentric Governance of Complex Economic Systems." *American Economic Review* 100, no. 3 (2010): 641-672.
  - Nobel Prize lecture, accessible overview

### Digital Commons

- Benkler, Yochai. *The Wealth of Networks: How Social Production Transforms Markets and Freedom*. Yale University Press, 2006.
  - Theory of peer production and digital commons

- Bollier, David, and Silke Helfrich, eds. *The Wealth of the Commons: A World Beyond Market and State*. Levellers Press, 2012.
  - Case studies of various commons (physical and digital)

- Hess, Charlotte, and Elinor Ostrom, eds. *Understanding Knowledge as a Commons*. MIT Press, 2006.
  - Applying commons theory to information/knowledge

### LOCKSS and Distributed Preservation

- Reich, Vicky, and David S. H. Rosenthal. "LOCKSS: A Permanent Web Publishing and Access System." *D-Lib Magazine* 7, no. 6 (2001).
  - Technical overview of LOCKSS system

- Rosenthal, David S. H. "Emulation & Virtualization as Preservation Strategies." Report, Library of Congress, 2015.
  - Preservation strategies for distributed systems

### Federated Systems and Governance

- Gehl, Robert, and Diana Zulli. "Mastodon: Privacy, Moderation, and Affordances of the Private and the Public." *Social Media + Society* 5, no. 2 (2019).
  - Analysis of Mastodon's federated model and challenges

- Zuboff, Shoshana. *The Age of Surveillance Capitalism*. PublicAffairs, 2019.
  - Why we need commons alternatives to corporate platforms

---

**End of Chapter 13**

*Next: Chapter 14 — Memory Institutions for the Digital Age: Curating the Haunted Forest*

