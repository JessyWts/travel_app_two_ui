import 'package:flutter/material.dart';
import '../models/models.dart';

import 'title_section.dart';

class HotelCaroussel extends StatelessWidget {
  const HotelCaroussel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<HotelModel> hotelList = HotelModel.hotels;

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TitleSection(title: 'Exclusives Hotels',),
        ),
        SizedBox(
          height: 330.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            //shrinkWrap: true,
            itemCount: hotelList.length,
            itemBuilder: (BuildContext context, int index) {
              HotelModel hotel = hotelList[index];
              return Container(
                margin: const EdgeInsets.all(10.0),
                width: 240.0,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                      bottom: 15.0,
                      child: Container(
                        height: 140.0,
                        width: 240.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                hotel.name,
                                style: const TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2
                                ),
                              ),
                              const SizedBox(height: 2.0,),
                              Text(
                                hotel.address,
                                style: const TextStyle(
                                  color: Colors.grey
                                ),
                              ),
                              const SizedBox(height: 2.0,),
                              Text(
                                '\$${hotel.price} / night',
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 6.0,
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                          )
                        ]
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          height: 180.0,
                          width: 220.0,
                          image: AssetImage(hotel.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}