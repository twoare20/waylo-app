import 'package:flutter/material.dart';
import 'itinerary_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();

  void _generateItinerary() {
    final destination = _controller.text.trim();
    if (destination.isEmpty) return;

    final itinerary = [
      {'description': '$destination 도착 및 숙소 체크인. 주변 맛집 탐방.'},
      {'description': '오전 주요 관광지 방문. 오후 자유 시간.'},
      {'description': '인근 명소 투어. 저녁 특산물 식사.'},
      {'description': '마지막 쇼핑 후 귀가.'},
    ];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ItineraryScreen(
          destination: destination,
          itinerary: itinerary,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WAYLO'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '어디로 여행 갈까요?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: '예: 제주도, 부산, 경주',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _generateItinerary,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  '일정 만들기',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
