# Popoko v6.1

A desktop productivity tool for annotation teams. Popoko combines a VBA macro generator for Excel diff highlighting with an offline annotation processor for multilingual notification data.

---

## Features

### VBA Generator
- Word-by-word LCS diff highlighting between column pairs
- Full-cell text color and fill-cell highlight modes
- Bold text highlighter macro for annotation review
- Color picker, accent ignore, format-clear options
- Copy-ready VBA output with prompt tab

### Annotation Processor
- Batch folder processing of `.xlsx` annotation files
- Auto language detection using the `language` column
- English translation via Google Translate (no API key required)
- Locale-specific formatting corrections:
  - Number formats (decimal and thousands separators)
  - Currency symbol position and spacing
  - Time format (e.g. `09:15` → `09h15` for French)
  - Percentage spacing
- Red font highlighting of corrected phrases (precise diff, no AI)
- Auto-generated remarks per row
- Full border formatting on all output columns
- Live progress table per file and row

### Prompts Library
- Built-in Grammar Check prompt for notification validation
- Add, load, copy, and delete custom prompts
- Persistent storage in `popoko_prompts.json`

---

## Supported Languages (Locale Correction)

| Language | Code | Decimal | Thousands | Time |
|---|---|---|---|---|
| French | `fr` | `,` | ` ` (space) | `09h15` |
| Spanish | `es` | `,` | `.` | — |
| German | `de` | `,` | `.` | — |
| Italian | `it` | `,` | `.` | — |
| Portuguese | `pt` | `,` | `.` | — |
| Indonesian | `id` | `,` | `.` | `09.15` |
| Malay | `ms` | `,` | `.` | `09.15` |

Translation works for all languages supported by Google Translate (130+). An internet connection is required for translation only — all locale corrections run fully offline.

---

## Output Columns

| Column | Content |
|---|---|
| J | Translation (English) |
| K | Reviewed Sample (locale-corrected, corrections in red) |
| L–O | L1–L4 labels (copied from F–I) |
| P–S | L1–L4 Reviewed headings (empty) |
| T | Remarks (auto-generated summary of changes) |

---

## Requirements

- Windows 10 or later
- Python 3.10+ (if running from source)
- `openpyxl` (`pip install openpyxl`)
- Internet connection for translation

---

## Running from Source

```bash
pip install openpyxl
python popoko.py
```

---

## Building the Installer

See `popoko_setup.iss` for the Inno Setup script. Requires:
- [PyInstaller](https://pyinstaller.org/) for bundling
- [Inno Setup 6](https://jrsoftware.org/isinfo.php) for the installer

```bash
pip install pillow openpyxl
pyinstaller --onedir --windowed --icon=popoko.ico --name=Popoko popoko.py
```

Then compile `popoko_setup.iss` in Inno Setup.

---

## Credits

**Developed by** Priyangshu Swarnakar

**Special thanks to** [Kiran Mukhiya](https://github.com/KiranMukhiya)

---

## License

© Priyangshu Swarnakar. All Rights Reserved.
