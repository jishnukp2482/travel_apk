import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:travel_apk_ui/screens/hoteldetails.dart';

class NearByMe extends StatelessWidget {
  const NearByMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.width;
    final width = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      color: Colors.cyan,
                      onPressed: () {
                        Get.to(() => const HotelDetails());
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.hotel,
                        size: 30,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Hotel',
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      color: Colors.cyan,
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.plane,
                        size: 30,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Flight',
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      color: Colors.cyan,
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.train,
                        size: 30,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Train',
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      color: Colors.cyan,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.grid_view_sharp,
                        size: 30,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'More',
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

        ///near by me

        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Nearby me',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                    color: Colors.deepOrange, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 15, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(color: Colors.black12, blurRadius: 10),
                      ]),
                  height: 200,
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 9,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/photo-1562375121-ea1bc3e8fc10.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Lake View',
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          7,
                          8,
                          8,
                          8,
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                              size: 15,
                            ),
                            Text(
                              'USA',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  '\$40',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    // fontSize: 15,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                ),
                                Text(
                                  '/Person',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    // fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.deepOrangeAccent,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /// 2nd
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 15, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(color: Colors.black26, blurRadius: 10),
                      ]),
                  height: 200,
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 9,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                "assets/images/plateau-scenery-landscape-reflection-tibet-beautiful-water-34858251.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Hill View',
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  '4.7',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          7,
                          8,
                          8,
                          8,
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                              size: 15,
                            ),
                            Text(
                              'Berlin',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  '\$40',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                ),
                                Text(
                                  '/Person',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    //fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.deepOrangeAccent,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Popular for Me',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                    color: Colors.deepOrange, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 10),
                ]),
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width / 1,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/plateau-scenery-landscape-reflection-tibet-beautiful-water-34858251.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Mountaions Tip',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 14,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 16,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          const Text('4.5')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.location_on,
                            color: Colors.grey,
                            size: 16,
                          ),
                          Text(
                            'USA',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '\$40',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.deepOrangeAccent,
                                ),
                              ),
                              Text(
                                '/Person',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4.8,
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.deepOrangeAccent,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
