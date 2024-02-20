// ignore_for_file: public_member_api_docs, sort_constructors_first
class ActivityModel {
  String imageUrl;
  String name;
  String type;
  List<String> startTimes;
  int rating;
  int price;

  ActivityModel({
    required this.imageUrl,
    required this.name,
    required this.type,
    required this.startTimes,
    required this.rating,
    required this.price,
  });

  static List<ActivityModel> activities = [
  ActivityModel(
    imageUrl: 'assets/images/stmarksbasilica.jpeg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  ActivityModel(
    imageUrl: 'assets/images/gondola.jpeg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  ActivityModel(
    imageUrl: 'assets/images/murano.jpeg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];
}
