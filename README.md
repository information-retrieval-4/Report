# MOCHI: Minecraft Object Comprehension & Hybrid Indexing : Report

A [Typst](https://typst.app) template for producing formatted PDF documents following ITS (Institut Teknologi Sepuluh Nopember) layout guidelines.

[![Compile & Deploy](https://github.com/information-retrieval-4/Report/actions/workflows/compile.yml/badge.svg)](https://github.com/information-retrieval-4/Report/actions/workflows/compile.yml)

**[Preview PDF](https://information-retrieval-4.github.io/Report/proposal.pdf)**

---

## Prerequisites

Choose one:

- **Typst CLI** — [install instructions](https://github.com/typst/typst#installation) (requires Typst ≥ 0.11)
- **VS Code** — install the [Tinymist](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) extension

---


## Compiling

### Option 1 — Typst CLI

```bash
# Compile once
typst compile --font-path ./font/ Laporan-final-project.typ proposal.pdf

# Watch mode — recompiles automatically on every save
typst watch --font-path ./font/ Laporan-final-project.typ proposal.pdf
```

> Fonts (Times New Roman, Trebuchet MS) are bundled in the `font/` folder and must be passed explicitly via `--font-path` since they are not included in the default Typst font set.

### Option 2 — VS Code with Tinymist

1. Install the [Tinymist](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) extension from the VS Code Marketplace
2. Open `Proposal.typ`
3. Open the preview panel via the button in the top-right toolbar, or run **Typst: Preview** from the Command Palette (`Ctrl+Shift+P`)
4. The PDF is exported automatically alongside `Proposal.typ` on every save

---

## Adding references

References are managed in `refs.bib` (BibTeX format). To cite in the document body:

```typst
@radford2021clip introduced the dual-encoder paradigm ...
```

The bibliography renders automatically in the *Daftar Pustaka* section. Only cited entries are included in the output.

---

## GitHub Actions — Compile & Deploy

The included workflow (`.github/workflows/compile.yml`) compiles the document on every push to `main` and deploys the PDF to **GitHub Pages**.

### Setup

1. Go to **Settings → Pages → Source** and select **GitHub Actions**
2. Push to `main` — the workflow runs automatically
3. The compiled PDF is available at:

```
https://<username>.github.io/<repo>/proposal.pdf
```

### Trigger manually

You can also trigger the workflow from **Actions → Compile & Deploy → Run workflow**.

---

## Project structure

```
.
├── Proposal.typ          # Main document
├── refs.bib              # Bibliography (BibTeX)
├── assets/
│   ├── LAMBANG ITS.png      # ITS logo (white background)
│   └── Logo ITS-Biru.png  # ITS logo (blue version)
└── .github/
    └── workflows/
        └── compile.yml   # CI/CD pipeline
```
