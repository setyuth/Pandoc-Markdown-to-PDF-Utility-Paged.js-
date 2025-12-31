# Pandoc Markdown to PDF Utility (Paged.js)

A collection of professional styling and automation scripts to convert Markdown files into high-quality, A4-sized PDF documents using **Pandoc** and the **Paged.js** print engine.

## ✨ Features

* **Professional Layout**: A4 size with optimized margins and typography.
* **Table of Contents**: Auto-generated TOC with a dedicated title and "New Page" transition.
* **Footer System**: Includes dynamic page numbering (`Page X of Y`), document title, "Prepared by" credits, and a stable date stamp.
* **Advanced Code Highlighting**: Uses Pandoc's syntax engine with custom CSS colors for better readability.
* **Space Optimization**: Code blocks and tables are permitted to break across pages to prevent large white-space gaps.
* **Reliable Date Stamping**: Uses a Batch-injected HTML method to ensure dates always appear in the footer (fixing common JavaScript execution bugs in Paged.js).

## 🚀 Requirements

To use these scripts on Windows 10, you need:

1. **Pandoc**: [Download here](https://pandoc.org/installing.html) (Version 3.1+ recommended).
2. **Node.js**: [Download here](https://nodejs.org/).
3. **Pagedjs-cli**: Install globally via Terminal:
```bash
npm install -g pagedjs-cli

```
