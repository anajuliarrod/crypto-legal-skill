# Submission — crypto-legal-skill

> Copy-paste source for the listing questionnaire and the [solanabr/skill-bounty](https://github.com/solanabr/skill-bounty) PR. Fill the two placeholders after pushing: `<REPO-URL>` and `<YOUR-GH-USERNAME>`.

**Skill:** `crypto-legal` — Crypto Legal & Compliance Skill for Solana builders
**Repo:** `<REPO-URL>`
**License:** MIT
**Track:** Level-up of the seeded `crypto-legal-skill` (production-grade, standalone, submodule-ready)
**One-liner:** A citation-first crypto **legal & compliance co-pilot** that maps what a founder is shipping to which laws fire, and returns sourced checklists, jurisdiction matrices, and document scaffolds — informational, not legal advice.

---

## The problem (real, recurring, cross-domain)

Every Solana founder hits the same wall, and **no skill in the kit solves it**:
*"Is my token a security? Where do I incorporate? Can I airdrop to US users? What does issuing — or even just integrating — a stablecoin require? Do I need a MiCA/FCA/MAS/VARA license?"*

Today they overpay lawyers to explain basics, or guess and ship something a fine (or a criminal referral) away from disaster. Legal sits **upstream of and across** building — entity setup, token design, payments, compliance — so it's inherently cross-domain, which the bounty explicitly rewards.

## Why it's novel — the gap in the kit

I mapped the kit's 200+ skills before building:
- **Security/audit is saturated** — Trail of Bits ships ~30 audit skills *as a kit partner*; qedgen, ghostsecurity, vulnhunter on top. A new auditor skill can't win there.
- **DeFi integration is saturated** — SendAI + official Jupiter/Metaplex/Helius cover protocol SDKs.
- **Legal/compliance is total white space** — **zero** legal vendor in `.claude/skills/ext/`. The maintainers *seeded* it because nobody solved it.

This skill fills that gap and rides 2026's hottest narrative (stablecoins/payments + the US market-structure overhaul).

## What it does

| Domain | File | Jurisdictions |
|---|---|---|
| Token launch & securities (Howey + 2026 SEC/CFTC taxonomy & exemptions) | `skill/token-launch.md` | US, EU (MiCA), + targets |
| **Stablecoins** — issue *and* integrate (the spearhead) | `skill/stablecoins.md` | US (GENIUS), EU (EMT/ART), SG (MAS), UK (FCA) |
| Entity & foundation structuring | `skill/entity-structuring.md` | Cayman/BVI, Marshall Is., Panama, CH, UAE, US |
| KYC/AML, sanctions, geoblocking, Travel Rule | `skill/compliance-ops.md` | FinCEN/OFAC, FATF, MiCA, FCA |
| DAO legal wrappers & treasury | `skill/dao-governance.md` | Wyoming DAO LLC/DUNA, Marshall Is., CH |
| Per-country quick reference | `skill/jurisdictions.md` | US, EU, UK, SG, UAE, CH, offshore |

Plus 4 document templates (launch checklist, risk disclaimer, geoblocking policy, ToS skeleton), 2 commands (`/legal-triage`, `/token-launch-review`), the `crypto-counsel` agent, and a `legal-guardrails` rule.

## How it works (architecture)

- **Progressive disclosure / token-efficient:** only `SKILL.md` loads up front; it routes to exactly one topic file on demand. Matches the `solana-game` reference shape (`skill/SKILL.md` → topic files + `templates/`, plus `commands/`, `agents/`, `rules/`, `install.sh`).
- **Citation-first:** every substantive claim cites a dated entry in `skill/sources.md`. Uncited ⇒ flagged `⚠️`. The skill never free-associates law.
- **Jurisdiction-aware Context Gate:** entity location · **U.S. persons in scope?** · what's issued · stage — resolved before any answer.
- **Output contract:** context echo → what fires (cited) → checklist/matrix → `🛑` counsel checkpoints → sources.

## Production-grade, not AI slop (evidence)

- **Web-verified the 2026 stack on 2026-06-29** before writing: GENIUS Act + OCC NPRM (2026-03-02, regs due 2026-07-18), SEC/CFTC taxonomy + "Project Crypto" exemptions (2026-03-17, at OIRA), CLARITY Act Senate status (no floor vote yet; 60-vote/Aug-recess gate; SOL likely a CFTC digital commodity), MiCA CASP cliff (2026-07-01), UK FSMA 2026 (go-live 2027-10-25), Singapore DTSP (2025-06-30).
- **Dated & maintainable:** `sources.md` carries a "Last verified" date and a `⚠️` re-check queue; proposed-vs-final status is explicit.
- **Linted:** every `sources.md#anchor` reference resolves; every relative link resolves (verified by script).
- **Tested installer:** `install.sh` dry-run into a throwaway `~/.claude` placed all files correctly.
- **Caught a real bug during self-audit:** UK go-live mistyped as 2026 in 3 files; the FCA source says **2027**-10-25 — fixed and made consistent. (Exactly why citation-first matters.)
- **Demo:** see [`DEMO.md`](DEMO.md) — two end-to-end transcripts, including one where the skill deliberately *rightsizes* (doesn't dump issuer regs on a simple non-custodial app).

## Safety & guardrails

- **Informational, not legal advice** — stated throughout; never says "you're compliant."
- **Refuses misuse:** helps with legitimate structuring/geoblocking; declines sanctions evasion, hiding beneficial ownership, faking decentralization to dodge securities law, or investor fraud (`rules/legal-guardrails.md`).
- No executables beyond a transparent `install.sh`; no opaque dependencies; nothing phones home.

## Install

```bash
git clone <REPO-URL> && cd crypto-legal-skill && ./install.sh
# or submodule into the kit:
git submodule add <REPO-URL> .claude/skills/ext/crypto-legal
```
Then ask any crypto-legal question or run `/legal-triage`.

## Rubric self-assessment

- [x] Solves a real, recurring problem — **cross-domain** (legal × token × payments × structuring)
- [x] Production-grade — tested, link-linted, accurate, **current to the 2026 stack**
- [x] Progressive / token-efficient — `SKILL.md`-routed, load-on-demand
- [x] Clear SKILL.md routing, good docs, **working install path**
- [x] MIT licensed, **ready to merge or submodule**
- [x] Novel — fills the kit's only legal/compliance white space

## Repo structure

```
crypto-legal-skill/
├── skill/SKILL.md + activity-router · stablecoins · token-launch · entity-structuring
│         · compliance-ops · dao-governance · jurisdictions · sources  (+ templates/)
├── commands/ (legal-triage, token-launch-review) · agents/ (crypto-counsel) · rules/ (legal-guardrails)
├── install.sh · README.md · DEMO.md · LICENSE (MIT) · CLAUDE.md
```

## Links
- Repo: `<REPO-URL>`
- Demo: `<REPO-URL>/blob/main/DEMO.md`
- Entry point: `<REPO-URL>/blob/main/skill/SKILL.md`
- Reference shape followed: `solana-game-skill`

---

## Ready-to-paste PR description (for solanabr/skill-bounty)

> **Add crypto-legal-skill — citation-first legal & compliance skill for Solana builders**
>
> Fills the kit's only legal/compliance white space (no legal vendor exists in `ext/`). A jurisdiction-aware, **citation-first** co-pilot for token launches & securities analysis, stablecoin issuance/integration, entity structuring, KYC/AML + sanctions + geoblocking, and DAO wrappers across US/EU/UK/SG/UAE/CH/offshore. Every claim cites a dated primary source (`sources.md`, verified 2026-06-29); structured outputs + explicit counsel checkpoints; **informational, not legal advice**, with guardrails that refuse misuse. Progressive-loading `SKILL.md` routing matching the `solana-game` shape; tested `install.sh`; MIT. Repo: `<REPO-URL>` · Demo: `DEMO.md`.

## Questionnaire crib (likely fields)

- **Name:** crypto-legal (Crypto Legal & Compliance Skill)
- **What it does:** see One-liner + What it does.
- **Problem solved:** see The problem.
- **Why it belongs in the kit / novelty:** see Why it's novel.
- **Who it's for:** Solana founders, protocol teams, and builders making entity/token/stablecoin/compliance decisions.
- **How to install:** see Install.
- **Proof it works:** see Production-grade evidence + DEMO.md.
- **License:** MIT.
- **Anything else:** Informational only, not legal advice; built citation-first specifically because legal is the easiest domain to hallucinate in.
