import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        themeMode: ThemeMode.dark,
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        leading: const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        centerTitle: true,
        title: const Text("Chiang Mai"),
        actions: const [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.ios_share,
                color: Colors.white,
              )),
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 281,
            child: PageView.builder(
                itemCount: 2,
                pageSnapping: true,
                itemBuilder: (context, pagePosition) {
                  return Container(
                      margin: const EdgeInsets.all(0),
                      child: Image.network(
                          "https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg"));
                }),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
            child: const Text("UNESCO Sustainable Travel Pledge",
                style: TextStyle(color: Colors.white70)),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: const Text("Shangri-La Chiang Mai",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.fromLTRB(15, 5, 0, 0),
              child: Row(
                children: const <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                ],
              )),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
            child: const Text(
                "Luxury hotel with free water park, near Chiang Mai Night Bazaar",
                style: TextStyle(color: Colors.white70, fontSize: 20)),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(10, 40, 0, 0),
            child: const Text("9.0/10 Superb",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: const Text("1,000 verified Hotels.com guest reviews",
                style: TextStyle(color: Colors.white70)),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Row(
              children: const [
                Text("See all 1,000 reviews",
                    style: TextStyle(color: Colors.blue)),
                Icon(
                  Icons.navigate_next,
                  color: Colors.blue,
                  size: 20,
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(10, 30, 0, 0),
            child: const Text("Popular amenities",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: const Icon(
                        Icons.wifi,
                        color: Colors.white70,
                        size: 22,
                      ),
                    ),
                    const Text("Free WiFi",
                        style: TextStyle(color: Colors.white70, fontSize: 17)),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.fromLTRB(100, 10, 0, 0),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: const Icon(
                        Icons.pool,
                        color: Colors.white70,
                        size: 22,
                      ),
                    ),
                    const Text("Pool",
                        style: TextStyle(color: Colors.white70, fontSize: 17)),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: const Icon(
                        Icons.ac_unit_outlined,
                        color: Colors.white70,
                        size: 22,
                      ),
                    ),
                    const Text("Air conditioning",
                        style: TextStyle(color: Colors.white70, fontSize: 17)),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.fromLTRB(50, 10, 0, 0),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: const Icon(
                        Icons.directions_car_filled,
                        color: Colors.white70,
                        size: 22,
                      ),
                    ),
                    const Text("Free parking",
                        style: TextStyle(color: Colors.white70, fontSize: 17)),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: const Icon(
                        Icons.fitness_center,
                        color: Colors.white70,
                        size: 22,
                      ),
                    ),
                    const Text("Gym",
                        style: TextStyle(color: Colors.white70, fontSize: 17)),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.fromLTRB(135, 10, 0, 0),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: const Icon(
                        Icons.thermostat,
                        color: Colors.white70,
                        size: 22,
                      ),
                    ),
                    const Text("Refrigerator",
                        style: TextStyle(color: Colors.white70, fontSize: 17)),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
      floatingActionButton:  const FloatingActionButton.extended(
        onPressed: null,
        backgroundColor: Colors.white,
        label: Text("Select a room", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
