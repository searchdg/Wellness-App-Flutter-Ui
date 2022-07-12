import 'package:flutter/material.dart';

import 'bottomNav.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    String selectedImg;
    String selectedTitle;
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    selectedImg = arguments["image"];
    selectedTitle = arguments["title"];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: const BottomNav(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            SizedBox(
              height: deviceHeight * 0.52,
              width: deviceWidth,
              child: Container(
                margin: const EdgeInsets.only(bottom: 40),
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                  color: Color(0xffFE67AA),
                  image: DecorationImage(
                      image: AssetImage("assets/images/path.png"),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            selectedTitle,
                            style: const TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              width: deviceWidth * 0.7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "3-10 min, Course",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Live Happier and Healthier by The Learning The Fundamental of Meditation and Mindfulness",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: deviceWidth * 0.9,
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
                                            textCapitalization:
                                                TextCapitalization.words,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "Search",
                                                hintStyle:
                                                    TextStyle(fontSize: 20)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.all(70),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/$selectedImg.png"),
                                    fit: BoxFit.contain),
                              ),
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: deviceWidth,
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  sessionWidget("Session 1", true),
                                  sessionWidget("Session 2", false)
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  sessionWidget("Session 3", false),
                                  sessionWidget("Session 4", false)
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  sessionWidget("Session 5", false),
                                  sessionWidget("Session 6", false)
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            selectedTitle,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 25),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [Color(0xffE76080), Color(0xffA64AD9)]),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 15,
                                  spreadRadius: 1),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(50),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/$selectedImg.png"))),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Basics 2",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "Start and deepen your patience",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.lock_outline,
                                    size: 30,
                                    color: Colors.black,
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  sessionWidget(String title, bool activeOrNot) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 15,
                spreadRadius: 1)
          ]),
      child: Row(
        children: [
          Icon(
            (activeOrNot == true)
                ? Icons.play_circle_fill
                : Icons.play_circle_outline,
            color: Colors.blue,
            size: 50,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
