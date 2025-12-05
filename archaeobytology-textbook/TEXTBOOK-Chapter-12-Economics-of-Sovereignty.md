# Chapter 12: The Economics of Sovereignty — Building the Anvil

---

## Opening: The Business Model Trap

In 2004, a blogger named Ev Williams sold his company Blogger to Google for an undisclosed sum (reportedly millions). Blogger had pioneered user-friendly blogging, giving millions of people their own publishing platforms. But it never found a sustainable business model. Google acquired it, integrated it with their ad network, and kept it alive—but blogger.com users became Google users, subject to Google's terms, surveillance, and whims.

In 2013, Williams tried again with Medium. This time, he'd learned: start with a business model. Medium launched with subscriptions, then experimented with advertising, then memberships, then partnerships. Each pivot changed what Medium was—from open platform to paywalled publication network to algorithmic recommendation engine. Writers never knew if their URLs would persist, if their audiences belonged to them, or if Medium would exist in five years.

In 2023, Medium still exists—but so many writers have left (fed up with pivots and VC pressure) that it's become a shadow of its early promise. The writers who stayed are tenants, not sovereigns.

**The Anvil faces a brutal question:** How do you build a business that embodies digital sovereignty—one that gives users Declaration, Connection, and Ground—while also generating enough revenue to survive?

This isn't just a technical problem. It's an **economic design problem**. And it's perhaps the hardest challenge Archaeobytology faces: **forging sustainable alternatives to platform capitalism.**

This chapter explores:
- Why traditional business models fail sovereignty (VC funding, advertising, data extraction)
- Alternative revenue models (subscriptions, cooperatives, open core, public funding)
- Case studies of businesses that got it right (and wrong)
- How to design a Foundry that can survive 50 years without betraying its users

By the end, you'll understand the economics of the Anvil—and be able to design business models that align profit with sovereignty.

---

## Part I: Why Traditional Models Kill Sovereignty

### The Venture Capital Death Spiral

**How VC Funding Works:**

1. **Startup raises money** (seed round: $500k-$2M)
   - Investors buy equity (ownership stake in company)
   - Expectation: 10x return in 5-10 years

2. **Startup grows fast** (prioritizes user growth over revenue)
   - Burns investor money to acquire users
   - "Growth at all costs" mentality

3. **More funding rounds** (Series A, B, C: $5M, $20M, $100M+)
   - Each round dilutes founders' ownership
   - Investors gain board seats, influence company direction

4. **Exit pressure** (IPO or acquisition)
   - Investors want return on investment
   - Company must either go public (stock market) or get acquired (sold to bigger company)

