import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
        ),
        automaticallyImplyLeading: false,
        toolbarHeight: kTextTabBarHeight + 40,
        backgroundColor: Colors.cyan,
        //centerTitle: false,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ListTile(
                title: Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
                subtitle: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 25,
                    ),
                    Text(
                      'New York, \t USA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      size: 20,
                      color: Colors.white,
                    ),
                  ],
                ),
                trailing: Stack(children: [
                  const Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 25,
                  ),
                  Positioned(
                    right: 5,
                    top: 4,
                    child: Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: Colors.red,
                          shape: BoxShape.circle),
                    ),
                  )
                ]),
              ),
            ),
          ],
        ),
        bottom: AppBar(
          toolbarHeight: kTextTabBarHeight + 40,
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.cyan,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, right: 10, left: 10, bottom: 10),
                child: SizedBox(
                  height: 50,
                  width: 280,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        hintText: 'Search Hotel, Flight etc',
                        hintStyle: TextStyle(color: Colors.black45),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.menu)),
                ),
              )
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
          ),
        ),
      ),
    );
  }
}
