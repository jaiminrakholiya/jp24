import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            const Padding(
                padding: EdgeInsets.only(left: 25, top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome To EBookHub',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                    Text(
                      'Discover Latset Book',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ],
                )),
            Container(
              height: 39,
              margin: const EdgeInsets.only(left: 25, right: 25, top: 18),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade100),
              child: const Stack(
                children: [
                  TextField(
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(left: 19, right: 50, bottom: 8),
                      border: InputBorder.none,
                      hintText: 'Search book..',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Positioned(
                      right: 8,
                      top: 9,
                      child: Icon(
                        Icons.search,
                        color: Colors.green,
                      )),
                ],
              ),
            ),
            Container(
              height: 25,
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.only(left: 25),
              child: DefaultTabController(
                  length: 3,
                  child: TabBar(
                      labelPadding: const EdgeInsets.all(0),
                      indicatorPadding: const EdgeInsets.all(0),
                      isScrollable: true,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Colors.green,
                      labelStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      unselectedLabelStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600),
                      tabs: [
                        Tab(
                          child: Container(
                            margin: const EdgeInsets.only(right: 23),
                            child: const Text('New'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: const EdgeInsets.only(right: 23),
                            child: const Text('Trending'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: const EdgeInsets.only(right: 23),
                            child: const Text('Best Seller'),
                          ),
                        ),
                      ])),
            ),
            Container(
              margin: const EdgeInsets.only(top: 21),
              height: 210,
              child: ListView.builder(
                  itemCount: 5,
                  padding: const EdgeInsets.only(left: 25, right: 6),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 19),
                      height: 210,
                      width: 153,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: const DecorationImage(
                            image: AssetImage('assets/images/book1.jpg'),
                          )),
                    );
                  }),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 25),
              child: Text(
                'Popular',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            ListView.builder(
                padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 19),
                    height: 81,
                    width: MediaQuery.of(context).size.width - 50,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 81,
                          width: 62,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/book2.jpg'),
                              )),
                        ),
                        const SizedBox(
                          width: 21,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'title',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'author',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              ' \$20',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
