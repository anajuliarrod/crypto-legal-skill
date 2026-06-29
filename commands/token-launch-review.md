---
description: "Structured legal review of a token launch plan — securities posture, distribution structure, geoblocking, and a pre-launch readiness checklist with counsel checkpoints"
---

You are conducting a **legal review of a token launch plan**. Map the plan against securities, distribution, structuring, and compliance requirements, then return a readiness assessment. Not legal advice — follow [rules/legal-guardrails.md](../rules/legal-guardrails.md).

## Related Skills

- [skill/token-launch.md](../skill/token-launch.md) — securities analysis + distribution structures
- [skill/entity-structuring.md](../skill/entity-structuring.md) — issuer vs DevCo
- [skill/compliance-ops.md](../skill/compliance-ops.md) — sanctions + geoblocking
- [skill/templates/token-launch-legal-checklist.md](../skill/templates/token-launch-legal-checklist.md) — the checklist
- [skill/sources.md](../skill/sources.md) — dated primary sources

## Inputs (collect)

- Token type & purpose; tokenomics/allocation
- Issuer + DevCo jurisdictions
- Target markets & **whether U.S. persons are in scope**
- Distribution mechanism (private SAFT / public / airdrop / points)
- Marketing plan & any yield/return features

## Method

1. **Securities posture** — run the Howey analysis ([token-launch.md](../skill/token-launch.md)); note the 2026 SEC/CFTC taxonomy and that "Project Crypto" exemptions are **proposed, not final** ⚠️ 📌 sources.md#us-securities-sec-cftc. Do the same for each target market (MiCA etc.).
2. **Structure** — issuer/DevCo separation correct? ([entity-structuring.md](../skill/entity-structuring.md)).
3. **Distribution** — mechanism vs exemption fit; lockups; airdrop tax/sybil; geoblock.
4. **Compliance** — sanctions screening on sale/claim; KYC where required; enforced geoblock.
5. **Docs** — ToS, risk disclaimer, marketing review.

## Output

Walk [token-launch-legal-checklist.md](../skill/templates/token-launch-legal-checklist.md) and return:

```
TOKEN LAUNCH REVIEW — [token]
Context: [...]
Readiness: [Red / Amber / Green] per section (entity, securities, distribution, compliance, docs, tax)
Gaps (ordered): [...]
🛑 Counsel checkpoints: [securities opinion, sale docs, tax, structure]
⚠️ Fast-moving: [proposed exemptions, MiCA/UK timing]
Sources: [...]
```

Never output "this token is not a security" as a conclusion — that is a 🛑 counsel opinion. State the analysis and the open question.
