# Compliance Operations — KYC/AML, Sanctions, Geoblocking

What a live product actually has to run. **Size it to the activity:** a non-custodial interface needs sanctions hygiene + disclaimers; a custodial on-ramp needs a full AML program and likely licenses. Don't over- or under-build. 📌 sources.md#us-aml-fincen-ofac

## Do you even trigger money-transmission / AML obligations?

| You… | Likely posture |
|---|---|
| Never hold user funds or keys (pure non-custodial UI, self-custody) | **Lightest** — sanctions screening, disclaimers, promotions rules. FinCEN 2019 guidance: an anonymizing software provider / non-custodial dev is generally **not** an MSB. ⚠️ fact-specific. |
| Hold/transmit user funds, run an order book, custody keys | **Money transmitter** — FinCEN MSB registration + AML program + state **MTLs** (incl. NY **BitLicense**), or non-US equivalents (MiCA CASP, MAS, VARA). 🛑 |
| Issue a stablecoin | Full program + issuer license — see [stablecoins.md](stablecoins.md). |
| Operate in/into the EU, UK, SG, UAE | CASP (EU) / FCA (UK) / DTSP (SG) / VARA (UAE) — see [jurisdictions.md](jurisdictions.md). |

> The "non-custodial ⇒ not a money transmitter" line is real but **narrow and fact-specific** — adding custody, admin keys you can use to move funds, or fiat handling can flip it. 🛑 confirm.

## AML program — the components (if you trigger it)
A compliant program (BSA-style; MiCA/MAS analogues are similar) has:
1. **CIP / KYC** — verify identity at onboarding.
2. **CDD / EDD** — risk-rate customers; enhanced diligence on high-risk (PEPs, high-risk jurisdictions).
3. **Sanctions screening** — at onboarding and ongoing (see below).
4. **Transaction monitoring** — detect structuring, mixing, suspicious patterns.
5. **SAR/STR filing** — report suspicious activity to the FIU.
6. **Travel Rule** — transmit originator/beneficiary info for transfers ≥ threshold (FinCEN **$3,000**; FATF Rec. 16 globally). 📌 sources.md#us-aml-fincen-ofac
7. **Recordkeeping + independent testing + a named compliance officer + training.**

## <a id="sanctions"></a>Sanctions / OFAC — strict liability, treat as non-negotiable
- U.S. persons (and often anyone touching U.S. dollars/rails) must not transact with **OFAC-sanctioned** persons, addresses, or **jurisdictions** (e.g., comprehensively sanctioned countries). **Liability is strict** — intent is not required. 📌 sources.md#us-aml-fincen-ofac
- **On-chain:** screen wallet addresses against OFAC SDN listings (incl. sanctioned smart-contract addresses); block matches. Post-Tornado-Cash, the perimeter around mixing/sanctioned contracts is contested and shifting ⚠️ — get counsel before integrating anything adjacent.
- **On Solana:** a Token-2022 `transfer hook` enforcing an allow/deny list can operationalize screening at the protocol level. 🛑 design with counsel to ensure it actually discharges the obligation.

## <a id="geoblocking"></a>Geoblocking — doing it credibly
A geoblock only protects you if it's **real and enforced**, not a banner. Layered controls:
- ✅ **IP geoblocking** of restricted jurisdictions (and known VPN egress where feasible).
- ✅ **Wallet/address screening** against sanctions lists at connect and transact.
- ✅ **ToS** that prohibits restricted persons + **attestation** at entry.
- ✅ **KYC** where the activity/exemption requires identifying users.
- ✅ **Enforcement & logging** — actually refuse service and keep records; don't quietly serve blocked users.
- **Restricted set** usually = U.S. persons (until a securities exemption is real), OFAC-comprehensive jurisdictions, and any market where you lack a required license.
- Template: [templates/geoblocking-policy.md](templates/geoblocking-policy.md). ⚠️ A geoblock you don't enforce is worse than none — it shows you knew.

## Frontend / marketing legal hygiene (everyone)
- **Terms of Service + Privacy Policy** published before users transact ([templates/terms-of-service-skeleton.md](templates/terms-of-service-skeleton.md)).
- **Risk disclaimers** on anything touching tokens/yield/trading ([templates/risk-disclaimer.md](templates/risk-disclaimer.md)); never imply investment advice or guaranteed returns.
- **Financial-promotions rules**: the **UK** (since 2023-10-08) and **EU/MiCA** restrict how you market crypto to consumers (clear-and-fair, risk warnings, no inducements). 📌 sources.md#uk-fca / #eu-mica.
- **Data privacy**: EU/UK users ⇒ **GDPR/UK-GDPR** (lawful basis, DPA, data-subject rights, breach notice); wallet addresses + KYC data are personal data. ⚠️
- **No unlicensed advice**: don't let UI copy ("best yield", "you should ape") become investment advice/solicitation.

## Sizing guide (don't overbuild)
| Product | Minimum viable compliance |
|---|---|
| Non-custodial swap UI (geoblocked) | Sanctions address screening, geoblock, ToS + risk disclaimer, privacy policy |
| Wallet (self-custody) | Sanctions hygiene, disclaimers, privacy; no MSB if truly non-custodial |
| On-ramp / custodial / CEX | Full AML program + licenses (MSB+MTL / CASP / VARA), audits 🛑 |
| Token issuer | All of the above + securities + issuer rules |

## 🛑 Counsel checkpoints
1. The money-transmission / MSB / MTL determination for your exact flows.
2. Sanctions integration design (esp. anything near mixers/sanctioned contracts).
3. Whether your geoblock is legally sufficient for the exemption you're relying on.
4. GDPR posture if you have EU/UK users.
