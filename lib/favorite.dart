import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class favorite extends StatefulWidget {
  const favorite({super.key});

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {

  int selectIndex=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 50,
        leadingWidth: 100,
        leading: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_back_ios,size: 18,)),
        centerTitle: true,
        title: Text('Favourite',style: TextStyle(fontSize: 18),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Icon(Icons.favorite_border,color: Colors.black54,)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 220,
                    childAspectRatio: 4/6,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                              radius:16,
                              backgroundColor: Colors.black12,
                              child: InkWell(
                                  onTap: () {
                                    setState(() => selectIndex=index);
                                  },
                                  child: Icon(Icons.favorite_border,
                                    color:selectIndex==index ? Colors.redAccent : Colors.black12,
                                  )
                              )),
                          Image.asset(imagename[index],height: 105,width: 160,),
                          // SvgPicture.asset(
                          //   height: 100,
                          //     width: 150,
                          //     // alignment: Alignment.center,
                          //     imagename[index]),
                          Text(arrname[index],style: TextStyle(color: Colors.blue),),
                          Text(arrname1[index],style: TextStyle(fontSize: 18),),
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              Expanded(child: Text('\$58.7',style: TextStyle(fontSize: 16),)),
                              Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.redAccent
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }
                ),
          ],
        ),
      ),
    );
  }
}
var imagename=['assets/shoe2.png','assets/shoe2.png','assets/shoe2.png','assets/shoe2.png',];
// var imagename=['assets/jordan.svg','assets/max.svg','assets/club max.svg','assets/air max.svg',];
var arrname=['Best Seller','Best Seller','Best Seller','Best Seller',];
var arrname1=['Nike Jordan','Nike Air Max','Nike Club Max','Nike Air Max'];
