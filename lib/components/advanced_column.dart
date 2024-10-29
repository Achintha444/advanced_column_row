import "package:flutter/widgets.dart";

/// A column that have additional properties. It's a wrapper around [Column] and
/// adds additional properties.
class AdvancedColumn extends StatelessWidget {
  const AdvancedColumn({
    super.key,
    this.alignment,
    this.padding,
    this.decoration,
    this.foregroundDecoration,
    this.width,
    this.height,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.children = const [],
    this.clipBehavior = Clip.none,
    this.gapWidget = const SizedBox(
      height: 0,
      width: 0,
    ),
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
  });

  /// The children of the column.
  final List<Widget> children;

  /// The alignment of the column.
  final AlignmentGeometry? alignment;

  /// The padding of the column.
  final EdgeInsetsGeometry? padding;

  /// Background decoration of the column.
  final Decoration? decoration;

  /// Foreground decoration of the column.
  final Decoration? foregroundDecoration;

  /// The width of the column.
  final double? width;

  /// The height of the column.
  final double? height;

  /// The constraints of the column.
  final BoxConstraints? constraints;

  /// The margin of the column.
  final EdgeInsetsGeometry? margin;

  /// The transform of the column.
  final Matrix4? transform;

  /// The alignment of the transform.
  final AlignmentGeometry? transformAlignment;

  /// The clip behavior of the column.
  final Clip clipBehavior;

  /// The gap widget between the children.
  /// Important: This will not add the widget to the top most and bottom most of the column.
  final Widget gapWidget;

  /// The main axis alignment of the column.
  final MainAxisAlignment mainAxisAlignment;

  /// The main axis size of the column.
  final MainAxisSize mainAxisSize;

  /// The cross axis alignment of the column.
  final CrossAxisAlignment crossAxisAlignment;

  /// The text direction of the column.
  final TextDirection? textDirection;

  /// The vertical direction of the column.
  final VerticalDirection verticalDirection;

  /// The text baseline of the column.
  final TextBaseline? textBaseline;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      alignment: alignment,
      padding: padding,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      transformAlignment: transformAlignment,
      clipBehavior: clipBehavior,
      child: Column(
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        children: [
          for (int i = 0; i < children.length; i++) ...[
            children[i],
            if (i < children.length - 1) gapWidget, // Insert gap
          ],
        ],
      ),
    );
  }
}
