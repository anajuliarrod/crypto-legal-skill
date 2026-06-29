# Stablecoins (2026)

Stablecoins are the most regulated corner of crypto in 2026 — and the most common thing Solana builders touch. **Split the question immediately**, because the two paths are worlds apart in legal weight.

## Fork 0 — Are you ISSUING or INTEGRATING?

| | **Integrating** (accept / hold / pay with USDC, PYUSD, USDG…) | **Issuing** (mint your own stablecoin) |
|---|---|---|
| Who | 95% of builders | Few; heavy regulatory project |
| Core risk | Money transmission / custody *if you hold user funds*; sanctions; reliance on issuer | You become a regulated financial institution |
| Route | [§ Integrating](#integrating) → [compliance-ops.md](compliance-ops.md) | [§ Issuing](#issuing) |

> If the user "just wants to take USDC payments" or route swaps, **do not** dump issuer regulation on them. Go to Integrating.

---

## <a id="integrating"></a>Integrating an existing stablecoin

You are not the issuer, so issuer regimes (GENIUS/MiCA) mostly don't bind you — but three things do:

1. **Do you ever hold customer funds or keys?** If yes, you may be a **money transmitter** (FinCEN MSB + state MTLs 📌 sources.md#us-aml-fincen-ofac) or need an **e-money/CASP** posture in the EU (📌 sources.md#eu-mica). Non-custodial = much lighter. → [compliance-ops.md](compliance-ops.md).
2. **Sanctions hygiene.** Screen wallets/addresses; block OFAC-listed addresses; this is strict liability for U.S. persons. → [compliance-ops.md](compliance-ops.md#sanctions).
3. **Issuer reliability & disclosure.** Pick a stablecoin whose issuer fits your users' jurisdictions, and disclose redemption/peg risk to your users (risk disclaimer template).

**Picking a stablecoin in 2026 (Solana):**

| Token | Issuer | Notes for builders |
|---|---|---|
| **USDC** | Circle | Most integrated on Solana; Circle pursuing GENIUS-permitted status; broad jurisdictional acceptance. |
| **PYUSD** | Paxos (PayPal) | NYDFS-regulated issuer; strong U.S. posture. |
| **USDG** | Paxos (Global Dollar) | Consortium model; check current availability. |
| **EURC** | Circle | Euro exposure; consider MiCA EMT status. ⚠️ verify current MiCA authorization. |

⚠️ Issuer regulatory status moves — verify each against the issuer's latest disclosures and #us-stablecoins-genius / #eu-mica before relying on it. Avoid building core flows on an algorithmic/under-collateralized stablecoin without disclosing the risk.

---

## <a id="issuing"></a>Issuing your own stablecoin

This is a regulated-financial-institution project. 🛑 **Counsel + likely a license in every target market.** The skill's job: map the regimes and the issue-where decision so the user walks into counsel prepared.

### United States — GENIUS Act 📌 sources.md#us-stablecoins-genius
- **Hard rule:** only a **permitted payment stablecoin issuer** may issue a payment stablecoin in the U.S.; digital-asset service providers may not offer/sell one to U.S. persons unless the issuer is permitted (or a qualifying foreign issuer). Enacted 2025-07-18.
- **Requirements:** 1:1 high-quality liquid reserves; redemption rights; **no interest/yield paid to holders**; AML + sanctions program.
- **Status:** Implementing rules **proposed, not final** (OCC NPRM 2026-03-02; FDIC; FinCEN/OFAC). ⚠️ Effective ≈ earlier of 2027-01-18 or 120 days after final regs — so the *exact* application process is still settling. Track before committing.
- **Practical read:** issuing a USD stablecoin *to U.S. persons* without becoming a permitted issuer is off the table. Either pursue permitted-issuer status (bank/OCC path or state-qualified path) or **geoblock U.S. persons credibly**.

### European Union — MiCA EMT / ART 📌 sources.md#eu-mica
- **EMT** (single fiat peg, e.g. a "EUR coin") ≈ e-money: needs e-money/EMT authorization, **redemption at par**, reserve & disclosure rules.
- **ART** (basket/asset-referenced): heavier; reserve, governance, whitepaper, and **significant-token** caps/oversight by EBA/ECB.
- Selling into the EU also implicates the **CASP** distribution regime (transitional period ends **2026-07-01**).

### Singapore — MAS Single-Currency Stablecoin 📌 sources.md#singapore-mas
- MAS-regulated **SCS** issuers: full reserves, **redemption at par**, capital requirements, **quarterly** reserve audits. Strong "quality mark" but real supervision.

### United Kingdom — FCA qualifying stablecoin 📌 sources.md#uk-fca
- Issuing a **qualifying stablecoin** from a UK establishment becomes a **regulated activity** under the substantive regime (live **2027-10-25**; application window opens 2026-09-30). Custody of the coin is separately regulated. ⚠️ Final Policy Statement expected summer 2026.

### Comparison — issuer duties at a glance

| Duty | US (GENIUS) | EU (MiCA EMT) | SG (MAS SCS) | UK (FCA) |
|---|---|---|---|---|
| License/permission to issue | ✅ permitted issuer | ✅ EMT auth | ✅ MAS license | ✅ regulated activity |
| 1:1 quality reserves | ✅ | ✅ | ✅ | ✅ (proposed) |
| Redemption at par | ✅ | ✅ | ✅ | ✅ (proposed) |
| Interest/yield to holders | ❌ prohibited | restricted | restricted | ⚠️ TBD |
| Reserve audit/reporting | ✅ weekly/quarterly | ✅ | ✅ quarterly | ⚠️ TBD |
| Status | rules proposed ⚠️ | in force | in force | live 2027-10-25 ⚠️ |

### Yield-bearing & algorithmic stablecoins ⚠️
- GENIUS prohibits the **issuer** paying yield to holders; "yield" is migrating to *separate, disclosed* products (often securities themselves) or to non-U.S. structures. Don't assume a yield wrapper escapes securities law — it usually doesn't. 🛑 counsel.
- Algorithmic / under-collateralized designs face the harshest scrutiny post-2022. Treat as high-risk; disclose mechanism and failure modes explicitly.

### Solana implementation notes
- **Token-2022 extensions** are useful for a compliant issuance: `confidential transfer` (privacy with auditability), `transfer hook` (enforce allowlist/sanctions screening at transfer), `default account state` (freeze-by-default / KYC-gated), `permanent delegate` (issuer clawback for court orders). See the kit's `token-2022.md` for mechanics — pair legal requirement → extension.
- A transfer hook enforcing an **OFAC/sanctions allowlist** is a common bridge between #us-aml-fincen-ofac duties and on-chain enforcement. 🛑 design with counsel so it actually satisfies the obligation.

### 🛑 Counsel checkpoints (issuing)
1. Which markets you'll serve and therefore which licenses you must hold (or whether you geoblock).
2. Reserve structure, custodian, and audit cadence.
3. Whether any yield/feature turns the coin (or a companion product) into a security.
4. The on-chain enforcement design (freeze/clawback/hook) and its legal sufficiency.

**Next 3 actions for an issuer:** (1) pick target markets → derive license list; (2) decide issuer jurisdiction + structure ([entity-structuring.md](entity-structuring.md)); (3) book counsel for the reserve/redemption model and a securities read on any yield feature.
