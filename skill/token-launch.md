# Token Launch & Securities Analysis

The recurring founder question: **"Is my token a security, and how do I distribute it without breaking the law?"** There is no global yes/no — it depends on jurisdiction and design. Resolve the Context Gate, then work the analysis below. 🛑 The final classification of a *specific* token is a counsel decision; this file gets you to the right questions and a defensible structure.

## Step 1 — U.S. securities analysis (the most common trap)

If any **U.S. persons** are in scope, start here. 📌 sources.md#us-securities-sec-cftc

### The Howey test (durable backstop, regardless of new rules)
A token is an **investment contract** (security) if there is: (1) an investment of money, (2) in a common enterprise, (3) with a reasonable expectation of profit, (4) **derived from the efforts of others**. Prong (4) is where crypto lives — a token sold on the promise that *a team's future work* will raise its value looks like a security.

### 2026 overlay — SEC/CFTC taxonomy & "Project Crypto" (⚠️ partly proposed)
- The SEC/CFTC joint guidance (2026-03-17) recognizes **Digital Commodities, Digital Collectibles (NFTs), Digital Tools, and Tokenized Securities**, and reaffirms Howey for investment-contract analysis.
- Proposed **Regulation Crypto Assets** would add practical paths (⚠️ **not final** — under White House review):
  - **Startup Exemption** — raise **≤ $5M** with whitepaper-style disclosures, time-limited (~4 yrs).
  - **Fundraising Exemption** — annual cap, combinable with other exemptions.
  - **Investment Contract Safe Harbor** — a rules-based test for when a network has become "sufficiently decentralized" so the token is no longer sold as a security.
- **Do not rely on a proposed exemption as if it were law.** Until finalized, structure to *either* fit an existing exemption (Reg D / Reg S) *or* avoid the U.S. entirely (geoblock), and re-evaluate when the rule lands.

### "Sufficient decentralization"
The intuition behind the safe harbor (and years of practice): once no central team's efforts are the engine of profit expectation, prong (4) weakens. Real decentralization (governance, contributor diversity, no marketing of price) is a legal posture, not a slogan — and faking it to dodge the SEC is exactly what rule 5 of the guardrails forbids.

## <a id="eu-posture"></a>Step 2 — EU posture (if offering into the EU) 📌 sources.md#eu-mica
- Non-stablecoin tokens offered to the EU public generally require a **MiCA crypto-asset whitepaper** (notified, not pre-approved) plus marketing rules — lighter than a securities prospectus but real.
- Exemptions commonly relied on: **free airdrops**, offers to **< 150 persons** per member state, small offers under thresholds, or offers solely to qualified investors. ⚠️ Confirm current thresholds with EU counsel.
- If the token is actually a financial instrument (MiFID II), MiCA doesn't save you — that's securities law.

## Step 3 — Choose a distribution structure

| Mechanism | What it is | Legal posture |
|---|---|---|
| **Private sale (SAFT / SAFE + token warrant)** | Sell future tokens to accredited/qualified investors | Reg D (US) / Reg S (offshore); investors are sophisticated; lockups. Most VC rounds. 🛑 counsel docs. |
| **Public sale / IDO / LBP** | Sell tokens to the public | Highest securities risk if U.S. persons; usually geoblock U.S. + restricted jurisdictions. |
| **Airdrop** | Free distribution | ⚠️ "free" ≠ automatically safe — can still be a distribution of securities, and creates **recipient tax events**; design for anti-sybil + geoblocking. |
| **Points → token** | Off-chain points now, token later | Avoid promising a token or a price; loose promises can create securities-like expectations and consumer claims. ⚠️ |
| **Liquidity/LP incentives** | Emissions to LPs | Generally treated as rewards, but high-yield marketing draws scrutiny. |

### Geofencing U.S. (and other restricted) persons
A credible geoblock is a real control, not a checkbox: IP blocking, wallet-address screening, KYC where required, and **enforced** terms — not just a banner. See [compliance-ops.md](compliance-ops.md#geoblocking) and the [geoblocking-policy.md](templates/geoblocking-policy.md) template. Restricted set usually includes U.S. persons (until your exemption is real), OFAC-sanctioned jurisdictions, and any country where you lack a license.

## <a id="nfts"></a>NFTs & digital collectibles
- **Consumptive/collectible** (art, profile pics, game items) — usually not a security. Keep marketing about *utility/art*, not *price appreciation* or *team will pump it*.
- **Financialized NFTs** (fractionalized, yield-bearing, "floor will moon", staking-for-return) — security risk rises fast. 🛑
- Royalties, secondary-sale economics, and IP licensing (what does the holder actually own?) are separate issues — address IP in the ToS/license.

## Pre-launch hygiene (do these regardless)
- ✅ No public price-appreciation marketing; control team comms and influencer promos.
- ✅ Lockups/vesting documented for team & investors.
- ✅ Token-issuer entity chosen and separated from DevCo ([entity-structuring.md](entity-structuring.md)).
- ✅ Geoblocking policy written and technically enforced.
- ✅ Risk disclaimers + ToS published ([templates/](templates/)).
- ✅ Sanctions screening on any sale/claim flow.
- ✅ Tax read for the issuer **and** a note to recipients on their own tax events.

## 🛑 Counsel checkpoints
1. The securities classification opinion for the specific token (US + each target market).
2. The sale documents (SAFT/SAFE/warrant) and exemption selection.
3. Whether your decentralization posture is real enough to rely on.
4. Cross-border tax of the issuance.

→ Full checklist: [templates/token-launch-legal-checklist.md](templates/token-launch-legal-checklist.md). For "where do I put the issuer", go to [entity-structuring.md](entity-structuring.md).
