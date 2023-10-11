class Data {
  static const List<String> myNames = [
    'John Smith',
    'Jane Doe',
    'Michael Johnson',
    'Emily Wilson',
    'William Davis',
    'Jane Doe',
    'Michael Johnson',
    'Emily Wilson',
    'William Davis',
    'Jane Doe',
    'Michael Johnson',
    'Emily Wilson',
    'William Davis',
    'Olivia Rodriguez',
  ];
  static const List<String> myProfileHighlights = [
    "Travel",
    "Food",
    "Fitness",
    "Art",
    "Pets",
    "Nature",
    "Fashion",
    "Music",
  ];

  static List<Post> postList = [
    Post(
      imageUrl: 'https://picsum.photos/400/400', // Set the URL for this object
      name: 'John Doe',
      location: 'New York, USA',
      likes: 152,
    ),
    Post(
      imageUrl: 'https://picsum.photos/400/400', // Set the URL for this object
      name: 'Jane Smith',
      location: 'Los Angeles, USA',
      likes: 200,
    ),
    Post(
      imageUrl: 'https://picsum.photos/400/400', // Set the URL for this object
      name: 'David Johnson',
      location: 'London, UK',
      likes: 87,
    ),
    Post(
      imageUrl: 'https://picsum.photos/400/400', // Set the URL for this object
      name: 'John Doe',
      location: 'New York, USA',
      likes: 152,
    ),
    Post(
      imageUrl: 'https://picsum.photos/400/400', // Set the URL for this object
      name: 'Jane Smith',
      location: 'Los Angeles, USA',
      likes: 200,
    ),
    Post(
      imageUrl: 'https://picsum.photos/400/400', // Set the URL for this object
      name: 'David Johnson',
      location: 'London, UK',
      likes: 87,
    ),
    Post(
      imageUrl: 'https://picsum.photos/400/400', // Set the URL for this object
      name: 'John Doe',
      location: 'New York, USA',
      likes: 152,
    ),
    Post(
      imageUrl: 'https://picsum.photos/400/400', // Set the URL for this object
      name: 'Jane Smith',
      location: 'Los Angeles, USA',
      likes: 200,
    ),
    Post(
      imageUrl: 'https://picsum.photos/400/400', // Set the URL for this object
      name: 'David Johnson',
      location: 'London, UK',
      likes: 87,
    ),
    // Add more posts with details here
  ];
}

class Post {
  String imageUrl;
  final String name;
  final String location;
  final int likes;

  Post({
    required this.imageUrl,
    required this.name,
    required this.location,
    required this.likes,
  });
}
