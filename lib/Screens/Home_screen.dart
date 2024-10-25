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

  final List<Map<String, String>> videos = [
    {
      'title': 'Overcomer',
      'channel': 'Sony Pictures Entertainment',
      'imageUrl': 'https://m.media-amazon.com/images/M/MV5BMzlmMjE4ODItODEzMS00ODkxLTg2NzAtODdkYzkxMWIwODMxXkEyXkFqcGc@._V1_.jpg',
    },
    {
      'title': 'Perfect Serve',
      'channel': 'Relturn',
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsCQUTGsIbE-CaSfVe80j4JGukw9OpYTq7BQ&s',
    },
    {
      'title': 'Mastering Dart for Beginners',
      'channel': 'Gorret Golden',
      'imageUrl': 'https://m.media-amazon.com/images/I/61KxfNgW7ZL._AC_UF1000,1000_QL80_.jpg',
    },
    {
      'title': 'Ed Sheeran Top Hit Songs',
      'channel': 'Bonzer Player',
      'imageUrl': 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Ed_Sheeran_4%2C_2013.jpg/800px-Ed_Sheeran_4%2C_2013.jpg',
    },
    {
      'title': 'Adele Hits',
      'channel': 'Best Songs of Adele',
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpA-7NWCg7nPQJrk_GQYBr-CB7Kz2WqoajYA&s',
    },
  ];

  Widget _buildVideoSection() {
    return Column(
      children: List.generate(videos.length, (index) {
        return VideoCard(
          title: videos[index]['title']!,
          channel: videos[index]['channel']!,
          imageUrl: videos[index]['imageUrl']!,
          icon: Icons.play_circle_filled,
        );
      }),
    );
  }

  Widget _buildShortsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image(
                image: AssetImage('assets/images/shorts-removebg-preview.png'),
                height: 30,
              ),
              SizedBox(width: 8),
              Text(
                'Shorts',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 600,
          child: ShortsList(),
        ),
      ],
    );
  }
}

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

class ShortsList extends StatelessWidget {
  final List<Map<String, String>> shorts = [
    {
      'title': 'Never miss a tennis volley again.',
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWUG1mUvsPPnf-CzN2znkcWzOqbt9NiRyJng&s',
    },
    {
      'title': 'Braces change your smile.',
      'imageUrl': 'https://t4.ftcdn.net/jpg/01/77/99/79/360_F_177997962_7xhJgclDKvOvpm065DrAt4PeTFCsOHHM.jpg',
    },
    {
      'title': 'Perfect hair growth.',
      'imageUrl': 'https://media.istockphoto.com/id/1414766208/photo/man-with-hair-loss-problem-before-and-after-treatment-on-grey-background-collage-visiting.jpg?s=612x612&w=0&k=20&c=bYciuFvCMPs5CF1eQdi07E2ZXydk5Sn-TuHnMQtN5zA=',
    },
    {
      'title': 'The most textbook forehand ever!',
      'imageUrl': 'https://images.tennis.com/image/private/t_16-9_768/f_auto/tenniscom-prd/onhvby18i444dghjnwvw.jpg',
    },
  ];

  ShortsList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.75,
      ),
      itemCount: shorts.length,
      itemBuilder: (context, index) {
        return ShortsCard(
          title: shorts[index]['title']!,
          imageUrl: shorts[index]['imageUrl']!,
        );
      },
    );
  }
}

// Updated ShortsCard to display title on the image
class ShortsCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const ShortsCard({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image for shorts
        Container(
          height: 250,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Title overlay
        Positioned(
          bottom: 8,
          left: 8,
          child: Container(
            padding: const EdgeInsets.all(4.0),
            color: Colors.black54, // Semi-transparent background
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
