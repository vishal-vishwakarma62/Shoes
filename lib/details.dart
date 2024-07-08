import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoes/Appcolor.dart';
import 'package:shoes/my_cart.dart';
class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {

  int selectIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 50,
        leadingWidth: 100,
        leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text('Men’s Shoes',style: TextStyle(fontSize: 18),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Icon(Icons.lock_outline_rounded,color: Colors.black54,)),
          ),
        ],
        // bottom: Image.asset(name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Image.asset('assets/img.png',width: 312,height: 205,),
          Container(
            width: double.infinity,
            // height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
              color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Best Seller',style: TextStyle(fontSize: 18,color: Colors.blue),),
                  SizedBox(height: 8,),
                  Text('Nike Air Jordan',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                  SizedBox(height: 8,),
                  Text('\$967.800',style: TextStyle(fontSize: 18),),
                  SizedBox(height: 8,),
                  Text('Air Jordan is an American brand of basketball \nshoes athletic, casual, and style clothing \nproduced by Nike....',
                  style: TextStyle(fontSize: 14,color: Colors.black54),),
                  SizedBox(height: 20,),
                  Text('Gallery',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black12
                        ),
                        child: Image.asset('assets/nike1.png',height: 60,width: 60,),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12
                        ),
                        child: Image.asset('assets/nike1.png',height: 60,width: 60,),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12
                        ),
                        child: Image.asset('assets/nike1.png',height: 60,width: 60,),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Expanded(child: Text('Size',style: TextStyle(fontSize: 20,),)),
                      Text('EU',style: TextStyle(fontSize: 20,color: Colors.black),),
                      SizedBox(width: 10,),
                      Text('US',style: TextStyle(fontSize: 20,color: Colors.black54)),
                      SizedBox(width: 10,),
                      Text('UK',style: TextStyle(fontSize: 20,color: Colors.black54)),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){
                            setState(() {
                              selectIndex=index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(8),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color:selectIndex==index ? Colors.blue : Colors.black12,
                                shape: BoxShape.circle
                            ),
                            child: Center(child: Text(arrname[index])),
                          ),
                        );
                      },),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Price'),
                            SizedBox(height: 8,),
                            Text('\$849.69',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
                        
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        // margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue
                        ),
                        child: Center(
                          child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => my_cart(),));
                              },
                              child: Text('Add To Cart',style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ],
                  ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
var arrname=['38','39','40','41','42','43'];
