import "package:flutter/widgets.dart";

/// A row widget that allows for more advanced customization. Its similar to the [Row] widget and
/// adds additional properties.
class AdvancedRow extends StatelessWidget {
  const AdvancedRow({
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
    this.textBaseline
  });

  /// The children of the row.
  final List<Widget> children;

  /// The alignment of the row.
  final AlignmentGeometry? alignment;

  /// The padding of the row.
  final EdgeInsetsGeometry? padding;

  /// Background decoration of the row.
  final Decoration? decoration;

  /// Foreground decoration of the row.
  final Decoration? foregroundDecoration;

  /// The width of the row.
  final double? width;

  /// The height of the row.
  final double? height;

  /// The constraints of the row.
  final BoxConstraints? constraints;

  /// The margin of the row.
  final EdgeInsetsGeometry? margin;

  /// The transform of the row.
  final Matrix4? transform;

  /// The alignment of the transform.
  final AlignmentGeometry? transformAlignment;

  /// The clip behavior of the row.
  final Clip clipBehavior;

  /// The gap widget between the children.
  /// Important: This will not add the widget to the top most and bottom most of the row.
  final Widget gapWidget;

  /// The main axis alignment of the row.
  final MainAxisAlignment mainAxisAlignment;

  /// The main axis size of the row.
  final MainAxisSize mainAxisSize;

  /// The cross axis alignment of the row.
  final CrossAxisAlignment crossAxisAlignment;

  /// The text direction of the row.
  final TextDirection? textDirection;

  /// The vertical direction of the row.
  final VerticalDirection verticalDirection;

  /// The text baseline of the row.
  final TextBaseline? textBaseline;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Row(
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
