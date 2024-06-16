class UnboardingContent {
  String title;
  String description;
  String image;

  UnboardingContent({
    required this.title,
    required this.description,
    required this.image,
  });
}

List<UnboardingContent> contents = [
  UnboardingContent(
    title: 'Welcome to our app',
    description: 'Unlock a world of rich flavors and aromatic delights.',
    image: 'images/banner1.png',
  ),
  UnboardingContent(
    title: 'Welcome to our app',
    description: 'Your go-to app for energizing coffee experiences. Sip, savor, and enjoy the best coffee in town.',
    image: 'images/banner2.png',
  ),
  UnboardingContent(
    title: 'Welcome to our app',
    description: 'Welcome to your daily dose of perfection. Discover the freshest brews and start your day right.',
    image: 'images/banner3.png',
  ),
];