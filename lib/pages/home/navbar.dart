import 'package:masakaja/import/import_main.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        const Screen1(),
        const HomePage(),
        const Screen3(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems(){
      return [

        PersistentBottomNavBarItem(
          icon: const Icon(Icons.search),
          title: ("Search"),
          activeColorPrimary: kPrimaryColor,
          inactiveColorPrimary: Colors.grey,
        ),

        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.home_filled,
            color: kPrimaryWhiteColor,
          ),
          inactiveIcon: const Icon(
            Icons.home,
            color: kPrimaryLightGreyColor,
          ),
          title: ("Home"),
          activeColorPrimary: kPrimaryColor,
          inactiveColorPrimary: Colors.grey,
        ),

        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          title: ("Profile"),
          activeColorPrimary: kPrimaryColor,
          inactiveColorPrimary: Colors.grey,
        ),

      ];
    }

    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 1);
    return PersistentTabView(
      context,
      screens:_buildScreens(),
      items: _navBarsItems(),
      controller: controller,
      confineInSafeArea: true,
      backgroundColor: kPrimaryLightWhiteColor,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
      NavBarStyle.style16,


    );
  }
}
class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'SOON',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'SOON',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}