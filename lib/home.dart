import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes/details.dart';
import 'package:shoes/favorite.dart';
import 'package:shoes/notification.dart';
import 'package:shoes/profile.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  int selectIndex = 0;
  int currentIndex = 0;
  int _selectedTab=0;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: DrawerHeader(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/betoo.png'),
              Text('Hey, 👋',style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
      appBar: AppBar(
        // toolbarHeight: 100,
      leading: Builder(
        builder: (context) => IconButton(
            onPressed: () =>Scaffold.of(context).openDrawer(),
            icon: Icon(Icons.apps_outlined)),
      ),
        centerTitle: true,
        title: Column(
          children: [
            Text('Store location',style: TextStyle(fontSize: 14),),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined,color: Colors.red,),
                  Text('Mondolibug, Sylhet',style: TextStyle(fontSize: 16),)
                ],
              ),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.shopping_bag_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search,color: Colors.black26,),
                    hintText: 'Looking for shoes',hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none
                    ),
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      setState(() {
                        selectIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      // height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                        color:selectIndex == index ? Colors.blue : Colors.white,
                        shape: BoxShape.circle
                      ),
                      child: Center(child: Image.asset(imagename[index],height: 100,width: 100,)),
                    ),
                  );
                },),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Shoes',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                  Text('See all',style: TextStyle(fontSize: 18,color: Colors.blueAccent),)
                ],
              ),
              SizedBox(height: 20,),
              GridView.builder(
                shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 4/ 6,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: 2,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 10),
                      // alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    if(arrname1[index].toString()=='nike2.png');
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => details(),));
                                  });
                                },
                                child: Image.asset(imagename1[index])),
                            SizedBox(height: 5,),
                            Text('Best Seller',style: TextStyle(fontSize: 16,color: Colors.blueAccent),),
                            SizedBox(height: 5,),
                            Text(arrname[index]),
                            SizedBox(height: 5,),
                            Text(price[index]),
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: ElevatedButton(

                            onPressed: () {},
                            child:  Icon(Icons.add,color: Colors.white,),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(20))),
                                padding: const EdgeInsets.all(15)),
                          ),
                        ),
                      ],
                        ),
                      ),
                    );
                  }),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('New Arrivals',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                  Text('See all',style: TextStyle(fontSize: 18,color: Colors.blueAccent),)
                ],
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(top: 30,bottom: 30),
                // alignment: Alignment.centerLeft,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Best Choice',style: TextStyle(fontSize: 18,color: Colors.blueAccent),),
                          SizedBox(height: 10,),
                          Text('Nike Air Jordan',style: TextStyle(fontSize: 20),),
                          SizedBox(height: 10,),
                          Text('\$849.69',style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      SizedBox(width: 15,),
                      Image.asset('assets/nike1.png')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () {
        },
        shape: CircleBorder(),
        child: Icon(CupertinoIcons.lock,color: Colors.white,),
      ),
        bottomNavigationBar: BottomAppBar(color: Colors.white,
          notchMargin: 10,
            height: 100,
            shape: CircularNotchedRectangle(),
            child: Container(
              height: 75,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    iconSize: 30.0,
                    padding: EdgeInsets.only(left: 28.0),
                    icon: Icon(Icons.home,
                      color: currentIndex == 0? Colors.blueAccent:Colors.black54,
                    ),
                    onPressed: () {
                      setState(() {
                        currentIndex = 0;

                      });
                    },
                  ),

                  IconButton(
                    iconSize: 30.0,
                    padding: EdgeInsets.only(right: 28.0),
                    icon: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => favorite(),));
                        },
                        child: Icon(Icons.favorite_border,
                          color: currentIndex == 1? Colors.blueAccent:Colors.black54,)),
                    onPressed: () {
                      setState(() {
                        currentIndex = 1;
                        print("${currentIndex}");

                      });
                    },
                  ),
                  IconButton(
                    iconSize: 30.0,
                    padding: EdgeInsets.only(left: 28.0),
                    icon: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => notification(),));
                        },
                        child: Icon(Icons.notifications_none_rounded,color: currentIndex == 2? Colors.blueAccent:Colors.black54,)),
                    onPressed: () {
                      setState(() {
                        currentIndex = 2;
                        print("${currentIndex}");

                      });
                    },
                  ),
                  IconButton(
                    iconSize: 30.0,
                    padding: EdgeInsets.only(right: 28.0),
                    icon: InkWell(
                      onTap: (){
                        Navigator.push(context,  MaterialPageRoute(builder: (context) => profile(),));
                      },
                        child: Icon(Icons.person_outline_outlined,
                          color: currentIndex == 3? Colors.blueAccent:Colors.black54,)),
                    onPressed: () {
                      setState(() {
                        currentIndex = 3;
                        print("${currentIndex}");
                      });
                    },
                  )
                ],
              ),
            )
        )
    );
  }
}
var imagename=['assets/nike.png','assets/puma.png','assets/no1.png','assets/adidas.png','assets/converse.png',];
var imagename1=['assets/nike1.png','assets/nike2.png'];
var arrname=['Nike Jordan','Nike Air Max'];
var price=['\$493.00','\$897.99'];
