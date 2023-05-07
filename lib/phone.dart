import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyPhone extends StatefulWidget {
   const MyPhone({Key? key}) : super(key: key);
   static String verify="";

   @override
   State<MyPhone> createState() => _MyPhoneState();
 }

 class _MyPhoneState extends State<MyPhone> {
  TextEditingController countrycode = TextEditingController();
  var phoneno="";

   @override
   void initState() {
    // TODO: implement initState
     countrycode.text="+91";
    super.initState();
  }
   Widget build(BuildContext context) {
     return  Scaffold(
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/15.jpg')),
      ),
      //margin: EdgeInsets.only(left: 20,right: 20),
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

       Image.asset('assets/images/myntra.jpeg',width: 250,height: 250,),





  Text('Mobile Number Verification',style: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  ),),

            SizedBox(
              height: 10,
            ),
            Text('Please Enter Your Mobile Number',style: TextStyle(
              fontSize: 16,

            ),

            textAlign: TextAlign.center,),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    // height: 30,
                    width: 40,
                    child: TextField(
                      controller: countrycode,
                      decoration: InputDecoration(
                          border: InputBorder.none
                      ),

                    ),
                  ),

                  Text('|',
                    style: TextStyle(
                      fontSize: 33,
                      color: Colors.grey,
                    ),),
                  SizedBox(
                    width: 10,
                  ),

                  Expanded(

                    child: TextField(
                      keyboardType: TextInputType.phone,
                      onChanged: (value){
                        phoneno=value;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone",
                      ),

                    ),

                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
  Container(
    margin: EdgeInsets.only(left: 20,right: 20),
        child:    SizedBox(

              height: 40,
            width: double.infinity,
              child: ElevatedButton(onPressed: () async{
                await FirebaseAuth.instance.verifyPhoneNumber(
                  phoneNumber: '${countrycode.text+phoneno}',
                  verificationCompleted: (PhoneAuthCredential credential) {},
                  verificationFailed: (FirebaseAuthException e) {},
                  codeSent: (String verificationId, int? resendToken) {
                     MyPhone.verify=  verificationId;
                    Navigator.pushNamed(context, "otp");
                  },
                  codeAutoRetrievalTimeout: (String verificationId) {},
                );


              },
                child: Text('Send The OTP'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
            ),

  ),

          ],
        ),
      ),
    ),

     );
   }
 }
