import 'package:flutter/material.dart';

import 'animated_list_view.dart';
import 'home_top.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  /*
   * Sem tween porque o valor deve ser de 0 a 1.
   */
  StaggerAnimation({@required this.controller}):
        containerGrow = CurvedAnimation(parent: controller, curve: Curves.ease),
        listSlidePosition = EdgeInsetsTween(
                begin: EdgeInsets.only(bottom: 0),
                end: EdgeInsets.only(bottom: 80))
            .animate(CurvedAnimation(
          parent: controller,
          // Interval trabalha com porcentagem
          curve: Interval(
            0.325,
            0.8,
            curve: Curves.ease
          ),
        ));

  final Animation<double> containerGrow;
  final Animation<EdgeInsets> listSlidePosition;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        HomeTop(
          containerGrow: containerGrow,
        ),
        AnimatedListView(
          listSlidePostion: listSlidePosition,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }
}
