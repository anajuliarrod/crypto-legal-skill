# Jurisdictions — quick reference (2026)

Per-country cards for fast lookup. Each is a pointer to the deep topic files + primary sources, not a substitute for local counsel. Coverage = US, EU, UK, Singapore, UAE, Switzerland, and the main offshore issuer homes. ⚠️ Everything here is dated to **2026-06-29** — re-verify against sources.md.

## 🇺🇸 United States
- **Regulators:** SEC (securities), CFTC (commodities/derivatives), FinCEN (AML/MSB), OFAC (sanctions), state regulators (MTL/BitLicense), OCC/FDIC (stablecoin issuers).
- **2026 state of play:** SEC/CFTC joint taxonomy + "Project Crypto" exemptions **proposed** (Howey still governs) 📌 #us-securities-sec-cftc; **GENIUS Act** stablecoin rules being implemented 📌 #us-stablecoins-genius; **CLARITY Act** market-structure bill advancing in the Senate but **not law** 📌 #us-market-structure-clarity.
- **Trap:** "U.S. persons in scope" pulls in securities + MSB + strict-liability OFAC. Most non-US projects **geoblock** the U.S. until an exemption is real.
- **Route:** [token-launch.md](token-launch.md), [stablecoins.md](stablecoins.md), [compliance-ops.md](compliance-ops.md).

## 🇪🇺 European Union (MiCA)
- **Regulators:** ESMA + national competent authorities; EBA/ECB for significant stablecoins.
- **2026 state of play:** MiCA in force; **CASP transitional period ends 2026-07-01** — be authorized or stop. Stablecoins split into **EMT** and **ART** with reserve/redemption/whitepaper duties. 📌 #eu-mica
- **Trap:** offering tokens to the EU public triggers a **MiCA whitepaper**; CASP authorization is required to provide services and gives passporting.
- **Route:** [stablecoins.md](stablecoins.md), [token-launch.md](token-launch.md#eu-posture).

## 🇬🇧 United Kingdom
- **Regulator:** FCA.
- **2026 state of play:** FSMA (Cryptoassets) Regulations **made 2026-02-04**; substantive regime **live 2027-10-25**; **authorization window 2026-09-30 → 2027-02-28**; **stablecoin issuance + custody** become regulated activities; **financial-promotions** rules already apply. Policy Statement expected summer 2026. 📌 #uk-fca
- **Route:** [stablecoins.md](stablecoins.md), [compliance-ops.md](compliance-ops.md).

## 🇸🇬 Singapore
- **Regulator:** MAS.
- **2026 state of play:** **DTSP regime in force since 2025-06-30, no transition** — Singapore-based entities serving only overseas customers must be licensed, but MAS **generally won't grant** such licenses, so offshore-only operations had to cease. Domestic activity under the Payment Services Act; **SCS stablecoin** issuers need full reserves, redemption at par, quarterly audits. 📌 #singapore-mas
- **Trap:** basing a token entity in Singapore to serve a global/offshore audience is now hard — reconsider the structure.
- **Route:** [entity-structuring.md](entity-structuring.md), [compliance-ops.md](compliance-ops.md).

## 🇦🇪 United Arab Emirates
- **Regulators:** VARA (Dubai), FSRA (ADGM), DFSA (DIFC).
- **2026 state of play:** activity-licensed virtual-asset regime; common as the **operating/treasury layer** (DMCC/IFZA + DIFC/ADGM SPV) paired with an offshore issuer. 📌 #uae-vara
- **Route:** [entity-structuring.md](entity-structuring.md). ⚠️ Sparse primary coverage here — confirm with UAE counsel.

## 🇨🇭 Switzerland
- **Regulator:** FINMA.
- **2026 state of play:** payment/utility/asset **token taxonomy** (asset tokens = securities); **DLT Act** trading venues + ledger-based securities; credible **Stiftung + AG** model for serious, doxxed projects. 📌 #switzerland-finma
- **Route:** [entity-structuring.md](entity-structuring.md), [token-launch.md](token-launch.md).

## 🏝️ Offshore issuer homes (Cayman / BVI / Marshall Islands / Panama)
- **Use:** token issuance + foundation/DAO stewardship, ring-fenced from the DevCo. 📌 #offshore-structuring / #dao-wrappers
- **Cayman Foundation + BVI** ("orphan/catamaran"), **Marshall Islands DAO LLC** (statutory DAO), **Panama** (function ring-fencing). Watch **economic substance** and banking access.
- **Route:** [entity-structuring.md](entity-structuring.md), [dao-governance.md](dao-governance.md).

## Summary matrix

| | Token offering | Stablecoin issuance | Common role for builders |
|---|---|---|---|
| US | Howey + (proposed) exemptions ⚠️ | GENIUS permitted-issuer | DevCo (Delaware); often geoblocked for offerings |
| EU | MiCA whitepaper | EMT/ART auth | Market access via CASP |
| UK | promotions rules | FCA regulated activity (2027) | Market access |
| SG | PSA/securities | MAS SCS license | Harder as offshore base now |
| UAE | activity license | VARA | Ops / treasury / licensed activity |
| CH | FINMA taxonomy | asset-token rules | Institutional / foundation |
| Offshore | issuer SPV | (not a retail-US route) | Token issuer + foundation/DAO |

## "I want to launch a token and avoid U.S. securities exposure" — the usual shape
1. **Issuer offshore** (Cayman Foundation + BVI, or Marshall Islands DAO LLC).
2. **DevCo** wherever the team is (often Delaware for VC).
3. **Geoblock U.S. persons** credibly ([compliance-ops.md](compliance-ops.md#geoblocking)) until a U.S. exemption is real.
4. **MiCA whitepaper** if touching the EU; check each target market.
5. 🛑 securities opinion per target market before launch.

⚠️ This is the *common pattern*, not a recommendation for your facts. Structuring to legitimately reduce exposure is fine; faking decentralization or hiding U.S. users to dodge the law is not (guardrail rule 5).
