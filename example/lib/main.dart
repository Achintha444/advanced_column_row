import "package:advanced_column_row/advanced_column_row.dart";
import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Advanced Column Row Demo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Advanced Column Row Demo"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: AdvancedColumn(
          padding: const EdgeInsets.all(4),
          children: [
            const Text(
              "Advanced Column Demo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  // AdvancedColumn Examples
                  AdvancedColumn(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    gapWidget: const SizedBox(height: 10),
                    children: const [
                      Text("Advanced Column Example 1"),
                      Text("With custom padding and margin"),
                    ],
                  ),
                  const AdvancedColumn(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                    ),
                    gapWidget: SizedBox(height: 5),
                    children: [
                      Icon(Icons.star, size: 30, color: Colors.white),
                      Text("Circular Column"),
                      Icon(Icons.star, size: 30, color: Colors.white),
                    ],
                  ),
                  const AdvancedColumn(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(2, 3),
                        ),
                      ],
                    ),
                    gapWidget: Divider(color: Colors.black),
                    children: [
                      Text("Advanced Column with Divider"),
                      Text("Counter: 8"),
                    ],
                  ),
                  const AdvancedColumn(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(color: Colors.pinkAccent),
                    gapWidget: SizedBox(height: 8),
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Column with Center Alignment"),
                      Icon(Icons.favorite, color: Colors.white, size: 30),
                    ],
                  ),
                  AdvancedColumn(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.purple, Colors.deepPurple],
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    gapWidget: const SizedBox(height: 12),
                    padding: const EdgeInsets.all(16),
                    children: const [
                      Icon(Icons.cloud, color: Colors.white),
                      Text(
                        "Gradient Background",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Text(
              "Advanced Row Demo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  // AdvancedRow Examples
                  AdvancedRow(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    gapWidget: const SizedBox(width: 10),
                    children: const [
                      Text("Advanced Row \nExample 1"),
                      Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
                  const AdvancedRow(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.circle,
                    ),
                    gapWidget: SizedBox(width: 10),
                    children: [
                      Icon(Icons.face, size: 30, color: Colors.white),
                      Text("Circular Row"),
                    ],
                  ),
                  const AdvancedRow(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(2, 3),
                        ),
                      ],
                    ),
                    gapWidget: Divider(color: Colors.black),
                    children: [
                      Text("Row with Divider"),
                      Icon(Icons.circle, color: Colors.black, size: 8),
                      Text("End"),
                    ],
                  ),
                  AdvancedRow(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.cyanAccent,
                      border: Border.all(color: Colors.blueAccent),
                    ),
                    gapWidget: const SizedBox(width: 5),
                    children: const [
                      Text("Counter:"),
                      Text(
                        "8",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  AdvancedRow(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.teal, Colors.green],
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    gapWidget: const SizedBox(width: 8),
                    children: const [
                      Icon(Icons.wb_sunny, color: Colors.white),
                      Text(
                        "Gradient \nBackground Row",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
