# Module 3: Building the Seed Bank
**Archaeobytology 300: Institution Building & Strategic Infrastructure**

---

## Module Overview

**Core Question:** How do we build shared preservation infrastructure that no single entity controls—a digital commons that distributes both cost and control across many stakeholders?

**Learning Objective:** Students will design a federated, collectively-governed "Seed Bank"—a distributed preservation network where multiple institutions share storage, labor, and governance without centralizing power or creating single points of failure.

**Time:** Week 7-8

---

## The Challenge: Beyond Single Institutions

**Modules 1-2** focused on single organizations:
- Module 1: How does *one* Archive sustain itself?
- Module 2: How does *one* Foundry stay profitable?

**Module 3** asks: What if sovereignty requires *infrastructure no single entity can shut down*?

### The Seed Bank Concept

A **Seed Bank** is distributed preservation infrastructure:
- Multiple institutions host redundant copies
- No single organization has unilateral control
- Governance is collective (but not chaotic)
- Cost is shared (but not equally—proportional contribution)
- Anyone can join (but with responsibility requirements)

**Examples in the wild:**
- LOCKSS (academic libraries)
- Mastodon (federated social media)
- IPFS (distributed file storage)
- Archive Team + Internet Archive (volunteer network + centralized storage)

**The Tension:**
- ✅ Distributed = resilient
- ❌ Distributed = coordination problems
- ❓ How do you govern a network with no center?

---

## Core Reading

### Primary Texts

**Ostrom, E. (1990).** *Governing the Commons.* Chapters 2-3: "Design Principles"
- Focus: How communities self-govern shared resources
- Key Insight: Successful commons have clear boundaries, graduated sanctions, nested governance
- Question: Can digital preservation be a self-governed commons?

**Schneier, B. (2012).** *Liars and Outliers.* Chapter 4: "The Evolution of Cooperation"
- Focus: How trust systems scale (or fail to)
- Key Insight: Small groups cooperate naturally; large groups need institutions
- Question: At what scale does a Seed Bank need formal governance?

**Benkler, Y. (2006).** *The Wealth of Networks.* Chapter 3: "Peer Production"
- Focus: Wikipedia, open source, and commons-based production
- Key Insight: Decentralized production can rival centralized firms—if designed well
- Question: What makes peer production succeed vs. collapse?

### Case Study Readings

**LOCKSS (Lots of Copies Keep Stuff Safe)**
- Model: University libraries form preservation consortia
- Tech: Each library runs a LOCKSS server, redundantly stores agreed-upon content
- Governance: Steering committee of participating libraries
- Cost: ~$10k/year per institution (server + bandwidth)
- Success: 300+ libraries, 20+ years, billions of preserved pages

**Mastodon (Federated Social Media)**
- Model: Anyone can run an "instance" (server), instances federate (interoperate)
- Tech: ActivityPub protocol for cross-instance communication
- Governance: Each instance self-governs; no global authority
- Cost: Variable (~$10-500/month per instance)
- Challenge: Instance admin burnout, spam/moderation, defederation conflicts

**IPFS (InterPlanetary File System)**
- Model: Peer-to-peer file storage (like BitTorrent, but permanent)
- Tech: Content-addressed (hash-based) storage, anyone can "pin" files
- Governance: None (protocol-level only)
- Cost: Pay for your own storage/bandwidth
- Challenge: Files disappear if no one pins them (requires incentive layer like Filecoin)

**Software Heritage**
- Model: Academic consortium preserves all public source code
- Tech: Centralized archive + distributed mirrors at partner universities
- Governance: Steering committee of research institutions + UNESCO
- Cost: Partner institutions contribute infrastructure + funding
- Success: 15B+ source code files preserved

---

## Lecture: The Commons Design Matrix

Elinor Ostrom won the Nobel Prize for identifying **8 design principles** that successful commons share. We'll apply them to digital preservation:

### Ostrom's 8 Principles (Applied to Seed Banks)

#### 1. Clearly Defined Boundaries
**Principle:** Who is part of the commons? What resources are governed?

