# Primary-Source Index

**Last verified: 2026-06-29.** Crypto law moves monthly. Every topic file cites an anchor in this file (e.g. `📌 sources.md#us-stablecoins-genius`). Before relying on any claim, **open the primary source and confirm it is still current** — pending rules and transitional deadlines change.

How to read each entry: **Status** (in force / proposed / pending), **what it is**, **key facts the skill relies on**, and **primary links** (regulator/legislature first, reputable law-firm analysis second).

---

## United States

### #us-stablecoins-genius — GENIUS Act (payment stablecoins)
- **Status (2026-06-29):** Enacted; implementing rules **proposed, not yet final**. ⚠️ Effective date = earlier of 18 months after enactment (≈2027-01-18) or 120 days after final regs.
- **What:** Guiding and Establishing National Innovation for U.S. Stablecoins Act. Enacted **2025-07-18**. Generally **prohibits anyone other than a "permitted payment stablecoin issuer" from issuing a payment stablecoin in the U.S.**, and prohibits digital-asset service providers from offering/selling a payment stablecoin to U.S. persons unless the issuer is permitted (or a qualifying foreign issuer). Requires 1:1 high-quality liquid reserves, redemption rights, **no interest/yield to holders**, and AML/sanctions programs.
- **Implementation:** OCC NPRM published **2026-03-02** (comments closed 2026-05-01); FDIC NPRM **2026-04-10**; FinCEN/OFAC joint NPRM on BSA/AML/sanctions (comments closed 2026-06-09). Agencies must **issue regulations by 2026-07-18** (one year post-enactment); as of 2026-06-29 the rules remain **proposed, not final** — re-check imminently.
- **Links:**
  - OCC NPRM bulletin — https://occ.treas.gov/news-issuances/bulletins/2026/bulletin-2026-3.html
  - OCC reporting forms bulletin — https://www.occ.gov/news-issuances/bulletins/2026/bulletin-2026-24.html
  - OCC AML/sanctions NPRM — https://www.occ.gov/news-issuances/bulletins/2026/bulletin-2026-28.html
  - Federal Register (OCC implementation) — https://www.federalregister.gov/documents/2026/03/02/2026-04089/
  - Federal Register (FDIC issuers) — https://www.federalregister.gov/documents/2026/04/10/2026-06974/
  - Analysis: Sullivan & Cromwell — https://www.sullcrom.com/insights/memo/2026/March/OCC-Proposes-Regulations-Implement-GENIUS-Act
  - Analysis: Morgan Lewis — https://www.morganlewis.com/pubs/2026/04/genius-act-implementation-key-proposals-and-what-comes-next

