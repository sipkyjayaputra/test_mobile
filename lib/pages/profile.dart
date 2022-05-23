import 'package:flutter/material.dart';
import 'package:test_app/widgets/promotions.dart';
import 'package:test_app/widgets/rewards.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  icon: const Icon(Icons.arrow_back)),
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Text("Profile"),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          width: double.infinity,
          color: Colors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("ID: +6234xxxxx"),
              Text("Upgrade Security - Claim Point")
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(30),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 100,
                    ),
                    Text("5/8")
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text("REWARDS", style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("Gold Level 1", style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("1", style: TextStyle(fontSize: 50),),
                    Text("Star until"),
                    Text("Next Reward")
                  ],
                ),
              ),
            ],
          ),
        ),
        Rewards(),
        Promotions(),
        Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              child: Text("Logout"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey)),
            ))
      ],
    );
  }
}
