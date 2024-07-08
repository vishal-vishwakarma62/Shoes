import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class filteri extends StatefulWidget {
  const filteri({super.key});

  @override
  State<filteri> createState() => _filteriState();
}

class _filteriState extends State<filteri> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: TextButton(
          child: const Text(''),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  padding: EdgeInsets.all(25),
                  height: 200,
                  color: Colors.white,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                       Center(child: Text('Filters',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)),
                      Text('Gender',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
