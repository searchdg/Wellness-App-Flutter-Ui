import 'package:flutter/material.dart';
import 'package:wellness_apps/bottomNav.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var deviceWith = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: const BottomNav(),
        body: SingleChildScrollView(
          child: SizedBox(
            height: deviceHeight,
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: deviceWith,
                      height: deviceHeight * 0.43,
                      child: Container(
                        padding: const EdgeInsets.only(
                            right: 40, top: 20, bottom: 20),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xffE76080), Color(0xffA64AD9)]),
                          image: DecorationImage(
                              alignment: Alignment.centerLeft,
                              image: AssetImage("assets/images/path.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Good Morning \n Jack ",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Container(
                      width: deviceWith * 0.9,
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.search,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: TextField(
                              autofocus: false,
                              cursorColor: Colors.black,
                              textCapitalization: TextCapitalization.words,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search",
                                  hintStyle: TextStyle(fontSize: 20)),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        childAspectRatio: 0.95,
                        children: <Widget>[
                          categoryWidget(
                            "img1",
                            "Diet",
                          ),
                          categoryWidget(
                            "img2",
                            "Exercise",
                          ),
                          categoryWidget(
                            "img3",
                            "Meditation",
                          ),
                          categoryWidget(
                            "img4",
                            "Yoga",
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
      ),
    );
  }

  Container categoryWidget(String img, String title) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 12, bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 20,
                spreadRadius: 1,
                offset: const Offset(0, 10))
          ]),
      child: InkWell(
        onTap: () {
          openProductPage(img, title);
        },
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/$img.png"),
                        fit: BoxFit.contain)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  void openProductPage(String img, String title) {
    Navigator.pushNamed(context, "/productPage",
        arguments: {"image": img, "title": title});
  }
}
