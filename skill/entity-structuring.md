# Entity Structuring — where and how to incorporate

Crypto projects rarely live in one company. The 2026 norm is a **function-segregated structure** that ring-fences legal risk and supports a credible decentralization story. 📌 sources.md#offshore-structuring

## The three (or four) standard roles

| Role | What it does | Typical home |
|---|---|---|
| **Foundation / Issuer** | Issues the token, stewards the protocol/DAO, holds the treasury "for the ecosystem" | Cayman Foundation, Marshall Islands DAO LLC, Panama, Swiss Stiftung |
| **DevCo / LabsCo** | Writes the code, employs the team, takes VC equity | Delaware C-corp (US teams), or local operating co + offshore |
| **Operating / Treasury** | Banking, payroll, vendor contracts, treasury management | UAE (DMCC/IFZA), Switzerland AG, local |
| **Top SPV (optional)** | Ownership/succession/family-office layer | DIFC Prescribed Company, ADGM SPV |

**Why separate?** (1) The DevCo's equity/VC cap table stays clean and separate from the token; (2) the Foundation can credibly *not be controlled* by the team (decentralization narrative for securities posture — see [token-launch.md](token-launch.md)); (3) liability and tax are ring-fenced per function; (4) the issuer can be somewhere crypto-legible while the team lives anywhere.

## Common patterns in 2026

### Pattern A — VC-backed US team
**Delaware C-corp (DevCo)** for the cap table + **Cayman Foundation + BVI issuer** ("orphan/catamaran") for the token. 📌 sources.md#offshore-structuring
- Cayman Foundation owns the BVI BC; no shareholders ⇒ "ownerless", aligns with decentralization.
- VCs are familiar with it; clean SAFT/equity split.
- 🛑 U.S. founders: watch CFC/PFIC and the risk the IRS/SEC treats the offshore entity as a controlled alter-ego if the team really runs it.

### Pattern B — DAO-native
**Marshall Islands DAO LLC** (statutory DAO recognition, ownerless nonprofit) 📌 sources.md#dao-wrappers — popular for public-benefit/grant DAOs and protocols that want on-chain governance recognized as the entity's governance. See [dao-governance.md](dao-governance.md).

### Pattern C — Substance-forward / institutional
**Swiss foundation (Stiftung) + AG** 📌 sources.md#switzerland-finma, or **UAE hybrid** (offshore issuer + UAE operating/treasury + DIFC/ADGM SPV) 📌 sources.md#uae-vara. Higher cost and substance, but credible banking, regulator relationships, and a real office — good for funds, large treasuries, and licensed activity (VARA).

### Pattern D — Panama multi-entity
Panamanian entities mapped per function (governance / ops / issuance / dev), combinable with BVI/Cayman to ring-fence each function. 📌 sources.md#offshore-structuring

## Selection matrix

| Factor | Cayman Fdn + BVI | Marshall Is. DAO LLC | Panama | Switzerland | UAE hybrid |
|---|---|---|---|---|---|
| VC familiarity | ★★★ | ★★ | ★★ | ★★★ | ★★ |
| DAO/on-chain gov recognition | ★★ | ★★★ | ★★ | ★★ | ★★ |
| Setup cost / speed | $$ / med | $ / fast | $$ / med | $$$ / slow | $$$ / med |
| Substance required | low–med | low | low–med | high | med–high |
| Banking access | med | med | med | high | high |
| Best for | token + VC round | decentralized protocol/DAO | function ring-fencing | institutional / licensed | ops + treasury + license |

⚠️ This matrix is a starting heuristic, not advice — the right answer depends on user locations, investor demands, and the specific activity. Confirm current substance/ES rules per jurisdiction (they tighten regularly).

## Decision drivers (ask these)
1. **Where are users / are U.S. persons in scope?** Drives whether you need a licensed posture or a geoblock.
2. **VC expectations?** Most want Delaware DevCo + Cayman Foundation.
3. **Is on-chain governance the legal governance?** → DAO wrapper (Marshall Islands / Wyoming).
4. **Licensed activity** (custody, exchange, stablecoin issuance)? → substance jurisdiction (CH, UAE, EU) near the license.
5. **Founder tax residence** — U.S./EU founders carry CFC/PFIC/exit-tax baggage. 🛑 tax counsel.

## Cross-cutting flags
- **Economic substance (ES):** Cayman/BVI/etc. require real substance for certain activities; a pure brass-plate can be disregarded. ⚠️
- **Beneficial ownership / KYB:** registries and bank onboarding will want UBOs; structuring is fine, *hiding* ownership from regulators is not (guardrail rule 5).
- **Permanent establishment:** running the "offshore" entity from your home country can create taxable presence there. 🛑 tax counsel.
- **Banking is the real bottleneck** in 2026 — pick structures your bank/EMI will actually onboard.

## 🛑 Counsel checkpoints
1. Final entity map + who controls the Foundation (decentralization + tax depend on it).
2. Founder personal tax (CFC/PFIC/PE) before any token allocation.
3. ES/substance plan per entity.
4. The intercompany IP/services agreements (DevCo ↔ Foundation).

→ For DAO-specific wrappers and contributor liability: [dao-governance.md](dao-governance.md). For the AML/KYC posture the chosen entity must run: [compliance-ops.md](compliance-ops.md).
