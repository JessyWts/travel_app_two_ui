// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../models/models.dart';

class DestinationScreen extends StatefulWidget {
  final DestinationModel destination;
  const DestinationScreen({
    Key? key,
    required this.destination,
  }) : super(key: key);

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions:  const [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30.0
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.filter_list,
              color: Colors.black,
              size: 30.0
            ),
            onPressed: null,
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30.0,
          )
        )
      ),
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0
                    )
                  ]
                ),
                child: Hero(
                  tag: widget.destination.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      image: AssetImage(widget.destination.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.destination.city, 
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 15.0,
                          color: Colors.white70,
                        ),
                        const SizedBox(width: 5.0,),
                        Text(
                          widget.destination.country,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 20.0
                          ),
                          
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white70,
                  size: 25,
                ),
              ),
              const Positioned(
                right: 40.0,
                bottom: 35.0,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white70,
                  size: 15,
                ),
              ),
            ],
          ),
          buildActivityListView(),
        ],
      ),
    );
  }

  Expanded buildActivityListView() {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
        itemCount: widget.destination.activities.length,
        itemBuilder: (BuildContext context, int index) {
          ActivityModel activity = widget.destination.activities[index];
          return Stack(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                height: 175.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                  child: Column (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: 120.0,
                            child: Text(
                              activity.name,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                '\$${activity.price}',
                                style: const TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                              const Text(
                                'per pax',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        activity.type,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      buildRatingStars(activity.rating),
                      const SizedBox(
                        height: 15.0,
                      ),
                      buildActivityTimesBadge(context, activity)
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20.0,
                top: 15.0,
                bottom: 15.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    width: 110.0,
                    image: AssetImage(
                      activity.imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Row buildActivityTimesBadge(BuildContext context, ActivityModel activity) {
    return Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          width: 70.0,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            activity.startTimes[0],
                            style: const TextStyle(
                              fontSize: 12
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          width: 70.0,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            activity.startTimes[1],
                            style: const TextStyle(
                              fontSize: 12
                            ),
                          ),
                        ),
                      ],
                    );
  }

  Text buildRatingStars(int rating) {
    String stars = '';
    for (var i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }
}