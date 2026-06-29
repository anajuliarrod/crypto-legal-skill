# Demo — crypto-legal-skill in action

Illustrative transcripts showing how the skill behaves. They follow the [`SKILL.md`](skill/SKILL.md) output contract: **context echo → what fires (with 📌 citations) → checklist/matrix → 🛑 counsel checkpoints → sources.** Markers: 📌 cited primary source · ⚠️ fast-moving/unverified · 🛑 needs a licensed attorney.

> These transcripts are illustrative and **not legal advice**. Outputs reflect sources verified 2026-06-29; re-verify before acting.

---

## Demo 1 — "Governance token + airdrop, including US users" (the deep path)

**User:**
> We're a 2-person team in São Paulo building a Solana lending protocol. We want to launch a governance token with an airdrop to our early testnet users — some are in the US — and we're raising a seed round from a US VC. What do we need legally?

**Skill** (routes via [`activity-router.md`](skill/activity-router.md) → token-launch + entity-structuring + compliance-ops + dao-governance):

**Context (assumed — correct me):**
- Entity: none yet; founders in 🇧🇷 Brazil.
- Users/recipients: global, **including U.S. persons** (airdrop + testnet).
- Issuing: a **governance token** for a **lending** protocol; raising VC equity/SAFT.
- Stage: pre-incorporation, pre-launch.

**What fires:**
1. **U.S. securities law.** Selling/airdropping a governance token to U.S. persons on the expectation that *your* work raises its value is classic Howey prong-4 exposure. 📌 sources.md#us-securities-sec-cftc
2. **2026 overlay — proposed, not law.** The SEC/CFTC taxonomy (2026-03-17) and "Project Crypto" Startup/Fundraising/Investment-Contract-Safe-Harbor exemptions could give a path, but they're **⚠️ at White House review, not final** — you cannot rely on them today.
3. **Lending = extra scrutiny.** A lending/borrowing protocol can implicate securities *and* derivatives (CFTC) regimes beyond the token itself. 🛑
4. **Entity/structure.** A 🇧🇷 founder + US VC + token usually means **DevCo + offshore token issuer** separation. 📌 sources.md#offshore-structuring
5. **Airdrop mechanics.** "Free" ≠ safe: an airdrop can still be a securities distribution and triggers **recipient tax events**; needs anti-sybil + geoblocking. 📌 sources.md#us-securities-sec-cftc
6. **DAO governance.** On-chain governance over a treasury needs a **wrapper** or members risk partnership liability. 📌 sources.md#dao-wrappers

**Recommended structure & sequence:**

| Layer | Option | Why |
|---|---|---|
| DevCo | Delaware C-corp (or BR Ltda + US flip later) | VC-familiar; holds the cap table & employs you |
| Token issuer | **Cayman Foundation + BVI** ("orphan") | Ownerless → supports decentralization posture; separates token from DevCo equity 📌 #offshore-structuring |
| Governance | Add a DAO wrapper later (Marshall Is. / Wyoming) when governance goes live | Liability shield for token holders 📌 #dao-wrappers |

**Distribution plan:**
- **Seed round:** SAFT / SAFE + token warrant under Reg D (US VC) — 🛑 counsel drafts.
- **Airdrop:** **geoblock U.S. persons** credibly (IP + wallet screening + attestation), anti-sybil, and give recipients a tax note. 📌 sources.md#us-aml-fincen-ofac · template: [geoblocking-policy.md](skill/templates/geoblocking-policy.md)
- **No price-appreciation marketing**; keep token framing about governance/utility.

**Next 3 actions:** (1) decide DevCo + issuer jurisdictions; (2) book a **securities opinion** (US + any target market) before any allocation; (3) write & technically enforce the geoblock.

**🛑 Counsel checkpoints:**
1. Securities classification of the specific token (US + Brazil + any EU exposure).
2. SAFT/warrant docs + exemption selection for the VC round.
3. Lending-protocol regulatory analysis (securities + CFTC).
4. Founder personal tax (Brazil CFC/PE; US-connection traps) **before** token allocation. 🛑

**Sources:** [GENIUS/SEC/CFTC, MiCA, structuring, AML — sources.md](skill/sources.md) · *Not legal advice — engage counsel in each relevant jurisdiction.*

---

## Demo 2 — "Can I just accept USDC payments?" (the skill rightsizes — light path)

**User:**
> My Solana app lets users tip creators in USDC. Non-custodial — funds go wallet-to-wallet, I never hold them. Do I need a money-transmitter license and all that stablecoin stuff?

**Skill** (recognizes **integrating, non-custodial** → does *not* dump issuer regs):

**Context:** You're **integrating** an existing stablecoin (USDC), **non-custodial**, no fund custody. → [stablecoins.md#integrating](skill/stablecoins.md#integrating)

**What actually fires (lighter than you fear):**
- **Issuer regimes (GENIUS/MiCA) don't bind you** — you're not the issuer. 📌 sources.md#us-stablecoins-genius
- **Money transmission:** FinCEN's 2019 guidance generally treats a purely **non-custodial** provider as **not** an MSB — but it's ⚠️ fact-specific; the moment you hold funds, take a cut mid-flow, or touch fiat, that can flip. 📌 sources.md#us-aml-fincen-ofac
- **What you *do* need:** sanctions/OFAC address screening, clear **Terms + risk disclaimer**, a privacy policy (GDPR if EU users), and honest "no advice" copy. 📌 sources.md#us-aml-fincen-ofac

**Minimum viable compliance:** sanctions screening · ToS ([template](skill/templates/terms-of-service-skeleton.md)) · risk disclaimer ([template](skill/templates/risk-disclaimer.md)) · privacy policy. That's it for the described design.

**🛑 Counsel checkpoint (one):** confirm you stay genuinely non-custodial — if a future feature escrows or routes funds through you, revisit money-transmission immediately.

**Sources:** [sources.md#us-aml-fincen-ofac](skill/sources.md) · *Not legal advice.*

---

## What the demos show

- **Citation-first:** every rule carries a 📌 to a dated primary source — no invented law.
- **Jurisdiction-aware:** the Context Gate runs first; "U.S. persons in scope?" drives the answer.
- **Rightsizing:** Demo 2 deliberately *doesn't* overwhelm a simple non-custodial app with issuer regulation — judgment, not a regulation dump.
- **Honest escalation:** 🛑 marks exactly where a lawyer is required, and the skill never says "you're compliant."
- **Structured + actionable:** matrices, ordered next steps, and ready-to-fill templates.
