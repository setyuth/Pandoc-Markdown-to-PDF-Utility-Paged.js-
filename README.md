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



## 📂 File Structure

* `export.bat`: The automation script. Drag and drop your `.md` file here.
* `print.css`: The stylesheet controlling layout, typography, and code colors.
* `header-footer.html`: The Paged.js configuration for page headers and footers.

## 🛠️ Installation & Setup

1. Clone this repository or download the three files.
2. Ensure `pandoc` and `pagedjs-cli` are in your System PATH.
3. Keep all three utility files in the same folder where you work on your Markdown documents.

## 📖 Usage

### Option 1: Drag and Drop (Easiest)

Simply grab your `.md` file and drop it directly onto `export.bat`. A PDF with the same name will be generated in the same folder.

### Option 2: Command Line

Open CMD in your project folder and run:

```cmd
export.bat "YourDocument.md"

```

## 🔧 Customization

### Changing the Author

Open `header-footer.html` and look for the `@bottom-right` section:

```css
@bottom-right {
  content: "Prepared by: Your Name"; 
}

```

### Adjusting Colors

Open `print.css` and modify the `:root` variables:

```css
:root {
  --heading-color: #1f4fd8; /* Change main blue accent */
  --code-bg: #f6f8fa;       /* Change code block background */
}

```

## 📝 Document Formatting Tips

To get the most out of the syntax highlighting, specify the language in your Markdown code blocks:

```markdown
```python
def hello_world():
    print("Hello, Paged.js!")
```

```

## 🤝 Contributing

Feel free to fork this project and submit pull requests for any CSS enhancements or bug fixes.

## 📄 License

This project is open-source and available under the [MIT License](https://www.google.com/search?q=LICENSE).
