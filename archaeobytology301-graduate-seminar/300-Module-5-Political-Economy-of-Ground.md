# Module 5: The Political Economy of Ground
**Archaeobytology 300: Institution Building & Strategic Infrastructure**

---

## Module Overview

**Core Question:** Who controls digital real estate? How do we build ownership systems that resist enclosure, speculation, and platform capture?

**Learning Objective:** Students will analyze existing domain/hosting/identity systems, identify systemic failures, and design alternative ownership infrastructures that embody Three Pillars sovereignty at scale.

**Time:** Week 11-12

---

## The Challenge: Sovereignty as Infrastructure

**Modules 1-4** built institutions:
- Module 1: Archive (preservation org)
- Module 2: Foundry (sovereignty business)
- Module 3: Seed Bank (distributed infrastructure)
- Module 4: Haunted Forest (memory institution)

**Module 5** asks: *Who controls the underlying infrastructure all these institutions depend on?*

### The Ground Problem

Every institution needs **Ground**—digital real estate:
- **Domains:** example.com (who owns it? can it be seized?)
- **Hosting:** Servers, bandwidth (who controls? can they be shut down?)
- **Identity:** Authentication, verification (who certifies "you are you"?)
- **Money:** Payment rails (who controls transactions?)

**Current Systems All Have Problems:**

| System | Controller | Failure Mode |
|--------|-----------|--------------|
| **DNS (Domains)** | ICANN, registrars | Can seize domains, censor, impose fees |
| **Hosting** | AWS, Cloudflare, etc. | Can deplatform, surveil, change ToS |
| **Identity** | Google, Facebook, Twitter | "Login with..." means they control access |
| **Payment** | Visa, PayPal, Stripe | Can freeze accounts, ban industries |

**The Tension:**
- ✅ These systems work (billions use them)
- ❌ They're centralized (single points of control)
- ❌ They're extractive (rent-seeking, gatekeeping)
- ❓ Can we build alternatives that are *both* sovereign *and* functional?

---

## Core Reading

### Primary Texts

**Lessig, L. (2006).** *Code: Version 2.0.* Chapters 7-10: "Sovereignty"
- Focus: Code is law—architecture determines freedom
- Key Insight: Technical systems encode political choices
- Question: Can we design systems that protect sovereignty by default?

**Schneier, B. (2015).** *Data and Goliath.* Chapter 12: "What Can We Do?"
- Focus: Surveillance capitalism is structural, not accidental
- Key Insight: "Free" services trade privacy for profit—can't be reformed, must be replaced
- Question: What does a non-surveillance infrastructure look like?

**Véliz, C. (2020).** *Privacy Is Power.* Chapter 5: "Privacy as Collective Freedom"
- Focus: Privacy is not individual—it's systemic
- Key Insight: Your privacy depends on infrastructure, not personal choices
- Question: How do we build collective systems that protect individual sovereignty?

### Case Study Readings