5. **Monetization acceleration** (squeeze users for revenue)
   - Ads, data sales, subscription paywalls
   - "Enshittification" (Cory Doctorow's term): Platform degrades user experience to extract value

**Why This Kills Sovereignty:**

**Declaration Dies:**
- To maximize ad revenue, platforms need "real names" (advertisers want demographic data)
- Content moderation favors advertiser-friendly material (censorship of controversial but legitimate speech)
- Platform owns user identities (can ban, suspend, or sell data without consent)

**Connection Dies:**
- Algorithmic feeds prioritize "engagement" (rage-bait, controversy) over chronological connection
- Network effects become lock-in (can't leave because everyone's here)
- Platforms surveil conversations for ad targeting

**Ground Dies:**
- Users don't own their content (licensed to platform)
- No data portability (can't easily migrate to competitors)
- Platform can change terms, raise prices, or shut down features without consent

**Case Study: Instagram's Enshittification**

**Phase 1 (2010-2012): Growth**
- Beautiful, simple photo-sharing app
- Chronological feed
- No ads
- Users loved it

**Phase 2 (2012): Acquisition**
- Facebook buys Instagram for $1 billion
- Promises to keep it independent
- Still no ads (yet)

**Phase 3 (2013-2015): Monetization Begins**
- Ads introduced (2013)
- Algorithmic feed replaces chronological (2016)
- Users see fewer posts from friends, more from brands/influencers

**Phase 4 (2016-2020): Enshittification Accelerates**
- Stories (copied from Snapchat) to keep users on platform longer
- Reels (copied from TikTok) to compete with short video
- Shopping features (turn platform into e-commerce)
- Feed becomes 50% ads and recommended content, not people you follow

**Phase 5 (2020-present): Users Rebel**
- Photographers and artists leave (algorithms favor video over photos)
- "Make Instagram Instagram Again" campaign
- But network effects trap users (can't leave; audience is there)

**Sovereignty Analysis:**
- **Declaration**: Users don't own @usernames (can be suspended, handles seized)
- **Connection**: Algorithm decides who sees your posts (not chronological, not transparent)
- **Ground**: Content hosted on Instagram servers, no export of full quality images + metadata + social graph

**Lesson:** VC funding forced Facebook to extract maximum value from Instagram, degrading user experience and sovereignty.

### The Advertising Model's Incompatibility

**Why Advertising Kills Sovereignty:**

**1. Surveillance Becomes Necessary**
- Targeted ads require user data (behavior tracking, demographics, interests)
- Privacy becomes impossible (every action monitored)

**2. Engagement Optimization Dominates**
- Platforms optimize for "time on site" (more ads served)
- Addictive design patterns (infinite scroll, autoplay, notifications)
- Content moderation favors controversial material (drives engagement)

**3. Algorithmic Control**
- Users can't see chronological feeds (ads would be skipped)
- Platforms control what you see (paid content prioritized over friends)

**4. Real Name Policies**
- Advertisers want demographic certainty
- Pseudonymity becomes impossible (violates ad targeting needs)

**Case Study: Twitter/X Under Musk**

**Pre-Musk (2006-2022):**
- Twitter struggled with profitability (ad revenue insufficient)
- But maintained relatively open API, chronological feed option, pseudonymity

**Post-Musk (2022-present):**
- Musk buys Twitter for $44 billion (mostly debt-financed)
- Needs to generate massive revenue to service debt
- Results:
  - Blue checkmarks become paid ($8/month for verification)
  - API access restricted (kills third-party clients, forces users to official app with more ads)
  - Algorithmic feed becomes mandatory (can't disable)
  - "Freedom of speech" rhetoric, but actually more censorship (of competitors, critics)

**Sovereignty Impact:**
- **Declaration**: Verification becomes paid feature, pseudonymous users harassed
- **Connection**: Third-party clients killed, API access limited, algorithmic manipulation
- **Ground**: No meaningful data portability, platform instability

**Lesson:** Even "ideological" ownership (Musk claimed to champion free speech) gets crushed by economic pressure. Debt + ad dependence = sovereignty impossible.

---

## Part II: Alternative Revenue Models

If VC funding and advertising kill sovereignty, what's left? Several models exist—none perfect, all involve trade-offs.

### Model 1: Subscriptions (User-Pays)

**How It Works:**
- Users pay monthly/annual fee ($5-50/month typical)
- Revenue funds development, infrastructure, support
- No ads, no data sales

**Sovereignty Potential: ★★★★☆**

**Pros:**
- No surveillance needed (users are customers, not products)
- Incentives align (make users happy so they renew)
- Can remain small and profitable (don't need billions of users)

**Cons:**
- Excludes people who can't pay (equity issue)
- Harder to grow (free platforms have network effect advantage)
- Requires continuous value delivery (users will cancel if not worth it)

**Case Study: Hey.com (Basecamp's Email Service)**

**Launch (2020):**
- $99/year for email service
- Privacy-focused (no tracking, no ads)
- Opinionated design (built-in features for email triage)

**Business Model:**
- Subscription revenue funds small team (~10 people)
- No investors, no ads, no data sales
- Profitable from day one (break-even at ~20,000 users)

**Sovereignty Assessment:**
- **Declaration**: Users can use custom domains (you@yourdomain.com via Hey)
- **Connection**: Email is federated (Hey users can email anyone)
- **Ground**: Partial (emails stored on Hey servers, but IMAP export available)

**Limitations:**
- $99/year excludes low-income users
- Small market share (Gmail is free, Hey is not)
- Dependent on Basecamp's continued interest (what if they shut it down?)

**Lesson:** Subscriptions enable sovereignty but limit reach.

### Model 2: Open Core (Free Software + Paid Hosting/Support)

**How It Works:**
- Core software is open source (free to use, modify, self-host)
- Company offers paid hosting, support, enterprise features
- Example: WordPress (open source) + WordPress.com (paid hosting)

**Sovereignty Potential: ★★★★★**

**Pros:**
- Users can self-host (full sovereignty) or pay for convenience
- Can't be captured (if company sells out, community forks)
- Scales (free tier grows community, paid tier funds development)

**Cons:**
- Hard to compete with cloud giants (who can offer hosting cheaper)
- Risk of "tragedy of the commons" (many users, few contributors/payers)
- Pressure to create artificial limitations (cripple free version to upsell paid)

**Case Study: Ghost (Publishing Platform)**

**History:**
- Founded 2013 as Kickstarter project ($300k raised)
- Open-source blogging platform (alternative to WordPress)
- Business model: Ghost(Pro) managed hosting + Ghost Foundation (non-profit)

**Revenue Streams:**
- Ghost(Pro): $9-199/month for managed hosting
- Self-hosting: Free (download and run yourself)
- Foundation: Grants and donations fund open-source development

**Hybrid Structure:**
- Ghost Foundation (non-profit): Owns open-source code
- Ghost(Pro) (for-profit): Provides managed hosting, funds foundation

**Sovereignty Assessment:**
- **Declaration**: Custom domains standard (even on free self-hosted)
- **Connection**: Open API, can integrate with any service, full RSS support
- **Ground**: Full ownership (self-hosted) or excellent portability (Ghost(Pro) export is complete)

**Success Metrics:**
- 3,000+ paying Ghost(Pro) customers
- Tens of thousands self-hosting
- Profitable and sustainable (10+ years running)

**Lesson:** Open core + hybrid structure (non-profit + for-profit) can work.

### Model 3: Cooperative Ownership (User-Owned Platform)

**How It Works:**
- Platform is owned by members (users, workers, or both)
- Governance is democratic (one member, one vote)
- Profits distributed to members or reinvested in platform
- Legal structure: Co-op, worker-owned, multi-stakeholder

**Sovereignty Potential: ★★★★★**

**Pros:**
- Structural alignment (owners are users, incentives match)
- Can't be sold to VCs or acquired by megacorp
- Democratic governance (users decide platform direction)

**Cons:**
- Hard to fund initial development (co-ops struggle to raise capital)
- Governance is slow (democracy takes time)
- Risk of capture by vocal minority (co-op politics can be messy)

**Case Study: Resonate (Music Streaming Co-op)**

**Model:**
- Musician-owned streaming platform
- Artists get fair pay (#stream2own: listeners "buy" songs after 9 plays)
- Multi-stakeholder co-op (musicians, listeners, workers all have governance stake)

**Funding:**
- Initial crowdfunding
- Ongoing membership fees
- Investment from cooperative-friendly funds

**Challenges:**
- Slow growth (competing with Spotify's billions in VC funding)
- Technical debt (limited resources for development)
- Governance complexity (balancing stakeholder interests is hard)

**Status (2025):**
- Still operating, but small (not mainstream success)
- Proof of concept: co-op model can work for digital platforms

**Sovereignty Assessment:**
- **Declaration**: Artists control their profiles, own their presence
- **Connection**: Direct artist-listener relationship (no algorithmic intermediation)
- **Ground**: Artists own their music files, can leave platform with all data

**Lesson:** Co-ops align sovereignty with structure, but struggle to compete with VC-funded giants.

### Model 4: Public/Non-Profit Funding (Mission-Driven)

**How It Works:**
- Platform funded by grants, donations, government funding
- Non-profit legal structure (mission over profit)
- Revenue sources: Philanthropic foundations (Mellon, Knight, Ford), government (NEH, NSF), individual donations

**Sovereignty Potential: ★★★★☆**

**Pros:**
- No profit motive (mission is preservation/access, not extraction)
- Can serve public good (not just paying customers)
- Long time horizons (not driven by quarterly earnings)

**Cons:**
- Grant dependency (what if funders change priorities?)
- Mission drift risk (chasing grants can distort mission)
- Slow to adapt (bureaucracy, consensus decision-making)

**Case Study: Internet Archive**

**Funding:**
- Donations (50% of revenue): Individual donors + corporate sponsors
- Grants (30%): Mellon Foundation, Knight Foundation, NEH
- Services (20%): Scanning books for libraries, archival consulting

**Governance:**
- Non-profit corporation (501(c)(3))
- Board of directors (includes Brewster Kahle, founder)
- Mission: "Universal access to all knowledge"

**Sustainability:**
- Operating since 1996 (nearly 30 years)
- Annual budget: ~$40 million
- Endowment: Building toward long-term stability

**Sovereignty Assessment:**
- **Declaration**: Free access, no user accounts required (can browse anonymously)
- **Connection**: Open APIs, anyone can build on top of Archive data
- **Ground**: Massive redundancy (multiple data centers, partner libraries), but centralized control

**Challenges:**
- Legal vulnerability (2023: sued by publishers over book lending)
- Funding concentration risk (what if major donors withdraw?)
- Founder dependency (Brewster Kahle is central to organization)

**Lesson:** Non-profit model can sustain long-term preservation, but vulnerable to legal and funding risks.

---

## Part III: Designing Sustainable Foundries

### The Foundry Business Canvas

When designing a sovereignty business (we call these "Foundries"), use this canvas:

#### 1. **Value Proposition**
- What sovereignty problem do you solve?
- For whom? (target users)
- Why would they switch from incumbent platform?

#### 2. **Revenue Model**
- How do you make money?
- Subscriptions? Hosting? Donations? Sales?
- How much revenue per user? (unit economics)

#### 3. **Cost Structure**
- What are your main expenses?
- Infrastructure (servers, bandwidth, storage)
- Labor (developers, support, operations)
- Legal/compliance

#### 4. **Three Pillars Integrity**
- **Declaration**: Do users own identities?
- **Connection**: Can they communicate without surveillance?
- **Ground**: Do they control their data?

#### 5. **Governance**
- Who makes decisions? (founders, board, users, workers?)
- How democratic? (autocratic, representative, fully participatory?)
- Exit strategy: What happens if founders leave/die?

#### 6. **Legal Structure**
- For-profit, non-profit, co-op, hybrid?
- What protects mission from capture?

#### 7. **Competitive Advantage**
- Why can't megacorps copy you?
- Is it technology, community, mission, legal structure?

#### 8. **Growth Strategy**
- How do you get first 100 users? 1,000? 10,000?
- Network effects? (do you need them, or can you thrive small?)

#### 9. **Sustainability Timeline**
- Break-even: When do revenues exceed costs?
- Maturity: When is the business self-sustaining?
- Succession: How does it survive founders?

### Example Canvas: Hypothetical "Sovereign Social" Platform

**1. Value Proposition:**
- Federated social network (like Mastodon) with managed hosting
- Target: Non-technical users who want sovereignty but not self-hosting burden
- Switch incentive: "Own your social media—no ads, no algorithm, no ban risk"

**2. Revenue Model:**
- $10/month subscription per user
- Includes: Custom domain (@you@yourdomain.social), 10GB storage, priority support

**3. Cost Structure:**
- Infrastructure: $2/user/month (servers, bandwidth, storage)
- Labor: $200k/year (2 developers, 1 support person)
- Legal/admin: $20k/year
- Break-even: 2,000 paying users ($240k/year revenue - $220k costs)

**4. Three Pillars:**
- **Declaration**: Custom domains included, users control identity
- **Connection**: ActivityPub federation (can follow/be followed from any compatible platform)
- **Ground**: Full data export, can migrate to different host with all followers

**5. Governance:**
- For-profit LLC initially (founders control)
- Long-term: Convert to steward-ownership (founder gets salary, not equity) or co-op
- User advisory board (elected representatives consult on policy)

**6. Legal Structure:**
- Start: For-profit (easier to fund early development)
- Mature: Steward-ownership (Purpose Foundation model) or B-Corp
- Protection: Bylaws mandate Three Pillars compliance, can't be removed

**7. Competitive Advantage:**
- Can't compete on features (Mastodon, Bluesky are free and feature-rich)
- Advantage: Trust (users know they won't be enshittified, locked in)
- Niche: "We're the managed Mastodon host for people who value sovereignty"

**8. Growth Strategy:**
- Phase 1: 100 beta users (friends, early adopters) — $1k/month revenue
- Phase 2: 1,000 users (content creators tired of platform instability) — $10k/month
- Phase 3: 10,000 users (mainstream adoption) — $100k/month (profitable)
- No VC needed (bootstrapped or small crowdfunding)

**9. Sustainability Timeline:**
- Break-even: 2 years (2,000 users)
- Maturity: 5 years (10,000 users, $1.2M/year revenue, stable team)
- Succession: Founders create transition plan (documentation, steward-ownership transfer)

**Viability Assessment:**
- Market: Small (most people don't care about sovereignty)
- But defensible: Those who do care are loyal, pay premium
- Sustainable: Modest scale ($1-2M/year) is enough

---

## Part IV: Case Studies in Foundry Economics

### Success: Basecamp (Bootstrapped, No VC)

**Business:**
- Project management software
- Founded 1999 (as 37signals)
- Never took VC funding

**Revenue Model:**
- $99/month flat rate (unlimited users)
- Simple pricing (no complex tiers)
- Annual revenue: ~$50 million (estimated)

**Economic Design:**
- Bootstrapped (profitable from early on)
- Small team (~70 people) despite massive user base (thousands of companies)
- No growth-at-all-costs (slow, steady, sustainable)

**Sovereignty:**
- **Declaration**: Companies own their Basecamp data, own their URLs (custom domains available)
- **Connection**: Not social, so less relevant (but API for integrations)
- **Ground**: Good data export, can migrate to self-hosted alternatives if needed

**Key Lesson:** Profitability at small scale (relative to VC-funded competitors) enables sovereignty.

**Why It Works:**
- Founders (Jason Fried, DHH) ideologically opposed to VC
- Company structure allows them to say no to growth pressure
- Loyal user base willing to pay premium for stability

### Failure: Ello (VC-Funded "Anti-Facebook")

**Premise (2014):**
- Social network promising "no ads, no data mining"
- Launched as alternative to Facebook
- Tagline: "You are not a product"

**Business Model:**
- Initially free
- Plan: Freemium (paid features: analytics, custom domains, themes)

**Funding:**
- Raised $5.5 million VC funding (Series A)
- Converted to Public Benefit Corporation (B-Corp) to enshrine ad-free mission

**What Went Wrong:**
- VC pressure to grow fast (needed massive user base to justify valuation)
- Network effects didn't materialize (no one on Ello = no reason to join Ello)
- Pivot to niche (2016): Became platform for artists/creators only
- Acquired 2021 by holding company; original mission abandoned

**Sovereignty Failure:**
- Despite B-Corp status, VC funding created growth pressure
- Users who joined believing in mission felt betrayed by pivot
- Platform never achieved critical mass for sustainability

**Key Lesson:** VC funding is incompatible with sovereignty, even with legal protections.

### Partial Success: Mastodon (Donations + Volunteer Labor)

**Business Model:**
- Mastodon is open-source software (free)
- Creator (Eugen Rochko) funded by Patreon donations
- Instance hosting is decentralized (thousands of admins, each with own funding model)

**Rochko's Income:**
- Patreon: $30k/month from ~6,000 patrons
- Grants: Occasional from Mozilla, NGI
- Annual: ~$400k (modest for software developer in US, but sustainable)

**Instance Funding (Varied):**
- Some free (admin pays out of pocket)
- Some donation-supported (Patreon, Ko-fi)
- Some subscription ($5-10/month per user)
- Some institutionally backed (universities, non-profits)

**Sustainability Assessment:**
- Core software: Sustainable (Rochko funded, plus volunteer contributors)
- Instances: Fragile (many admins burn out, shut down)
- Overall: Network survives because federated (if one instance dies, users migrate)

**Sovereignty:**
- Excellent (federated, open protocol, self-hostable)

**Key Lesson:** Donation-funded + decentralized can work, but creates admin burnout risk.

---

## Part V: Avoiding the Failure Modes

### Failure Mode 1: The Heroic Founder Problem

**Symptom:**
- Organization depends on one person (founder/maintainer)
- If they burn out, die, or leave, project collapses

**Examples:**
- Small open-source projects (single maintainer)
- Volunteer-run archives (when admin quits, archive vanishes)

**Prevention:**
- Build team, not solo operation
- Document everything (so others can take over)
- Succession planning (who's next in charge?)
- Institutional structure (legal entity that outlives founder)

### Failure Mode 2: The Volunteer Burnout Trap

**Symptom:**
- Project relies on unpaid labor
- Initial enthusiasm fades
- No one has time/energy to maintain

**Examples:**
- Mastodon instances (many shut down after 1-2 years)
- Open-source projects (maintainers quit from exhaustion)

**Prevention:**
- Pay people (even modest stipends help)
- Limit scope (don't promise more than you can sustain)
- Rotate responsibilities (avoid single points of failure)

### Failure Mode 3: Speculative Capture

**Symptom:**
- Company/protocol gets bought by VCs, megacorps, or speculators
- New owners prioritize profit over mission
- Enshittification follows

**Examples:**
- Instagram (acquired by Facebook)
- Tumblr (Yahoo, then Verizon, then Automattic)
- Many blockchain projects (early idealism → speculative frenzy)

**Prevention:**
- Legal structure that prevents sale (non-profit, co-op, steward-ownership)
- Open source (so community can fork if captured)
- Mission codification (bylaws that can't be changed)

### Failure Mode 4: Complexity Collapse

**Symptom:**
- System becomes too complex to maintain
- Technical debt accumulates
- Eventually, no one understands how it works

**Examples:**
- Legacy software (COBOL banking systems)
- Over-engineered platforms (added features until bloated)

**Prevention:**
- Simplicity as core value (resist feature creep)
- Regular refactoring (pay down technical debt)
- Documentation (explain how things work)

---

## Part VI: The 10-Year Business Plan

If you're building a Foundry, plan for the long haul:

### Year 1: Proof of Concept
- Build MVP (minimum viable product)
- Get 10-50 early users
- Validate that people will pay
- Revenue: $0-5k/year

### Years 2-3: Find Product-Market Fit
- Iterate based on user feedback
- Grow to 100-500 users
- Break even or close to it
- Revenue: $10k-50k/year

### Years 4-5: Scale to Sustainability
- 1,000-5,000 users
- Profitable (revenue exceeds costs)
- Hire small team (2-5 people)
- Revenue: $100k-500k/year

### Years 6-10: Mature and Institutionalize
- 5,000-50,000 users
- Diversify revenue (not dependent on single income stream)
- Succession planning (ensure survival past founders)
- Revenue: $500k-5M/year

### Beyond Year 10: Legacy
- Convert to permanent structure (co-op, foundation, steward-ownership)
- Ensure mission persists even if founders leave
- Document everything for future maintainers

**Key Insight:** You don't need billions of users or unicorn valuation. Small, sustainable, and sovereign is success.

---

## Conclusion: The Anvil That Endures

Building a Foundry is hard. You're competing against platforms with billions in VC funding, network effects, and zero regard for user sovereignty.

But you have advantages they don't:
- **Trust**: Users know you won't betray them
- **Longevity**: You're building for 50 years, not next quarter
- **Mission**: You care about sovereignty, not extraction

The economics of the Anvil require patience:
- Growth will be slow
- You'll never be "unicorn" rich
- You'll always be outspent by megacorps

But you'll build something that lasts. Something that users own. Something that can't be murdered by a quarterly earnings call.

**The Anvil endures not because it grows fastest, but because it's built to survive.**

In the next chapter, we explore distributed commons governance—how to build infrastructure that many organizations share, using Elinor Ostrom's principles for managing common-pool resources.

For now, sketch your Foundry. What would you build? How would you fund it? And how would you ensure it embodies the Three Pillars while remaining economically viable?

The Anvil awaits the forging.

---

## Discussion Questions

1. **VC Dilemma**: If you had a great idea for a sovereign platform but needed $1M to build it, would you take VC funding? Why or why not? What alternatives exist?

2. **Subscription Exclusion**: User-pays models exclude people who can't afford subscriptions. Is this an acceptable trade-off for sovereignty? How could you address it?

3. **Co-op Governance**: Would you want to run a platform democratically (co-op model)? What are the benefits and frustrations of democratic governance?

4. **Small vs. Big**: Is it better to be small and sovereign (10,000 loyal users) or big and compromised (100 million users but VC-funded)? Does scale matter?

5. **Competition**: How do you compete with "free" platforms (Gmail, Facebook, Instagram) when you charge money? What's your value proposition?

6. **Your Own Business**: If you built a Foundry, what would your revenue model be? Walk through the Business Canvas for your hypothetical platform.

---

## Exercise: Design Your Foundry

**Task**: Design a complete business plan for a sovereignty-respecting platform.

**Part 1: The Problem** (300 words)
- What platform are you replacing/competing with?
- What sovereignty violations does it commit?
- Who's your target user? (specific niche, not "everyone")

**Part 2: The Business Canvas** (1000 words)

Complete all 9 sections:
1. Value Proposition
2. Revenue Model (with unit economics)
3. Cost Structure
4. Three Pillars Integrity Check
5. Governance Model
6. Legal Structure
7. Competitive Advantage
8. Growth Strategy (with realistic numbers)
9. Sustainability Timeline

**Part 3: 5-Year Financial Projection** (500 words)

Create a simple table:
| Year | Users | Revenue/User | Total Revenue | Total Costs | Profit/Loss |
|------|-------|--------------|---------------|-------------|-------------|
| 1    | 50    | $120/year    | $6k          | $50k        | -$44k       |
| 2    | 500   | $120/year    | $60k         | $100k       | -$40k       |
| 3    | 2,000 | $120/year    | $240k        | $200k       | +$40k       |
| 4    | 5,000 | $120/year    | $600k        | $400k       | +$200k      |
| 5    | 10,000| $120/year    | $1.2M        | $700k       | +$500k      |

Explain assumptions. When do you break even? Is this realistic?

**Part 4: Failure Mode Analysis** (500 words)
- What's your biggest risk? (heroic founder, burnout, capture, complexity?)
- How do you mitigate it?
- What's your "if this fails" exit strategy? (can users take their data elsewhere?)

**Part 5: Reflection** (300 words)
- Would you actually want to run this business?
- What's the hardest part?
- What did you learn about the tensions between sovereignty and economics?

---

## Further Reading

### On Platform Economics

- Doctorow, Cory. "Competitive Compatibility: Let's Fix the Internet, Not the Tech Giants." *Electronic Frontier Foundation* (2019).
- Srnicek, Nick. *Platform Capitalism*. Polity, 2017.
- Zuboff, Shoshana. *The Age of Surveillance Capitalism*. PublicAffairs, 2019.

### On Alternative Business Models

- Schneider, Nathan. "An Internet of Ownership." *Sociological Review* 68, no. 2 (2020).
- Scholz, Trebor. *Platform Cooperativism*. Rosa Luxemburg Stiftung, 2016.
- Muldoon, James. *Platform Socialism*. Pluto Press, 2022.

### On Sustainable Funding

- Eghbal, Nadia. *Working in Public: The Making and Maintenance of Open Source Software*. Stripe Press, 2020.
  - On how open source projects fund themselves

- Benkler, Yochai. *The Wealth of Networks*. Yale University Press, 2006.
  - On peer production and non-market economics

### On Company Case Studies

- Fried, Jason, and DHH. *Rework*. Crown Business, 2010.
  - Basecamp's philosophy (bootstrapped, profitable, sovereign)

- Rochko, Eugen. "Mastodon Blog." https://blog.joinmastodon.org
  - Founder's posts on building/funding decentralized platform

### On Business Design

- Osterwalder, Alexander, and Yves Pigneur. *Business Model Generation*. Wiley, 2010.
  - Business canvas methodology

- Purpose Foundation. "Steward-Ownership." https://purpose-economy.org/en/
  - Alternative ownership structures

---

**End of Chapter 12**

*Next: Chapter 13 — Distributed Commons Governance (The Seed Bank)*

