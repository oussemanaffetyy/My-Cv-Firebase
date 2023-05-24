import 'package:cvfirebase/auth.dart';
import 'package:flutter/material.dart';
import 'package:cvfirebase/pages/ExperiencePage.dart';
import 'package:cvfirebase/pages/cv.dart';
import 'package:cvfirebase/pages/mapPage.dart';
import 'package:cvfirebase/pages/skillPage.dart';
import 'package:provider/provider.dart';
import 'EducationPage.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({required Key key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Item Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomNavCustom(),
      
    );
  }
}

List<Widget> pages = [cv(), EducationPage(), Experience(), Skill(), MapPage()];
PageController _pageController = PageController(initialPage: 0);

class BottomNavCustom extends StatefulWidget {
  @override
  _BottomNavCustomState createState() => _BottomNavCustomState();
}

class _BottomNavCustomState extends State<BottomNavCustom> {
  int selectedIndex = 0;
  Color backgroundColorNav = Colors.white;

  List<NavigationItem> items = [
    NavigationItem(
      const Icon(
        Icons.home,
        color: Color.fromRGBO(91, 55, 183, 1),
      ),
      const Text(
        'Home',
        style: TextStyle(
            color: Color.fromRGBO(91, 55, 183, 1), fontWeight: FontWeight.bold),
      ),
      const Color.fromRGBO(223, 215, 243, 1),
    ),
    NavigationItem(
        const Icon(Icons.school, color: Color.fromRGBO(201, 55, 157, 1)),
        const Text(
          'Education',
          style: TextStyle(
              color: Color.fromRGBO(201, 55, 157, 1),
              fontWeight: FontWeight.bold),
        ),
        const Color.fromRGBO(244, 211, 235, 1)),
    NavigationItem(
        const Icon(
          Icons.work,
          color: Color.fromRGBO(230, 169, 25, 1),
        ),
        const Text(
          'Experience',
          style: TextStyle(
              color: Color.fromRGBO(230, 169, 25, 1),
              fontWeight: FontWeight.bold),
        ),
        const Color.fromRGBO(251, 239, 211, 1)),
    NavigationItem(
        const Icon(Icons.code, color: Color.fromRGBO(17, 148, 170, 1)),
        const Text(
          'Skill',
          style: TextStyle(
              color: Color.fromRGBO(17, 148, 170, 1),
              fontWeight: FontWeight.bold),
        ),
        const Color.fromRGBO(211, 235, 239, 1)),
    NavigationItem(
        const Icon(Icons.location_on_sharp,
            color: Color.fromARGB(255, 204, 0, 37)),
        const Text(
          'Maps',
          style: TextStyle(
              color: Color.fromARGB(255, 204, 0, 37),
              fontWeight: FontWeight.bold),
        ),
        Color.fromARGB(255, 255, 217, 224)),
  ];

  Widget _buildItem(NavigationItem item, bool isSelected) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: 50,
      width: isSelected ? 120 : 50,
      padding: isSelected ? const EdgeInsets.only(left: 16, right: 16) : null,
      decoration: isSelected
          ? BoxDecoration(
              color: item.color,
              borderRadius: const BorderRadius.all(Radius.circular(50)))
          : null,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconTheme(
                data: IconThemeData(
                  size: 24,
                  color: isSelected ? backgroundColorNav : Colors.black,
                ),
                child: item.icon,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: isSelected
                    ? DefaultTextStyle.merge(
                        style: TextStyle(color: backgroundColorNav),
                        child: item.title)
                    : Container(),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          ElevatedButton(
              onPressed: () => Provider.of<Auth>(context,listen: false).logout(),
              child: Text("LogOut"))
        ],
        title: Text("My cv"),
      ),
        body: PageView(
          controller: _pageController,
          children: pages,
          onPageChanged: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
        bottomNavigationBar: Container(
          height: 56,
          padding: EdgeInsets.only(left: 8, top: 4, bottom: 4, right: 8),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)]),
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: items.map((item) {
              var itemIndex = items.indexOf(item);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = itemIndex;
                    _pageController.animateToPage(
                      selectedIndex,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  });
                },
                child: _buildItem(item, selectedIndex == itemIndex),
              );
            }).toList(),
          ),
        ));
  }
}

class NavigationItem {
  final Icon icon;
  final Text title;
  final Color color;

  NavigationItem(this.icon, this.title, this.color);
}
