import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  final List<String> categoryList;
  CategoryView({this.categoryList});

  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          iconSize: 40,
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              _counter= _counter == 0 ? widget.categoryList.length -1 : --_counter;
            });
          },
        ),
        Text(
          "${widget.categoryList[_counter]}".toUpperCase(),
          style: TextStyle(
            letterSpacing: 1.2,
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300
          ),
        ),
        IconButton(
          iconSize: 40,
          icon: Icon(Icons.keyboard_arrow_right, color: Colors.white),
          onPressed: () {
            setState(() {
              _counter = _counter == widget.categoryList.length -1 ? 0 : ++_counter;
            });
          },
        ),
      ],
    );
  }
}
