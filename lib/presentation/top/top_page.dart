import 'package:flutter/material.dart';
import 'package:one_hundred/presentation/home/home_page.dart';
import 'package:one_hundred/presentation/top/top_model.dart';
import 'package:provider/provider.dart';

class TopPage extends StatelessWidget {
  final List<String> _tabNames = [
    "Home",
    "MyPage",
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TopModel>(
      create: (_) => TopModel()..init(),
      child: Consumer<TopModel>(
        builder: (context, model, child) {
          return Scaffold(
              body: _topPageBody(context),
              bottomNavigationBar: BottomNavigationBar(
                onTap: model.onTabTapped,
                currentIndex: model.currentIndex,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.access_time),
                    label: _tabNames[0],
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.group),
                    label: _tabNames[1],
                  ),
                ],
              ));
        },
      ),
    );
  }

  Widget _topPageBody(BuildContext context) {
    final model = Provider.of<TopModel>(context);
    final currentIndex = model.currentIndex;
    return Stack(
      children: <Widget>[
        _tabPage(
          currentIndex,
          0,
          HomePage(),
        ),
        _tabPage(
          currentIndex,
          1,
          MyPage(),
        ),
      ],
    );
  }

  Widget _tabPage(int currentIndex, int tabIndex, StatelessWidget page) {
    return Visibility(
      visible: currentIndex == tabIndex,
      maintainState: true,
      child: page,
    );
  }
}

