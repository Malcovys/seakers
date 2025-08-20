import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/core/routes/app_router.gr.dart';
import 'package:sneakers/core/styles/theme.dart';

@RoutePage()
class AppPage extends StatelessWidget {
  const AppPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        HomeRoute(),
        BrowseRoute(),
        CartRoute(),
        ProfileRoute(),
      ],
      
      navigatorObservers: () => [AutoRouteObserver()],
      homeIndex: 0,
      lazyLoad: true, // Only build active tab (improves performance)
      
      // Support URL path matching for web/deep linking
      inheritNavigatorObservers: false,
      
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: child,
            )
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: captionSemibold,
            unselectedLabelStyle: caption,
            selectedItemColor: contentPrimary,

            type: BottomNavigationBarType.fixed, // Fix the size

            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              // Switch between tabs
              tabsRouter.setActiveIndex(index);
            },
            items: [
              BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home_sharp)),
              BottomNavigationBarItem(label: 'Browse', icon: Icon(Icons.search_rounded)),
              BottomNavigationBarItem(label: 'Cart', icon: Icon(Icons.shopping_basket)),
              BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
            ]
          ),
        );
      },
    );
  }
}