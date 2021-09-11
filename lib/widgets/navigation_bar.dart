import 'package:flutter/material.dart';

import 'package:myapp9_365dayswriting/routes/route.dart' as route;

class NavigationBar extends StatelessWidget {

  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final deviceWidth = mediaQuery.size.width;
    final deviceHeight = mediaQuery.size.height;

    final iconScaleFactor = 0.075;

    void _onItemTapped(int index){
     switch(index){
       case 0: {
         Navigator.pushNamed(context, route.cardListScreen);
         break;
       }
       case 1: {
         Navigator.pushNamed(context, route.underConstructionScreen);
         break;
       }
       case 2: {
         Navigator.pushNamed(context, route.landingScreen);
         break;
       }
       case 3: {
         Navigator.pushNamed(context, route.underConstructionScreen);
         break;
       }
       case 4: {
         Navigator.pushNamed(context, route.underConstructionScreen);
         break;
       }
     }
    }

    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.grid_view_outlined,
            size: deviceWidth * iconScaleFactor,
            color: Theme.of(context).iconTheme.color,
          ),
          backgroundColor: Theme.of(context).accentColor,
          label: 'Grid View',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.help_outline_rounded,
            size: deviceWidth * iconScaleFactor,
            color: Theme.of(context).iconTheme.color,
          ),
          backgroundColor: Theme.of(context).accentColor,
          label: 'Help',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.edit_outlined,
            size: deviceWidth * iconScaleFactor,
            color: Theme.of(context).iconTheme.color,
          ),
          backgroundColor: Theme.of(context).accentColor,
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            size: deviceWidth * iconScaleFactor,
            color: Theme.of(context).iconTheme.color,
          ),
          backgroundColor: Theme.of(context).accentColor,
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle_outlined,
            size: deviceWidth * iconScaleFactor,
            color: Theme.of(context).iconTheme.color,
          ),
          backgroundColor: Theme.of(context).accentColor,
          label: 'Me',
        ),
      ],
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Theme.of(context).accentColor,
    );
  }
}
