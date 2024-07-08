import 'package:flutter/material.dart';
import 'package:shoes/Appcolor.dart';
import 'package:shoes/onboard.dart';
class onboarding_screen extends StatefulWidget {
  const onboarding_screen({super.key});

  @override
  State<onboarding_screen> createState() => _onboarding_screenState();
}

class _onboarding_screenState extends State<onboarding_screen> {

  int currentIndex=0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: PageView.builder(
            controller: _controller,
            physics: ScrollPhysics(),
            onPageChanged: (int index){
              setState((){
                currentIndex = index;
              });
            },
            itemCount: demo_data.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  Image.asset(demo_data[index].image),
                  SizedBox(height: 30,),
                  Container(
                    height: 379,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                        color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(),
                        Text(demo_data[index].tittle,
                          textAlign: TextAlign.start,

                          style:
                          TextStyle(fontSize: 27,fontWeight: FontWeight.bold,),),
                        SizedBox(height: 10,),
                        Text(demo_data[index].discription,
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 15),),
                        InkWell(
                          // onTap: (){
                          //   if(index==contents.length-1){
                          //     Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                          //   }
                          //   _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.bounceIn);
                          // },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 10,
                                  // decoration: BoxDecoration(
                                  //   borderRadius: BorderRadius.circular(30),
                                  //   color: Colors.yellow
                                  // ),
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: demo_data.length,
                                    // physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.symmetric(horizontal: 3.0),
                                            width: currentIndex==index?35: 8.0,
                                            height: 8,
                                            decoration: BoxDecoration(
                                                color: currentIndex==index? Appcolor.PrimaryColor:Appcolor.PrimaryColor,
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                          )
                                        ],
                                      );
                                    },),
                                ),
                                InkWell(
                                  onTap: (){
                                    if(index==demo_data.length-1){
                                     // Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                                    }
                                    _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.bounceIn);
                                  },
                                  child: Container(
                                    height: 55,
                                    width: 165,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Appcolor.PrimaryColor
                                    ),
                                    child: Center(child: Text("Next",style: TextStyle(color: Colors.white),),),
                                  )
                                ),
                              ],
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ],
              );
            },)
      ),
    );
  }
}