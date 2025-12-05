# Chapter 15: The Political Economy of Digital Ground — Who Controls the Infrastructure?

---

## Opening: The Day the Domain Disappeared

In 2010, the United States government seized the domain `mooo.com`—a URL shortener popular with music fans and file sharers. Without warning, without trial, without due process, the Department of Homeland Security simply took control of the domain and replaced the site with a banner: "This domain name has been seized by ICE—Homeland Security Investigations."

Thousands of links across the internet broke instantly. Blog posts, forum threads, social media shares—all pointed to dead URLs. The content those links pointed to still existed on other servers, but the **naming system** had been captured. The government didn't need to touch the actual files; they just seized the address that pointed to them.

This wasn't an isolated incident:
- **Libya (.ly domains, 2010)**: Shut down `vb.ly` (URL shortener) for "violating Islamic morality"
- **Kazakhstan (.kz, 2021)**: Temporarily seized opposition media domains during protests
- **Ukraine (.ua, 2014)**: Domains hijacked during Crimea annexation
- **China (.cn, ongoing)**: Routine domain seizures for political speech

**The lesson:** Even if you own your content, if you don't control the infrastructure that makes it accessible, you don't truly have Ground.

This chapter explores the **political economy of digital infrastructure**—who controls the layers that make the internet work, how that control is exercised, and how we might redesign those layers to resist capture.

We'll introduce the **Sovereignty Stack**: six layers of digital infrastructure, each with different ownership models and vulnerabilities. Then we'll examine case studies of each layer being captured or contested. Finally, we'll explore alternatives being built to resist centralized control.

---

## Part I: The Sovereignty Stack — Six Layers of Digital Infrastructure

Digital sovereignty isn't just about owning a domain or hosting a website. It requires control (or at least resilience) across **six interconnected layers**:

### Layer 1: Physical Infrastructure (Bottom Layer)

**What it is:**
- Undersea cables carrying internet traffic between continents
- Data centers housing servers
- Cell towers and fiber optic lines
- Electricity grids powering everything

**Who controls it:**
- Telecom corporations (AT&T, Comcast, China Telecom)
- Cloud providers (Amazon AWS, Microsoft Azure, Google Cloud)
- Nation-states (can cut cables, seize data centers)

