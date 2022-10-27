import 'package:flutter/material.dart';
import 'package:uts_mobile/homepage2.dart';

// import 'homepage.dart';

class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController emailController = TextEditingController();
    TextEditingController pwdController = TextEditingController();

    var email = "aldian";
    var pwd = "ijul";

    return Scaffold(
      // backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //HELLO SNEAKY TEXT
              SizedBox(
                height: 25,
              ),
              Text(
                'Lumieree 2022',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  color: Color.fromARGB(255, 158, 53, 228),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Festival Film Pendek Indonesia',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // IMAGE
              Image.asset('assets/img/depan.jpg',height: 280,width: 320,),

              //EMAIL FIELD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Email'),
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),

              //PW FIELD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: pwdController,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Password'),
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 55,
                width: 355,
                child: ElevatedButton(
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    primary: Color.fromARGB(255, 158, 53, 228),
                  ),
                  onPressed: () {
                    if(emailController.text == email){
                      if(pwdController.text == pwd){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => homepage2()));
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text('Password Salah'),
                        ));
                      }
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text('Email Salah'),
                        ));
                    }
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> homepage2()));
                    // print('Login Terpencet');
                  },
                ),
              ),
              

              // Tulisan Register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(
                  'Registrasi untuk pemesanan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'
                    ),
                ),
                TextButton(
                  child: Text(
                    'Daftar',
                    style: TextStyle(
                        color: Color.fromARGB(255, 158, 53, 228), 
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'
                        ),
                  ),
                  onPressed: () {
                    print('Daftar Terpencet');
                  },
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
