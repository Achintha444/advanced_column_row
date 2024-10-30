# Advanced Column & Row Widgets

`AdvancedColumnRow` is a Flutter package that improves the default `Column` and `Row` widgets by adding customization options, such as padding, gap widgets, decoration, alignment, and other flexible properties. This package helps you build more visually appealing and flexible layouts in Flutter.

## Features

- Improved **Column** and **Row** widgets.
- **Padding** to control the spacing around the entire widget.
- **Gap widgets** to control spacing between child elements.
- **Decoration** options like background colors and borders.
- **Alignment** settings to control child widget positioning.

and many more.

## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  advanced_column_row: ^1.0.0
```

Then, run:

```bash
flutter pub get
```

## Usage

To use the package, import it in your Dart file:

```dart
import 'package:advanced_column_row/advanced_column_row.dart';
```

Certainly! Here’s the **Example** section separated out with individual examples for `AdvancedColumn` and `AdvancedRow`.

---

### Example

Here is a basic example of `AdvancedColumn` and `AdvancedRow` in action:

#### AdvancedColumn Example

```dart
import 'package:flutter/material.dart';
import 'package:advanced_column_row/advanced_column_row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Advanced Column Example')),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: AdvancedColumn(
            padding: const EdgeInsets.all(16),
            gapWidget: const SizedBox(height: 10),
            decoration: BoxDecoration(
              color: Colors.lightBlue[50],
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            children: const [
              Text('Advanced Column - Child 1'),
              Text('Advanced Column - Child 2'),
            ],
          ),
        ),
      ),
    );
  }
}
```
This will render an `AdvancedColumn` with two text children spaced by 10 pixels and having background colors and padding.

#### AdvancedRow Example

```dart
import 'package:flutter/material.dart';
import 'package:advanced_column_row/advanced_column_row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Advanced Row Example')),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: AdvancedRow(
            padding: const EdgeInsets.all(16),
            gapWidget: const SizedBox(width: 10),
            decoration: BoxDecoration(
              color: Colors.lightGreen[50],
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            children: const [
              Text('Advanced Row - Child 1'),
              Text('Advanced Row - Child 2'),
            ],
          ),
        ),
      ),
    );
  }
}
```
This will render an `AdvancedRow` with two children spaced by 10 pixels and having background colors and padding.

Certainly! Here’s the improved **API Reference** section based on the constructors for `AdvancedColumn` and `AdvancedRow`:

---

### API Reference

#### AdvancedColumn

`AdvancedColumn` is a customizable widget that extends `Column` and provides additional properties, allowing you to configure layout, padding, decoration, and alignment options.

**Constructor:**

```dart
const AdvancedColumn({
  Key? key,
  AlignmentGeometry? alignment,
  EdgeInsetsGeometry? padding,
  Decoration? decoration,
  Decoration? foregroundDecoration,
  double? width,
  double? height,
  BoxConstraints? constraints,
  EdgeInsetsGeometry? margin,
  Matrix4? transform,
  AlignmentGeometry? transformAlignment,
  List<Widget> children = const [],
  Clip clipBehavior = Clip.none,
  Widget gapWidget = const SizedBox(height: 0, width: 0),
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
  MainAxisSize mainAxisSize = MainAxisSize.max,
  CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  TextDirection? textDirection,
  VerticalDirection verticalDirection = VerticalDirection.down,
  TextBaseline? textBaseline,
})
```

**Properties:**

- `alignment`: Aligns the column in the available space.
- `padding`: Adds padding around the content inside the column.
- `decoration`: Applies a background decoration to the column, such as a color or border.
- `foregroundDecoration`: Adds a foreground decoration over the column's content.
- `width` and `height`: Set the dimensions of the column.
- `constraints`: Specifies additional constraints for the column's size.
- `margin`: Sets the space around the outside of the column.
- `transform` and `transformAlignment`: Applies a transformation (e.g., scaling, rotating) to the column, with alignment control.
- `children`: The list of widgets displayed as the column's content.
- `clipBehavior`: Determines how the column should clip its content if it overflows.
- `gapWidget`: Adds a customizable gap widget between each child, excluding the topmost and bottommost.
- `mainAxisAlignment`: Controls the alignment of children along the main (vertical) axis.
- `mainAxisSize`: Defines how much vertical space the column should occupy.
- `crossAxisAlignment`: Sets the alignment of children along the cross (horizontal) axis.
- `textDirection`: Specifies the text direction, which affects child layout.
- `verticalDirection`: Arranges children vertically from top to bottom or vice versa.
- `textBaseline`: Aligns text along a baseline, used with `crossAxisAlignment`.

---

#### AdvancedRow

`AdvancedRow` is similar to `Row` but adds enhanced customization for layout, padding, decoration, and spacing.

**Constructor:**

```dart
const AdvancedRow({
  Key? key,
  AlignmentGeometry? alignment,
  EdgeInsetsGeometry? padding,
  Decoration? decoration,
  Decoration? foregroundDecoration,
  double? width,
  double? height,
  BoxConstraints? constraints,
  EdgeInsetsGeometry? margin,
  Matrix4? transform,
  AlignmentGeometry? transformAlignment,
  List<Widget> children = const [],
  Clip clipBehavior = Clip.none,
  Widget gapWidget = const SizedBox(height: 0, width: 0),
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
  MainAxisSize mainAxisSize = MainAxisSize.max,
  CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  TextDirection? textDirection,
  VerticalDirection verticalDirection = VerticalDirection.down,
  TextBaseline? textBaseline,
})
```

**Properties:**

- `alignment`: Aligns the content of the row within the container.
- `padding`: Adds padding around the row's inner content.
- `decoration`: Applies background decoration to the row, such as a color or border.
- `foregroundDecoration`: Adds foreground decoration overlaying the row's content.
- `width` and `height`: Define the dimensions of the row.
- `constraints`: Adds extra constraints to control the row's dimensions.
- `margin`: Sets space around the outside of the row.
- `transform` and `transformAlignment`: Applies a transformation (e.g., rotation, scaling) to the row with control over alignment.
- `children`: The widgets displayed within the row.
- `clipBehavior`: Controls how the row clips its content when it overflows.
- `gapWidget`: Adds a customizable gap widget between each child in the row, excluding the outermost elements.
- `mainAxisAlignment`: Aligns children along the main (horizontal) axis.
- `mainAxisSize`: Determines how much horizontal space the row should occupy.
- `crossAxisAlignment`: Controls alignment along the cross (vertical) axis.
- `textDirection`: Specifies text direction, affecting the layout of child widgets.
- `verticalDirection`: Arranges children vertically from top to bottom or vice versa within the row.
- `textBaseline`: Aligns text along a baseline, especially useful with `crossAxisAlignment`.

---

Each property allows you to adjust the layout and appearance of `AdvancedColumn` and `AdvancedRow` precisely, making it easier to customize these widgets for complex UI requirements.

## Advanced Usage

### Using `gapWidget` for Custom Spacing

The `gapWidget` property provides flexibility to add any type of widget (typically `SizedBox`) between children to create consistent spacing. You can also use custom widgets to separate children with unique designs.

```dart
AdvancedColumn(
  gapWidget: const Divider(color: Colors.blue), // Adds a Divider between children
  children: const [
    Text('Advanced Column Item 1'),
    Text('Advanced Column Item 2'),
  ],
)
```

### Styling with `decoration`

The `decoration` property allows you to add various styles, such as borders, shadows, or gradients, making it easier to create visually appealing layouts.

```dart
AdvancedRow(
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.grey),
    boxShadow: [BoxShadow(blurRadius: 5, color: Colors.black26)],
  ),
  children: const [
    Text('Styled Row Item 1'),
    Text('Styled Row Item 2'),
  ],
)
```

## Additional Information

- **Issues**: If you encounter any issues or have suggestions, please file an issue on the [GitHub repository](https://github.com/yourusername/advanced_column_row/issues).
- **Contributions**: Contributions are welcome! Fork the repo and submit a pull request to help improve this package.

## License

This package is distributed under the MIT License. See the LICENSE file for details.
