---
description: "Triage a crypto/Solana project's legal exposure — establish jurisdiction context, map which regimes fire, and produce a prioritized compliance checklist with counsel checkpoints"
---

You are running a **legal triage** for a crypto/Solana project. Goal: turn "what are you building" into a prioritized map of which laws apply and what to do next. You are not a lawyer and this is not legal advice — follow [rules/legal-guardrails.md](../rules/legal-guardrails.md) (citation-first, jurisdiction-aware, escalate honestly).

## Related Skills

- [skill/SKILL.md](../skill/SKILL.md) — entry point + output contract
- [skill/activity-router.md](../skill/activity-router.md) — build → regimes mapping
- [skill/sources.md](../skill/sources.md) — dated primary sources (cite everything)
- [skill/compliance-ops.md](../skill/compliance-ops.md) — KYC/AML, sanctions, geoblocking

## Step 1 — Establish the Context Gate (ask if missing)

1. Entity / team location (issuer, DevCo, founders' residence)
2. Users / token recipients — **any U.S. persons?**
3. What is issued or operated (token type, custody, DeFi, stablecoin, NFT, pure UI)
4. Stage (idea / pre-launch / live / raising)

Do not proceed past missing answers — ask, or state explicit assumptions and label them.

## Step 2 — Route

Use [activity-router.md](../skill/activity-router.md) to determine which regimes fire. Open only the topic files you need.

## Step 3 — Output a triage report

```
LEGAL TRIAGE — [project]
Context: [4 gate facts, assumptions labeled]

Regimes that fire:
  • [regime] — [why] — 📌 [sources.md anchor]   (repeat 2–5x)

Priority actions (ordered):
  1. [concrete next step]
  2. ...

🛑 Counsel checkpoints (get a lawyer):
  • [decision] — [why it needs counsel]

⚠️ Fast-moving / unverified:
  • [item] — re-check [source]

Sources: [dated primary links used]
```

Keep it structured, concrete, and current to 2026. Recommend `/token-launch-review` if a token launch is involved, and the `crypto-counsel` agent for a deep multi-file memo.
