// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:travel_app_two_ui/models/activity_model.dart';

class DestinationModel {
  String imageUrl;
  String city;
  String country;
  String description;
  List<ActivityModel> activities;

  DestinationModel({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });

  static List<DestinationModel> destinations = [
    DestinationModel(
      imageUrl: 'assets/images/venice.jpeg',
      city: 'Venice',
      country: 'Italy',
      description: 'Visit Venice for an amazing and unforgettable adventure.',
      activities: ActivityModel.activities,
    ),
    DestinationModel(
      imageUrl: 'assets/images/paris.jpeg',
      city: 'Paris',
      country: 'France',
      description: 'Visit Paris for an amazing and unforgettable adventure.',
      activities: ActivityModel.activities,
    ),
    DestinationModel(
      imageUrl: 'assets/images/newdelhi.jpeg',
      city: 'New Delhi',
      country: 'India',
      description: 'Visit New Delhi for an amazing and unforgettable adventure.',
      activities: ActivityModel.activities,
    ),
    DestinationModel(
      imageUrl: 'assets/images/saopaulo.jpeg',
      city: 'Sao Paulo',
      country: 'Brazil',
      description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
      activities: ActivityModel.activities,
    ),
    DestinationModel(
      imageUrl: 'assets/images/newyork.jpeg',
      city: 'New York City',
      country: 'United States',
      description: 'Visit New York for an amazing and unforgettable adventure.',
      activities: ActivityModel.activities,
    ),
  ];
}
