# Uni(fying) Color Model

![Cover - Unifying Color Model](https://raw.githubusercontent.com/signmotion/uni_color_model/master/images/cover.webp)

[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Pub Package](https://img.shields.io/pub/v/uni_color_model.svg?logo=dart&logoColor=00b9fc&color=blue)](https://pub.dartlang.org/packages/uni_color_model)
[![Code Size](https://img.shields.io/github/languages/code-size/signmotion/uni_color_model?logo=github&logoColor=white)](https://github.com/signmotion/uni_color_model)
[![Publisher](https://img.shields.io/pub/publisher/uni_color_model)](https://pub.dev/publishers/syrokomskyi.com)

[![Build Status](https://img.shields.io/github/actions/workflow/status/signmotion/uni_color_model/dart-ci.yml?logo=github-actions&logoColor=white)](https://github.com/signmotion/uni_color_model/actions)
[![Pull Requests](https://img.shields.io/github/issues-pr/signmotion/uni_color_model?logo=github&logoColor=white)](https://github.com/signmotion/uni_color_model/pulls)
[![Issues](https://img.shields.io/github/issues/signmotion/uni_color_model?logo=github&logoColor=white)](https://github.com/signmotion/uni_color_model/issues)
[![Pub Score](https://img.shields.io/pub/points/uni_color_model?logo=dart&logoColor=00b9fc)](https://pub.dev/packages/uni_color_model/score)

Unified color structure for represent **any** color: model (CMYK, RGB, HSL, etc.), with or without alpha,
depth per channel, channel-by-channel view (hex, dec, int, double, percentage. string), etc.
Сan transform the structures.

When you need to determine the color value by name or vice versa, refer to the package [UniColorName](https://github.com/signmotion/uni_color_name).

If you're looking for a structured color palette, look at [UniColorPalette](https://github.com/signmotion/uni_color_palette).

The easy-to-use and [well-tested](https://github.com/signmotion/uni_color_model/tree/master/test) package.
Feel free to use it in your awesome projects.

| Android | iOS | Linux | MacOS | Web | Windows |              |
| :-----: | :-: | :---: | :---: | :-: | :-----: | :----------- |
|   ✅    | ✅  |  ✅   |  ✅   |  ✘  |   ✅    | **platform** |

| Dart | Flutter |         |
| :--: | :-----: | :------ |
|  ✅  |   ✅    | **SDK** |

Share some ❤️ and star repo to support the project.

## Usage

```dart
final c = 0x1805db.rgbInt8Color;
print(c.int24Hex);
print(c.hasAlpha);
print('Red channel: #${c.r.hex()}');
```

```text
1805db
false
Red channel: #18
```

See also [UniColorPalette](https://github.com/signmotion/uni_color_palette) `example/all_palettes` folder with Flutter example that visualize palette.

## Color Palettes

See the package [uni_color_palette](https://github.com/signmotion/uni_color_palette).

## Glossary

### [https://en.wikipedia.org/wiki/Color_depth](Color depth or Bit depth)

The number of bits per pixel in a bitmap image. [List of common depths](https://en.wikipedia.org/wiki/Color_depth#List_of_common_depths).

## Color Converters

The formulas for color conversion are easily programmable, but we have many converters. So let's summarize them (TODO):

| ⬇️ model (channels) |
| ------------------- |
| cmyk                |
| rgb                 |
| hsl                 |
| hsv                 |
| xyz                 |

| ⬇️ num |
| ------ |
| double |
| int    |

| ⬇️ depth per channel |
| -------------------- |
| 1                    |
| 2                    |
| 3                    |
| 4                    |
| 5                    |
| 6                    |
| ...                  |

| ⬇️ channel view |
| --------------- |
| dec             |
| hex             |
| percent         |

| ⬇️ alpha (transparency) |
| ----------------------- |
| false                   |
| true                    |

| ⬇️ structure       |
| ------------------ |
| int                |
| String             |
| Iterable\<double\> |
| Iterable\<int\>    |
|                    |
| UniColor\<double\> |
| UniColor\<int\>    |

TODO A converter name using as extension and constructing by these schema: `color[SourceModel]To[Structure][ResultModel]()`.

For example:

`colorRgbToIntCmyk`
`colorRgbToInt`
`colorRgbToIntHsl`
...
`colorRgbToStringCmyk`
`colorRgbToString`
...
`colorRgbToUniColorDoubleCmyk`
`colorRgbToUniColorDouble`
...
`colorRgbToUniColorIntCmyk`
...
`colorCmykToIterableDoubleRgb`
`colorCmykToIterableInt`
...
`colorRgbToIterableIntHsv`
`colorXyzToIterableIntXyz`

Examples of uses:

```dart
// as ARGB model by default
0xFFCC00DE.colorToString();

// represent as XYZ model before transformation
0xCC00DE.model(ColorModel.hsl).colorToString();
// or with same result
0xCC00DE.colorModelHsl.colorToString();

// as ARGB model by default
'ffcc00de'.colorToInt();

// 255 is a max value for the channel for normalize a color to range [0.0; 1.0]
[1, 12, 128].colorToUniColorDouble(255);
// the result will be `(1.0, 1 / 255, 12 / 255, 128 / 255)`

// but in this case
[1, 12, 128].colorToUniColorDouble();
// the result will be `(255.0, 1.0, 12.0, 128.0)`

[0.1, 0.12, 0.128].colorToUniColorInt(255);
// the result for this example: `(255, 0.1 * 255, 0.12 * 255, 0.128 * 255)`
```

## Resources

Working on this project, I found amazing resources and am grateful to the authors:

- <https://thecolorapi.com>
  Pass in any valid color and get conversion into any other format, the name of the color, placeholder images and a multitude of schemes.
- <https://colorhexmap.com>
  Get Ready to Explore a World of Color.
- <https://canva.com/learn/color-tips>
  10 color inspiration secrets only designers know about.
- <https://canva.com/colors/color-wheel>
  Color theory and the color wheel.
- <https://canva.com/learn/100-color-combinations>
  100 inspiring color combinations & Free color palette generator.

## Welcome to Inspiration

Requests and suggestions are warmly welcome.

Contributions are what make the open-source community such a great place to learn, create, and be inspired.

If this is your first contribution, I'll leave you with some of the best links I've found: they will help you get started or/and become even more efficient.

- [Guide to Making a First Contribution](https://github.com/firstcontributions/first-contributions). You will find the guide in your native language.
- [How to Contribute to Open Source](https://opensource.guide/how-to-contribute). Longread for deep diving for first-timers and for veterans.
- [Summer Guide from Google](https://youtu.be/qGTQ7dEZXZc).

The package **UniColorModel** is open-source, stable and well-tested. Development happens on
[GitHub](https://github.com/signmotion/uni_color_model). Feel free to report issues
or create a pull-request there.

General questions are best asked on
[StackOverflow](https://stackoverflow.com/questions/tagged/uni_color_model).

And here is a curated list of how you can help:

- Report parts of the documentation that are unclear.
- Fix typos/grammar mistakes.
- Update the documentation or add examples.
- Report bugs and scenarios that are difficult to implement.
- Implement new features by making a pull-request (look below).

## TODO (perhaps)

Once you start using the **UniColorModel**, it will become easy to choose the functionality to contribute. But if you already get everything you need from this package but have some free time, let me write here what I have planned:

- Feautures for this package into `README`.

- Dependency to `collection` package. We can without it.

- Check out the Web platform.
- Converters between models. See [1](https://pub.dev/packages/color_models), [2](https://dev.to/bytebodger/determining-the-rgb-distance-between-two-colors-4n91), [3](https://github.com/MichaelFenwick/Color).
- Generalized to `num` instead of `double` and `int`? Reason: reduce a count of extensions.
- Converters between palettes.
- How to define your own map for color palette.

- Optimize a search.
- Fuzzy search by name.
- Fuzzy search by value.

- Range checker to each model.
- Autodetect a model when constructing a `Palette`.
- `operator[]` for getting a value by color name and vice versa.

- The range of values to check the integrity of the color.

- A converter name using as extension and constructing by these schema: `color[SourceModel]To[Structure][ResultModel]()`. For example: `colorRgbToIntCmyk`.

- Colors with transparent. <https://ftp.pwg.org/pub/pwg/candidates/cs-pwgmsn20-20130328-5101.1.pdf>

- Sources for color palettes.

- More palettes. See [1](https://en.wikipedia.org/wiki/List_of_colors:_A%E2%80%93F), [2](https://en.m.wikipedia.org/wiki/List_of_color_palettes), [3](https://en.wikipedia.org/wiki/Lists_of_colors).
- Faber Castell palettes. [1](https://curtisward.com/faber-castell-polychromos-pencils-colour-chart)
- Colors from WIKI as palette? [1](<https://en.wikipedia.org/wiki/List_of_colors_(alphabetical)>)

- Construct a palette by color scheme? Complementary, triad, tetrad, analogus, accented, split... [1](https://en.wikipedia.org/wiki/Color_scheme) [2](https://rgb.to/ral/6038)

- In fashion balance palettes? [1](https://infashionbalance.com)
- colorhunt.co palettes? [1](https://colorhunt.co)

- PANTONE®, RAL®, Dulux®, Copic®, NCS®, HKS® and Prismacolor®. [!](https://github.com/fundevogel/we-love-colors)

- ZxSpectrum palette [1](https://en.wikipedia.org/wiki/ZX_Spectrum_graphic_modes#Colour_palette)

- [nice-color-palettes](https://github.com/Experience-Monks/nice-color-palettes) <- [colourlovers.com](https://colourlovers.com)
- [r-color-palettes](https://github.com/EmilHvitfeldt/r-color-palettes)
- [paletteer](https://github.com/EmilHvitfeldt/paletteer)
- [palettable](https://github.com/jiffyclub/palettable)

- Freetone. <https://en.m.wikipedia.org/wiki/Stuart_Semple#Freetone>

- Color spaces (aka palettes) from <https://github.com/fundevogel/we-love-colors>.

- RAL color system. <https://en.m.wikipedia.org/wiki/List_of_RAL_colours> | <https://ral-farben.de/alle-ral-farben> [1](https://github.com/fundevogel/we-love-colors) [2](https://pub.dev/packages/ral_color) [1](https://rgb.to/ral) [2](https://rgb.to/ral/6038) [all colors](https://web.archive.org/web/20201130075701/http://ral-farben.de/content/application-help/all-ral-colours-names/overview-ral-design-colours.html) or <https://ral-farben.de/en/downloads>
- RAL light reflactance values? [1](https://ral-farben.de/en/downloads)
- RAL Classic & Design system plus color names. [1](https://ral-farben.de/en/downloads)
- RAL Classic, Design, Effect, Plastic P1, Plastic P2.
- Meaning from [ISO 3864](https://en.m.wikipedia.org/wiki/ISO_3864)?

- HKS color system. <https://en.m.wikipedia.org/wiki/HKS_(colour_system)>
- Natural color system. <https://en.m.wikipedia.org/wiki/Natural_Color_System>

- CIE-LAB, CIE-LCH, CIE-LUV, XYY, HUNTER-LAB. [1](https://canva.com/colors/color-meanings/orange)

- Color blind friendly palettes. <https://commons.wikimedia.org/wiki/Commons:Creating_accessible_illustrations>

- Color characteristics? For ex., LRV: <https://en.m.wikipedia.org/wiki/Light_reflectance_value> -> <https://thelandofcolor.com/lrv-light-reflectance-value-of-paint-colors>
  CR: <https://en.m.wikipedia.org/wiki/Color_rendering_index>

- Articles from <https://en.m.wikipedia.org/wiki/Index_of_color-related_articles>.

- Can we keep the palette organic combinations? [1](https://canva.com/learn/100-color-combinations/#100-color-palettes) [2](https://infashionbalance.com/fashion-palette-12-street-style)

- Tagged color palettes. [1](https://colorhunt.co/palette/d61355f94a29fce22a30e3df)

- Names in different lanuages? [1](https://rgb.to/ral/6038)

- Meanings of color? [1](https://www.smashingmagazine.com/2010/01/color-theory-for-designers-part-1-the-meaning-of-color) [2](https://99designs.com/blog/tips/color-meanings) [3](https://www.interaction-design.org/literature/topics/color-symbolism)

- Color names for base color? [1](https://louisem.com/29880/color-thesaurus-infographic)

It's just a habit of mine: writing down ideas that come to mind while working on a project. I confess that I rarely return to these notes. But now, hopefully, even if you don't have an idea yet, the above notes will help you choose the suitable "feature" and become a contributor to the open-source community.

Created [with ❤️](https://syrokomskyi.com)