**ICANN & DNS Governance**
- System: Hierarchical (root servers → TLDs → registrars)
- Control: ICANN (nominally independent, US government oversight until 2016)
- Problems: Domain seizures (Libya's .ly seized from bit.ly), censorship (TLDs can be deleted), rent-seeking (expensive domains)
- Question: Is DNS reformable, or must it be replaced?

**ENS (Ethereum Name Service)**
- System: Blockchain-based domains (.eth)
- Control: Smart contracts (no central authority)
- Problems: Speculation (names sold for millions), plutocracy (wealthy control desirable names), complexity (requires cryptocurrency)
- Question: Is blockchain sovereignty, or just different landlords?

**Tor & Onion Routing**
- System: Anonymous networking (no central servers)
- Control: Distributed (thousands of volunteer nodes)
- Problems: Slow, association with illegal activity, exit node surveillance
- Question: Can anonymity infrastructure scale to mainstream use?

**ActivityPub & The Fediverse**
- System: Federated social media (Mastodon, PixelFed, etc.)
- Control: Each instance self-governs
- Problems: Instance admin power (can ban users), interoperability fragility (defederation), hosting costs
- Question: Is federation enough, or do we need deeper sovereignty?

**Solid Project (Tim Berners-Lee)**
- System: Personal data pods (you host your data, apps request access)
- Control: Individual ownership
- Problems: Requires technical literacy, hosting burden on individuals, no network effects
- Question: Is individual sovereignty achievable without institutional infrastructure?

---

## Lecture: The Sovereignty Stack

Digital sovereignty isn't one thing—it's a **stack** of interdependent layers. Each layer can be sovereign or captured.

### Layer 1: Physical Infrastructure
**What It Is:** Cables, servers, datacenters, undersea fiber

**Current State:**
- Owned by ISPs, cloud providers (AWS, Azure, GCP)
- Concentrated in US/EU (geographic centralization)
- Subject to state surveillance (NSA taps, Great Firewall)

**Sovereignty Options:**
| Approach | Pros | Cons |
|----------|------|------|
| **Community Networks** (mesh networks, local ISPs) | Democratic control | Limited scale, technical complexity |
| **Cooperative Datacenters** (member-owned) | Distributed ownership | High upfront cost |
| **Peer-to-Peer** (no servers, only endpoints) | No central control | Slow, unreliable, legal risks |
| **Hybrid** (co-ops + P2P) | Balances reliability and sovereignty | Complex to coordinate |

**Key Question:** Can you have sovereignty without owning physical infrastructure?

---

### Layer 2: Network Protocols
**What It Is:** TCP/IP, HTTP, DNS, TLS (how computers communicate)

**Current State:**
- Open standards (anyone can implement)
- But controlled through IETF, W3C, ICANN (gatekeepers)
- Centralized implementations (Google DNS, Cloudflare, AWS)

**Sovereignty Options:**
| Approach | Pros | Cons |
|----------|------|------|
| **Federated Protocols** (ActivityPub, Matrix) | No single server | Interop fragility, instance admin power |
| **P2P Protocols** (IPFS, BitTorrent, Tor) | Fully distributed | Slow, complex, no guarantees |
| **Blockchain** (Ethereum, Handshake DNS) | Cryptographic guarantees | Expensive, speculative, slow |
| **Hybrid** (P2P + federated fallbacks) | Resilience + usability | Very complex |

**Key Question:** Do we need new protocols, or better implementations of existing ones?

---

### Layer 3: Identity Systems
**What It Is:** Authentication, verification ("you are who you say you are")

**Current State:**
- Dominated by platform logins (Google, Facebook, Twitter)
- Centralized (platform controls your identity)
- Surveillance-based (login = tracking)

**Sovereignty Options:**
| Approach | Pros | Cons |
|----------|------|------|
| **Self-Hosted Identity** (OpenID, IndieAuth) | You control your identity | Requires domain, technical setup |
| **Federated Identity** (Mastodon handles) | Distributed control | Still depends on instance admin |
| **Public Key Crypto** (PGP, SSH keys) | Cryptographically secure | Unusable for most people |
| **Blockchain Identity** (ENS, Unstoppable Domains) | Censorship-resistant | Expensive, speculative |
| **Biometric** (fingerprints, face scans) | Convenient | Surveillance dystopia |

**Key Question:** Can identity be both sovereign *and* user-friendly?

---

### Layer 4: Data Storage
**What It Is:** Where your files, posts, photos live

**Current State:**
- Cloud storage (Dropbox, Google Drive, iCloud)
- Platform-hosted (Twitter, Instagram, TikTok)
- Centralized, surveilled, subject to ToS changes

**Sovereignty Options:**
| Approach | Pros | Cons |
|----------|------|------|
| **Self-Hosted** (NAS, personal servers) | Full control | Technical burden, no redundancy |
| **Cooperative Storage** (Nextcloud co-ops) | Shared infrastructure | Coordination challenges |
| **P2P Storage** (IPFS, Tahoe-LAFS) | Distributed, resilient | Requires incentives (or files disappear) |
| **Encrypted Cloud** (Tresorit, Sync.com) | Encrypted at rest | Still centralized, not exportable |

**Key Question:** Can we have "set it and forget it" storage that's also sovereign?

---

### Layer 5: Application Layer
**What It Is:** Social media, email, websites—what users interact with

**Current State:**
- Platforms (Twitter, Facebook, TikTok)
- User-hostile (algorithms, ads, surveillance)
- Network effects = lock-in

**Sovereignty Options:**
| Approach | Pros | Cons |
|----------|------|------|
| **Self-Hosted Apps** (WordPress, Mastodon instances) | Full control | Hosting burden, isolation |
| **Federated Apps** (Mastodon, Matrix, PixelFed) | Interoperable + distributed | Admin power, defederation drama |
| **P2P Apps** (Scuttlebutt, Secure Scuttlebutt) | No servers | Sync issues, no discoverability |
| **Local-First Software** (Obsidian, Logseq) | Offline-first, you own data | No collaboration without extra setup |

**Key Question:** Can sovereign apps compete with platforms on user experience?

---

### Layer 6: Economic Layer
**What It Is:** Payment systems, monetization, transactions

**Current State:**
- Visa/Mastercard oligopoly
- PayPal, Stripe (can freeze accounts)
- Platform-controlled (YouTube ad revenue, Patreon fees)

**Sovereignty Options:**
| Approach | Pros | Cons |
|----------|------|------|
| **Cryptocurrency** (Bitcoin, Ethereum) | Censorship-resistant | Volatile, speculative, slow, expensive |
| **Cooperative Banks** (credit unions, local banks) | Member-owned | Limited scale, still tied to Visa/MC |
| **Alternative Payment Rails** (Dwolla, ACH) | Lower fees | Not widely adopted |
| **Barter/Gift Economy** (no money) | No extraction | Doesn't scale |

**Key Question:** Can you build a sovereign economy without cryptocurrency (and its problems)?

---

## Framework: The Ground Ownership Canvas

Your assignment will design an alternative ownership system for *one layer* of the stack.

### Section 1: Problem Definition

**What's broken in the current system?**

Identify a specific failure mode:
- **Centralization:** Single points of control/failure
- **Extraction:** Rent-seeking, fees, gatekeeping
- **Censorship:** Platforms/states can delete/block
- **Surveillance:** Systems track/monetize user behavior
- **Capture:** Supposed "neutrals" (ICANN, registrars) serve power, not users

**Example (DNS):**
> *Problem:* Domain names are rented, not owned. ICANN can seize domains, registrars can raise prices arbitrarily, governments can censor TLDs. Result: Your domain is not truly *yours*.

---

### Section 2: Existing Alternatives Analysis

**What have others tried? Why did it fail (or succeed)?**

| Alternative | Goals | Strengths | Weaknesses | Why It Didn't Replace the System |
|------------|-------|-----------|------------|----------------------------------|
| (List 3-5 real examples from case studies) | | | | |

**Example (DNS alternatives):**
| Alternative | Goals | Strengths | Weaknesses | Why It Didn't Replace DNS |
|------------|-------|-----------|------------|---------------------------|
| **ENS (.eth)** | Censorship-resistant domains | Blockchain-secured, no seizure risk | Expensive, speculative, requires crypto wallet | Too complex, not web-native |
| **Namecoin** | Decentralized DNS | First blockchain DNS | Dead community, poor UX | No adoption, technically difficult |
| **Tor Onion Services** | Anonymous domains (.onion) | Fully private | Not human-readable, slow | Association with dark web |
| **Handshake** | Decentralized TLDs | No ICANN control | Speculative, complex setup | Not user-friendly |

---

### Section 3: Your Proposed System

**Design a new ownership infrastructure.**

#### Core Principles
How does your system embody The Three Pillars?
- **Declaration:** How is it sovereign? (No central authority can shut it down)
- **Connection:** How is it intentional? (Users choose to participate)
- **Ground:** How is it owned? (Users control their assets, not rent them)

#### Technical Architecture
- **Governance:** Who controls the system? (No one? Everyone? Elected body?)
- **Storage/Hosting:** Where does data live? (Centralized? Federated? P2P?)
- **Access:** How do users interact with it? (Web browser? Custom software? Both?)
- **Resilience:** What's the single point of failure? (How do you eliminate it?)

#### User Experience
- **Onboarding:** How does someone start using it?
- **Daily Use:** What does normal interaction look like?
- **Migration:** Can users import from current systems?
- **Interoperability:** Does it work with existing systems? (Or require full replacement?)

#### Economic Model
- **Cost Structure:** What does it cost to run? (Infrastructure, development, governance)
- **Funding:** Who pays? (Users? Institutions? Donations? Blockchain incentives?)
- **Pricing:** What do users pay? (Monthly? One-time? Free?)

---

### Section 4: Adoption Strategy

**How do you get people to use it?**

The hardest problem: *Existing systems work* (even if they're exploitative). Why would anyone switch?

#### Value Propositions
What does your system offer that the current one doesn't?
- ✅ **Sovereignty:** You own it, can't be taken away
- ✅ **Privacy:** No surveillance/tracking
- ✅ **Cost:** Cheaper than current system
- ✅ **Features:** Better functionality
- ✅ **Ethics:** Aligned with users, not capital

#### Bootstrapping Problem
How do you overcome network effects?
- **Interoperability:** Works alongside current system (e.g., Mastodon federates with ActivityPub)
- **Bridges:** Automatic translation (e.g., .eth domains resolve to DNS)
- **Killer Use Case:** One specific thing your system does *way* better
- **Community:** Target a niche first (activists, artists, academics), expand later

#### Roadmap
- **Phase 1 (Years 1-2):** Proof of concept, early adopters
- **Phase 2 (Years 3-5):** Community growth, feature parity with incumbents
- **Phase 3 (Years 6-10):** Mainstream adoption, ecosystem development

---

### Section 5: Threat Modeling

**Who will try to destroy your system? How will they do it?**

| Threat Actor | Motivation | Attack Vector | Your Defense |
|--------------|-----------|---------------|--------------|
| **Incumbent Platforms** | Protect market dominance | Legal (sue for patent infringement), Technical (block interoperability) | Open standards, defensive patents, decentralization |
| **Governments** | Maintain control | Regulation (ban your system), Enforcement (arrest developers) | Offshore governance, anonymous development |
| **Speculators** | Profit from scarcity | Buy up scarce resources (domains, names), create artificial scarcity | Anti-speculation mechanisms (use-it-or-lose-it rules) |
| **Bad Actors** | Exploit system | Spam, fraud, abuse | Moderation (but how, without centralized control?) |
| **Internal Capture** | Gain control | Governance takeover, founder exit to acquirer | Mission-lock, distributed governance, no single founder |

**Key Question:** What's your system's biggest vulnerability? How do you mitigate it?

---

### Section 6: Three Pillars Stress Test

**Does your system *truly* embody sovereignty?**

#### Declaration Test
- ❓ Can a single entity shut it down? (If yes → not sovereign)
- ❓ Can users be deplatformed? (If yes → not sovereign)
- ❓ Is there a killswitch? (If yes → not sovereign)

#### Connection Test
- ❓ Can users choose their community? (Not algorithmically assigned)
- ❓ Can users communicate directly? (Not mediated by a platform)
- ❓ Can users leave and take their network? (Exportable connections)

#### Ground Test
- ❓ Do users own their assets? (Not renting, not licensed)
- ❓ Can users export their data? (Portable, standards-based)
- ❓ Can users fork the system? (Code is open source, governance is transparent)

**The Ultimate Test:** If your system succeeded and became dominant, would it become the next exploitative platform? If yes, you failed.

---

## Case Study Deep-Dives

### Case 1: DNS & ICANN (The Original Enclosure)

**What It Controls:** All domain names (.com, .org, country codes)

**How It Works:**
- ICANN (non-profit) manages root DNS servers
- Registrars (GoDaddy, Namecheap, etc.) sell domains
- You "rent" domains (annual fees), never own them

**Failure Modes:**
- **Seizure:** Libya reclaimed .ly domains, threatening bit.ly
- **Censorship:** US ICE seized domains (filesharing sites)
- **Rent-Seeking:** Premium domains cost thousands (artificial scarcity)
- **Centralization:** Root servers are choke points

**Why It Persists:**
- ✅ Works reliably (billions of domains)
- ✅ Human-readable (example.com vs. 93.184.216.34)
- ✅ Integrated into all software (browsers, email, etc.)

**Alternatives' Failures:**
- **ENS (.eth):** Requires crypto wallet, not browser-native, speculative
- **Namecoin:** Dead (poor UX, no adoption)
- **Handshake:** Too complex, speculative bubble

**Student Discussion:**
1. Is DNS reformable (change ICANN governance), or must it be replaced?
2. If you designed DNS today, what would you do differently?

---

### Case 2: ENS (The Blockchain Attempt)

**What It Promises:** Censorship-resistant domain names (.eth)

**How It Works:**
- Smart contracts on Ethereum blockchain
- You buy a name (one-time or renewable), own it via NFT
- No ICANN, no registrars, no seizure risk

**Strengths:**
- ✅ Truly owned (no one can take your .eth name)
- ✅ Censorship-resistant (blockchain is distributed)
- ✅ Programmable (can point to IPFS, wallets, etc.)

**Weaknesses:**
- ❌ Expensive (gas fees + initial purchase)
- ❌ Speculative (names sold for millions, like domain squatting 2.0)
- ❌ Not browser-native (need extension or special browser)
- ❌ Requires crypto literacy (wallet, transactions, etc.)

**Failure Mode:**
- Speculators bought all desirable names
- Normal users can't afford them
- Result: A sovereign system captured by the wealthy

**Student Discussion:**
1. How do you prevent speculation without centralized control?
2. Can blockchain sovereignty work without becoming plutocratic?

---

### Case 3: Mastodon/Fediverse (The Federation Experiment)

**What It Promises:** Decentralized social media (no corporate control)

**How It Works:**
- Anyone can run a Mastodon instance (server)
- Instances federate (exchange posts via ActivityPub)
- No central platform

**Strengths:**
- ✅ No single point of failure (thousands of instances)
- ✅ Admin choice (pick instance with values you like)
- ✅ Open source (can fork if unhappy)

**Weaknesses:**
- ❌ Instance admin power (can ban users, defederate)
- ❌ Fragmentation (defederation breaks community)
- ❌ Hosting burden (admins pay, burn out)
- ❌ Discoverability (hard to find people across instances)

**Failure Mode:**
- Most users flock to large instances (mastodon.social)
- Result: Recentralization (back to single points of failure)

**Student Discussion:**
1. Is federation *enough* sovereignty, or do we need deeper user control?
2. How do you prevent recentralization in federated systems?

---

### Case 4: Tor (The Anonymity Infrastructure)

**What It Promises:** Anonymous, uncensorable networking

**How It Works:**
- Onion routing (traffic bounces through encrypted nodes)
- No central servers
- .onion domains (not human-readable)

**Strengths:**
- ✅ Truly anonymous (very hard to trace)
- ✅ Censorship-resistant (no single point to block)
- ✅ No central authority

**Weaknesses:**
- ❌ Slow (routing overhead)
- ❌ Association with crime (dark web markets, illegal content)
- ❌ Exit node surveillance (final hop can see traffic)
- ❌ Unusable domains (16-character random strings)

**Failure Mode:**
- Legitimate users avoid it (stigma)
- Result: Marginalized to niche use

**Student Discussion:**
1. Can anonymity infrastructure ever go mainstream?
2. Is the "dark web" stigma fixable, or inherent?

---

## Assignment: Design Your Ground System

**Objective:** Design an alternative ownership infrastructure for one layer of the sovereignty stack.

### Deliverable: System Architecture Document (4000-5000 words)

**Required Sections:**

#### 1. Executive Summary (300 words)
- What layer are you redesigning? (Physical, network, identity, storage, application, economic)
- What's broken in the current system?
- What does your system do differently?
- Three Pillars alignment

#### 2. Problem Analysis (700 words)
- Current system failures (centralization, extraction, censorship, surveillance, capture)
- Who benefits from current system? (Platforms, governments, speculators)
- Who is harmed? (Users, creators, marginalized communities)
- Why existing alternatives failed (ENS, Mastodon, Tor, etc.)

#### 3. System Design (1200 words)
- **Core Principles:** How does it embody Declaration, Connection, Ground?
- **Technical Architecture:** Centralized? Federated? P2P? Hybrid?
- **Governance:** Who controls it? How are decisions made?
- **User Experience:** Onboarding, daily use, migration path
- **Interoperability:** Works with existing systems? Or requires replacement?

#### 4. Economic Model (600 words)
- **Cost Structure:** Infrastructure, development, governance costs
- **Funding:** Who pays? (Users, institutions, grants, donations)
- **Pricing:** Free? Subscription? One-time? Tiered?
- **Sustainability:** Can this last 10+ years?

#### 5. Adoption Strategy (700 words)
- **Value Proposition:** Why would anyone switch?
- **Bootstrapping:** How do you overcome network effects?
- **Target Community:** Who adopts first? (Activists, artists, academics, general public)
- **Roadmap:** Phase 1 (proof of concept), Phase 2 (growth), Phase 3 (mainstream)

#### 6. Threat Modeling (600 words)
- **Threat Actors:** Platforms, governments, speculators, bad actors, internal capture
- **Attack Vectors:** Legal, technical, economic, social
- **Defenses:** How do you protect against each threat?
- **Single Point of Failure:** What's your biggest vulnerability?

#### 7. Three Pillars Stress Test (400 words)
- **Declaration Test:** Can it be shut down? Can users be deplatformed?
- **Connection Test:** Is community intentional? Can users communicate directly?
- **Ground Test:** Do users own assets? Can they export/fork?
- **The Ultimate Test:** If this became dominant, would it become the next exploitative platform?

#### 8. Comparison to Existing Systems (500 words)
- How is your design different from DNS, ENS, Mastodon, Tor, etc.?
- What did you adopt from them?
- What did you improve?
- Why will your system succeed where others failed?

### Evaluation Criteria:

| Criterion | Points | What We're Looking For |
|-----------|--------|------------------------|
| **Three Pillars Integrity** | 30 | Does it truly embody sovereignty? Or recreate current problems? |
| **Technical Feasibility** | 25 | Can this be built? Is architecture sound? |
| **Adoption Realism** | 20 | Will people actually use this? How do you overcome network effects? |
| **Threat Resistance** | 15 | Can it survive attacks from platforms, governments, speculators? |
| **Originality** | 10 | Genuinely new approach, or just copying ENS/Mastodon? |

**Total: 100 points**

---

## Discussion Questions for Seminar

1. **The Interoperability Dilemma:** Should sovereign systems interoperate with exploitative platforms (bridges to Twitter, DNS fallbacks), or stay pure?

2. **The Complexity Cost:** Sovereign systems are often harder to use (crypto wallets, self-hosting, etc.). Is sovereignty worth the UX cost?

3. **The Speculation Problem:** How do you prevent sovereign systems (ENS, blockchain domains) from becoming playgrounds for the wealthy?

4. **The Governance Paradox:** If no one controls the system, how do you stop spam/abuse/nazis? If someone controls it, is it still sovereign?

5. **The Adoption Question:** Existing systems work (even if exploitative). What's the killer use case that makes people switch?

6. **The Long Game:** Even if your system starts sovereign, what prevents it from being captured (acquired, regulated, speculated) over time?

---

## Module Deliverables

By the end of Module 5, students will have:

1. ✅ **Completed Reading Responses** (Lessig, Schneier, Véliz on code, surveillance, privacy)
2. ✅ **Case Study Analysis** (DNS/ICANN, ENS, Mastodon, Tor comparative analysis)
3. ✅ **System Architecture Document** (4000-5000 words, complete redesign of one sovereignty layer)
4. ✅ **Threat Model** (Identify attackers, vectors, defenses)
5. ✅ **Adoption Roadmap** (How to bootstrap network effects, overcome incumbents)

---

## Looking Ahead: Module 6

Next week, we shift from *systems* to *movements*.

**Module 6: From Practice to Discipline** asks:

*"How do we turn Archaeobytology from individual practice into a recognized field—with conferences, journals, career paths, and institutional legitimacy?"*

You'll design a movement-building strategy to transform scattered practitioners into a coherent discipline.

---

## Instructor Notes

- **Guest Speaker:** Invite someone who built alternative infrastructure (Tor developer, Mastodon admin, ENS team, mesh network organizer)
- **Hands-On:** Have students set up sovereign tools (register .eth domain, run Mastodon instance, use Tor)
- **Debate:** Blockchain sovereignty (pro: censorship-resistant; con: speculative, plutocratic)
- **Simulation:** Role-play attacks (one student plays "government trying to shut down your system," others defend)
- **The "Would You Use It?" Test:** If students wouldn't switch to their own system, it's not viable

---

**End of Module 5**
