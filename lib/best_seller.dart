import 'package:flutter/material.dart';
class best_seller extends StatefulWidget {
  const best_seller({super.key});

  @override
  State<best_seller> createState() => _best_sellerState();
}

class _best_sellerState extends State<best_seller> {
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
        title: Text('Best Sellers',style: TextStyle(fontSize: 16),),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Icon(Icons.menu,size: 25,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Icon(Icons.search_outlined,size: 25,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              GridView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: 6,
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
                            Image.asset(imagename[index],height: 105,width: 160,),
                            Text('Best Seller',style: TextStyle(color: Colors.blue),),
                            SizedBox(height: 10,),
                            Text('Nike Jordan',style: TextStyle(fontSize: 18),),
                            SizedBox(height: 10,),
                            Text('Men’s Shoes'),
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
      ),
    );
  }
}
var imagename=['assets/shoe2.png','assets/shoe2.png','assets/shoe2.png','assets/shoe2.png','assets/shoe2.png','assets/shoe2.png',];
var arrname=['Best Seller'];
