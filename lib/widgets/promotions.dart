import 'package:flutter/material.dart';

class Promotions extends StatelessWidget {
  const Promotions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        
        Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Promotions"),
          ),
        ),        
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
          height: 120.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                margin: EdgeInsets.symmetric(horizontal: 2),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: 
                        Image(
                          image: NetworkImage(
                              "https://wallpaperaccess.com/full/1509503.jpg"),
                          width: 160
                        ),
                    ),
                    Container(
                      width: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Upgrade Security"),
                          Text("1 POINTS"),
                          Text("time expiration: "),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Text("CLAIM", style: TextStyle(fontSize: 8, color: Colors.grey),),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                margin: EdgeInsets.symmetric(horizontal: 2),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: 
                        Image(
                          image: NetworkImage(
                              "https://wallpaperaccess.com/full/1509503.jpg"),
                          width: 160
                        ),
                    ),
                    Container(
                      width: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Upgrade Security"),
                          Text("1 POINTS"),
                          Text("time expiration: "),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Text("CLAIM", style: TextStyle(fontSize: 8, color: Colors.grey),),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                margin: EdgeInsets.symmetric(horizontal: 2),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: 
                        Image(
                          image: NetworkImage(
                              "https://wallpaperaccess.com/full/1509503.jpg"),
                          width: 160
                        ),
                    ),
                    Container(
                      width: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Upgrade Security"),
                          Text("1 POINTS"),
                          Text("time expiration: "),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Text("CLAIM", style: TextStyle(fontSize: 8, color: Colors.grey),),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}