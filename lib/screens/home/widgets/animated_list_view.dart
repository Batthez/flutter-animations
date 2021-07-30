import 'package:flutter/material.dart';

import 'list_data.dart';

class AnimatedListView extends StatelessWidget {

  final Animation<EdgeInsets> listSlidePostion;

  AnimatedListView({@required this.listSlidePostion});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: "Estudar Flutter",
          subtitle: "Com o curso do Daniel Ciolfi",
          image: AssetImage("images/perfil.jpg"), margin: listSlidePostion.value * 5,
        ),
        ListData(
          title: "Estudar Kotlin",
          subtitle: "Com o curso da udemy sobre Coroutines",
          image: AssetImage("images/perfil.jpg"), margin:  listSlidePostion.value * 4,
        ),
        ListData(
          title: "Estudar Kotlin",
          subtitle: "Com o curso da udemy sobre Coroutines",
          image: AssetImage("images/perfil.jpg"), margin:  listSlidePostion.value * 3,
        ),
        ListData(
          title: "Estudar Kotlin",
          subtitle: "Com o curso da udemy sobre Coroutines",
          image: AssetImage("images/perfil.jpg"), margin:  listSlidePostion.value * 2,
        ),
        ListData(
          title: "Estudar Kotlin",
          subtitle: "Com o curso da udemy sobre Coroutines",
          image: AssetImage("images/perfil.jpg"), margin:  listSlidePostion.value * 1,
        ),
        ListData(
          title: "Estudar Kotlin",
          subtitle: "Com o curso da udemy sobre Coroutines",
          image: AssetImage("images/perfil.jpg"), margin:  listSlidePostion.value * 0,
        )
      ],
    );
  }
}