**Sovereignty implications:**
- If you don't own physical hardware, you're renting from someone who can evict you
- Governments can surveil traffic at chokepoints (NSA's undersea cable taps)
- Interruptions (power outages, cable cuts) can take down entire regions

**Vulnerability:**
- **Centralization**: Most cloud traffic flows through a few companies' data centers
- **Geographic concentration**: Major cable landing points are in a few cities
- **State power**: Physical infrastructure is ultimately subject to whoever controls territory

**Resistance strategies:**
- Distributed hosting (content on multiple continents)
- Peer-to-peer networks (no central servers)
- Community-owned ISPs (fiber cooperatives)
- Mesh networks (neighborhood-scale wireless networks)

### Layer 2: Network Protocols (Transport Layer)

**What it is:**
- TCP/IP (how data packets move across networks)
- HTTP/HTTPS (how browsers talk to servers)
- DNS (Domain Name System—translates names like google.com to IP addresses)
- BGP (Border Gateway Protocol—routes traffic between networks)

**Who controls it:**
- Standards bodies (IETF, W3C—mostly open)
- ICANN (manages DNS root servers)
- ISPs and network operators (implement protocols)

**Sovereignty implications:**
- Open protocols (like TCP/IP) are more sovereign than proprietary ones
- DNS is a single point of failure—if your domain is seized, your site becomes unreachable
- BGP hijacking can redirect traffic (happened to YouTube, Amazon, others)

**Vulnerability:**
- **DNS centralization**: ICANN ultimately controls the root DNS servers
- **Certificate authorities**: HTTPS requires CAs, which can be compromised or coerced
- **Routing attacks**: BGP has no built-in authentication (trust-based)

**Resistance strategies:**
- Alternative DNS (blockchain-based names like ENS, Namecoin)
- Onion routing (Tor—routes traffic through multiple nodes to hide destination)
- IPFS (content-addressed instead of location-addressed—content hash is the "address")
- Mesh routing (packets find paths dynamically, no central routing tables)

### Layer 3: Identity Systems (Authentication Layer)

**What it is:**
- How you prove you are who you claim to be
- Username/password on platforms
- Email addresses
- Social login ("Sign in with Google/Facebook")
- Digital certificates and keys

**Who controls it:**
- Platforms (Facebook, Google, Apple control their login systems)
- Federated identity providers (OAuth services)
- Individuals (if using self-hosted identity)

**Sovereignty implications:**
- Platform identity is **leased** (Facebook can delete your account, erasing your identity)
- Email is more sovereign (you can change providers, keep your address if you own domain)
- Federated identity (like Mastodon's @user@domain.com) gives you control

**Vulnerability:**
- **Platform capture**: Most people use "Sign in with Google/Facebook" (convenient but gives those companies control)
- **Real name policies**: Platforms requiring legal names harm pseudonymous freedom
- **Account suspension**: Losing your account means losing your identity across all connected services

**Resistance strategies:**
- Self-hosted identity (your own domain, your own email server)
- Decentralized identifiers (DIDs—cryptographic identities not tied to any platform)
- PGP/GPG keys (cryptographic proof of identity)
- Federated identity (ActivityPub, IndieAuth)

### Layer 4: Data Storage (Persistence Layer)

**What it is:**
- Where your files, messages, posts, photos actually live
- Cloud storage (Google Drive, Dropbox, iCloud)
- Platform databases (Facebook's servers storing your posts)
- Self-hosted storage (your own hard drive or server)

**Who controls it:**
- Cloud providers (Amazon S3, Google Cloud Storage)
- Platforms (Twitter, Instagram, TikTok)
- Individuals (if self-hosting)

**Sovereignty implications:**
- If your data lives on someone else's servers, they can delete it, surveil it, or lock you out
- Export tools help (you can download your data), but migrating is often hard
- Self-hosting gives you control but requires technical skill and maintenance

**Vulnerability:**
- **Terms of Service changes**: Provider can change terms, delete your data, or raise prices
- **Platform shutdown**: If the company dies, your data dies (unless you exported)
- **Vendor lock-in**: Proprietary formats make it hard to migrate

**Resistance strategies:**
- Self-hosting (Nextcloud, Syncthing)
- Distributed storage (IPFS, BitTorrent, Filecoin)
- Local-first software (data lives on your device, syncs peer-to-peer)
- Regular exports (even if using cloud, keep local backups)

### Layer 5: Application Layer (Interface Layer)

**What it is:**
- The software you actually use: social media apps, email clients, browsers, editors
- Web apps (run in browser, on company servers)
- Native apps (run on your device, may or may not depend on servers)
- Protocols (open standards that any app can implement)

**Who controls it:**
- Platform companies (Facebook, Twitter, TikTok)
- Open source communities (Firefox, Linux, WordPress)
- Standards bodies (W3C for web standards, IETF for internet protocols)

**Sovereignty implications:**
- Proprietary apps lock you into a platform's ecosystem
- Open source apps can be forked if the company sells out
- Open protocols allow multiple competing apps (email: Gmail, Outlook, Apple Mail all work together)

**Vulnerability:**
- **Platform changes**: Twitter can redesign its app, remove features users rely on
- **API shutdowns**: Third-party apps can be killed (Twitter banned third-party clients in 2023)
- **Dark patterns**: Apps designed to be addictive, manipulative (infinite scroll, notification spam)

**Resistance strategies:**
- Use open source apps (can't be taken away)
- Use protocol-based tools (email, RSS, ActivityPub)
- Support third-party clients (don't let platforms monopolize access)
- Build alternatives (if platform sucks, fork it or build competitor)

### Layer 6: Economic Layer (Value Layer)

**What it is:**
- How money flows through digital systems
- Payment processors (Visa, PayPal, Stripe)
- Platform monetization (ads, subscriptions, cuts of transactions)
- Cryptocurrency (Bitcoin, Ethereum)
- Creator economy (Patreon, Ko-fi, OnlyFans)

**Who controls it:**
- Payment oligopolies (Visa/Mastercard process ~80% of transactions)
- Platform companies (take 30% cuts on app stores, 15-50% on creator platforms)
- Banks and regulators (can freeze accounts, block payments)

**Sovereignty implications:**
- If platforms or payment processors can cut off your income, you're not economically sovereign
- Deplatforming often includes payment bans (see: sex workers, political dissidents, WikiLeaks)
- Creator economy gives some independence, but platforms still take large cuts

**Vulnerability:**
- **Payment processor power**: Visa/PayPal can ban you, cutting off all income
- **Platform rent-seeking**: App stores take 30%, creator platforms take 15-50%
- **Regulatory capture**: Governments can pressure payment companies to ban disfavored actors

**Resistance strategies:**
- Cryptocurrency (censorship-resistant payments, but volatile and technical barriers)
- Direct payments (checks, cash, wire transfers—cumbersome but sovereign)
- Cooperatively-owned payment systems (credit unions, payment co-ops)
- Multiple revenue streams (don't depend on one platform or processor)

---

## Part II: The Stack in Practice — Case Studies of Control and Resistance

### Case Study 1: DNS Control — The .ly Seizure (Layer 2)

**What Happened:**

In 2010, Libya (which controls the `.ly` top-level domain) seized `vb.ly`, a popular URL shortener, for "violating Libyan Islamic morality laws." The site had shortened links to content Libya deemed offensive.

**Impact:**
- Thousands of shortened URLs broke instantly
- Blogs, tweets, forum posts—all pointing to dead links
- Content wasn't deleted, but became unreachable via those URLs

**Sovereignty Stack Analysis:**

| Layer | Vulnerability | Lesson |
|-------|---------------|--------|
| Physical | Content was fine (on US servers) | Not the issue |
| Network (DNS) | **CRITICAL FAILURE** | Libya controlled .ly TLD, seized the domain |
| Identity | Vb.ly users lost identity (their short URLs) | Dependent on DNS |
| Storage | Content still existed | But unreachable |
| Application | URL shortener app still worked | But domain gone |
| Economic | Vb.ly lost revenue | Revenue depends on domain access |

**Lesson:** Even if you control Layers 4-6 (storage, apps, payment), if Layer 2 (DNS) is captured, you're toast.

**Resistance:** Use domains under TLDs controlled by stable, rights-respecting jurisdictions. Or use alternative naming (onion addresses, IPFS hashes, blockchain names).

### Case Study 2: AWS Deplatforming — Parler (Layer 1)

**What Happened:**

In January 2021, Amazon Web Services (AWS) terminated Parler's hosting contract, citing Terms of Service violations (insufficient moderation of violent content). Parler went offline for a month until they found alternative hosting.

**Impact:**
- Entire platform inaccessible (no hosting = no site)
- Millions of users locked out
- Parler eventually returned via smaller hosting providers, but with degraded performance

**Sovereignty Stack Analysis:**

| Layer | Vulnerability | Lesson |
|-------|---------------|--------|
| Physical | **CRITICAL FAILURE** | AWS controlled servers, kicked Parler off |
| Network | Parler still had their domain | But no servers to point to |
| Identity | User accounts existed (in database) | But database offline |
| Storage | Data existed (Parler had backups) | But no public access |
| Application | Parler's app still existed | But servers offline |
| Economic | Couldn't run ads or process payments | Business model dead |

**Lesson:** If you don't own Layer 1 (physical infrastructure), you're vulnerable to hosting providers' decisions. AWS, Google Cloud, and Azure are de facto gatekeepers.

**Resistance:** Self-host (expensive and technical), use offshore hosting (politically risky), or distribute across multiple providers (complex but resilient).

### Case Study 3: Platform Identity Control — Facebook's Real Name Policy (Layer 3)

**What Happened:**

Facebook required users to use their legal names (2014 policy enforcement wave). Thousands of accounts suspended:
- Drag performers using stage names
- Native Americans with non-Western naming conventions
- Abuse survivors hiding from stalkers
- LGBTQ+ people using chosen names

**Impact:**
- Users lost access to years of posts, photos, friend networks
- Some lost business pages tied to stage personas
- Forced outing for trans people using new names

**Sovereignty Stack Analysis:**

| Layer | Vulnerability | Lesson |
|-------|---------------|--------|
| Physical | Not the issue | Servers worked fine |
| Network | Not the issue | DNS worked fine |
| Identity | **CRITICAL FAILURE** | Facebook controlled identity, could revoke it |
| Storage | Data existed but locked | Users couldn't access their own content |
| Application | Facebook app worked | But identity removed |
| Economic | Lost business pages | Revenue tied to identity |

**Lesson:** Platform-controlled identity is **leased**, not owned. If the platform can delete your identity, you have no Declaration (Pillar 1).

**Resistance:** Use federated identity (@user@your-domain.com), self-host identity, use cryptographic keys (not platform usernames).

### Case Study 4: Payment Processor Deplatforming — WikiLeaks (Layer 6)

**What Happened:**

In 2010, after WikiLeaks published classified US documents, Visa, Mastercard, PayPal, and Bank of America all cut off WikiLeaks' payment processing. Donations plummeted 95%.

**Impact:**
- WikiLeaks nearly went bankrupt
- Couldn't accept credit card donations
- Had to rely on Bitcoin (before it was widely adopted)

**Sovereignty Stack Analysis:**

| Layer | Vulnerability | Lesson |
|-------|---------------|--------|
| Physical | Hosting providers also pressured | But WikiLeaks migrated |
| Network | Domain pressured but survived | DNS remained |
| Identity | Not the issue | WikiLeaks identity intact |
| Storage | Archives remained accessible | Data fine |
| Application | Website worked | Accessible |
| Economic | **CRITICAL FAILURE** | Payment processors cut off revenue |

**Lesson:** Economic sovereignty (Layer 6) is essential. If payment processors can deplatform you, you're economically vulnerable no matter how technically sovereign you are.

**Resistance:** Bitcoin (WikiLeaks adopted it, later profited from appreciation), direct bank transfers (slow, high fees), cash/checks (physical, not scalable).

### Case Study 5: Mastodon Federation — Distributed Resilience (Layers 2-5)

**What Happened:**

Mastodon launched in 2016 as a federated alternative to Twitter. Anyone can run a Mastodon instance (server); instances communicate via ActivityPub protocol.

**Resilience across layers:**

| Layer | How Mastodon Resists Capture |
|-------|------------------------------|
| Physical | Distributed servers (no single company owns all hosting) |
| Network | Open protocol (ActivityPub—any server can join) |
| Identity | Federated (@user@instance.com—tied to instance, but migratable) |
| Storage | Instance admin controls data (users can export, migrate) |
| Application | Open source (anyone can fork, improve, or run their own version) |
| Economic | Varied models (donations, subscriptions, volunteer-run) |

**Advantages:**
- No single point of failure (if one instance dies, others survive)
- No corporate control (community-governed instances)
- Portable identity (can migrate between instances)

**Challenges:**
- Instance admin power (can still ban you from that instance)
- Fragmentation (instances defederate, creating silos)
- Technical barriers (running an instance requires skill)
- Economic sustainability (many instances struggle to fund themselves)

**Lesson:** Federation distributes sovereignty but doesn't eliminate all vulnerabilities. Still better than centralized platforms.

---

## Part III: Redesigning the Stack — Alternatives to Centralized Control

### Layer 1 Alternatives: Physical Infrastructure

**Problem:** Cloud oligopoly (AWS, Google Cloud, Azure control most hosting)

**Alternatives:**

**Community-Owned ISPs:**
- Fiber cooperatives (users own the network)
- Examples: Chattanooga's municipal fiber, NYC Mesh
- Advantages: Democratic control, no corporate extraction
- Challenges: Requires local organizing, capital investment

**Peer-to-Peer Hosting:**
- IPFS (InterPlanetary File System): Content distributed across many nodes
- BitTorrent: Files seeded by many users, no central server
- Advantages: No single point of failure, censorship-resistant
- Challenges: Slow for dynamic content, legal gray areas

**Mesh Networks:**
- Wireless networks where users' devices relay traffic
- Example: Freifunk (Germany), NYC Mesh
- Advantages: No central ISP, community-controlled
- Challenges: Limited range, technical complexity

### Layer 2 Alternatives: Network Protocols

**Problem:** DNS centralization (ICANN controls root servers, domain seizures possible)

**Alternatives:**

**Blockchain-Based Naming:**
- **ENS (Ethereum Name Service)**: Register .eth names on Ethereum blockchain
  - Advantages: Censorship-resistant (no government can seize), permanent ownership
  - Challenges: Requires crypto wallet, expensive (gas fees), not browser-native
- **Namecoin**: Bitcoin-based naming system (.bit domains)
  - Similar trade-offs to ENS

**Onion Routing:**
- **Tor hidden services**: Sites with .onion addresses (e.g., `3g2upl4pq6kufc4m.onion` for DuckDuckGo)
  - Advantages: Censorship-resistant, anonymous hosting
  - Challenges: Slow, not user-friendly (long random addresses), stigma

**Content-Addressed Networking:**
- **IPFS**: Content identified by hash, not location
  - Example: `ipfs://QmXoypizjW3WknFiJnKLwHCnL72vedxjQkDDP1mXWo6uco` (instead of http://example.com)
  - Advantages: Content can't be censored by taking down a domain
  - Challenges: Not human-readable, requires IPFS-enabled browser

### Layer 3 Alternatives: Identity Systems

**Problem:** Platform-controlled identity (Facebook, Google can delete your account)

**Alternatives:**

**Federated Identity:**
- **ActivityPub**: @user@instance.com (like email addresses)
- **IndieAuth**: Use your own domain as identity
- Advantages: Portable (can migrate), not owned by one company
- Challenges: Requires domain ownership, instances can still ban you

**Decentralized Identifiers (DIDs):**
- Cryptographic identities (public/private key pairs)
- Not tied to any platform or domain
- Advantages: Truly sovereign (you control the keys)
- Challenges: Hard to remember (long strings of characters), key management risky (lose key = lose identity)

**Self-Hosted Email:**
- Run your own email server (user@yourdomain.com)
- Advantages: Full control, federated (can email anyone)
- Challenges: Technical (requires sysadmin skills), anti-spam filters often block self-hosted email

### Layer 4 Alternatives: Data Storage

**Problem:** Cloud lock-in (Google, Dropbox, iCloud can delete your data or change terms)

**Alternatives:**

**Self-Hosted Storage:**
- **Nextcloud**: Open-source cloud (like Dropbox, but you run it)
- **Syncthing**: Peer-to-peer file sync (no central server)
- Advantages: Full control, no surveillance
- Challenges: Requires server management, backups are your responsibility

**Distributed Storage:**
- **IPFS**: Content stored across network, no single server
- **Filecoin**: Pay for distributed storage with cryptocurrency
- **Arweave**: "Permanent" storage (pay once, store forever)
- Advantages: Censorship-resistant, redundant
- Challenges: Cost, performance, complexity

**Local-First Software:**
- Apps that store data on your device, sync peer-to-peer
- Examples: Obsidian (notes), Logseq (knowledge management)
- Advantages: Your data, no cloud dependency
- Challenges: Syncing across devices is harder

### Layer 5 Alternatives: Application Layer

**Problem:** Proprietary apps (Twitter, Facebook control how you use their platforms)

**Alternatives:**

**Open Source Apps:**
- **Mastodon**: Open-source Twitter alternative
- **Pixelfed**: Open-source Instagram alternative
- **PeerTube**: Open-source YouTube alternative
- Advantages: Can fork if company sells out, community-governed
- Challenges: Often lag in features, smaller user bases

**Protocol-Based Tools:**
- **Email**: Any client can access any server
- **RSS**: Any reader can subscribe to any feed
- **ActivityPub**: Any app can communicate with any instance
- Advantages: No vendor lock-in, interoperability
- Challenges: Less shiny than proprietary apps, requires coordination

### Layer 6 Alternatives: Economic Layer

**Problem:** Payment processor oligopoly (Visa/PayPal can deplatform you)

**Alternatives:**

**Cryptocurrency:**
- **Bitcoin, Ethereum, etc.**: Censorship-resistant payments
- Advantages: No bank or processor can block you
- Challenges: Volatile, technical barriers, environmental concerns, regulatory uncertainty

**Cooperatively-Owned Payment Systems:**
- **Credit unions**: Member-owned banks
- **Payment cooperatives**: Users own the payment network
- Advantages: Democratic control, aligned incentives
- Challenges: Smaller networks, less convenient

**Direct Transactions:**
- **Wire transfers, checks, cash**: No intermediary
- Advantages: Can't be deplatformed
- Challenges: Slow, expensive, not scalable online

**Platform Cooperatives:**
- **Stocksy**: Photographer-owned stock photo agency
- **Resonate**: Musician-owned streaming service
- Advantages: Workers own the platform, keep more revenue
- Challenges: Hard to scale, less capital for growth

---

## Part IV: The Sovereignty Stack as Design Framework

When building new tools, platforms, or institutions, use the Sovereignty Stack as a **design checklist**:

### Sovereignty Audit Template

For each layer, ask:

**Layer 1: Physical Infrastructure**
- [ ] Where are the servers? Who owns them?
- [ ] What happens if the hosting provider kicks us off?
- [ ] Do we have redundancy (multiple data centers)?

**Layer 2: Network Protocols**
- [ ] Are we using open protocols or proprietary ones?
- [ ] Can we be censored via DNS (domain seizure)?
- [ ] Do we have fallback addresses (onion, IPFS, etc.)?

**Layer 3: Identity**
- [ ] Do users own their identities (domain-based, cryptographic)?
- [ ] Can we revoke identities (if so, under what conditions)?
- [ ] Can users migrate identities to other systems?

**Layer 4: Storage**
- [ ] Do users own their data legally?
- [ ] Can users export everything easily?
- [ ] Is data stored centrally (vulnerable) or distributed?

**Layer 5: Application**
- [ ] Is the software open source (can users fork it)?
- [ ] Does it depend on our servers, or is it peer-to-peer?
- [ ] Can other apps interoperate with ours (open protocols)?

**Layer 6: Economic**
- [ ] How do we make money without surveillance/extraction?
- [ ] What payment systems do we use (vulnerable to deplatforming)?
- [ ] Do we have multiple revenue streams?

### Example Audit: Ghost vs. Medium

**Ghost (High Sovereignty):**

| Layer | Assessment |
|-------|------------|
| Physical | Self-hosted option (users run their own servers) OR Ghost(Pro) hosting (can migrate away) |
| Network | Custom domains supported (users own their URLs) |
| Identity | Domain-based (you@yourblog.com) |
| Storage | Users own data, full export tools |
| Application | Open source (can fork if Ghost Ltd dies) |
| Economic | Subscriptions (users pay Ghost, or self-host for free), no ads |

**Medium (Low Sovereignty):**

| Layer | Assessment |
|-------|------------|
| Physical | Medium's servers only |
| Network | medium.com/@username (don't own domain) |
| Identity | Platform-controlled (Medium can ban you) |
| Storage | Data on Medium's servers (export exists but limited) |
| Application | Proprietary (can't fork, can't self-host) |
| Economic | Ad/subscription-based (users don't control revenue model) |

**Result:** Ghost embodies more sovereignty across all layers.

---

## Part V: The Political Economy Question — Who Should Own Infrastructure?

### Three Models of Ownership

**Model 1: Corporate Ownership (Status Quo)**
- Private companies own most infrastructure
- Examples: AWS, Cloudflare, Visa, Google
- Advantages: Convenient, well-funded, feature-rich
- Disadvantages: Extractive, surveillance-based, can deplatform users

**Model 2: State Ownership**
- Governments own critical infrastructure
- Examples: Postal service, public utilities, national postal banks
- Advantages: Democratic accountability (in theory), public service mandate
- Disadvantages: Vulnerable to authoritarianism, bureaucratic, underfunded

**Model 3: Commons Ownership**
- Users collectively own infrastructure
- Examples: Wikipedia, cooperatives, federated networks
- Advantages: Aligned incentives, democratic, mission-driven
- Disadvantages: Coordination challenges, underfunded, slower innovation

### Archaeobytology's Position: **Pluralism**

We need **all three models** for different layers and contexts:

- **Layer 1 (Physical)**: Mix of corporate, state, and community-owned (diversity prevents single point of failure)
- **Layer 2 (Network)**: Open protocols (state/community standards-setting, anyone can implement)
- **Layer 3 (Identity)**: Individual ownership (federated or cryptographic)
- **Layer 4 (Storage)**: Mix of self-hosted and cooperatively-managed
- **Layer 5 (Application)**: Open source (community-owned code)
- **Layer 6 (Economic)**: Multiple options (crypto, co-ops, traditional payment—let users choose)

**No single model is perfect.** The goal is **pluralism**: multiple ownership structures coexisting, so users aren't dependent on any one.

---

## Part VI: Threat Modeling — Attacks on Each Layer

### Threat 1: State Surveillance (All Layers)

**Attack Vector:** Governments compel infrastructure providers to surveil users

**Examples:**
- NSA tapping undersea cables (Layer 1)
- Forcing DNS providers to log queries (Layer 2)
- Demanding user identity records (Layer 3)
- Accessing cloud storage without warrants (Layer 4)
- Installing backdoors in apps (Layer 5)
- Tracking financial transactions (Layer 6)

**Defenses:**
- End-to-end encryption (can't surveil what you can't read)
- Jurisdiction shopping (host in privacy-respecting countries)
- Onion routing (obscure who's talking to whom)
- Decentralization (harder to compel many actors than one)

### Threat 2: Corporate Extraction (Layers 4-6)

**Attack Vector:** Companies monetize user data and attention

**Examples:**
- Surveillance advertising (Layer 4: data mining)
- Algorithmic manipulation (Layer 5: addictive app design)
- Platform rent (Layer 6: taking 30% cuts)

**Defenses:**
- Business models that don't require surveillance (subscriptions, donations)
- Open source alternatives (no company owns the app)
- Data ownership (users control, export, delete)

### Threat 3: Platform Capture (Layers 3-5)

**Attack Vector:** Dominant platforms use network effects to lock in users

**Examples:**
- Identity capture (can't leave Facebook without losing social graph)
- Data lock-in (hard to export and migrate)
- API restrictions (third-party apps banned)

**Defenses:**
- Interoperability (force platforms to allow data portability)
- Federation (multiple providers, users can migrate)
- Open protocols (anyone can build competing apps)

### Threat 4: Infrastructure Fragility (Layer 1)

**Attack Vector:** Physical infrastructure fails or is attacked

**Examples:**
- Undersea cable cuts (accidental or sabotage)
- Data center fires (OVH fire in 2021 destroyed thousands of sites)
- Power grid failures (take down entire regions)

**Defenses:**
- Redundancy (multiple data centers, geographic distribution)
- Peer-to-peer architectures (no single server to attack)
- Regular backups (distributed across locations)

---

## Conclusion: Sovereignty Requires Stack Thinking

You cannot achieve digital sovereignty by fixing one layer. Even if you:
- Own your domain (Layer 2)
- Use open source software (Layer 5)
- Self-host your data (Layer 4)

...you're still vulnerable if:
- Your hosting provider kicks you off (Layer 1)
- Payment processors deplatform you (Layer 6)
- Your identity depends on a platform (Layer 3)

**Sovereignty requires thinking across all six layers.** It's not enough to own one part of the stack; you need resilience at every level.

This is hard. Full-stack sovereignty is expensive, technical, and time-consuming. Most people will accept some vulnerability in exchange for convenience. That's okay—**sovereignty is a spectrum**, not binary.

But the Sovereignty Stack helps you:
- **Diagnose vulnerabilities**: Where are you most at risk?
- **Prioritize fixes**: Which layer matters most for your use case?
- **Design resilient systems**: How do you build across all layers?
- **Evaluate tools**: Does this app/platform embody sovereignty?

In the next chapter, we'll explore **movement building**—how to turn individual sovereignty into collective power. Because infrastructure isn't just technical; it's **political**. Changing who controls the stack requires organizing, advocacy, and policy change.

The political economy of Ground isn't just about building alternatives. It's about **fighting for a different kind of internet**—one where users, not corporations or states, have power.

That fight begins with understanding the Stack. Now you do.

---

## Discussion Questions

1. **Personal Sovereignty Audit**: Use the Sovereignty Stack to audit your own digital life. Which layers are you most vulnerable on? Which are you most secure on?

2. **Trade-offs**: Would you accept less convenience for more sovereignty? Where's your breaking point? (e.g., Would you run your own email server?)

3. **Threat Prioritization**: Which threat is most dangerous: state surveillance, corporate extraction, platform capture, or infrastructure fragility? Does it depend on your context?

4. **Ownership Models**: Should critical infrastructure (DNS, payment systems, cloud hosting) be owned by corporations, governments, or commons? What's best for sovereignty?

5. **Layer Interdependence**: If you could only secure ONE layer of the stack, which would you choose? Why?

6. **Future Scenario**: Imagine 2040. What does digital infrastructure look like if Archaeobytology succeeds? What if it fails?

---

## Exercise: Redesign One Layer

**Task**: Choose one layer of the Sovereignty Stack. Redesign it to maximize sovereignty while remaining practically viable.

**Part 1: Critique Current State** (500 words)
- How does the current system work?
- Who controls it?
- What are the sovereignty failures?
- What specific harms result from current design?

**Part 2: Design Alternative** (1000 words)
- How would you redesign this layer?
- What technologies enable your design?
- How does it resist capture (corporate, state, platform)?
- How does it balance sovereignty with usability?

**Part 3: Adoption Strategy** (500 words)
- How do you get people to switch?
- What's the transition path from current system to yours?
- What are the obstacles (technical, economic, political)?

**Part 4: Threat Model** (500 words)
- How would each threat actor attack your system?
  - State surveillance
  - Corporate extraction
  - Platform capture
  - Infrastructure failure
- What defenses have you built in?
- What vulnerabilities remain?

**Part 5: Reflect** (300 words)
- What surprised you about this design exercise?
- What compromises did you have to make?
- Would you personally use the system you designed?

---

## Further Reading

### On Infrastructure and Power

- Lessig, Lawrence. *Code: Version 2.0*. Basic Books, 2006.
  - Classic on how digital architecture encodes power

- Star, Susan Leigh. "The Ethnography of Infrastructure." *American Behavioral Scientist* 43, no. 3 (1999): 377-391.
  - Infrastructure is political, not neutral

- Winner, Langdon. "Do Artifacts Have Politics?" *Daedalus* 109, no. 1 (1980): 121-136.
  - Technologies embody political choices

### On Specific Layers

- Mueller, Milton. *Networks and States: The Global Politics of Internet Governance*. MIT Press, 2010.
  - On DNS, ICANN, and network governance

- Schneier, Bruce. *Data and Goliath*. W.W. Norton, 2015.
  - On surveillance at every layer

- DeNardis, Laura. *The Global War for Internet Governance*. Yale, 2014.
  - Who controls protocols and standards

### On Alternatives

- Doctorow, Cory. *The Internet Con: How to Seize the Means of Computation*. Verso, 2023.
  - On interoperability and adversarial compat

- Bauwens, Michel, and Vasilis Kostakis. *Network Society and Future Scenarios for a Collaborative Economy*. Palgrave, 2014.
  - On commons-based alternatives

- Schneider, Nathan. "Cryptoeconomics as a Limitation on Governance." COALA Workshop, 2017.
  - On blockchain governance and limitations

### Primary Sources

- Tor Project. "How Tor Works." https://www.torproject.org/about/history/
- IPFS Documentation. https://docs.ipfs.tech/
- ENS Documentation. https://docs.ens.domains/
- Mastodon Documentation. https://docs.joinmastodon.org/

---

**End of Chapter 15**

*Next: Chapter 16 — From Practice to Discipline: Movement Building*

