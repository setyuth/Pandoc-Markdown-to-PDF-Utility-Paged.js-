# Pandoc PDF Export Utility

**Version:** 2.1.0  
**Author:** Mr. SET Yuth  
**Platform:** Windows (Batch script)  
**PDF Engine:** Paged.js (`pagedjs-cli`)

A professional, theme-based **Markdown → PDF export utility** built on **Pandoc + Paged.js**, optimized for **teaching materials, academic documents, and technical manuals**.

---

## 🚀 What’s New in v2.1.0

### ✅ Major Fixes
- **Markdown lists now render correctly**
    - Ordered lists (`1. 2. 3.`)
    - Unordered lists (`-`, `*`)
    - GitHub-style task lists (`- [ ]`)
    - Nested lists
- **Code blocks preserve line breaks**
    - New lines after semicolons (`;`) are respected
    - No collapsed or merged code lines
    - Proper wrapping without horizontal overflow

### 🔧 Technical Improvements
- Enabled `markdown+hard_line_breaks`
- Unified list rendering across **all themes**
- Deterministic code block formatting for Paged.js
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
```
---
Here is a **complete, production-ready `README.md`** for **Pandoc PDF Export Utility v2.2.0**, written to match your tooling level (Pandoc + Paged.js + themes) and clearly documenting the fixes for **lists and code blocks**.

You can copy-paste this directly as `README.md`.

---

# Pandoc PDF Export Utility

**Version:** 2.2.0  
**Author:** Mr. SET Yuth  
**Platform:** Windows (Batch script)  
**PDF Engine:** Paged.js (`pagedjs-cli`)  

A professional, theme-based **Markdown → PDF export utility** built on **Pandoc + Paged.js**, optimized for **teaching materials, academic documents, and technical manuals**.

---

## 🚀 What’s New in v2.2.0

### ✅ Major Fixes
- **Markdown lists now render correctly**
  - Ordered lists (`1. 2. 3.`)
  - Unordered lists (`-`, `*`)
  - GitHub-style task lists (`- [ ]`)
  - Nested lists
- **Code blocks preserve line breaks**
  - New lines after semicolons (`;`) are respected
  - No collapsed or merged code lines
  - Proper wrapping without horizontal overflow

### 🔧 Technical Improvements
- Enabled `markdown+hard_line_breaks`
- Unified list rendering across **all themes**
- Deterministic code block formatting for Paged.js
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
````

---

## 🧰 Requirements

Make sure the following tools are installed and available in your system `PATH`:

* **Pandoc** ≥ 3.x
  👉 [https://pandoc.org/installing.html](https://pandoc.org/installing.html)
* **Node.js** ≥ 18
* **Paged.js CLI**

  ```bash
  npm install -g pagedjs-cli
  ```
  
## ⚙️ Usage

### Basic Export

```bat
export_v2.bat "document.md"
```

### With Theme and Author

```bat
export_v2.bat "lecture.md" --theme academic --author "John Doe"
```

### Disable Table of Contents

```bat
export_v2.bat "notes.md" --no-toc
```

### Disable Syntax Highlighting

```bat
export_v2.bat "code.md" --no-highlight
```

---

## 🎨 Available Themes

| Theme          | Description                  |
| -------------- | ---------------------------- |
| `professional` | Default, clean blue accent   |
| `academic`     | Serif fonts, thesis-friendly |
| `modern`       | Bold colors, modern UI       |
| `minimal`      | Clean, distraction-free      |

---

### Result
- Line breaks preserved
- Semicolons do not collapse lines
- Proper wrapping in PDF
- No horizontal overflow

---

## 🧠 How v2.1.0 Fixes Rendering Issues

### Pandoc Options Used
- `--from markdown+hard_line_breaks`
- `--wrap=preserve`
- `--markdown-headings=atx`

### CSS Strategy
- Force `<li>` and `<li><p>` to behave as block elements
- Normalize list spacing across all themes
- Use `white-space: pre-wrap` with `overflow-wrap: anywhere` for code blocks

---

## 🖨️ Header & Footer Features

- Document title in header
- Author name (left footer)
- Page number (center footer)
- Creation date (right footer)
- First page header suppressed (cover-friendly)

---

## 🧪 Tested Scenarios

| Feature | Status |
|------|------|
Ordered lists | ✅ |
Task lists | ✅ |
Nested lists | ✅ |
Code blocks | ✅ |
Paged.js pagination | ✅ |
All themes | ✅ |

---

## 🛣️ Roadmap (Optional)

Planned enhancements for future versions:
- Lua filter for advanced Markdown normalization
- Theme inheritance (`base.css`)
- Automatic cover page generation
- Per-section page styles
- Dark mode PDF theme

---

## 📄 License

This utility is provided for **educational and internal use**.  
You may modify and redistribute within your organization.

---

## 🙌 Credits

- **Pandoc** – Universal document converter  
- **Paged.js** – Print-quality CSS pagination  
- **Pygments** – Syntax highlighting  

---

**Happy exporting! 🎓📄**
