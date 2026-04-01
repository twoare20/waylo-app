```dart
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class ItineraryScreen extends StatefulWidget {
  final String destination;

  const ItineraryScreen({Key? key, required this.destination}) : super(key: key);

  @override
  State<ItineraryScreen> createState() => _ItineraryScreenState();
}

class _ItineraryScreenState extends State<ItineraryScreen> {
  final _itinerary = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.destination),
      ),
      body: Column(
        children: [
          Expanded(
            child: FlutterMap(
              options: MapOptions(
                center: [37.7749, -122.4194], // 서울시 위치
                zoom: 12,
              ),
              layers: [
                TileLayerOptions(
                  urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: ['a', 'b', 'c'],
                ),
                MarkerLayerOptions(
                  markers: [
                    // 마커 표시
                    Marker(
                      width: 40,
                      height: 40,
                      point: [37.7749, -122.4194],
                      builder: (ctx) => Icon(Icons.place),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _itinerary.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(_itinerary[index]['name']),
                        Text(_itinerary[index]['address']),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
```