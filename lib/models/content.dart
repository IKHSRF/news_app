class Content {
  final String contentTitle;
  final String uploadTime;
  final String contentViews;
  final String contentImagePath;

  Content({
    this.contentTitle,
    this.uploadTime,
    this.contentViews,
    this.contentImagePath,
  });
}

List<Content> listContent = <Content>[
  Content(
    contentTitle:
        "What programming languages are suitable to learn in 2021 to become a mobile application developer?",
    contentImagePath: 'assets/images/image2.jpg',
    contentViews: "1.374",
    uploadTime: "2",
  ),
  Content(
    contentTitle:
        "Tips for learning programming and which languages are suitable for beginners?",
    contentImagePath: 'assets/images/image3.jpg',
    contentViews: "674",
    uploadTime: "3",
  ),
  Content(
    contentTitle:
        "What are the challenges of a career in software engineering?",
    contentImagePath: 'assets/images/image1.jpg',
    contentViews: "3.374",
    uploadTime: "17",
  ),
  Content(
    contentTitle:
        "Can the true role of a teacher be replaced by an audio-visual visual technology robot?",
    contentImagePath: 'assets/images/bahasa pemrograman.jpg',
    contentViews: "4.374",
    uploadTime: "12",
  ),
  Content(
    contentTitle: "How To Be Android Developer",
    contentImagePath: 'assets/images/Android developer.jpg',
    contentViews: "374",
    uploadTime: "7",
  ),
];
