
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? _accpress;
  bool? _timerpress;
  bool? _andpress;
  bool? _iphpress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mc Flutter'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Flutter McFlutter",
                      style: TextStyle(fontSize: 25),
                    ),
                    const Text("Experienced App Developer")
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "123 Main Street",
                  style: TextStyle(fontSize: 10),
                ),
                const Text("(415) 555-0198", style: TextStyle(fontSize: 10))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.accessibility),
                  color: _accpress == true ? Colors.indigo : Colors.black,
                  onPressed: () {
                    _accpress = _accpress == true ? false : true;
                    setState(() {});
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        const SnackBar(
                          content: Text("Únete al club con otras personas"),
                        ),
                      );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.timer),
                  color: _timerpress == true ? Colors.indigo : Colors.black,
                  onPressed: () {
                    _timerpress = _timerpress == true ? false : true;
                    setState(() {});
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        const SnackBar(
                          content:
                              Text("Cuenta regresiva para el evento: 31 días"),
                        ),
                      );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.phone_android),
                  color: _andpress == true ? Colors.indigo : Colors.black,
                  onPressed: () {
                    _andpress = _andpress == true ? false : true;
                    setState(() {});
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        const SnackBar(
                          content: Text("Llama al número 4155550198"),
                        ),
                      );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.phone_iphone),
                  color: _iphpress == true ? Colors.indigo : Colors.black,
                  onPressed: () {
                    _iphpress = _iphpress == true ? false : true;
                    setState(() {});
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        const SnackBar(
                          content: Text("Llama al celular 3317865113"),
                        ),
                      );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
