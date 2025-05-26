import 'package:flutter/material.dart';
import 'package:myapp/Model/model.dart';
import 'package:myapp/more_detail.dart';
import 'package:myapp/popular_cate.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int seletedIndex = 0;
List<String> categoryList = [
  "Mejores productos",
  "Mas poppulares",
  "Recomendados",
  "Nuevo",
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 255, 255, 255),
                        Color.fromARGB(255, 238, 224, 238),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                    ),
                  ),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 265,
                        width: double.infinity,
                        child: SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,right: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.network(
                                        "https://raw.githubusercontent.com/Miriam-BonillaZ-1050/images_tiendadepotiva/refs/heads/main/nav.png",
                                        height: 35,
                                      ),
                                      Image.network(
                                        "https://raw.githubusercontent.com/Miriam-BonillaZ-1050/images_tiendadepotiva/refs/heads/main/lupa.png",
                                        height: 50,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "Descubrir",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                natureSelection(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 200,
                        child: SizedBox(
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemCount: locationItems.length,
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              LocationDetail location = locationItems[index];
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          MoreDetail(location: location),
                                    ),
                                  );
                                },
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 30),
                                      child: Hero(
                                        tag: location.image,
                                        child: Container(
                                          height: 220, // AJUSTADO
                                          width: 200,  // AJUSTADO
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image:
                                                  NetworkImage(location.image),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    bestNatureSlider(location),
                                    Positioned(
                                      top: 12,
                                      left: 177,
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white38,
                                          borderRadius:
                                              BorderRadius.circular(200),
                                        ),
                                        child: const Icon(
                                          Icons.bookmark,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 3.49,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0XFFF3ECEE),
                      Color(0xFFFFFBFB),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 3.49,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                  ),
                ),
                child: const PopularCategories(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned bestNatureSlider(LocationDetail location) {
    return Positioned(
      top: 270,
      left: 80,
      child: Column(
        children: [
          Text(
            location.name,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                size: 30,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Stack natureSelection() {
    return Stack(
      children: [
        const Positioned(
          bottom: -10,
          left: 45,
          child: Text(
            ".",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Color(0xFFA36C88),
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListView.builder(
            itemCount: categoryList.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  categoryList[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: seletedIndex == index
                        ? const Color(0xFFA36C88)
                        : const Color(0xFFE2CBD4),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
