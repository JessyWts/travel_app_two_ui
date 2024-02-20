import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  final List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personHiking,
    FontAwesomeIcons.car,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: CircleAvatar(
        radius: 30.0,
        backgroundColor: _selectedIndex == index ? Theme.of(context).colorScheme.secondary : const Color(0xFFE7EBEE),
        child: Icon(
          _icons[index],
          size: 20.0,
          color: _selectedIndex == index ? Theme.of(context).primaryColor : const Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          children:  <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0 ),
              child: Text(
                'What would you like to find?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons.asMap().entries.map(
                (MapEntry map) => _buildIcon(map.key),
              ).toList(),
            ),
            const SizedBox(height: 20.0,),
            const DestinationCaroussel(),
            const SizedBox(height: 20.0,),
            const HotelCaroussel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentTab = value;
          });
        },
        backgroundColor: Colors.white,
        currentIndex: _currentTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_pizza,
              size: 30.0,
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp'),
            ),
            label: ''
          ),
        ],
      ),
    );
  }
}