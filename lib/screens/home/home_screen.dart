import 'package:barbar_app/model/styling_services.dart';
import 'package:barbar_app/screens/home/shope_detail_page.dart';
import 'package:barbar_app/screens/shopDetail.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/shope.dart';
import '../../shopdetail.dart';
import '../../test/membership.dart';
import '../widgets/shopItem.dart';
import '../widgets/styling_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Text(
                  "hi,Asad",
                  style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(width: 70,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(

                    primary: Colors.red,
                    padding: EdgeInsets.all(16.0),
                  ),
                  child: Text(
                    'Subscription',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              ]
              ),
              SizedBox(height: 10,),
              Text(
                "Get bookings online 24/7 with an all-in-one barbershop appointment app.",
                style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/images/carou.png",
              ),
              const SizedBox(height: 16.0),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Shops:',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Expanded(
                child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('shops')
                      .snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return ListView(
                      children:
                          snapshot.data!.docs.map((DocumentSnapshot document) {
                        Map<String, dynamic> data =
                            document.data() as Map<String, dynamic>;
                        return  GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ShopDetailPage(
                                  imageUrl: data['imageUrl'],
                                  shopName: data['shopName'],
                                  shopInfo: data['address'],
                                  shopDesc: data['description'],
                                ),
                              ),
                            );
                          },
                          child: Card(
                            elevation: 3,
                             child: Padding(
                               padding: const EdgeInsets.all(10),
                               child: Column(
                                 children: [
                                   Row(
                                     children: [
                                       SizedBox(
                                           height: 115,
                                           width: 100,
                                           child: Image.network(
                                               data['imageUrl'],
                                             fit: BoxFit.cover,

                                           )),
                               SizedBox(width: 10,),
                               Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Container(width: 100,child: Text(data['shopName'],style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.bold),)),
                                               SizedBox(height: 5,),
                                               Container(width: 150,child: Text(data['address'],style: GoogleFonts.roboto(fontSize: 15,),)),
                                               SizedBox(height: 5,),
                                               Container(width: 180,child: Text(data['description'],style: GoogleFonts.roboto(fontSize: 18,),)),
                                               SizedBox(height: 10,),
                                             ],
                                           ),
                                     ],
                                   ),
                                 ],
                               ),
                             ),
                          ),
                        );
                      }).toList(),
                    );
                  
                  },
                ),
              ),

              const SizedBox(height: 16.0),

            ],
          ),
        ),
      ),
    );
  }
}
