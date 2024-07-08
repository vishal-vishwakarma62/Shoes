import 'package:flutter/material.dart';
class account_setting extends StatefulWidget {
  const account_setting({super.key});

  @override
  State<account_setting> createState() => _account_settingState();
}

class _account_settingState extends State<account_setting> {

  bool value1=true;
  bool value2=true;
  bool value3=true;
  bool value4=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   titleSpacing: 50,
      //   leading: Padding(
      //     padding: const EdgeInsets.only(left: 30),
      //     child: Container(
      //       height: 44,
      //         width: 44,
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: Colors.white,
      //
      //         ),
      //         child: Icon(Icons.arrow_back_ios,size: 20,)),
      //   ),
      //   // title: Text('Account & Settings',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                      child: Center(child: Icon(Icons.arrow_back_ios,size: 20,))),
                  SizedBox(width: 50,),
                  Text('Account & Settings',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                ],
              ),
              SizedBox(height: 30,),
              Text('Account',style: TextStyle(fontSize: 24),),
              Row(
                children: [
                  SizedBox(height: 60,),
                  Icon(Icons.notifications_active,color: Colors.black54,),
                  SizedBox(width: 25,),
                  Text('Notification Setting',style: TextStyle(fontSize: 18,color: Colors.black54),),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.black54,size: 20,),
                  )
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              Row(
                children: [
                  SizedBox(height: 60,),
                  Icon(Icons.shopping_bag_outlined,color: Colors.black54,),
                  SizedBox(width: 25,),
                  Text('Shopping Address',style: TextStyle(fontSize: 18,color: Colors.black54),),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.black54,size: 20,),
                  )
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),

              Row(
                children: [
                  SizedBox(height: 60,),
                  Icon(Icons.payments_rounded,color: Colors.black54,),
                  SizedBox(width: 25,),
                  Text('Payment Info',style: TextStyle(fontSize: 18,color: Colors.black54),),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.black54,size: 20,),
                  )
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              Row(
                children: [
                  SizedBox(height: 60,),
                  Icon(Icons.delete_outlined,color: Colors.black54,),
                  SizedBox(width: 25,),
                  Text('Delete Account',style: TextStyle(fontSize: 18,color: Colors.black54),),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.black54,size: 20,),
                  )
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              SizedBox(
                height: 20,
              ),
              Text('App Settings',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Eneble Face ID For Log In',style: TextStyle(fontSize: 20),),
                  Switch(
                      activeColor: Colors.blue,
                      value:value1 ,
                      onChanged: (onChanged){
                    setState(() {
                      value1=onChanged;
                    });
                      }
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Eneble Push Notifications',style: TextStyle(fontSize: 20),),
                  Switch(
                      activeColor: Colors.blue,
                      value:value2 ,
                      onChanged: (onChanged){
                        setState(() {
                          value2=onChanged;
                        });
                      }
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Eneble Location Services',style: TextStyle(fontSize: 20),),
                  Switch(
                      activeColor: Colors.blue,
                      value:value3 ,
                      onChanged: (onChanged){
                        setState(() {
                          value3=onChanged;
                        });
                      }
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Dark Mode',style: TextStyle(fontSize: 20),),
                  Switch(
                      activeColor: Colors.blue,
                      value:value4 ,
                      onChanged: (onChanged){
                        setState(() {
                          value4=onChanged;
                        });
                      }
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
