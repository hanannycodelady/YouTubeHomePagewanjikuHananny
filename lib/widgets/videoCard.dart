import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String title;
  final String channel;
  final String imageUrl; 
  final IconData icon;

  const VideoCard({
    super.key,
    required this.title,
    required this.channel,
    required this.imageUrl, 
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Video Thumbnail with Network Image
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl), 
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8.0), 
            ),
            child: Icon(icon, color: Colors.white.withOpacity(0.8), size: 50), 
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


