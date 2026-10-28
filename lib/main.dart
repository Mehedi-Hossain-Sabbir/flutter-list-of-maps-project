import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<Map<String, String>> featureListingImagePath = [
    {
      "title": "Renting Made Easy: Tips for Landlords, Tenants & Vendors",
      "img": "assets/1.png",
    },
    {
      "title": "Maximizing Rental Income: Strategies for Smart Landlords",
      "img": "assets/2.png",
    },
    {
      "title":
      "The Future of Property Management: Trends for Landlords & Vendors",
      "img": "assets/3.png",
    },
    {
      "title":
      "Avoiding Common Rental Disputes: A Guide for Landlords & Tenants",
      "img": "assets/4.png",
    },
    {
      "title": "How Vendors Can Simplify Property Maintenance",
      "img": "assets/5.png",
    },
    {
      "title": "Landlord-Tenant Laws: Key Rights & Responsibilities",
      "img": "assets/6.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: 375,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                ///================> Feature Listing Card <=======================
                SizedBox(height: 30),
                Expanded(
                  child: ListView.builder(
                    itemCount: featureListingImagePath.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: [
                            Container(
                              height: 432,
                              width: 343,
                              padding: EdgeInsets.only(
                                right: 16,
                                left: 16,
                                bottom: 24,
                                top: 16,
                              ),
                              decoration: BoxDecoration(
                                // color: Colors.red,
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xffFAFAFA),
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xffECECEC),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    featureListingImagePath[index]["img"]!,
                                  ),
                                  // SvgPicture.asset("assets/feature_listing/frame.svg"
                                  ///=======================> Location Text <===================
                                  SizedBox(height: 16),
                                  Row(
                                    spacing: 12,
                                    children: [
                                      // Image.asset(
                                      //   "assets/feature_listing/map-pin-5-line.png",
                                      // ),
                                      Text(
                                        "February 20, 2025",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),

                                  ///================== > Second Text <===================
                                  Text(
                                    featureListingImagePath[index]["title"]!,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                // GridView.builder(
                //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 5,
                //   ),
                //   itemCount: 20,
                //   itemBuilder: (context, index) {},
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}