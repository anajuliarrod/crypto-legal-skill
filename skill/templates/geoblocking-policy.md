# Geoblocking & Restricted-Persons Policy — Template

> **Draft for counsel to finalize. Not legal advice.** A geoblock only protects you if it is **real and enforced**. This template pairs a public policy with the technical controls that must back it. See [../compliance-ops.md](../compliance-ops.md#geoblocking).

## Part A — Public policy (publish this)

**Restricted Persons.** `[PROJECT]` does not offer `[the interface / token sale / service]` to, and Restricted Persons may not use it:
- Persons located in or residents/nationals of **comprehensively sanctioned jurisdictions** (currently `[list — align with OFAC]`);
- Persons on any **sanctions list** (OFAC SDN, EU, UN, UK HMT, etc.);
- **`[U.S. persons]`** `[and other restricted jurisdictions: list]`;
- Anyone barred by applicable law from using the service.

By using the service you represent that you are not a Restricted Person and will not use a VPN/proxy to evade these restrictions.

## Part B — Technical controls (implement & log all that apply)
- [ ] **IP geoblocking** of restricted jurisdictions at the edge (CDN/WAF), with logging
- [ ] **Best-effort VPN/proxy detection** for known egress ranges
- [ ] **Wallet/address screening** against sanctions lists at connect **and** transact
- [ ] **Click-through attestation** of non-restricted status before access
- [ ] **KYC/identity** where the activity or exemption requires it
- [ ] **On-chain enforcement** where applicable (e.g., Token-2022 transfer hook allow/deny list) 🛑 confirm legal sufficiency
- [ ] **Enforcement**: actually deny service to detected restricted users
- [ ] **Records**: retain screening/geoblock logs for your retention period

## Part C — Governance
- Owner: `[compliance officer / role]`
- Sanctions-list refresh cadence: `[e.g., daily]`
- Review cadence: `[quarterly]` and on any regime change (watch [../sources.md](../sources.md))
- Incident process if a restricted user is detected post-access: `[block, review, report if required]`

---
⚠️ A documented geoblock you **don't enforce** is evidence you knew and served anyway — worse than none. Enforcement + logs are the point. The list of restricted jurisdictions and the U.S.-person decision are 🛑 counsel calls tied to your securities/sanctions posture.
