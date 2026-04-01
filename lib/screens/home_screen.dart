import 'package:flutter/material.dart';
import 'package:waylo/screens/itinerary_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WAYLO'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: '목적지 입력',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ItineraryScreen(destination: _textController.text)),
                );
              },
              child: const Text('검색'),
            ),
            const SizedBox(height: 16),
            const Text('최근 목적지 목록'),
            const SizedBox(height: 8),
            // 최근 목적지 목록 표시
          ],
        ),
      ),
    );
  }
}