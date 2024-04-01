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

The easy-to-use and [well-tested](https://github.com/signmotion/uni_color_model/tree/master/test) package.
Feel free to use it in your awesome projects.

When you need to determine the color value by name or vice versa, refer to the package [UniColorName](https://github.com/signmotion/uni_color_name).

If you're looking for a structured color palette, look at [UniColorPalette](https://github.com/signmotion/uni_color_palette).

[<img src="https://raw.githubusercontent.com/signmotion/uni_color_model/master/images/dependencies.webp"/>](https://raw.githubusercontent.com/signmotion/uni_color_model/master/images/dependencies.webp)

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

### [Color depth or Bit depth](https://en.wikipedia.org/wiki/Color_depth)

The number of bits per pixel in a bitmap image. [List of common depths](https://en.wikipedia.org/wiki/Color_depth#List_of_common_depths).

## Color Converters

The formulas for color conversion are easily programmable, but we have many converters. So let's summarize them (TODO):

| alpha | model | type   | depth | structure  | tone           |
| ----- | ----- | ------ | ----- | ---------- | -------------- |
| false | cmyk  | double | 4     | ~~double~~ | int bits       |
| true  | rgb   | int    | 8     | int        | int dec        |
|       | hsl   |        | 10    | List       | int hex        |
|       | hsv   |        | 16    | String     | percent double |
|       | xyz   |        |       | UniColor   | percent int    |

- **alpha** == transparency (channel 0)
- **model** == channels (1..4)
- **type** == type channel
- **depth** == depth per channel, for type `int` only
- **structure** == how to keep a color
- **tone** == how to represent a structure

### Constructors `UniColor`

- `argbInt8Color`, `rgbInt8Color`, ...
- `acmykInt8Color`, `acmykInt8Color`, ...
- ...

#### Structures `int bits`

- `0x0a1b2c`
- `0xff0a1b2c` with alpha
- `0xabc == 0xaabbcc`
- `0xa == 0xaaaaaa`

#### Structures `String<int hex>`

Case insensetivity.

Spaces between channels are allowed.

- `'#0a1b2c' == '0a1b2c' == '0a 1b 2c'`
- `'#ff0a1b2c' == 'ff0a1b2c' == 'ff 0a 1b 2c'`
- `'#abc' == 'a b c' == 'aabbcc'`
- `'#a' == 'aaaaaa'`

#### Structures `String<int dec>`

- `'12 134 205'`
- `'255 12 134 205'`
- `'120' == '120 120 120'`

#### Structures `String<percent double>`

- `'0.12 0.134 0.205'`
- `'1.0 0.12 0.134 0.205'`
- `'0.120' == '0.12 0.12 0.12'`

#### Structures `percent<int>`

- `'12% 13% 95%'`
- `'100% 12% 13% 95%'`
- `'20%' == '20% 20% 20%'`

A converter name using a these schema:

`[model][type][depth]To[model][type][depth][structure][tone]`.

Examples of uses:

```dart
// as ARGB model
0xff0a1b2c.argbInt8ToArgbInt8StringIntHex();
```

```text
ff0a1b2c
```

```dart
// as ARGB model, auto added alpha
0x0a1b2c.rgbInt8ToArgbInt8StringIntHex();
```

```text
ff0a1b2c
```

```dart
// as RGB UniColor with int, 16 bits per channel
0x0a1b2c.rgbInt8ToRgbInt16Color();
```

```text
// type: RgbInt16Color
0a1b2c
```

```dart
// as RGB int, 16 bits per channel
0x0a1b2c.rgbInt8ToRgbInt16();
```

```text
// type: int
000a001b002c
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

- Dependency to `collection` package. We can do without.

- Check out the Web platform.
- Converters between models. See [1](https://pub.dev/packages/color_models), [2](https://dev.to/bytebodger/determining-the-rgb-distance-between-two-colors-4n91), [3](https://github.com/MichaelFenwick/Color).
- Converters between palettes.
- How to define your own map for color palette.

- Range checker to each model.
- Autodetect a model when constructing a `Palette`.
- `operator[]` for getting a value by color name and vice versa.

- The range of values to check the integrity of the color.

- A converter name using as extension and constructing by these schema: `color[SourceModel]To[Structure][ResultModel]()`. For example: `colorRgbToIntCmyk`.

- Colors with transparent. <https://ftp.pwg.org/pub/pwg/candidates/cs-pwgmsn20-20130328-5101.1.pdf>

- HKS color system. <https://en.m.wikipedia.org/wiki/HKS_(colour_system)>
- Natural color system. <https://en.m.wikipedia.org/wiki/Natural_Color_System>

- CIE-LAB, CIE-LCH, CIE-LUV, XYY, HUNTER-LAB. [1](https://canva.com/colors/color-meanings/orange)

- Color characteristics? For ex., LRV: <https://en.m.wikipedia.org/wiki/Light_reflectance_value> -> <https://thelandofcolor.com/lrv-light-reflectance-value-of-paint-colors>
  CR: <https://en.m.wikipedia.org/wiki/Color_rendering_index>

- Articles from <https://en.m.wikipedia.org/wiki/Index_of_color-related_articles>.

It's just a habit of mine: writing down ideas that come to mind while working on a project. I confess that I rarely return to these notes. But now, hopefully, even if you don't have an idea yet, the above notes will help you choose the suitable "feature" and become a contributor to the open-source community.

Created [with ❤️](https://syrokomskyi.com)
