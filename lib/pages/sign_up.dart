import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              child: Text(
                "Register",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Phone Number"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "Age"),
                        items: <String>['0', '1', '2', '3']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {},
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "Sex"),
                        items: <String>[
                          'Male',
                          'Female',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {},
                      ))
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Province"),
                      items: <String>[
                        'DKI Jakarta',
                        'West Java',
                        'North Sumatera',
                        'Papua'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {},
                    )),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "City"),
                        items: <String>[
                          'DKI Jakarta',
                          'West Java',
                          'North Sumatera',
                          'Papua'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {},
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Disctrict"),
                        items: <String>[
                          'DKI Jakarta',
                          'West Java',
                          'North Sumatera',
                          'Papua'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {},
                      ))
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      child: Text("Sign in"),
                      onTap: () {
                        Navigator.pushNamed(context, "/login");
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/home");
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green)),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
