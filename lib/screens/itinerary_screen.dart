```dart
import 'package:flutter/material.dart';

class ItineraryScreen extends StatefulWidget {
  final String destination;

  const ItineraryScreen({Key? key, required this.destination}) : super(key: key);

  @override
  State<ItineraryScreen> createState() => _ItineraryScreenState();
}

class _ItineraryScreenState extends State<ItineraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.destination),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('AI가 생성한 3박 4일 일정'),
            const SizedBox(height: 16),
            // 일정 표시
            ElevatedButton(
              onPressed: () {
                // 일정 변경 버튼
              },
              child: const Text('일정 변경'),
            ),
          ],
        ),
      ),
    );
  }
}

```