import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/videoCard.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildCategorySection(),
            const SizedBox(height: 10),
            _buildVideoSection(),
            const SizedBox(height: 10),
            _buildShortsSection(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }

  // Build the Video Category Section
  Widget _buildCategorySection() {
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          _CategoryChip('All'),
          _CategoryChip('Music'),
          _CategoryChip('Gaming'),
          _CategoryChip('News'),
          _CategoryChip('Live'),
        ],
      ),
    );
  }

  // Sample video data
  final List<Map<String, String>> videos = [
    {
      'title': 'Exploring the Flutter SDK',
      'channel': 'Flutter Dev Channel',
      'thumbnailColor': '0xFFB71C1C', // Red
    },
    {
      'title': 'Perfect Serve',
      'channel': 'Relturn',
      'thumbnailColor': '0xFF1E88E5', // Blue
    },
    {
      'title': 'Mastering Dart for Beginners',
      'channel': 'Gorret Golden',
      'thumbnailColor': '0xFF43A047', // Green
    },
    {
      'title': 'Top 10 Flutter Widgets',
      'channel': 'Techie World',
      'thumbnailColor': '0xFFFDD835', // Yellow
    },
    {
      'title': 'Building a Responsive UI in Flutter',
      'channel': 'Mobile Dev Weekly',
      'thumbnailColor': '0xFF8E24AA', // Purple
    },
  ];

  // Build the main video section with thumbnails, title, and channel info
  Widget _buildVideoSection() {
    return Column(
      children: List.generate(videos.length, (index) {
        return VideoCard(
          title: videos[index]['title']!,
          channel: videos[index]['channel']!,
          thumbnailColor: videos[index]['thumbnailColor']!,
          icon: Icons.play_circle_filled,
        );
      }),
    );
  }

  // Build the Shorts section
  Widget _buildShortsSection() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Shorts',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 150,
          child: _ShortsList(),
        ),
      ],
    );
  }
}

// Widget for the Video Category Chips
class _CategoryChip extends StatelessWidget {
  final String label;
  const _CategoryChip(this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}

// Widget for the Shorts List
class _ShortsList extends StatelessWidget {
  const _ShortsList();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 100,
            color: Colors.grey, // Set a color for the container
            // You can add content here (e.g., images or text)
            child: Center(
              child: Text(
                'Short $index',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }
}
