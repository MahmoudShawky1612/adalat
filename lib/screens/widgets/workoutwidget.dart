import 'package:flutter/material.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class WorkoutWidget extends StatefulWidget {
  const WorkoutWidget({Key? key}) : super(key: key);

  @override
  State<WorkoutWidget> createState() => _WorkoutWidgetState();
}

class _WorkoutWidgetState extends State<WorkoutWidget> {
  List<Video>? _videos;

  List<String> shop = [
    'assets/images/OIP (3).jpg',
    'assets/images/OIP (3).jpg',
    'assets/images/OIP (3).jpg',
    'assets/images/OIP (3).jpg',
  ];

  @override
  void initState() {
    super.initState();
    _fetchYouTubeVideos();
  }

  Future<void> _fetchYouTubeVideos() async {
    try {
      var yt = YoutubeExplode();
      var videoIds = [
        'eTxO5ZMxcsc', // Extracted from the YouTube URL
        '0A3EgOztptQ', // Extracted from the YouTube URL
        '3p8EBPVZ2Iw', // Extracted from the YouTube URL
        'ALXh7L4cfKk', // Extracted from the YouTube URL
      ];

      _videos = await Future.wait(videoIds.map((videoId) => yt.videos.get(videoId)));

      setState(() {});

    } catch (e) {
      print('Error fetching YouTube videos: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            "Workouts",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        SizedBox(height: 20),
        _videos != null
            ? SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _videos!.length,
            itemBuilder: (context, index) {
              var video = _videos![index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage(video.thumbnails.mediumResUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: IconButton(
                        onPressed: () {
                          // Add your save functionality here
                        },
                        icon: Icon(Icons.battery_saver,color: Colors.teal,size: 40,),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
            : Center(child: CircularProgressIndicator()),
        SizedBox(height: 50),
      ],
    );
  }
}
