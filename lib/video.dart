class Video {
  final int id;
  final String title;
  final String description;
  final String imagePath;
  final String videoPath;
  final int length;
  final String createdAt;
  final String updatedAt;

  const Video({
    required this.id,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.videoPath,
    required this.length,
    required this.createdAt,
    required this.updatedAt,
  });
}