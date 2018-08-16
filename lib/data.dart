class IntroItem {
  IntroItem({
    this.title,
    this.category,
    this.imageUrl,
  });

  final String title;
  final String category;
  final String imageUrl;
}

final sampleItems = <IntroItem>[
  new IntroItem(title: 'Fresh you will get it\'s our promise!', category: 'FRESH VEGETABLE', imageUrl: 'assets/veg1.jpg',),
  new IntroItem(title: 'Fresh delious fruit directly from garden to your door step.', category: 'FRUIT', imageUrl: 'assets/fruit.jpg',),
  new IntroItem(title: 'Fresh Non veg at you door step so book you order now', category: 'NON VEG', imageUrl: 'assets/nonveg.jpg',),
];