### #us-market-structure-clarity — CLARITY Act (digital asset market structure)
- **Status (2026-06-29):** **NOT law.** House-passed (H.R.3633, 119th Cong.). Senate Banking advanced it **15-9 on 2026-05-14**; placed on Senate Legislative Calendar (Calendar No. 423) **2026-06-01**; **no floor vote yet** as of 2026-06-29. Needs **60 Senate votes** (~7 Democrats); an ethics dispute stalled talks (June 2026), and analysts flag the **August 2026 recess** as the practical deadline. ⚠️ Treat as *direction of travel*, not current law.
- **What:** Would sort digital assets into **digital commodity** (CFTC spot-market jurisdiction), **investment-contract assets** (SEC), and **stablecoins** (separate category). Notably, assets on sufficiently decentralized networks — reportedly **including BTC, ETH, and SOL under current conditions** — would be **CFTC-regulated digital commodities** (relevant for Solana-native projects assessing their base-layer token's status, distinct from their own issued token). 
- **Links:**
  - Bill text — https://www.congress.gov/bill/119th-congress/house-bill/3633/text
  - Senate Banking section-by-section — https://www.banking.senate.gov/imo/media/doc/section-by-section.pdf
  - Latham US Crypto Policy Tracker — https://www.lw.com/en/us-crypto-policy-tracker/legislative-developments
  - Davis Wright Tremaine (Senate Banking markup) — https://www.dwt.com/blogs/financial-services-law-advisor/2026/05/senate-banking-crypto-market-structure-bill

### #us-securities-sec-cftc — SEC/CFTC crypto taxonomy & "Project Crypto" safe harbor
- **Status (2026-06-29):** Joint interpretive guidance **issued 2026-03-17**; "Regulation Crypto Assets" exemptive/safe-harbor rule **proposed, under White House/OIRA review — not final.** ⚠️
- **What:** SEC + CFTC joint release clarifying when a crypto asset is an investment contract under **Howey**, with a taxonomy (Digital Commodities, Digital Collectibles/NFTs, Digital Tools, Tokenized Securities). Proposed **Regulation Crypto Assets** would add: a **Startup Exemption** (raise ≤ $5M with whitepaper-style disclosure, up to ~4 years), a **Fundraising Exemption**, and an **Investment Contract Safe Harbor** (rules-based test for when a network is sufficiently decentralized).
- **Links:**
  - SEC press release 2026-30 — https://www.sec.gov/newsroom/press-releases/2026-30-sec-clarifies-application-federal-securities-laws-crypto-assets
  - Atkins "Token Safe Harbor" remarks (2026-03-17) — https://www.sec.gov/newsroom/speeches-statements/atkins-remarks-regulation-crypto-assets-031726
  - Atkins "Inside Project Crypto" (2025-11-12) — https://www.sec.gov/newsroom/speeches-statements/atkins-111225-secs-approach-digital-assets-inside-project-crypto
  - Analysis: Sidley — https://www.sidley.com/en/insights/newsupdates/2025/11/breaking-down-project-crypto-sec-chairman-atkins-outlines-next-phase-of-digital-asset-oversight
- **Foundational (still law regardless of the above):** *SEC v. W.J. Howey Co.*, 328 U.S. 293 (1946); SEC "Framework for 'Investment Contract' Analysis of Digital Assets" (2019). The Howey test is the durable backstop — cite it when the new exemptions don't apply.

### #us-aml-fincen-ofac — BSA/AML, money transmission, sanctions
- **Status:** In force. ⚠️ Stablecoin-specific AML rules pending (see #us-stablecoins-genius).
- **What:** A crypto business may be a **Money Services Business (MSB)** under FinCEN (31 CFR 1010.100) if it transmits value, triggering federal registration + AML program + Travel Rule. **State money-transmitter licenses (MTLs)** may *also* apply (≈ up to 50 regimes; NY BitLicense is the strictest). **OFAC** sanctions apply strictly-liable to all U.S. persons and anyone causing a U.S. person to deal with a sanctioned party/address. FinCEN Travel Rule threshold: **$3,000** (proposed lowering has been floated). FATF Travel Rule (Recommendation 16) is the global analogue.
- **Links:**
  - FinCEN MSB guidance (FIN-2019-G001, CVC) — https://www.fincen.gov/resources/statutes-regulations/guidance/application-fincens-regulations-certain-business-models
  - OFAC sanctions programs — https://ofac.treasury.gov/sanctions-programs-and-country-information
  - FATF Recommendation 16 / VASP guidance — https://www.fatf-gafi.org/en/topics/virtual-assets.html

---

## European Union

### #eu-mica — Markets in Crypto-Assets Regulation
- **Status (2026-06-29):** In force. **CASP transitional ("grandfathering") period ends 2026-07-01** — entities relying on national regimes must be MiCA-authorized or stop. Stablecoin (ART/EMT) rules applied **2024-06-30**; full CASP authorization since **2024-12-30**.
- **What:** EU-wide regime. **CASP** authorization (with passporting) for exchange/custody/advice/brokerage. Two stablecoin classes: **EMT** (e-money token, pegged to one fiat) and **ART** (asset-referenced token). Issuers face reserve, redemption-at-par, and whitepaper/disclosure duties; significant tokens get ECB/EBA oversight and issuance caps. A pure on-chain protocol that is genuinely decentralized may fall outside CASP — ⚠️ fact-specific, get EU counsel.
- **Links:**
  - ESMA MiCA hub — https://www.esma.europa.eu/esmas-activities/digital-finance-and-innovation/markets-crypto-assets-regulation-mica
  - Regulation (EU) 2023/1114 (MiCA text, EUR-Lex) — https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32023R1114
  - Helms CASP licence tracker — https://helmsadvisory.com/casp-licence-tracker

---

## United Kingdom

### #uk-fca — FCA regulated cryptoasset activities regime
- **Status (2026-06-29):** **Preparatory powers in force; substantive regime live 2027-10-25** ⚠️. FSMA (Cryptoassets) Regulations 2026 made **2026-02-04**. **Authorization application window: 2026-09-30 → 2027-02-28.** FCA Policy Statement expected **summer 2026**.
- **What:** Creates regulated activities for **issuing a qualifying stablecoin** and **safeguarding (custody of) qualifying cryptoassets**, among others. Custody trigger: holding client crypto > 24h or ability to override client authority ⇒ regulated custodian. Separate **financial-promotions** regime already applies to crypto marketing to UK consumers (since 2023-10-08).
- **Links:**
  - FCA new crypto regime hub — https://www.fca.org.uk/firms/new-regime-cryptoasset-regulation
  - FCA CP25/14 (stablecoin issuance & custody) — https://www.fca.org.uk/publications/consultation-papers/cp25-14-stablecoin-issuance-cryptoasset-custody
  - Latham UK Cryptoasset Tracker — https://www.lw.com/en/uk-cryptoasset-regulatory-tracker

---

## Singapore

### #singapore-mas — MAS Digital Token Service Provider (DTSP) regime & stablecoins
- **Status (2026-06-29):** In force since **2025-06-30**. **No transitional period was given.**
- **What:** Under the FSMA 2022, DTSPs **providing services to customers *outside* Singapore from a Singapore base** must be licensed — but MAS stated it will **generally not grant** such licenses (AML risk, unsupervisable), so offshore-only operators effectively had to **cease**. Domestic activity is licensed under the Payment Services Act. **Single-currency stablecoin (SCS) issuers** regulated by MAS must hold full reserves, honor **redemption at par**, meet capital requirements, and undergo **quarterly** reserve audits.
- **Links:**
  - MAS DTSP clarification (2025-06-06) — https://www.mas.gov.sg/news/media-releases/2025/mas-clarifies-regulatory-regime-for-digital-token-service-providers
  - MAS DTSP licensing guidelines — https://www.mas.gov.sg/regulation/guidelines/guidelines-on-licensing-for-dtsps
  - FSM (DTSP) Regulations 2025 (Singapore Statutes Online) — https://sso.agc.gov.sg/SL/FSMA2022-S342-2025

---

## United Arab Emirates

### #uae-vara — VARA (Dubai) / ADGM / DIFC
- **Status:** In force. ⚠️ Activity-licensed; confirm the specific activity category with VARA.
- **What:** **VARA** licenses virtual-asset activities in the Emirate of Dubai (ex-DIFC); **ADGM** (Abu Dhabi) and **DIFC** are financial free zones used for SPVs/foundations and FSRA-regulated activity. Common in 2026 structures as the **operating/treasury layer** (DMCC/IFZA company + DIFC Prescribed Company or ADGM SPV on top), paired with an offshore issuer.
- **Links:**
  - VARA rulebooks — https://rulebooks.vara.ae/
  - ADGM — https://www.adgm.com/
- ⚠️ Sparse primary-source coverage in this skill; route to UAE counsel for licensing specifics.

---

## Switzerland

### #switzerland-finma — FINMA token taxonomy & DLT Act
- **Status:** In force.
- **What:** FINMA classifies tokens as **payment / utility / asset** (plus hybrids); asset tokens are generally securities. The **DLT Act** (in force 2021) created the DLT trading-venue license and ledger-based securities. The **Zug/Crypto Valley foundation (Stiftung) + AG** model long predates current offshore patterns and remains credible for serious, non-anonymous projects.
- **Links:**
  - FINMA ICO/token guidelines — https://www.finma.ch/en/authorisation/fintech/ico/
  - DLT Act overview (FINMA) — https://www.finma.ch/en/authorisation/fintech/dlt-trading-facility/

---

## Structuring & DAOs (cross-jurisdiction)

### #offshore-structuring — token-issuer / foundation structures
- **What (2026 prevailing patterns):** Function-segregated multi-entity setups that ring-fence legal risk:
  - **Cayman Foundation Company + BVI BC ("orphan"/"catamaran")** — Foundation owns the BVI issuer; no shareholders, aligns with decentralization.
  - **Marshall Islands DAO LLC (NRDC)** — first-mover statutory DAO recognition; "ownerless" nonprofit form.
  - **Panama** — multiple entity types map onto governance/ops/issuance/dev, combinable with BVI/Cayman.
  - **UAE hybrid** — offshore issuer + UAE operating/treasury (DMCC/IFZA) + DIFC/ADGM top SPV.
  - **DevCo / LabsCo** — the company that writes code and employs devs is kept **separate** from the issuer/foundation.
- **Links:**
  - Legal Nodes — Cayman Foundation + BVI for token launches — https://www.legalnodes.com/article/cayman-foundation-bvi-company-token-launches
  - Chambers Blockchain & Crypto 2026 (Panama) — https://practiceguides.chambers.com/practice-guides/blockchain-crypto-assets-2026/panama
  - DAO SPV (BVI/Cayman catamaran) — https://blog.daospv.com/crypto-catamaran-why-when-and-how-to-use-the-bvi-cayman-structure-for-token-issuance/

### #dao-wrappers — DAO legal wrappers
- **What:**
  - **Wyoming DAO LLC** — LLC liability with smart-contract governance recognized in the operating agreement.
  - **Wyoming DUNA** (Decentralized Unincorporated Nonprofit Association; statute enacted **2024-03**) — limited liability for members/token holders, can contract/hold assets/sue, **requires ≥100 members**, nonprofit purpose.
  - **Marshall Islands DAO LLC** — global recognition, ownerless, popular for public-benefit/grant DAOs.
  - **Swiss association/foundation** — credible for large, doxxed governance bodies.
- **Links:**
  - Wyoming DUNA analysis (Falcon Rappaport) — https://frblaw.com/the-wyoming-duna-and-the-future-of-dao-legal-frameworks/
  - Marshall Islands DAO LLC guide (Legal Nodes) — https://www.legalnodes.com/article/marshall-islands-llc-as-a-dao-legal-wrapper
  - A16z DUNA explainer / model docs — https://a16zcrypto.com/posts/article/duna-daos-how-to/

---

## Maintenance

When updating this file: bump the "Last verified" date, mark superseded items, and keep one regulator/legislature link per entry as the source of truth. Treat ⚠️ items as the re-check queue. If a CLARITY-style bill becomes law or a proposed rule finalizes, move it from "proposed" to "in force" and update the dependent topic files (`stablecoins.md`, `token-launch.md`, `jurisdictions.md`).
