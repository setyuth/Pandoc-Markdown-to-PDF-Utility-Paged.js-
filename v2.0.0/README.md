# 📄 Pandoc Markdown to PDF Utility v2.0.0

A professional-grade collection of styling themes and automation scripts to convert Markdown files into high-quality, A4-sized PDF documents using **Pandoc** and the **Paged.js** print engine.

## ✨ What's New in v2.0.0

### 🎨 Multiple Themes
Choose from four professionally designed themes:
- **Professional** - Classic blue accent with modern typography (default)
- **Academic** - Traditional serif fonts for formal documents
- **Modern** - Bold gradients and contemporary design
- **Minimal** - Clean, distraction-free reading experience

### 🚀 Enhanced Features
- **Command-line Options** - Customize exports with flags
- **Flexible Author Attribution** - Set custom author names
- **Optional TOC** - Toggle table of contents on/off
- **Improved Error Handling** - Better diagnostics and user feedback
- **Enhanced Typography** - Better font rendering and readability
- **Advanced Syntax Highlighting** - More comprehensive code coloring
- **Optimized Page Breaks** - Smarter handling of content flow

### 🔧 Technical Improvements
- Modular theme system with separate CSS files
- Improved metadata injection system
- Better cross-platform compatibility
- Enhanced print optimization

## 📋 Requirements

To use this utility on Windows, you need:

1. **Pandoc** - [Download here](https://pandoc.org/installing.html) (Version 3.1+ recommended)
2. **Node.js** - [Download here](https://nodejs.org/)
3. **Pagedjs-cli** - Install globally via Terminal:

```bash
npm install -g pagedjs-cli
```

## 📂 File StructureFile Structure

```
pandoc-pdf-utility/
│
├── export_v2.bat              # Main automation script
├── header-footer.html         # Paged.js header/footer configuration
├── README.md                  # This file
│
└── themes/                    # Theme directory
    ├── professional.css       # Professional theme (default)
    ├── academic.css           # Academic theme
    ├── modern.css             # Modern theme
    └── minimal.css            # Minimal theme
```

## 🛠️ Installation & Setup

1. Clone this repository or download all files
2. Ensure `pandoc` and `pagedjs-cli` are in your System PATH
3. Create a `themes` folder in your working directory
4. Place all theme CSS files in the `themes` folder
5. Keep `export_v2.bat` and `header-footer.html` in your working directory

## 📖 Usage

### Basic Usage (Default Theme)

```cmd
export_v2.bat "document.md"
```

### With Theme Selection

```cmd
export_v2.bat "document.md" --theme academic
```

### With Custom Author

```cmd
export_v2.bat "document.md" --author "Jane Smith"
```

### Without Table of Contents

```cmd
export_v2.bat "document.md" --no-toc
```

### Combine Multiple Options

```cmd
export_v2.bat "report.md" --theme modern --author "Research Team" --no-toc
```

### Drag and Drop

Simply drag your `.md` file onto `export_v2.bat` for quick conversion with default settings.

## 🎨 Theme Gallery

### Professional Theme
Classic and trustworthy design with blue accents. Perfect for business reports, proposals, and technical documentation.

**Features:**
- Blue gradient headings
- Modern sans-serif typography
- Comprehensive syntax highlighting
- Striped tables

### Academic Theme
Traditional serif typography for scholarly work. Ideal for research papers, theses, and academic publications.

**Features:**
- Serif fonts (Georgia, Times New Roman)
- Conservative styling
- Centered main headings
- Paragraph indentation
- Minimal syntax highlighting

### Modern Theme
Bold and contemporary with vibrant gradients. Great for creative projects, portfolios, and modern presentations.

**Features:**
- Purple/pink gradient accents
- High contrast design
- Rounded corners and shadows
- Emoji-enhanced TOC
- Vibrant syntax highlighting

### Minimal Theme
Clean and distraction-free design. Perfect for documentation, notes, and simple reports.

**Features:**
- Black and white color scheme
- Lightweight styling
- Sans-serif typography
- Subtle borders
- Maximum readability

## 🔧 Customization

### Changing Default Author

Edit `export_v2.bat` and modify this line:

```batch
set "DEFAULT_AUTHOR=Your Name Here"
```

### Changing Default Theme

Edit `export_v2.bat` and modify this line:

```batch
set "DEFAULT_THEME=academic"
```

### Creating Custom Themes

1. Copy an existing theme CSS file from the `themes` folder
2. Rename it (e.g., `custom.css`)
3. Modify the CSS variables in the `:root` section
4. Use it with `--theme custom`

Example theme customization:

```css
:root {
  --primary-color: #ff6b6b;      /* Change main color */
  --heading-color: #4ecdc4;      /* Change heading color */
  --code-bg: #f7f7f7;            /* Change code background */
}
```

## 📝 Markdown Tips

### Specify Code Language for Syntax Highlighting

```markdown
```python
def hello_world():
    print("Hello, Paged.js!")
```

### Add Page Breaks

```markdown
<div class="page-break"></div>
```

### Prevent Page Breaks Inside Elements

```markdown
<div class="no-break">
Content that should stay together
</div>
```

### Create Callout Boxes (Professional/Modern themes)

```markdown
<div class="callout">
💡 **Tip:** This is a helpful callout box!
</div>

<div class="callout warning">
⚠️ **Warning:** Pay attention to this!
</div>
```

## 🐛 Troubleshooting

### PDF Generation Fails

1. Verify Pandoc is installed: `pandoc --version`
2. Verify pagedjs-cli is installed: `pagedjs-cli --version`
3. Check that the theme file exists in the `themes` folder
4. Ensure your Markdown file has no syntax errors

### Missing Syntax Highlighting

Make sure you're specifying the language in your code blocks:

```markdown
```javascript
// This will be highlighted
```

### Footer/Header Not Showing

Check that `header-footer.html` is in the same directory as `export_v2.bat`.

### Date Not Appearing

The date is automatically generated. If it's missing, ensure the script has permission to create temporary files.

## 📊 Comparison with v1.0

| Feature | v1.0 | v2.0 |
|---------|------|------|
| Themes | 1 (hardcoded) | 4 (selectable) |
| Command-line options | No | Yes |
| Custom author | Manual edit | Flag option |
| Optional TOC | No | Yes |
| Error messages | Basic | Detailed |
| Modular CSS | No | Yes |
| Theme system | Single file | Separate files |

## 🤝 Contributing

Contributions are welcome! Here are some ways you can help:

- Create new themes
- Improve existing themes
- Add new features to the batch script
- Fix bugs
- Improve documentation

To contribute:
1. Fork this repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is open-source and available under the [MIT License](https://opensource.org/licenses/MIT).

## 🙏 Acknowledgments

- **Pandoc** - Universal document converter
- **Paged.js** - Print-friendly web content
- **Pygments** - Syntax highlighting engine

## 📞 Support

If you encounter issues:
1. Check the Troubleshooting section
2. Review the [Pandoc documentation](https://pandoc.org/MANUAL.html)
3. Check [Paged.js documentation](https://pagedjs.org/documentation/)
4. Open an issue on GitHub

## 🗺️ Roadmap

Future enhancements planned:
- [ ] Linux/Mac support script
- [ ] More themes (Dark, Newspaper, Magazine)
- [ ] Custom page sizes (Letter, Legal)
- [ ] Multi-language support
- [ ] Cover page templates
- [ ] Bibliography styling options
- [ ] Image optimization
- [ ] Batch conversion for multiple files

---

**Version:** 2.0.0  
**Last Updated:** December 2025  
**Author:** SET Yuth