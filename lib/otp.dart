import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/phone.dart';
import 'package:pinput/pinput.dart';
class Myotp extends StatefulWidget {
  const Myotp({Key? key}) : super(key: key);

  @override
  State<Myotp> createState() => _MyotpState();
}

class _MyotpState extends State<Myotp> {
  final FirebaseAuth auth=FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

var code="";
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,
          color: Colors.black,),

        ),
      ),
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
              Text('Please Enter Your OTP',style: TextStyle(
                fontSize: 16,

              ),

                textAlign: TextAlign.center,),
              SizedBox(
                height: 10,
              ),
          Pinput(
            length: 6,
            showCursor: true,
            onChanged: (value){
              code=value;
            },

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

                    try{
                      PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: MyPhone.verify , smsCode: code);

                      // Sign the user in (or link) with the credential
                      await auth.signInWithCredential(credential);
                      Navigator.pushNamedAndRemoveUntil(context, 'new', (route) => false);
                    }
  catch(e){
print("wrong");
  }


                  },
                    child: Text('Verify Your Number'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                ),

              ),
     TextButton(onPressed: (){
       Navigator.pushNamedAndRemoveUntil(context, "phone", (route) => false);
     },
         child: Text("Edit Your Number")),
            ],
          ),
        ),
      ),

    );
  }
}
