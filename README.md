# Pandoc PDF Export Utility

**Current Version:** 2.1.0  
**Author:** Mr. SET Yuth  
**Platform:** Windows (Batch Script)  
**PDF Engine:** Paged.js (`pagedjs-cli`)

A professional, theme-based **Markdown → PDF export utility** built on **Pandoc + Paged.js**, designed for producing **print-quality PDFs** for teaching materials, academic documents, and technical manuals.

---

## ✨ Overview

This utility provides a **simple, repeatable, and styled workflow** for converting Markdown documents into high-quality PDFs using:

- Pandoc for document conversion
- Paged.js for precise page layout
- CSS themes for visual consistency
- Automated headers, footers, and metadata

It is optimized for **readability, stability, and teaching use cases**.

---

## 🚀 Current Release: v2.1.0

### ✅ Key Features

#### Markdown Rendering
- Ordered lists (`1. 2. 3.`)
- Unordered lists (`-`, `*`)
- GitHub-style task lists (`- [ ]`)
- Nested lists with correct spacing
- Stable paragraph and line-break handling

#### Code Blocks
- Line breaks preserved exactly as written
- New lines after semicolons (`;`) render correctly
- No collapsed or merged lines
- Proper wrapping without horizontal overflow
- Compatible with Paged.js pagination

#### PDF Layout
- Automatic headers and footers
- Page numbers and metadata
- First page header suppressed (cover-page friendly)
- A4 layout optimized for printing

---

## 🔧 Technical Details (v2.1.0)

- Pandoc input mode: `markdown+hard_line_breaks`
- Line wrapping preserved using `--wrap=preserve`
- CSS-based rendering (no Lua filters)
- Theme-specific styling with consistent structure
- Deterministic output across all supported themes

---

## 📁 Project Structure

```text
pandoc-pdf-utility/
│
├── export_v2.bat              # Main automation script
├── header-footer.html         # Paged.js header/footer configuration
├── README.md                  # Project documentation
│
└── themes/
    ├── professional.css       # Default professional theme
    ├── academic.css           # Academic / thesis style
    ├── modern.css             # Modern UI style
    └── minimal.css            # Minimal clean style
