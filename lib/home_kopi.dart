import 'package:flutter/material.dart';
import 'package:uts_mobile/detail_kopi.dart';
import 'package:uts_mobile/models/datakopi.dart';

class Home_page extends StatefulWidget {
  const Home_page();

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromARGB(255, 158, 43, 43),
        backgroundColor: Color.fromARGB(255, 233, 233, 233),
        elevation: 0,
        leading: IconButton(
          icon: new Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.black,
          onPressed: () {
            print('back');
            Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => Home_page()));
          },
        ),
        centerTitle: true,
        title: Text(
          'Fore Coffee',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 13, 155, 0),
              fontFamily: 'Poppins'),
        ),
        actions: [
          IconButton(
            icon: new Icon(Icons.logout_rounded),
            color: Colors.black,
            onPressed: () {
              print('Sudah Logout');
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Container(
        
        margin: EdgeInsets.only(top: 10.0, left: 16.0, right: 16.0),
        
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back!',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Lets take your coffee, \nAldianFa!",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 241, 241),
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Colors.grey,
                        size: 28,
                      ),
                      hintText: "Search your Coffee",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 16)),
                ),
              ),
              // SizedBox(height: 5,),
              // Text(
              //   'Use Best Voucher',
              //   style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 13, 155, 0)),
              // ),
              SizedBox(height: 10,),

              // GridView.builder(
                
              // ),
              ListView.builder(
                itemCount: dataKopi.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => Detail_kopi(datakopi: dataKopi[index],)));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                        
                      ),
                      child: Container(
                        child: Center(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 0, right: 10, left: 0),
                                child: Container(
                                  height: 120,
                                  width: 100,
                                  // child: Image.asset(dataKopi[index].image,fit: BoxFit.contain,),
                                  decoration: BoxDecoration(
                                    // borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(dataKopi[index].image),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(dataKopi[index].name, style: TextStyle(fontSize:18,fontWeight: FontWeight.bold)),

                                    SizedBox(height: 30,),
                                    Text(dataKopi[index].des,style: TextStyle(fontSize: 11, color: Colors.grey),),
                                    Text('Rp.'+dataKopi[index].price, style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 13, 155, 0)),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
