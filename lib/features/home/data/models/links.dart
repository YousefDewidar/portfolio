class Links {
  final String? repo;
  final String? googlePlay;
  final String? download;

  Links({required this.download, required this.googlePlay, required this.repo});

  factory Links.fromJson(Map<String, dynamic> data) {
    return Links(
      repo: data['repo'] as String?,
      googlePlay: data['googlePlay'] as String?,
      download: data['download'] as String?,
    );
  }
}
