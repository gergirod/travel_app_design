import 'package:flutter/material.dart';
import 'package:travel_app_design/domain/models/hotel_model.dart';

class HotelCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Exclusive Hotels",
                style: TextStyle(
                    fontSize: 22.0,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold
                ),
              ),

              GestureDetector(
                onTap: () => print("see all"),
                child: Text("see all",
                  style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(height: 320.0,
          child: ListView.builder(
              itemCount: hotels.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                Hotel hotel = hotels[index];
                return Container(
                  margin: EdgeInsets.all(10.0),
                  width: 240.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom: 15.0,
                        child: Container(
                          height: 140.0,
                          width: 240.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  hotel.name,
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.2
                                  ),
                                ),
                                Text(
                                  hotel.address,
                                  style: TextStyle(
                                    color: Colors.grey,

                                  ),
                                ),
                                SizedBox(height: 20.0),
                                Text('\$${hotel.price}/ night',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 6.0
                              )
                            ]
                        ),
                        child: Stack(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.network(
                                hotel.imageUrl,
                                height: 180.0,
                                width: 220.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                );
              }),
        )
      ],
    );
  }

}