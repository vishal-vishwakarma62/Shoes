import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:shoes/checkout.dart';
class my_cart extends StatefulWidget {
  const my_cart({super.key});

  @override
  State<my_cart> createState() => _my_cartState();
}

class _my_cartState extends State<my_cart> {

  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: CircleAvatar(
          radius: 18,
          backgroundColor: Colors.white,
          child: Icon(Icons.arrow_back_ios,size: 16,),
        ),
        centerTitle: true,
        title: Text('My Cart',style: TextStyle(fontSize: 18),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Container(
                    height: 85,
                    width: 87,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white
                    ),
                    child: Image.asset('assets/shoe2.png',height: 75,width: 41,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Text('Nike Club Max',style: TextStyle(fontSize: 17),),
                            SizedBox(width: 120,),
                            Text('L')
                          ],
                        ),
                        SizedBox(width: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,),
                          child: Text('\$64.95'),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            IconButton(
                              icon: Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white
                                  ),
                                  child: Icon(Icons.remove)),
                              onPressed: () =>
                                  setState(() => _itemCount--),
                            ),
                            // SizedBox(width: 4,),
                            Text('$_itemCount'),
                            SizedBox(width: 4,),
                            IconButton(
                              icon:  Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue
                                  ),
                                  child: Icon(Icons.add,color: Colors.white,)),
                              onPressed: () =>
                                  setState(() => _itemCount++),
                            ),
                            SizedBox(width: 130,),
                            Icon(Icons.delete_outline)
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Container(
                    height: 85,
                    width: 87,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white
                    ),
                    child: Image.asset('assets/shoe2.png',height: 75,width: 41,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Text('Nike Club Max',style: TextStyle(fontSize: 17),),
                            SizedBox(width: 120,),
                            Text('L')
                          ],
                        ),
                        SizedBox(width: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,),
                          child: Text('\$64.95'),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            IconButton(
                              icon: Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white
                                  ),
                                  child: Icon(Icons.remove)),
                              onPressed: () =>
                                  setState(() => _itemCount--),
                            ),
                            // SizedBox(width: 4,),
                            Text('$_itemCount'),
                            SizedBox(width: 4,),
                            IconButton(
                              icon:  Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue
                                  ),
                                  child: Icon(Icons.add,color: Colors.white,)),
                              onPressed: () =>
                                  setState(() => _itemCount++),
                            ),
                            SizedBox(width: 130,),
                            Icon(Icons.delete_outline)
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Container(
                    height: 85,
                    width: 87,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white
                    ),
                    child: Image.asset('assets/shoe2.png',height: 75,width: 41,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Text('Nike Club Max',style: TextStyle(fontSize: 17),),
                            SizedBox(width: 120,),
                            Text('L')
                          ],
                        ),
                        SizedBox(width: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,),
                          child: Text('\$64.95'),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            IconButton(
                              icon: Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white
                                  ),
                                  child: Icon(Icons.remove)),
                              onPressed: () =>
                                  setState(() => _itemCount--),
                            ),
                            // SizedBox(width: 4,),
                            Text('$_itemCount'),
                            SizedBox(width: 4,),
                            IconButton(
                              icon:  Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue
                                  ),
                                  child: Icon(Icons.add,color: Colors.white,)),
                              onPressed: () =>
                                  setState(() => _itemCount++),
                            ),
                            SizedBox(width: 130,),
                            Icon(Icons.delete_outline)
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 200,),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(child: Text('Subtotal',style: TextStyle(fontSize: 18,color: Colors.black54),)),
                        Text('\$1250.00',style: TextStyle(fontSize: 18))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(child: Text('Shopping',style: TextStyle(fontSize: 18,color: Colors.black54),)),
                        Text('\$40.90',style: TextStyle(fontSize: 18))
                      ],
                    ),
                    SizedBox(height: 30,),
                    DottedLine(
                      dashColor: Colors.black54,
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Expanded(child: Text('Total Cost',style: TextStyle(fontSize: 18),)),
                        Text('\$1690.99',style: TextStyle(fontSize: 18),)
                      ],
                    ),
                    SizedBox(height: 30,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => checkout(),));
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue
                        ),
                        child: Center(
                          child: Text('Checkout',style: TextStyle(color: Colors.white60),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
