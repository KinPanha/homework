import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:homework/Icon.dart';
import 'package:homework/navigationbar.dart';
import 'package:homework/widget.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class Product {
  late String name;
  late IconData icon;
  Product(this.icon, this.name);
}

class _TestState extends State<Test> {
  List<Product> list = [
    Product(Icons.headphones, 'HeadPhone'),
    Product(Icons.speaker, 'Speaker'),
    Product(Icons.mic, 'Microphone'),
    Product(Icons.network_cell, 'Network'),
    Product(Icons.phone_android, 'Phone'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                border: InputBorder.none),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: CarouselSlider(
                  items: const [
                    Image(
                      image: NetworkImage(
                        'https://images.theconversation.com/files/457052/original/file-20220408-15-pl446k.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip',
                      ),
                      fit: BoxFit.cover,
                    ),
                    Image(
                      image: NetworkImage(
                          'https://images.theconversation.com/files/457052/original/file-20220408-15-pl446k.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip'),
                      fit: BoxFit.cover,
                    ),
                    Image(
                      image: NetworkImage(
                          'https://images.theconversation.com/files/457052/original/file-20220408-15-pl446k.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip'),
                      fit: BoxFit.cover,
                    ),
                  ],
                  options: CarouselOptions(
                    height: double.infinity,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    enlargeCenterPage: true,
                    scrollPhysics: const NeverScrollableScrollPhysics(),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return IconCustom(
                        name: list[index].name, icons: list[index].icon);
                  },
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black12),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        SizedBox(height: 10),
                        Text(
                          'Mid-Year Sale 15% off',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Icon(
                          Icons.flash_on,
                          color: Colors.yellow,
                        )
                      ],
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://cdn.grabon.in/gograbon/images/web-images/uploads/1618571140235/mobile-offers.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const Text(
                            'New Arrival',
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                decoration: TextDecoration.underline),
                          ),
                          const Icon(
                            Icons.flash_on,
                            color: Colors.yellow,
                          ),
                          const SizedBox(width: 140),
                          MaterialButton(
                              child: Row(
                                children: const [
                                  Text(
                                    'See all',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.blue),
                                  ),
                                  Icon(
                                    Icons.navigate_next,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                              onPressed: () {})
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              SizedBox(width: 10),
                              WidgetContainer(),
                              SizedBox(width: 10),
                              WidgetContainer(),
                              SizedBox(width: 10),
                              WidgetContainer(),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: const [
                              SizedBox(width: 10),
                              WidgetContainer(),
                              SizedBox(width: 10),
                              WidgetContainer(),
                              SizedBox(width: 10),
                              WidgetContainer(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      '   More Mid Year Deal🥰',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 180,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://www.iphone-droid.net/wp-content/uploads/2022/05/6.6-OnePlus-Mid-Year-Sale-image002-600x314.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                height: 150,
                                width: 105,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://gadgetpilipinas.net/wp-content/uploads/2021/06/realme-6.6-Sale-1.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 150,
                                width: 105,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://www.ungeek.ph/wp-content/uploads/2019/11/KV-realme-Lazada-11.11-sale.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 150,
                                width: 105,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://unbox.ph/wp-content/uploads/2019/11/XiaomiLazada1111_1.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
