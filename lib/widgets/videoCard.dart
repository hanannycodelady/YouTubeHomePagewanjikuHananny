import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String title;
  final String channel;
  final String thumbnailColor;
  final IconData icon;

  const VideoCard({
    super.key,
    required this.title,
    required this.channel,
    required this.thumbnailColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Video Thumbnail
          Container(
            width: double.infinity,
            height: 200,
            color: Color(int.parse(thumbnailColor)), 
            child: Icon(icon, color: Colors.white, size: 50), 
          ),
          const SizedBox(height: 8),
          // Video Title Below Thumbnail
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          // Channel Info and Avatar Row
          Row(
            children: [
              const CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey,
              ),
              const SizedBox(width: 10),
              Text(
                channel,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class VideoList extends StatelessWidget {
  const VideoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Video List'),
        backgroundColor: Colors.red[900],
      ),
      body: ListView(
        children: const [
          // Video 1
          VideoCard(
            title: 'Exploring the Flutter SDK',
            channel: 'Flutter Dev Channel',
            thumbnailColor: '0xFFB71C1C', // Red
            icon: Icons.play_circle_filled,
          ),
          // Video 2
          VideoCard(
            title: 'perfect serve',
            channel: 'relturn',
            thumbnailColor: '0xFF1E88E5', // Blue
            icon: Icons.play_circle_filled,
          ),
          // Video 3
          VideoCard(
            title: 'Mastering Dart for Beginners',
            channel: 'Gorret golden',
            thumbnailColor: '0xFF43A047', // Green
            icon: Icons.play_circle_filled,
          ),
          // Video 4
          VideoCard(
            title: 'Top 10 Flutter Widgets',
            channel: 'Techie World',
            thumbnailColor: '0xFFFDD835', // Yellow
            icon: Icons.play_circle_filled,
          ),
          // Video 5
          VideoCard(
            title: 'Building a Responsive UI in Flutter',
            channel: 'Mobile Dev Weekly',
            thumbnailColor: '0xFF8E24AA', // Purple
            icon: Icons.play_circle_filled,
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: VideoList()));
}


// import 'package:flutter/material.dart';

// class VideoCard extends StatelessWidget {
//   const VideoCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Video Thumbnail
//           Container(
//             width: 300,
//             height: 200,
//             color: Colors.grey[800],
//             child: const Icon(Icons.play_arrow, color: Colors.white),
//           ),
//           const SizedBox(width: 10),
//           // Video Details: Title and Channel Info
//          const Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                  Text(
//                   'Sample Video Title',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(height: 5),
//                 Row(
//                   children:  [
//                     CircleAvatar(
//                       radius: 10,
//                       backgroundColor: Colors.grey,
//                     ),
//                     SizedBox(width: 5),
//                     Text(
//                       'Channel Name',
//                       style: TextStyle(fontSize: 12, color: Colors.grey),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// // import 'package:flutter/material.dart';

// // class VideoCard extends StatelessWidget {
// //   const VideoCard({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
// //       child: Column(
// //         children: [
// //           Image.network('https://www.youtube.com/watch?v=90ah8XTscJE'), // Replace with actual video thumbnail URL
// //           const ListTile(
// //             leading:  CircleAvatar(
// //               // backgroundImage: NetworkImage('https://example.com/channel-avatar.jpg'), // Replace with actual avatar URL
// //             ),
// //             title:  Text('Video Title Here'),
// //             subtitle:  Text('Channel Name • 1M views • 6 days ago'),
// //             trailing:  Icon(Icons.more_vert),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