**For a Seed Bank:**
- **Membership:** Who can join? (Open to all? Vetted institutions only?)
- **Content Scope:** What gets preserved? (Everything? Curated collections?)
- **Access Rules:** Who can retrieve preserved artifacts? (Members only? Public?)

**Example (LOCKSS):**
- ✅ Membership: Libraries that pay dues + run a server
- ✅ Content: Journal archives that consortium collectively decides to preserve
- ✅ Access: Members can access each other's preserved content

**Anti-Example (IPFS):**
- ❌ Membership: Anyone (no vetting)
- ❌ Content: Anything anyone uploads
- ❌ Access: Anyone
- **Result:** Spam, illegal content, no accountability

**Design Question:** Where do you draw the boundary between "open" and "functional"?

---

#### 2. Proportional Equivalence (Costs/Benefits)
**Principle:** Members' obligations are proportional to benefits received.

**For a Seed Bank:**
- **Contribution:** Large institutions contribute more storage/bandwidth than small ones
- **Access:** But all members get equal access to preserved content
- **Labor:** Governance participation scales with size

**Example (Software Heritage):**
- ✅ Big universities host larger mirrors
- ✅ Small institutions contribute less (but still participate)
- ✅ All members access full archive

**Anti-Example (Volunteer Projects):**
- ❌ A few people do 90% of the work
- ❌ Everyone benefits equally
- **Result:** Burnout (Module 0's Volunteer Burnout Problem)

**Design Question:** How do you measure "contribution"? (Storage? Bandwidth? Labor? Money?)

---

#### 3. Collective-Choice Arrangements
**Principle:** Members affected by rules participate in making/modifying them.

**For a Seed Bank:**
- **What to preserve:** Members vote on collection priorities
- **Governance changes:** Members can propose rule changes
- **Conflict resolution:** Disputes handled by member representatives

**Example (LOCKSS):**
- ✅ Libraries collectively decide what journals to preserve
- ✅ Steering committee elected by members
- ✅ Annual meetings for governance decisions

**Anti-Example (Platform with "Advisory Board"):**
- ❌ Company makes decisions, "consults" users
- ❌ Users have no real power
- **Result:** Platform does what's profitable, not what's right

**Design Question:** How do you balance "democracy" (everyone votes) with "efficiency" (decisions get made)?

---

#### 4. Monitoring
**Principle:** Someone checks that members are following the rules.

**For a Seed Bank:**
- **Technical Monitoring:** Are members' servers online? Are they storing what they promised?
- **Content Monitoring:** Is preserved content intact (checksums validate)?
- **Governance Monitoring:** Are members participating in decision-making?

**Example (LOCKSS):**
- ✅ Automated polling: Each server checks if others have the same content
- ✅ If discrepancies found, servers vote on "correct" version
- ✅ Members that go offline too often are flagged

**Design Question:** How do you monitor without creating surveillance?

---

#### 5. Graduated Sanctions
**Principle:** Rule-breakers face escalating consequences (not immediate expulsion).

**For a Seed Bank:**
- **Level 1:** Warning (server went offline, please fix)
- **Level 2:** Temporary restriction (can't submit new content until server is fixed)
- **Level 3:** Suspension (server offline too long, removed from network)
- **Level 4:** Expulsion (repeated violations, bad faith actor)

**Example (Mastodon Federation):**
- ✅ Instance admins can "mute" (limit visibility) problem instances
- ✅ Severe cases: "defederate" (completely block)
- ❌ But no graduated steps—it's binary (federate or don't)

**Design Question:** How do you enforce rules without becoming authoritarian?

---

#### 6. Conflict-Resolution Mechanisms
**Principle:** Disputes are resolved quickly and fairly.

**For a Seed Bank:**
- **Technical disputes:** "Your server says file X has hash A, mine says hash B. Who's right?"
- **Governance disputes:** "You want to preserve project X, I think it violates our content policy."
- **Resource disputes:** "You're using too much bandwidth, throttle your server."

**Example (LOCKSS):**
- ✅ Servers "vote" on correct content version (majority wins)
- ✅ Governance disputes go to steering committee
- ✅ Technical disputes have algorithmic resolution

**Anti-Example (Informal volunteer projects):**
- ❌ Disputes resolved by "whoever yells loudest"
- ❌ Or founder makes unilateral decision
- **Result:** Resentment, forks, project collapse

**Design Question:** Do you need human arbitration, algorithmic resolution, or both?

---

#### 7. Minimal Recognition of Rights
**Principle:** External authorities respect the commons' autonomy.

**For a Seed Bank:**
- **Legal Recognition:** Preservation activities are recognized as legitimate (not piracy)
- **Platform Respect:** Platforms don't block/sue preservation efforts
- **Government Neutrality:** State doesn't interfere with governance

**Example (Internet Archive):**
- ⚠️ *Partially* recognized: Fair use protects web archiving
- ❌ But publishers sue over controlled digital lending
- ❌ No clear legal status for preservation

**Challenge:** Digital preservation operates in legal grey areas. How do you get legitimacy?

**Design Question:** Do you seek legal recognition (lobby for laws) or operate in grey areas (civil disobedience)?

---

#### 8. Nested Enterprises
**Principle:** Large commons are organized in multiple layers.

**For a Seed Bank:**
- **Local Level:** Individual institutions run servers, make local decisions
- **Regional Level:** Regional consortia coordinate (East Coast libraries, European archives, etc.)
- **Global Level:** Overall coordination, protocol development, crisis response

**Example (Software Heritage):**
- ✅ Local: Each university hosts a mirror
- ✅ Regional: European partners coordinate within EU
- ✅ Global: Central coordination in Paris + UNESCO oversight

**Anti-Example (Mastodon):**
- ✅ Local: Each instance self-governs
- ❌ No regional coordination
- ❌ No global governance
- **Result:** Fragmentation, coordination failures

**Design Question:** How many layers do you need? Too many = bureaucracy. Too few = chaos.

---

## Framework: The Seed Bank Design Canvas

Your assignment will design a complete Seed Bank using these dimensions:

### Section 1: Purpose & Scope

**What is this Seed Bank preserving?**
- **Content Type:** Web pages? Software? Datasets? Media?
- **Scale:** How many artifacts? (Thousands? Millions? Billions?)
- **Timeframe:** How long must it last? (10 years? 50 years? 100 years?)

**Example (hypothetical):**
> *Purpose:* Preserve "Indie Web" content—personal blogs, digital gardens, small-scale social platforms—before they disappear from link rot.
> 
> *Scope:* ~100,000 personal websites, ~10TB of data
> 
> *Timeframe:* 50+ years (generational preservation)

---

### Section 2: Membership & Boundaries (Ostrom Principle 1)

**Who can join?**
- **Open Membership:** Anyone can join (IPFS model)
- **Vetted Membership:** Must apply and be approved (LOCKSS model)
- **Institutional Only:** Must be an institution, not individual (Software Heritage model)
- **Hybrid:** Open for small contributors, vetted for large ones

**What are the requirements?**
- **Technical:** Must run a server with X storage, Y bandwidth
- **Financial:** Must pay dues ($X/year)
- **Labor:** Must participate in governance (attend meetings, vote)
- **Content:** Must agree to preserve collective priorities (not just your own stuff)

**Who can access preserved content?**
- **Members Only:** Only participating institutions
- **Public Access:** Anyone can retrieve content
- **Tiered Access:** Members get full access, public gets limited

---

### Section 3: Governance Model (Ostrom Principles 3, 6)

**How are decisions made?**

| Governance Model | Decision-Making | Pros | Cons |
|------------------|----------------|------|------|
| **Consensus** | Everyone must agree | Democratic, high buy-in | Slow, veto risk |
| **Majority Vote** | 50%+1 decides | Faster than consensus | Majority can tyrannize minority |
| **Supermajority** | 66% or 75% required | Balances speed and legitimacy | Still possible to block |
| **Steering Committee** | Elected representatives decide | Efficient, accountable | Risk of oligarchy |
| **Rotating Leadership** | Different members lead in rotation | Distributes power | Inconsistent leadership |
| **Do-ocracy** | Whoever does the work decides | Meritocratic, fast | Excludes those with less time |

**What decisions need collective approval?**
- **Mission-critical:** What to preserve, who to admit/expel
- **Operational:** Budget, infrastructure upgrades
- **Technical:** Protocol changes, software updates
- **Minor:** Day-to-day operations (delegated to working groups)

---

### Section 4: Technical Architecture

**How is data distributed?**

| Architecture | How It Works | Redundancy | Cost | Single Point of Failure? |
|--------------|-------------|------------|------|--------------------------|
| **Centralized + Mirrors** | One "source of truth" + read-only copies elsewhere | Medium | Low | Yes (source) |
| **Peer-to-Peer (P2P)** | Every node has some content, no center | High (if enough nodes) | Low (shared) | No |
| **Federated** | Multiple independent servers, coordinated | Medium-High | Medium | No (but coordination needed) |
| **Blockchain** | Cryptographically verified distributed ledger | Very High | Very High | No |

**Example Design (Hypothetical Indie Web Seed Bank):**
- **Storage:** Each member institution runs a LOCKSS-style server
- **Redundancy:** 7 copies of each artifact (distributed geographically)
- **Verification:** Monthly checksums to ensure data integrity
- **Access:** Public-facing mirrors allow anyone to retrieve content
- **Cost:** ~$500/year per member for server + bandwidth

---

### Section 5: Economic Model (Ostrom Principle 2)

**How is the Seed Bank funded?**

| Funding Source | Amount/Year | Who Pays? | Proportionality? |
|---------------|-------------|-----------|------------------|
| **Membership Dues** | $X/member/year | All members | Tiered by size (small institutions pay less) |
| **Infrastructure Contributions** | In-kind (servers, bandwidth) | Members with resources | Large institutions contribute more |
| **Grants** | One-time or recurring | Foundations, governments | Not from members |
| **Donations** | Variable | Public, supporters | Optional |
| **Earned Revenue** | From services (consulting, tools) | External customers | Reinvested in commons |

**Budget Template:**

| Expense Category | Annual Cost | Who Pays? |
|-----------------|-------------|-----------|
| Coordination (staff, meetings) | $XXk | Membership dues |
| Infrastructure (servers, bandwidth) | $XXk | In-kind contributions + dues |
| Software Development (tools, protocols) | $XXk | Grants + volunteer labor |
| Legal/Administrative | $XXk | Membership dues |
| **Total** | **$XXk** | |

**Proportionality Check:**
- Do large institutions pay/contribute more? (Yes/No)
- Do small institutions still get full access? (Yes/No)
- Is the burden sustainable for all members? (Yes/No)

---

### Section 6: Monitoring & Enforcement (Ostrom Principles 4, 5)

**How do you ensure members fulfill obligations?**

#### Technical Monitoring
- **Automated polling:** Servers check each other's status
- **Checksums:** Verify data integrity
- **Uptime tracking:** Log when servers go offline

#### Governance Monitoring
- **Participation tracking:** Do members attend meetings, vote?
- **Contribution audit:** Are members providing promised resources?

#### Graduated Sanctions
- **Level 1 (Warning):** Automated email if server offline >24 hours
- **Level 2 (Limitation):** Can't submit new content until issue resolved
- **Level 3 (Probation):** Steering committee reviews, member must present improvement plan
- **Level 4 (Suspension):** Temporary removal from network (can reapply later)
- **Level 5 (Expulsion):** Permanent removal (for repeated violations or bad faith)

---

### Section 7: Three Pillars Embodiment

**Does your Seed Bank embody The Three Pillars?**

#### Declaration (Sovereignty)
- ❓ Is the Seed Bank independent? (No single government/company controls it)
- ❓ Can members leave and take their data? (Exportable, portable)
- ❓ Is governance member-driven? (Not dictated by a platform)

#### Connection (Intentional Community)
- ❓ Do members choose to participate? (Not coerced)
- ❓ Is there real community? (Not just technical interoperability)
- ❓ Can members communicate and coordinate? (Not siloed)

#### Ground (Ownership)
- ❓ Do members own their infrastructure? (Not renting from a platform)
- ❓ Is data distributed? (No single point of control)
- ❓ Can the commons survive any single member leaving? (Redundancy)

**The Test:** If the largest member left tomorrow, would the Seed Bank continue? If **no**, you have a hidden dependency.

---

## Case Study Deep-Dives

### Case 1: LOCKSS (The Gold Standard)

**What It Preserves:** Academic journal archives (content libraries pay for)

**Membership:**
- ~300 academic libraries worldwide
- Must pay dues (~$10k/year) + run a server

**Governance:**
- Steering committee (elected by members)
- Annual meetings for major decisions
- Working groups for technical/policy issues

**Technical:**
- Each library runs a LOCKSS server
- Servers poll each other to verify content
- If discrepancies found, majority vote determines "correct" version
- 7+ copies of each preserved item (geographically distributed)

**Economic:**
- Member dues fund central coordination (Stanford hosts core team)
- Libraries provide infrastructure (servers, bandwidth)
- Total cost: ~$3M/year (across 300 members = ~$10k each)

**Ostrom Principles Applied:**
1. ✅ **Boundaries:** Clear membership (dues-paying libraries)
2. ✅ **Proportionality:** Larger libraries pay more, all get equal access
3. ✅ **Collective Choice:** Members vote on what to preserve
4. ✅ **Monitoring:** Automated polling + annual audits
5. ✅ **Sanctions:** Non-compliant members suspended
6. ✅ **Conflict Resolution:** Steering committee arbitrates
7. ⚠️ **Recognition:** Libraries recognize LOCKSS; publishers sometimes challenge
8. ✅ **Nested:** Local (each library), regional (consortia), global (steering committee)

**What We Can Learn:**
- ✅ 20+ years of operation = proven model
- ✅ True decentralization (no single point of failure)
- ✅ Institutional buy-in (libraries understand importance)
- ❌ Expensive (only institutions can afford it)
- ❌ Limited scope (only preserves content libraries already pay for)

**Student Discussion:**
1. Could LOCKSS be adapted for non-academic content (personal websites, indie games)?
2. How do you make it affordable for small institutions or individuals?

---

### Case 2: Mastodon (The Federated Social Network)

**What It Preserves/Hosts:** Social media posts (Twitter alternative)

**Membership:**
- Anyone can run an instance (server)
- No vetting, no dues
- ~10,000 instances, ~10M users

**Governance:**
- Each instance self-governs (instance admin makes rules)
- No global governance
- Instances can "defederate" (block) each other

**Technical:**
- ActivityPub protocol (W3C standard)
- Each instance stores its users' posts
- Instances exchange posts via federation protocol
- No redundancy (if instance shuts down, posts disappear)

**Economic:**
- Instance admins pay for hosting (~$10-500/month)
- Some instances crowdfund (Patreon, Ko-fi)
- No central budget

**Ostrom Principles Applied:**
1. ⚠️ **Boundaries:** No clear boundaries (anyone can join)
2. ❌ **Proportionality:** Instance admins bear all costs, users pay nothing
3. ❌ **Collective Choice:** No global decision-making
4. ❌ **Monitoring:** No cross-instance accountability
5. ⚠️ **Sanctions:** Defederation (but no graduated approach)
6. ❌ **Conflict Resolution:** No dispute resolution mechanism
7. ⚠️ **Recognition:** Seen as "alternative" but not legitimate replacement for Twitter
8. ❌ **Nested:** Only two levels (instance, global); no regional coordination

**What We Can Learn:**
- ✅ Federation protocol works technically
- ✅ No single point of failure (decentralized)
- ❌ No preservation (instances die, posts disappear)
- ❌ Admin burnout (Module 0's Volunteer Burnout Problem)
- ❌ Fragmentation (instances defederate, community splits)

**Student Discussion:**
1. What would "Mastodon with Ostrom principles" look like?
2. Could regional consortia fund shared infrastructure (instead of individual admins paying)?

---

### Case 3: Software Heritage (The Academic Consortium)

**What It Preserves:** All public source code (GitHub, GitLab, Bitbucket, etc.)

**Membership:**
- ~50 partner institutions (universities, research labs)
- Vetted (must be legitimate academic/cultural organization)
- In-kind contributions (hosting mirrors)

**Governance:**
- Steering committee (representatives from partner institutions)
- UNESCO official partner (gives legitimacy)
- Annual assembly for major decisions

**Technical:**
- Centralized archive in Paris (primary copy)
- Distributed mirrors at partner universities (redundancy)
- Git-based storage (preserves full history)
- Public API (anyone can query)

**Economic:**
- Partner institutions contribute infrastructure (mirrors)
- French government funds core team (~$2M/year)
- Research grants (~$1M/year)
- Total: ~$3M/year (but distributed across many institutions)

**Ostrom Principles Applied:**
1. ✅ **Boundaries:** Clear membership (vetted partners)
2. ✅ **Proportionality:** Large universities host bigger mirrors
3. ✅ **Collective Choice:** Partners decide on policy priorities
4. ✅ **Monitoring:** Automated checks on mirror integrity
5. ⚠️ **Sanctions:** Informal (no formal enforcement yet)
6. ✅ **Conflict Resolution:** Steering committee
7. ✅ **Recognition:** UNESCO partnership gives legitimacy
8. ✅ **Nested:** Local (mirrors), regional (EU partners), global (UNESCO)

**What We Can Learn:**
- ✅ Massive scale (15B+ files)
- ✅ Strong institutional backing (UNESCO)
- ✅ Public access (anyone can query)
- ⚠️ Still somewhat centralized (Paris is "source of truth")
- ❌ Dependent on French government funding (what if it ends?)

**Student Discussion:**
1. Is Software Heritage truly decentralized, or is Paris still a single point of failure?
2. Could this model work for non-code content (websites, datasets, media)?

---

## Assignment: Design Your Seed Bank

**Objective:** Design a federated, collectively-governed preservation network that embodies Ostrom's principles and The Three Pillars.

### Deliverable: Seed Bank System Design (3500-4500 words)

**Required Sections:**

#### 1. Executive Summary (300 words)
- What are you preserving? (Content type, scale, timeframe)
- Why does this need collective infrastructure? (Why not a single Archive?)
- Who are the members? (Institutions? Individuals? Both?)
- Three Pillars alignment

#### 2. Membership & Boundaries (600 words) — **Ostrom Principle 1**
- Who can join? (Open? Vetted? Institutional only?)
- What are membership requirements? (Technical, financial, labor)
- Who can access preserved content? (Members only? Public?)
- How do you prevent bad actors? (Vetting process, sanctions)

#### 3. Governance Model (800 words) — **Ostrom Principles 3, 6**
- How are decisions made? (Consensus? Vote? Steering committee?)
- What decisions require collective approval? (vs. delegated to working groups)
- How are conflicts resolved? (Human arbitration? Algorithmic? Both?)
- How do members propose changes? (Governance amendment process)

#### 4. Technical Architecture (800 words)
- How is data distributed? (Centralized + mirrors? P2P? Federated?)
- What level of redundancy? (How many copies per artifact?)
- How is data integrity verified? (Checksums? Automated polling?)
- How do users access preserved content? (Public API? Member portals?)
- Cost projections (storage, bandwidth, per member)

#### 5. Economic Model (600 words) — **Ostrom Principle 2**
- How is the Seed Bank funded? (Dues? In-kind contributions? Grants?)
- Is contribution proportional to size? (Tiered membership?)
- Annual budget (coordination, infrastructure, development, legal)
- Sustainability plan (can this last 10+ years?)

#### 6. Monitoring & Enforcement (600 words) — **Ostrom Principles 4, 5**
- How do you monitor compliance? (Technical uptime? Governance participation?)
- What are the rules? (Uptime requirements? Data integrity? Governance participation?)
- What happens if a member violates rules? (Graduated sanctions: warning → probation → suspension → expulsion)
- How do you avoid authoritarianism? (Appeals process, transparency)

#### 7. Three Pillars Integrity Check (400 words)
- **Declaration:** Is the Seed Bank independent? Can members leave?
- **Connection:** Is community intentional? Can members coordinate?
- **Ground:** Do members own infrastructure? Is data distributed?
- **The Test:** If the largest member left, would the Seed Bank survive?

#### 8. Comparison to Existing Models (400 words)
- How is your design different from LOCKSS? Mastodon? Software Heritage? IPFS?
- What did you adopt from them?
- What did you improve?

### Evaluation Criteria:

| Criterion | Points | What We're Looking For |
|-----------|--------|------------------------|
| **Ostrom Principles** | 35 | Did you apply all 8 principles? Are boundaries clear, governance collective, sanctions graduated? |
| **Technical Feasibility** | 25 | Can this architecture actually work? Is it buildable? |
| **Economic Sustainability** | 20 | Can this be funded long-term? Is contribution proportional? |
| **Three Pillars Integrity** | 15 | Does it embody Declaration, Connection, Ground? |
| **Originality** | 5 | Is this a genuinely new model, or copying LOCKSS? |

**Total: 100 points**

---

## Discussion Questions for Seminar

1. **The Open vs. Closed Dilemma:** IPFS is fully open (anyone can join) but chaotic. LOCKSS is vetted (libraries only) but exclusive. Where's the balance?

2. **The Democracy vs. Efficiency Tradeoff:** Consensus is democratic but slow. Steering committees are efficient but risk oligarchy. How do you govern at scale?

3. **The Free Rider Problem:** In Mastodon, admins pay for everything while users pay nothing. How do you ensure proportionality without creating barriers?

4. **The Legal Grey Area:** Digital preservation often violates copyright. Should Seed Banks seek legal recognition (lobby for laws) or operate as civil disobedience?

5. **The Centralization Creep:** Software Heritage has mirrors, but Paris is still the "source of truth." Is that acceptable, or a hidden single point of failure?

6. **The Succession Problem:** LOCKSS has lasted 20+ years. But what happens when the founding generation retires? How do you ensure institutional memory?

---

## Module Deliverables

By the end of Module 3, students will have:

1. ✅ **Completed Reading Responses** (Ostrom, Schneier, Benkler on commons governance)
2. ✅ **Case Study Analysis** (LOCKSS, Mastodon, Software Heritage comparative analysis)
3. ✅ **Seed Bank System Design** (3500-4500 words, complete institutional design applying Ostrom's 8 principles)
4. ✅ **Governance Charter Draft** (Rules, decision-making processes, sanctions)
5. ✅ **Technical Architecture Diagram** (How data is distributed, verified, accessed)

---

## Looking Ahead: Module 4

Next week, we shift from **preservation infrastructure** (Seed Bank) to **memory institutions**.

**Module 4: Curating the Haunted Forest** asks:

*"How do we build museums, archives, and memory institutions for murdered digital artifacts—not just storing them, but making them meaningful?"*

You'll design a public-facing digital museum that preserves *and interprets* Umbrabytes, making them accessible and legible to future generations.

---

## Instructor Notes

- **Guest Speaker:** Invite LOCKSS architect, Mastodon admin, or Software Heritage researcher
- **Site Visit (Virtual):** Tour a LOCKSS server, explore Software Heritage API, join a Mastodon instance
- **Group Work:** Divide class into "Seed Bank cohorts"—design competing models, then merge best ideas
- **Simulation:** Role-play governance (one student plays "bad actor," others must enforce sanctions)
- **The Ostrom Test:** For each student design, check all 8 principles explicitly

---

**End of Module 3**
