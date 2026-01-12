# Pandoc PDF Export Utility

**Current Version:** 2.1.0  
**Author:** Mr. SET Yuth  
**Platform:** Windows (Batch Script)  
**PDF Engine:** Paged.js (`pagedjs-cli`)

A professional, theme-based **Markdown → PDF export utility** built on **Pandoc + Paged.js**, optimized for **teaching materials, academic documents, and technical manuals** with print-quality layout control.

---

## 🚀 What’s New in v2.1.0 (Current)

### ✅ Rendering Fixes
- Markdown lists render correctly:
  - Ordered lists (`1. 2. 3.`)
  - Unordered lists (`-`, `*`)
  - GitHub-style task lists (`- [ ]`)
  - Nested lists
- Code blocks preserve line breaks:
  - New lines after semicolons (`;`) are respected
  - No collapsed or merged code lines
  - Proper wrapping without horizontal overflow

### 🔧 Technical Improvements
- Enabled `markdown+hard_line_breaks`
- Preserved original line wrapping using `--wrap=preserve`
- Unified list rendering behavior across all themes
- Stable code block rendering with Paged.js
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
Got it 👍
You want the **README to clearly reflect that the CURRENT released version is v2.1.0**, and **v2.2.0 is a planned / upcoming version**, not yet released.

Below is a **clean, corrected README.md** that:

* ✅ Keeps **v2.1.0 as the current stable version**
* ✅ Describes **existing features accurately**
* ✅ Adds a **Future: v2.2.0** section (roadmap / planned improvements)
* ✅ Removes version confusion
* ✅ Matches your actual implementation status

---

## ✅ Final `README.md` (Correct Versioning)

````md
# Pandoc PDF Export Utility

**Current Version:** 2.1.0  
**Author:** Mr. SET Yuth  
**Platform:** Windows (Batch Script)  
**PDF Engine:** Paged.js (`pagedjs-cli`)

A professional, theme-based **Markdown → PDF export utility** built on **Pandoc + Paged.js**, optimized for **teaching materials, academic documents, and technical manuals** with print-quality layout control.

---

## 🚀 What’s New in v2.1.0 (Current)

### ✅ Rendering Fixes
- Markdown lists render correctly:
  - Ordered lists (`1. 2. 3.`)
  - Unordered lists (`-`, `*`)
  - GitHub-style task lists (`- [ ]`)
  - Nested lists
- Code blocks preserve line breaks:
  - New lines after semicolons (`;`) are respected
  - No collapsed or merged code lines
  - Proper wrapping without horizontal overflow

### 🔧 Technical Improvements
- Enabled `markdown+hard_line_breaks`
- Preserved original line wrapping using `--wrap=preserve`
- Unified list rendering behavior across all themes
- Stable code block rendering with Paged.js
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

## 🧰 Requirements

Ensure the following tools are installed and available in your system `PATH`:

* **Pandoc** ≥ 3.x
  [https://pandoc.org/installing.html](https://pandoc.org/installing.html)
* **Node.js** ≥ 18
* **Paged.js CLI**

  ```bash
  npm install -g pagedjs-cli
  ```

---

## ⚙️ Usage

### Basic Export

```bat
export_v2.bat "document.md"
```

### Specify Theme and Author

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

| Theme          | Description                             |
| -------------- | --------------------------------------- |
| `professional` | Clean, corporate, blue accent (default) |
| `academic`     | Serif fonts, thesis-friendly            |
| `modern`       | Bold colors, modern UI                  |
| `minimal`      | Clean, distraction-free                 |

---

## 🧾 Rendering Guarantees (v2.1.0)

### Lists

* Each list item renders on its own line
* Proper spacing between items
* Task list checkboxes aligned correctly
* Nested lists remain readable

### Code Blocks

* Line breaks preserved
* Semicolons do not collapse lines
* No horizontal overflow
* Page-safe rendering with Paged.js

---

## 🖨️ Header & Footer Features

* Document title in header
* Author name (left footer)
* Page number (center footer)
* Creation date (right footer)
* First page header suppressed (cover-page friendly)

---

## 🧪 Tested Scenarios

| Feature             | Status |
| ------------------- | ------ |
| Ordered lists       | ✅      |
| Task lists          | ✅      |
| Nested lists        | ✅      |
| Code blocks         | ✅      |
| Paged.js pagination | ✅      |
| All themes          | ✅      |

---

## 🔮 Planned: v2.2.0 (Future Release)

The next version will focus on **refinement and extensibility**, not breaking changes.

### Planned Improvements

* Stronger list layout normalization (edge cases)
* Further code block stability for long lines
* Optional base theme (`base.css`) with theme inheritance
* Improved task list visual alignment
* Optional Lua filter for advanced Markdown normalization
* Cleaner internal CSS structure

> ⚠️ v2.2.0 is **not released yet**.
> This README will be updated once the version is finalized.

---

## 📄 License

This utility is provided for **educational and internal use**.
You may modify and redistribute it within your organization.

---

## 🙌 Credits

* **Pandoc** — Universal document converter
* **Paged.js** — Print-quality CSS pagination
* **Pygments** — Syntax highlighting
