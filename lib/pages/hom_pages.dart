// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:instagram2/listy/list.dart';

class HomPages extends StatefulWidget {
  // ignore: use_super_parameters
  const HomPages({Key? key}) : super(key: key);

  @override
  _HomPagesState createState() => _HomPagesState();
}

class _HomPagesState extends State<HomPages> {
  List<String> history = ['', '', '', '', '', '', '', ''];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 40,
            )),
        title: const Text(
          'Instagram 2',
          style: TextStyle(
              color: Colors.white, fontSize: 27, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chat_sharp,
                color: Colors.white,
                size: 35,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 125,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage(
                          istoria[index].name,
                        ),
                      ),
                      const Text(
                        'usenovermek.2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // ignore: prefer_const_constructors
            Divider(
              thickness: 3,
              color: Colors.black,
            ),
            SizedBox(
              height: 575,
              width: 500,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: double.infinity,
                      height: 600,
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: double.infinity,
                            color: Colors.black,
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: CircleAvatar(
                                    radius: 40,
                                  ),
                                ),
                                Center(
                                    child: Text(
                                  'usenovermek.1',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                ))
                              ],
                            ),
                          ),
                          Image.asset(
                            surottor[index].foto,
                            width: 500,
                            height: 460,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            height: 80,
                            width: double.infinity,
                            color: Colors.black,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.favorite_outline_outlined,
                                          color: Colors.white,
                                          size: 30,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.comment_rounded,
                                          color: Colors.white,
                                          size: 30,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.send,
                                          color: Colors.white,
                                          size: 30,
                                        )),
                                    const SizedBox(
                                      width: 215,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.bookmark_border,
                                          color: Colors.white,
                                          size: 35,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.blue,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_rounded,
              color: Colors.grey,
            ),
            label: '',
          ),
        ],
        // selectedItemColor: Colors.blue,
      ),
    );
  }
}
