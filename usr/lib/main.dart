import 'package:flutter/material.dart';
import 'data/project_data.dart';

void main() {
  runApp(const AccountancyProjectApp());
}

class AccountancyProjectApp extends StatelessWidget {
  const AccountancyProjectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class 12 Accountancy Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 2,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accountancy Project File'),
      ),
      body: Row(
        children: [
          // Navigation Side Bar (for larger screens or just visual structure)
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey.shade100,
              child: ListView.builder(
                itemCount: ProjectData.sections.length,
                itemBuilder: (context, index) {
                  final section = ProjectData.sections[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.indigo.shade100,
                      child: Text('${index + 1}', style: const TextStyle(color: Colors.indigo)),
                    ),
                    title: Text(section.title, style: const TextStyle(fontWeight: FontWeight.w500)),
                    trailing: const Icon(Icons.chevron_right, size: 16),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContentScreen(section: section),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Show a dialog about how to use this
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text("How to use"),
              content: const Text(
                  "This app contains all the material for your 30-page project.\n\n"
                  "1. Open each section.\n"
                  "2. Copy the text content.\n"
                  "3. Paste it into MS Word or write it in your project file.\n"
                  "4. Use the tables provided for the 'Data Analysis' section."),
              actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text("OK"))],
            ),
          );
        },
        label: const Text("Help"),
        icon: const Icon(Icons.help_outline),
      ),
    );
  }
}

class ContentScreen extends StatelessWidget {
  final ProjectSection section;

  const ContentScreen({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(section.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (section.isTable && section.tableData != null)
              _buildTable(section.tableData!)
            else
              Text(
                section.content,
                style: const TextStyle(fontSize: 16, height: 1.6),
              ),
            const SizedBox(height: 40),
            Center(
              child: Text(
                "- End of ${section.title} -",
                style: TextStyle(color: Colors.grey.shade400, fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTable(Map<String, List<String>> data) {
    // Extract headers and rows
    final headers = data.keys.toList();
    final rowCount = data.values.first.length;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        border: TableBorder.all(color: Colors.grey.shade300),
        headingRowColor: MaterialStateProperty.all(Colors.indigo.shade50),
        columns: [
          const DataColumn(label: Text('Particulars', style: TextStyle(fontWeight: FontWeight.bold))),
          const DataColumn(label: Text('Jio (2024)', style: TextStyle(fontWeight: FontWeight.bold))),
          const DataColumn(label: Text('Airtel (2024)', style: TextStyle(fontWeight: FontWeight.bold))),
        ],
        rows: List.generate(rowCount, (index) {
          return DataRow(cells: [
            DataCell(Text(data['Particulars']![index])),
            DataCell(Text(data['Jio (2024)']![index])),
            DataCell(Text(data['Airtel (2024)']![index])),
          ]);
        }),
      ),
    );
  }
}
