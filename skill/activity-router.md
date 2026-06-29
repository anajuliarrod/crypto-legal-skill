# Activity Router — what fires when

Founders rarely know which laws apply; they know **what they're building**. This file maps the build to the regimes, so you can route to the right topic file fast. Always resolve the **Context Gate** (SKILL.md) first.

## The single most important question

> **Are any U.S. persons in scope** as users, buyers, or token recipients?

A "yes" pulls in U.S. securities law (Howey 📌 sources.md#us-securities-sec-cftc), the GENIUS Act for anything stablecoin (📌 sources.md#us-stablecoins-genius), FinCEN MSB + state MTLs, and strict-liability OFAC sanctions (📌 sources.md#us-aml-fincen-ofac). Most "we'll geoblock the U.S." plans are about *credibly* removing U.S. persons from scope — see [compliance-ops.md](compliance-ops.md#geoblocking).

## Build → regimes that fire → where to go

| What you're building | Primary regimes that fire | Open |
|---|---|---|
| **Governance/utility token + sale or airdrop** | Securities (Howey / SEC-CFTC taxonomy; MiCA if EU) | [token-launch.md](token-launch.md) |
| **Your own stablecoin** (fiat-backed, algo, yield) | GENIUS (US), MiCA EMT/ART (EU), MAS SCS (SG), FCA (UK) | [stablecoins.md](stablecoins.md) |
| **App that *accepts/holds/pays* in USDC/PYUSD** | Money transmission / e-money / custody if you hold user funds; sanctions screening | [stablecoins.md](stablecoins.md#integrating) → [compliance-ops.md](compliance-ops.md) |
| **DEX / AMM / swap frontend** | Money transmission, securities (if listing tokens), sanctions, decentralization analysis | [compliance-ops.md](compliance-ops.md) + [token-launch.md](token-launch.md) |
| **Lending / perps / yield protocol** | Securities + derivatives (CFTC), MSB, MiCA CASP | [jurisdictions.md](jurisdictions.md) + 🛑 counsel |
| **Custodial wallet / on-ramp / exchange** | Money transmission + MTL/BitLicense, MiCA CASP, MAS, VARA | [compliance-ops.md](compliance-ops.md) + [jurisdictions.md](jurisdictions.md) |
| **Non-custodial wallet / pure interface** | Lighter; promotions rules, sanctions hygiene, disclaimers | [compliance-ops.md](compliance-ops.md) |
| **NFT drop / digital collectible** | Usually not a security *if* consumptive; financial-NFT = security risk | [token-launch.md](token-launch.md#nfts) |
| **DAO with a treasury / on-chain governance** | Entity liability, wrapper, treasury, contributor classification | [dao-governance.md](dao-governance.md) |
| **Just incorporating / raising a seed round** | Entity selection, token-issuer vs DevCo, investor docs | [entity-structuring.md](entity-structuring.md) |

## Decision tree (text)

```
START
 ├─ Issuing a token of any kind?
 │   ├─ Stablecoin? ───────────────► stablecoins.md
 │   ├─ Fungible governance/utility? ► token-launch.md  (securities analysis first)
 │   └─ NFT/collectible? ───────────► token-launch.md#nfts
 ├─ Only *integrating* existing tokens (payments/DeFi)?
 │   ├─ Do you ever hold customer funds/keys? ─ yes ► compliance-ops.md (money transmission / custody)
 │   └─ Non-custodial only? ───────────────────────► compliance-ops.md (sanctions + disclaimers, lighter)
 ├─ Setting up the company / where to base?
 │                                   ─────────────► entity-structuring.md
 └─ Governing as a DAO? ─────────────────────────► dao-governance.md
THEN (always): compliance-ops.md for KYC/AML + sanctions + geoblocking, sized to the activity.
```

## Output the user should get from routing

1. **Context echo** — the 4 Context Gate facts (assume + label if unknown).
2. **Fires list** — 2–5 regimes with 📌 citations.
3. **Next 3 actions** — concrete (e.g., "decide issuer jurisdiction", "draft geoblock policy", "book a securities opinion for the token").
4. **🛑 checkpoints** — what genuinely needs counsel now vs later.

Then open the routed file(s) and produce the structured answer per the SKILL.md output contract.
