import 'package:flutter/material.dart';
//import 'package:flutter_application_1/animation.dart';
import 'package:flutter_application_1/bookData.dart';
import 'package:flutter_application_1/myBook.dart';
import 'package:flutter_application_1/myBookWithRating.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBookStore extends StatefulWidget {
  const MyBookStore({super.key});

  @override
  State<MyBookStore> createState() => _MyBookStoreState();
}

class _MyBookStoreState extends State<MyBookStore> {
  List<BookData> booksRecommendation = [
    BookData('Resources/images/ameneta.jpg', 'Papillion: Based on true story', 5.6,
        'Mark Sulek', '2h 45m'),
    BookData('Resources/images/Balnjeraye.jpg', 'Melorina', 4.5, 'Mergeta Besufikad', '2h 10m'),
    BookData('Resources/images/SillyMammo.jpg', 'Am I Small?', 7.3, 'Selam Beyene', '4h 30m'),
    BookData('Resources/images/Temsalet.jpg.', 'Beyond Amen', 6.2, 'Markos Ayele', '3h 50m'),
  ];
  List<BookData> booksNew = [
    BookData(
        'Resources/images/Tsion.jpg', 'Rich Dad Poor Dad', 5.6, 'Robert Kiyosaki', '6h 30m'),
    BookData(
        'Resources/images/Amen.jpg', 'Yesinibit Kelemat', 4.5, 'Tamrat Markos', '4h 50m'),
    BookData(
        'assets/n3.jpg', 'The Past is Rising', 7.3, 'Jack Carter', '1h 40m'),
    BookData('Resources/images/Intuition.jpg', 'Cogheart', 6.2, 'Peter Bunzl', '3h 10m'),
  ];
  List<BookData> booksTrending = [
    BookData('Resources/images/Kelal.jpg', 'Born a Crime by Trevor Noah', 7.5, 'Trevor Noah',
        '2h 10m'),
    BookData('Resources/images/LastHope.jpg', 'Evolution of the Learning Brain', 8.2,
        'Callum Dawson', '8h 30m'),
    BookData('Resources/images/LoveNote.jpg', 'Lela Sew', 5.1, 'Atnafu Demsie', '2h 10m'),
    BookData(
        'Resources/images/Memory.jpg', 'Tebegna Ewnetoch', 4.7, 'Bewketu Seyoum', '5h 10m'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GDSC BOOKSTORE',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1.2),
        ),
        leading: const Icon(
          Icons.sort,
          color: Colors.black,
          size: 30,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
        child: GNav(
          padding: const EdgeInsets.all(10),
          gap: 8,
          iconSize: 35,
          tabBackgroundColor: Colors.grey.withOpacity(.2),
          tabs: const [
            GButton(
              icon: Icons.newspaper_outlined,
            ),
            GButton(
              icon: Icons.auto_stories_outlined,
            ),
            GButton(
              icon: Icons.home_outlined,
            ),
           /* GButton(
              icon: Icons.book_outlined,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const MyAnimation();
                  }),
                );
              },
            ),*/
            GButton(
              icon: Icons.person_2_outlined,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    SizedBox(
                      width: 280,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(153, 192, 227, .2),
                          hintText: 'Looking for...',
                          hintStyle: const TextStyle(
                            color: Color.fromRGBO(191, 191, 191, 1),
                          ),
                          suffixIcon: const Icon(
                            Icons.search_rounded,
                            size: 35,
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 24),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.tune_outlined,
                            color: Colors.white, size: 35),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Card(
                child: Container(
                  width: 400,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.purple.withOpacity(.8),
                        Colors.blue,
                        Colors.blue.withOpacity(.5),
                        Colors.purple.withOpacity(.8),
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Sep 23, 2023',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      const Positioned(
                        top: 20,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.pause,
                                color: Colors.white,
                                size: 40,
                              ),
                              SizedBox(width: 220),
                              Icon(
                                Icons.pause,
                                color: Colors.white,
                                size: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                      positionedText('Today a reader', 40, 110, 25, 0),
                      positionedText('tomorrow a', 60, 130, 25, 0),
                      positionedText('LEADER', 76, 91, 50, 2.5),
                      Positioned(
                        left: 132,
                        bottom: 0,
                        child: Row(
                          children: [
                            icons(Icons.g_translate),
                            const SizedBox(width: 15),
                            icons(Icons.bookmark),
                            const SizedBox(width: 15),
                            icons(Icons.share),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 22),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    categories('Health', Icons.health_and_safety_outlined),
                    categories('Science', Icons.science),
                    categories('History', Icons.history_edu_outlined),
                    categories('Tech', Icons.rocket_launch),
                    categories('Philosophy', Icons.phishing_outlined),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Recommendations',
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: booksRecommendation.length,
                  itemBuilder: (context, index) {
                    return myBookWithRating(
                        booksRecommendation[index], context);
                  },
                ),
              ),
              const SizedBox(height: 25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'New',
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: booksNew.length,
                  itemBuilder: (context, index) {
                    return myBook(booksNew[index], context);
                  },
                ),
              ),
              const SizedBox(height: 25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Trending',
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: booksTrending.length,
                  itemBuilder: (context, index) {
                    return myBookWithRating(booksTrending[index], context);
                  },
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }

  Row categories(String title, IconData? iconData) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 180,
          child: Card(
            color: const Color.fromRGBO(230, 230, 230, 1),
            child: ListTile(
              contentPadding:
                  const EdgeInsetsDirectional.only(start: 21, top: -40),
              leading: Icon(
                iconData,
                color: Colors.black54,
              ),
              title: Text(
                title,
                style: const TextStyle(color: Colors.black54, fontSize: 19),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Icon icons(IconData? iconData) {
  return Icon(
    iconData,
    color: Colors.white,
    size: 30,
  );
}

Positioned positionedText(String text, double top, double left, double fontSize,
    double letterSpacing) {
  return Positioned(
    left: left,
    top: top,
    child: Text(
      text,
      style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
          letterSpacing: letterSpacing),
    ),
  );
}