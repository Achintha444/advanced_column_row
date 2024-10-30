import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:advanced_column_row/advanced_column_row.dart';

void main() {
  group(
    'AdvancedColumn Tests',
    () {
      testWidgets('renders children with padding and gap',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: AdvancedColumn(
                padding: EdgeInsets.all(8.0),
                gapWidget: SizedBox(height: 10),
                children: [
                  Text('Child 1'),
                  Text('Child 2'),
                ],
              ),
            ),
          ),
        );

        // Verify padding is applied to the column.
        final paddingFinder = find.byWidgetPredicate((widget) =>
            widget is Padding && widget.padding == const EdgeInsets.all(8.0));
        expect(paddingFinder, findsOneWidget);

        // Verify gap between children.
        final gapFinder = find.byType(SizedBox);
        expect(gapFinder, findsOneWidget);

        // Verify child widgets are present.
        expect(find.text('Child 1'), findsOneWidget);
        expect(find.text('Child 2'), findsOneWidget);
      });

      testWidgets('applies decoration and alignment properties',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: AdvancedColumn(
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.blue),
                children: [Text('Test')],
              ),
            ),
          ),
        );

        // Verify container decoration is applied.
        final containerFinder = find.byWidgetPredicate((widget) =>
            widget is Container &&
            widget.decoration == const BoxDecoration(color: Colors.blue));
        expect(containerFinder, findsOneWidget);

        // Verify alignment is applied.
        final columnFinder = find.byType(Column);
        expect((tester.widget(columnFinder) as Column).crossAxisAlignment,
            equals(CrossAxisAlignment.center));
      });
    },
  );

  group('AdvancedRow Tests', () {
    testWidgets('renders children with padding and gap',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AdvancedRow(
              padding: EdgeInsets.all(8.0),
              gapWidget: SizedBox(width: 10),
              children: [
                Text('Child 1'),
                Text('Child 2'),
              ],
            ),
          ),
        ),
      );

      // Verify padding is applied to the row.
      final paddingFinder = find.byWidgetPredicate((widget) =>
          widget is Padding && widget.padding == const EdgeInsets.all(8.0));
      expect(paddingFinder, findsOneWidget);

      // Verify gap between children.
      final gapFinder = find.byType(SizedBox);
      expect(gapFinder, findsOneWidget);

      // Verify child widgets are present.
      expect(find.text('Child 1'), findsOneWidget);
      expect(find.text('Child 2'), findsOneWidget);
    });

    testWidgets('applies decoration and alignment properties',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AdvancedRow(
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.green),
              children: [Text('Test')],
            ),
          ),
        ),
      );

      // Verify container decoration is applied.
      final containerFinder = find.byWidgetPredicate((widget) =>
          widget is Container &&
          widget.decoration == const BoxDecoration(color: Colors.green));
      expect(containerFinder, findsOneWidget);

      // Verify alignment is applied.
      final rowFinder = find.byType(Row);
      expect((tester.widget(rowFinder) as Row).crossAxisAlignment,
          equals(CrossAxisAlignment.center));
    });
  });
}
