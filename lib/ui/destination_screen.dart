import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app_design/domain/models/activity_model.dart';
import 'package:travel_app_design/domain/models/destination_model.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  DestinationScreen({
    this.destination
  });

  @override
  _DestinationScreenState createState() => _DestinationScreenState();

}

class _DestinationScreenState extends State<DestinationScreen> {
  _buildRatingStars(int rating) {
    String stars = '';

    for(int i=0; i<rating; i++) {
      stars += '⭐ ️';
    }

    return Text(stars.trim());
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(height:  MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  boxShadow: [BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0)]
                ),
                  child: Hero(
                    tag: widget.destination.imageUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      child: Image.network(widget.destination.imageUrl,
                      fit: BoxFit.cover,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30.0,
                          color: Colors.black,
                          onPressed: () => Navigator.pop(context)
                      ),Row(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.search),
                              iconSize: 30.0,
                              color: Colors.black,
                              onPressed: () => Navigator.pop(context)
                          ),IconButton(
                              icon: Icon(FontAwesomeIcons.sortAmountDown),
                              iconSize: 25.0,
                              color: Colors.black,
                              onPressed: () => Navigator.pop(context)
                          ),
                        ],
                      )
                    ],
                  ),
                ),Positioned(
                  left: 20.0,
                  bottom: 20.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.destination.city,
                        style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            letterSpacing: 1.2),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.locationArrow,
                            size: 15.0,
                            color: Colors.white70,),
                          SizedBox(width: 5.0),
                          Text(
                            widget.destination.country,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 20.0,
                  bottom: 20.0,
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white70,
                    size: 25.0,
                  ),
                )
              ],
            ),
            SizedBox(height: 10.0,),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                itemCount: widget.destination.activities.length,
                itemBuilder: (BuildContext context, int index) {
                  Activity activity = widget.destination.activities[index];
                  return Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                        height: 170.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                          child: Column(
                            mainAxisAlignment : MainAxisAlignment.center,
                            crossAxisAlignment : CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                                crossAxisAlignment : CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width : 120.0,
                                    child: Text(
                                      activity.name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0,

                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Column(
                                      children: <Widget>[
                                        Text(
                                          '\$${activity.price}',
                                          style: TextStyle(
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          'per pax',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    )
                                    ,

                                ],
                              ),
                              Text(activity.type),
                              _buildRatingStars(activity.rating),
                              SizedBox(height: 10.0),
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius: BorderRadius.circular(20.0)
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      activity.startTimes[0],
                                      style: TextStyle(
                                        color: Colors.black
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.0,)
                                  ,Container(
                                    padding: EdgeInsets.all(5.0),
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).accentColor,
                                        borderRadius: BorderRadius.circular(20.0)
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                        activity.startTimes[1],
                                      style: TextStyle(
                                        color: Colors.black,

                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left:20.0,
                        top: 15.0,
                        bottom:15.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                              activity.imageUrl,
                              fit: BoxFit.cover,
                              width: 110.0,),

                        ),
                      )

                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  //TOdo continue video 42:31 minutes

}