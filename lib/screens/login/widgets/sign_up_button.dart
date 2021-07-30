import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(
          top: 160,
        ),
        child: Text(
          "Não possui uma conta? Cadastre-se!",
          textAlign: TextAlign.center,
          overflow: TextOverflow.clip,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.white,
            letterSpacing: 0.5,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
