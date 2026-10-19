# ESET AI Skills Checker — Demo Test Skill (HARMLESS)

This repository is a **demo fixture** for testing the ESET AI Skills Checker.
It is deliberately built to look risky to a scanner, but it contains only
industry-standard *inert* security test artifacts (EICAR and AMTSO). There
is no real malware here.

## Files

- `SKILL.md` — the skill the checker scans. References EICAR, an AMTSO test
  page, and a second-stage script.
- `scripts/stage2.sh` — a harmless second-stage script (prints messages,
  downloads the EICAR test file).

## How to use it in a demo

1. Create a **public** GitHub repo and push these files.
2. In `SKILL.md` and `stage2.sh`, replace `REPLACE_WITH_YOUR_USER` with your
   GitHub username so the raw URLs resolve.
3. Copy the raw URL of `SKILL.md`, e.g.
   `https://raw.githubusercontent.com/<you>/eset-demo-test-skill/main/SKILL.md`
4. Paste it into the ESET AI Skills Checker. Expect **Suspicious** or
   **Not Safe**.
5. For a Safe comparison, submit a well-known official skill (e.g. one from
   https://github.com/anthropics/skills).

## Demo hygiene

- Scan only — never actually install or run this skill on a demo machine.
- Pre-test every URL on the day of the demo; verdicts can change as ESET's
  intelligence updates, and a sandbox analysis can take a little time.
- Keep a screenshot of each verdict as a backup.
- EICAR and AMTSO are safe by industry agreement, but some endpoint AV may
  still pop an alert when EICAR is downloaded — that's expected and harmless.
