import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: const <Widget>[Icon(Icons.menu), Text("Cari")],
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
                    "Seven Retail",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Grand Indonesia",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Category",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        ListView(
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                leading: const Image(
                  image: NetworkImage(
                      "https://www.ruparupa.com/blog/wp-content/uploads/2022/01/Screen-Shot-2022-01-04-at-15.03.07-1024x892.png"),
                ),
                title: const Text("Makanan"),
                subtitle: const Text(
                    "Lorem ipsumm dolor sit amet, consectetur adipiscing elit."),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Rp. 50.000",
                      style: TextStyle(fontSize: 12.0),
                    ),
                    Expanded(
                        child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/item-detail");
                        },
                        child: const Text(
                          "ADD",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                leading: const Image(
                  image: NetworkImage(
                      "https://www.ruparupa.com/blog/wp-content/uploads/2022/01/Screen-Shot-2022-01-04-at-15.03.07-1024x892.png"),
                ),
                title: const Text("Makanan"),
                subtitle: const Text(
                    "Lorem ipsumm dolor sit amet, consectetur adipiscing elit."),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Rp. 50.000",
                      style: TextStyle(fontSize: 12.0),
                    ),
                    Expanded(
                        child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "ADD",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                leading: const Image(
                  image: NetworkImage(
                      "https://www.ruparupa.com/blog/wp-content/uploads/2022/01/Screen-Shot-2022-01-04-at-15.03.07-1024x892.png"),
                ),
                title: const Text("Makanan"),
                subtitle: const Text(
                    "Lorem ipsumm dolor sit amet, consectetur adipiscing elit."),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Rp. 50.000",
                      style: TextStyle(fontSize: 12.0),
                    ),
                    Expanded(
                        child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "ADD",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                leading: const Image(
                  image: NetworkImage(
                      "https://www.ruparupa.com/blog/wp-content/uploads/2022/01/Screen-Shot-2022-01-04-at-15.03.07-1024x892.png"),
                ),
                title: const Text("Makanan"),
                subtitle: const Text(
                    "Lorem ipsumm dolor sit amet, consectetur adipiscing elit."),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Rp. 50.000",
                      style: TextStyle(fontSize: 12.0),
                    ),
                    Expanded(
                        child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "ADD",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
