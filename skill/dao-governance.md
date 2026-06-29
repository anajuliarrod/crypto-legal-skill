# DAO Governance & Legal Wrappers

The default legal status of an unwrapped DAO is the dangerous part: a group of people pursuing a common venture for profit, with no entity, can be treated as a **general partnership** — meaning **every active member can be personally, jointly liable** for the DAO's debts and obligations. (U.S. enforcement has treated token-governance participants as liable members.) A legal wrapper buys limited liability, the ability to contract, hold assets, pay taxes, and sue/be sued. 📌 sources.md#dao-wrappers

## When you need a wrapper
- Treasury holds meaningful value, signs contracts, pays contributors, or grants funds.
- Governance makes decisions with real-world legal effect.
- Members/contributors want liability protection (they should).
- You're raising, partnering, or touching fiat/banking.

A tiny social DAO with no treasury and no external dealings can sometimes wait — but the moment money and contracts appear, the partnership-liability risk is real.

## Wrapper options

| Wrapper | Liability | Governance fit | Notes | 📌 |
|---|---|---|---|---|
| **Wyoming DAO LLC** | LLC limited liability | Smart-contract governance recognized in operating agreement | U.S. nexus; best-known U.S. DAO statute | sources.md#dao-wrappers |
| **Wyoming DUNA** | Members + token holders shielded | Nonprofit, member-run | Statute enacted 2024-03; **requires ≥100 members**; nonprofit purpose; can contract/hold/sue | sources.md#dao-wrappers |
| **Marshall Islands DAO LLC** | Limited liability, "ownerless" | On-chain governance = entity governance | Global recognition; popular for public-benefit/grant/protocol DAOs | sources.md#dao-wrappers |
| **Swiss association/foundation** | Limited | Doxxed governance body | Higher substance/cost; credible for large treasuries | sources.md#switzerland-finma |
| **Cayman Foundation** | Ownerless | Foundation stewards protocol | Pairs with token issuance (see entity-structuring) | sources.md#offshore-structuring |

### Quick pick
- **U.S.-centric community, nonprofit purpose, ≥100 members** → Wyoming **DUNA**.
- **U.S. nexus, want LLC mechanics** → Wyoming **DAO LLC**.
- **Decentralized protocol / grant DAO, global** → **Marshall Islands DAO LLC**.
- **Token issuance + treasury stewardship** → **Cayman Foundation** ([entity-structuring.md](entity-structuring.md)).

⚠️ Each has substance, membership, and reporting conditions — confirm current requirements before filing.

## Contributors & employment
- Anonymous/pseudonymous contributors complicate employment law, IP assignment, and tax withholding. Get **IP assignment** in writing even from pseudonymous contributors (a DAO that doesn't own its code is fragile).
- Misclassifying employees as contractors creates liability in many jurisdictions. 🛑
- Token-based compensation is a **taxable event** for the contributor and a reporting matter for the entity. ⚠️

## Treasury
- Use a controlled **multisig** (e.g., Squads on Solana) with documented spending authority tied to governance outcomes — the legal wrapper should say who may move funds and how.
- DAO **treasury taxation is unsettled** in many jurisdictions (is the treasury taxable? on receipt? on conversion?). ⚠️ 🛑 tax counsel — this is a common landmine.
- Grants/payments out should run the same sanctions screening as any disbursement ([compliance-ops.md](compliance-ops.md#sanctions)).

## Governance mechanics (legal lens)
- Document what on-chain votes **legally bind** (the operating agreement/charter should map proposals → authority). On-chain ≠ automatically legally binding unless the wrapper says so.
- Beware governance that re-centralizes control in a few signers — it undercuts both the decentralization/securities posture ([token-launch.md](token-launch.md)) and the liability shield.

## 🛑 Counsel checkpoints
1. Choosing and filing the wrapper (membership/substance conditions).
2. Treasury tax treatment in the relevant jurisdiction(s).
3. Contributor classification + IP assignment.
4. Mapping on-chain governance to legally binding authority.
