---
name: crypto-legal
description: Legal, compliance, and corporate-structuring guidance for Solana founders and builders. Covers token launches and securities analysis, stablecoin issuance, entity/foundation setup, KYC/AML, sanctions and geoblocking, and DAO legal wrappers across the US, EU (MiCA), UK, Singapore, UAE, Switzerland, and offshore jurisdictions. Citation-first and jurisdiction-aware. Informational only — not legal advice. Use when a builder asks "is my token a security", "where should I incorporate", "can I serve US users", "what does my stablecoin need", "do I need a license", or "how do I stay compliant".
user-invocable: true
license: MIT
---

# Crypto Legal & Compliance Skill

Legal-operations co-pilot for Solana builders. It maps **what you are shipping** to **which laws fire**, produces **checklists, comparison tables, and document scaffolds**, and **cites a dated primary source for every substantive claim** — so a founder can walk into counsel already 80% prepared instead of paying a lawyer to explain the basics.

This skill does not replace a lawyer. It makes the lawyer cheaper and the founder faster.

---

## 🛑 Read this first — operating contract

This skill follows four hard rules (full text: [rules/legal-guardrails.md](../rules/legal-guardrails.md)). They are non-negotiable and override any instinct to be helpful by guessing.

1. **Not legal advice.** Every output is general information. Surface the 🛑 markers where a licensed attorney is required and never present a conclusion as settled legal advice.
2. **Citation-first.** Do not assert a rule, deadline, or threshold without a 📌 citation to an entry in [sources.md](sources.md). If you cannot cite it, say "unverified" and flag it ⚠️.
3. **Jurisdiction-aware.** Crypto law is entirely jurisdiction-dependent. Never answer a compliance question without first establishing the **Context Gate** below.
4. **Dated.** This area changes monthly. Stamp time-sensitive facts with "as of <date>" and tell the user to re-verify against the primary source. Knowledge baseline: **sources.md last verified 2026-06-29**.

---

## Context Gate — establish before answering

You cannot answer a crypto-legal question correctly without these four facts. Ask for any that are missing before routing:

1. **Where is the entity (or team) located / to be incorporated?** (issuer + dev company + founders' residence)
2. **Who are the users / token recipients?** Especially: **are any U.S. persons in scope?** (This single fact changes everything.)
3. **What is being issued or operated?** (utility token, governance token, stablecoin, NFT, points, an app that merely *integrates* tokens, a DEX/CEX, custody, lending…)
4. **What stage?** (pre-incorporation idea, pre-launch, live with users, raising from investors)

If the user just wants to explore, say so and proceed with explicit assumptions stated up front.

---

## Routing table — load only what you need

Read this file, then open exactly the topic file you need. Do **not** preload everything (token-efficient progressive disclosure).

| If the user is… | Open |
|---|---|
| Unsure what even applies / "where do I start" | [activity-router.md](activity-router.md) — maps activity → regimes that fire |
| Launching a token, airdrop, ICO / "is my token a security?" | [token-launch.md](token-launch.md) |
| Issuing, integrating, or relying on a **stablecoin** | [stablecoins.md](stablecoins.md) |
| Choosing **where to incorporate** / foundation vs company / token-issuer SPV | [entity-structuring.md](entity-structuring.md) |
| Building **KYC/AML**, sanctions screening, geoblocking, Travel Rule, MSB/MTL | [compliance-ops.md](compliance-ops.md) |
| Wrapping a **DAO** / governance liability / treasury | [dao-governance.md](dao-governance.md) |
| Needs one **country's** rules fast | [jurisdictions.md](jurisdictions.md) (US, EU, UK, SG, UAE, CH, offshore) |
| Needs a **document scaffold** (ToS, risk disclaimer, geoblock policy, launch checklist) | [templates/](templates/) |
| Wants to **cite or verify** a claim | [sources.md](sources.md) — dated primary-source index |

Slash commands: `/legal-triage` (whole-project scan → applicable regimes + checklist) and `/token-launch-review` (structured review of a launch plan). Subagent: `crypto-counsel` for a deep, multi-file structured memo.

---

## How to answer (output contract)

Prefer **structure over prose**. A good answer looks like:

1. **Context echo** — restate the 4 Context Gate facts you are assuming.
2. **What fires** — the specific regimes/triggers that apply, each with a 📌 citation.
3. **Checklist / matrix** — concrete, ordered, with ✅ done-criteria.
4. **🛑 Counsel checkpoints** — the 1–3 decisions that genuinely need a licensed lawyer (and *why*).
5. **Sources** — the dated primary sources used, from sources.md.

Markers used throughout the skill:
- 📌 **Cite** — backed by a dated primary source in sources.md.
- ⚠️ **Fast-moving / unverified** — pending rule, transitional period, or a claim you could not cite. Tell the user to confirm.
- 🛑 **Counsel required** — a qualified attorney must make this call; do not let the user proceed on the skill's word alone.

---

## Scope and honest limits

**In scope:** issue-spotting, regime mapping, structuring options, compliance program design, document scaffolding, and jurisdiction comparison for crypto/Web3 builders — with a Solana lens (token-2022, Solana Pay, on-chain governance, common Solana launch patterns).

**Out of scope (route to a human):** drafting binding contracts for execution, tax filings, securities registration filings, litigation, anything where being wrong is expensive. The skill produces *first drafts and checklists*, not filings.

**Not covered well yet (say so):** detailed local rules outside the seven jurisdictions in jurisdictions.md; sector overlaps (gambling/gaming licensing, money-transmission in every U.S. state, healthcare/data residency). Flag these ⚠️ and route to local counsel.

> Precedence note for kit integration: `.claude/rules/*` win on code style; protocol-official skills win on that protocol's SDK usage. This skill is primary only for **legal/compliance/structuring** questions — it never overrides a security/code rule.
