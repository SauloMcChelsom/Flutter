import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text(
          'demoAppBarTitle',
        ),
        actions: [
          IconButton(
            tooltip: 'starterAppTooltipFavorite',
            icon: const Icon(
              Icons.favorite,
            ),
            onPressed: () {},
          ),
          IconButton(
            tooltip: 'starterAppTooltipSearch',
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          PopupMenuButton<Text>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text(
                    'demoNavigationRailFirst',
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    'demoNavigationRailSecond',
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    'demoNavigationRailThird',
                  ),
                ),
              ];
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          'cupertinoTabBarHomeTab',
        ),
      ),
    );
  }
}