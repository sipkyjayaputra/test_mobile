import 'package:flutter/material.dart';

class ItemDetail extends StatefulWidget {
  const ItemDetail({Key? key}) : super(key: key);

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  bool _isChecked = false;

  void checkHandler(newValue) {
    setState(() {
      _isChecked = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
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
                child: Text("Makanan"),
              )
            ],
          ),
        ),
        Stack(
          alignment: Alignment.bottomLeft,
          children: <Widget>[
            const Image(
              image: NetworkImage(
                  "https://img.iproperty.com.my/my-iproperty/premium/800x460-fit/w-o7nyd0222caf-b21f-488f-89b4-bb2442a52566_1920x1440.jpeg"),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Makanan",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, bla bla bla.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Rp. 50.000",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          height: 150,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[Icon(Icons.menu), Text("Modifier")],
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isChecked,
                            onChanged: (newValue) {
                              checkHandler(newValue);
                            }
                          ),
                          Text("Mie Besar"),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isChecked,
                            onChanged: ((newValue) {
                              checkHandler(newValue);
                            })
                          ),
                          Text("Mie Kecil"),
                        ],
                      ),
                    )
                  ],
                )
              )
            ],
          ),
        ),
        Container(
          height: 120,
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.edit), Text("Modifier")
                    ],
                  ),
                  Text("Optional")
                ],
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Notes"),
                    fillColor: Colors.white
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
