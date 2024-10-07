import 'package:flutter/material.dart';

class PeacticeScreen extends StatefulWidget {
  const PeacticeScreen({super.key});

  @override
  State<PeacticeScreen> createState() => _PeacticeScreenState();
}

class _PeacticeScreenState extends State<PeacticeScreen> {
  @override
  void initState() {
    initialize();
    super.initState();
  }
  initialize()  {
    final Map<String,dynamic> data = {
      "id": 1,
      "name": "Leanne Graham",
      "username": "Bret",
      "email": "Sincere@april.biz",
      "address": {
        "street": "Kulas Light",
        "suite": "Apt. 556",
        "city": "Gwenborough",
        "zipcode": "92998-3874",
        "geo": {"lat": "-37.3159", "lng": "81.1496"}
      },
      "phone": "1-770-736-8031 x56442",
      "website": "hildegard.org",
      "company": {
        "name": "Romaguera-Crona",
        "catchPhrase": "Multi-layered client-server neural-net",
        "bs": "harness real-time e-markets"
      }
    };
    final Map<String,dynamic> address=data["address"];
    final Map<String,dynamic> geo=address["geo"];
    final Map<String,dynamic> lat=geo["lat"];
    final Map<String,dynamic> lng=geo["lng"];
    print(lat);
    print(lng);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

      ),
    );
  }
}
