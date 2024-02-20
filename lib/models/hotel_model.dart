// ignore_for_file: public_member_api_docs, sort_constructors_first
class HotelModel {
  String imageUrl;
  String name;
  String address;
  int price;

  HotelModel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });

  static List<HotelModel> hotels = [
    HotelModel(
      imageUrl: 'assets/images/hotel0.jpeg',
      name: 'Hotel 0',
      address: '404 Great St',
      price: 175,
    ),
    HotelModel(
      imageUrl: 'assets/images/hotel1.jpeg',
      name: 'Hotel 1',
      address: '404 Great St',
      price: 300,
    ),
    HotelModel(
      imageUrl: 'assets/images/hotel2.jpeg',
      name: 'Hotel 2',
      address: '404 Great St',
      price: 240,
    ),
  ];
}

