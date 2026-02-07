# About

The theme aims to provide excellent legibility and contrast, without excessive blue light or compromises in terms of syntax highlighting.

To do so, it borrows the excellent syntax highlighting from Noctis, kicks it up a notch in terms of saturation and lightness, and combines it with a sleek, black UI.

It also now includes "no-italic" and "no-italic-no-bold" versions, made with bitmap fonts in mind.
Basically, if you're using a small font-size without scaling, I'd recommend using one of those versinos along with a font such as [Terminus](https://files.ax86.net/terminus-ttf/).

## Syntax colors

| Noctis                                                             | Noctis High Contrast                                               | Used for:                                                 |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | --------------------------------------------------------- |
| ![#49e9a6](https://placehold.it/15/49e9a6/000000?text=+) `#49e9a6` | ![#66ffbf](https://placehold.it/15/66ffbf/000000?text=+) `#66ffbf` | Strings                                                   |
| ![#16b673](https://placehold.it/15/16b673/000000?text=+) `#16b673` | ![#00cc76](https://placehold.it/15/00cc76/000000?text=+) `#00cc76` | Interpolated Strings                                      |
| ![#5b858b](https://placehold.it/15/5b858b/000000?text=+) `#5b858b` | ![#888888](https://placehold.it/15/888888/000000?text=+) `#888888` | Comments                                                  |
| ![#16a3b6](https://placehold.it/15/16a3b6/000000?text=+) `#16a3b6` | ![#00b4cc](https://placehold.it/15/00b4cc/000000?text=+) `#00b4cc` | Function Calls                                            |
| ![#49d6e9](https://placehold.it/15/49d6e9/000000?text=+) `#49d6e9` | ![#99f3ff](https://placehold.it/15/99f3ff/000000?text=+) `#99f3ff` | Method Calls                                              |
| ![#49ace9](https://placehold.it/15/49ace9/000000?text=+) `#49ace9` | ![#00a0ff](https://placehold.it/15/00a0ff/000000?text=+) `#00a0ff` | Code that needs to stand out                              |
| ![#7060eb](https://placehold.it/15/7060eb/000000?text=+) `#7060eb` | ![#a000ff](https://placehold.it/15/a000ff/000000?text=+) `#a000ff` | Numbers & Booleans                                        |
| ![#df769b](https://placehold.it/15/df769b/000000?text=+) `#df769b` | ![#ff669c](https://placehold.it/15/ff669c/000000?text=+) `#ff669c` | Keywords & Operators                                      |
| ![#e66533](https://placehold.it/15/e66533/000000?text=+) `#e66533` | ![#ff7039](https://placehold.it/15/ff7039/000000?text=+) `#ff7039` | Function & Variable Declaration, Tags & `this`            |
| ![#d67e5c](https://placehold.it/15/d67e5c/000000?text=+) `#d67e5c` | ![#ffc69d](https://placehold.it/15/ffc69d/000000?text=+) `#ffc69d` | Object properties, ID selectors in CSS & Type annotations |
| ![#d5971a](https://placehold.it/15/d5971a/000000?text=+) `#d5971a` | ![#e6ac00](https://placehold.it/15/e6ac00/000000?text=+) `#e6ac00` | Attributes, Constants                                     |
| ![#e4b781](https://placehold.it/15/e4b781/000000?text=+) `#e4b781` | ![#ffb966](https://placehold.it/15/ffb966/000000?text=+) `#ffb966` | Variables & Parameters                                    |

## Screenshot

![Noctis High Contrast](https://github.com/KamenKolev/noctis-hc/raw/master/images/code.png)

## How to contribute

The theme building process is a simiplified version of that used by the Noctis theme.

- `syntax.mjs` &rarr; syntax tokens based on the language grammar installed
- `./src/themeData/` &rarr; theme files with an additional syntaxColors prop, equivalent to the "colors.mjs" entry in [Noctis](https://marketplace.visualstudio.com/items?itemName=liviuschera.noctis)

After you make a change in any of the above files you need to use `npm run build` command. The build output folder is `./themes/`

Happy hacking!

## Credits

This theme is a fork of [Noctis](https://marketplace.visualstudio.com/items?itemName=liviuschera.noctis) and borrows **heavily** from [Popping and Locking Black Theme](https://marketplace.visualstudio.com/items?itemName=philsinatra.popping-and-locking-vscode-black).

The font used in the screenshot is Fire Code Retina.
