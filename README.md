# Pandoc PDF Export Utility

**Version:** 2.2.0  
**Author:** Mr. SET Yuth  
**Platform:** Windows (Batch Script)  
**PDF Engine:** Paged.js (`pagedjs-cli`)

A professional, theme-based **Markdown → PDF export utility** built on **Pandoc + Paged.js**, designed for **teaching materials, academic documents, and technical manuals** with print-quality layout control.

---

## 🚀 What’s New in v2.2.0

### ✅ Rendering Fixes (Stability Release)

This version focuses on **layout correctness and consistency** across all themes.

#### Lists (Fully Fixed)
- Ordered lists (`1. 2. 3.`)
- Unordered lists (`-`, `*`)
- GitHub-style task lists (`- [ ]`)
- Nested lists
- Correct spacing and line breaks inside list items
- No collapsed or merged list lines in PDF output

#### Code Blocks (Fully Fixed)
- Line breaks are preserved exactly as written
- New lines after semicolons (`;`) render correctly
- No merged or collapsed code lines
- Proper wrapping without horizontal overflow
- Stable pagination with Paged.js

---

## 🔧 Technical Improvements

- Enabled `markdown+hard_line_breaks`
- Preserved original line wrapping using `--wrap=preserve`
- Unified list rendering logic across **all themes**
- Deterministic CSS for code blocks compatible with Paged.js
- No Lua filters required

---

## 📁 Project Structure

```text
pandoc-pdf-utility/
│
├── export_v2.bat              # Main automation script
├── header-footer.html         # Paged.js header/footer configuration
├── README.md                  # Documentation
│
└── themes/
    ├── professional.css       # Default professional theme
    ├── academic.css           # Academic / thesis style
    ├── modern.css             # Modern colorful style
    └── minimal.css            # Minimal clean style
