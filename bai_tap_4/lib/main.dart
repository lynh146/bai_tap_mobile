import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NullableExample(),
    );
  }
}

class NullableExample extends StatefulWidget {
  const NullableExample({super.key});

  @override
  State<NullableExample> createState() => _NullableExampleState();
}

class _NullableExampleState extends State<NullableExample> {
  String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nullable Flutter Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Nhập tên',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  name = value.isEmpty ? null : value;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: checkName,
              child: const Text('Kiểm tra'),
            ),
          ],
        ),
      ),
    );
  }

  void checkName() {
    int length = name?.length ?? 0;

    if (name != null) {
      showMessage('Tên: $name\nĐộ dài: $length');
    } else {
      showMessage('Bạn chưa nhập tên!');
    }
  }

  void showMessage(String message) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: Text(message),
      ),
    );
  }
}
