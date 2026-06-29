# Crypto Legal & Compliance Skill

> A Claude Code / Codex skill that turns a coding agent into a **citation-first crypto legal & compliance co-pilot** for Solana founders and builders.
>
> **Informational only — not legal advice.** It makes your lawyer cheaper and your launch faster; it does not replace counsel.

Built for the [Solana AI Kit](https://github.com/solanabr) skill bounty. MIT licensed, progressive-loading, and shaped to drop straight into the kit (matches the `solana-game-skill` structure).

---

## The problem

Every Solana founder hits the same wall and **no skill in the ecosystem solves it**:

- *"Is my token a security? Can I airdrop to U.S. users?"*
- *"Where do I incorporate — Cayman foundation, Marshall Islands DAO LLC, Delaware DevCo?"*
- *"What does it take to issue (or even just integrate) a stablecoin in 2026?"*
- *"What KYC/AML, sanctions screening, and geoblocking does my dApp actually need?"*
- *"Do I need a license — MiCA, FCA, MAS, VARA?"*

Founders either overpay lawyers to explain basics, or guess and ship something that's a fine away from disaster. The audit and DeFi-integration corners of the kit are saturated; **legal/compliance is open white space.**

## Why this skill is different (not AI slop)

Legal is the easiest domain to hallucinate in, so this skill is engineered against it:

- **Citation-first.** Every substantive claim cites a **dated primary source** (regulator/legislature) in [`sources.md`](skill/sources.md). No citation ⇒ flagged `⚠️ unverified`. The skill never free-associates law.
- **Jurisdiction-aware.** A hard **Context Gate** (where's the entity, are U.S. persons in scope, what's issued, what stage) gates every answer — because crypto law is entirely jurisdiction-dependent.
- **Current to the 2026 stack.** GENIUS Act implementation (OCC NPRM March 2026), the SEC/CFTC March 2026 taxonomy + "Project Crypto" safe harbor, the CLARITY Act's Senate status, MiCA's July 1 2026 CASP cliff, UK FSMA 2026, Singapore's DTSP regime — all sourced and dated.
- **Not advice, by design.** Structured outputs (checklists, matrices, document scaffolds) + explicit `🛑 counsel checkpoints`, never "you're compliant."
- **Refuses misuse.** Helps with legitimate structuring and geoblocking; declines sanctions evasion, beneficial-ownership concealment, or faking decentralization to dodge the SEC.

## Coverage

| Domain | File | Jurisdictions |
|---|---|---|
| Token launch & securities | [`token-launch.md`](skill/token-launch.md) | US (Howey + 2026 SEC/CFTC), EU (MiCA), + targets |
| Stablecoins (issue & integrate) | [`stablecoins.md`](skill/stablecoins.md) | US (GENIUS), EU (EMT/ART), SG (MAS), UK (FCA) |
| Entity & foundation structuring | [`entity-structuring.md`](skill/entity-structuring.md) | Cayman/BVI, Marshall Is., Panama, CH, UAE, US |
| KYC/AML, sanctions, geoblocking | [`compliance-ops.md`](skill/compliance-ops.md) | FinCEN/OFAC, FATF, MiCA, FCA |
| DAO legal wrappers | [`dao-governance.md`](skill/dao-governance.md) | Wyoming DAO LLC/DUNA, Marshall Is., CH |
| Per-country quick reference | [`jurisdictions.md`](skill/jurisdictions.md) | US, EU, UK, SG, UAE, CH, offshore |

## Structure

```
crypto-legal-skill/
├── skill/
│   ├── SKILL.md              # entry point: disclaimer, Context Gate, routing table
│   ├── activity-router.md    # "what you're building" → which regimes fire
│   ├── stablecoins.md        # GENIUS / MiCA / MAS / FCA  (spearhead)
│   ├── token-launch.md       # securities analysis + distribution structuring
│   ├── entity-structuring.md # foundation + DevCo + issuer SPV, jurisdiction matrix
│   ├── compliance-ops.md     # KYC/AML, Travel Rule, OFAC, geoblocking
│   ├── dao-governance.md     # DAO legal wrappers & treasury
│   ├── jurisdictions.md      # per-country cards
│   ├── sources.md            # dated primary-source index (citation backbone)
│   └── templates/            # launch checklist, risk disclaimer, geoblock policy, ToS
├── commands/                 # /legal-triage, /token-launch-review
├── agents/                   # crypto-counsel (deep structured memo)
├── rules/                    # legal-guardrails.md (the skill's operating law)
├── install.sh · README.md · LICENSE · CLAUDE.md
```

Progressive disclosure: only `SKILL.md` loads up front; everything else loads on demand via the routing table — token-efficient by design.

## Install

**Standalone (Claude Code):**
```bash
git clone https://github.com/<you>/crypto-legal-skill
cd crypto-legal-skill
./install.sh          # copies skill/commands/agents/rules into ~/.claude/
```
Then invoke it: ask any crypto-legal question, or run `/legal-triage`.

**Into the Solana AI Kit** (as a submodule under the skill hub):
```bash
git submodule add https://github.com/<you>/crypto-legal-skill .claude/skills/ext/crypto-legal
# then add one routing row to .claude/skills/SKILL.md
```

## Usage

- **Just ask** — *"I'm launching a governance token from a Cayman foundation, geoblocking the US — what do I need?"* The skill resolves the Context Gate, routes, and returns a sourced checklist.
- **`/legal-triage`** — whole-project scan → regimes that fire + prioritized checklist.
- **`/token-launch-review`** — structured readiness review of a launch plan.
- **`crypto-counsel` agent** — deep multi-topic memo with counsel checkpoints.

## Design principles ([`rules/legal-guardrails.md`](rules/legal-guardrails.md))

1. Not legal advice — ever. 2. Citation-first. 3. Jurisdiction-aware. 4. Dated. 5. Refuse to help break the law. 6. Structure over prose.

## Maintenance

[`sources.md`](skill/sources.md) carries a **"Last verified"** date (currently **2026-06-29**) and a `⚠️` re-check queue. When a proposed rule finalizes (e.g., GENIUS implementing rules, SEC "Regulation Crypto Assets", CLARITY Act), update the source entry and the dependent topic files. This is a feature: the skill tells you when its knowledge could be stale.

## Disclaimer

This software is an informational developer tool, not a law firm, and does not provide legal advice. Outputs are general information, may be incomplete or out of date, and are not a substitute for advice from a qualified attorney in the relevant jurisdiction. Verify every cited source before acting.

## License

MIT — see [LICENSE](LICENSE). Ready to be merged or submoduled into the Solana AI Kit.
