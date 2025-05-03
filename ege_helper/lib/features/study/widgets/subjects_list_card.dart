import 'package:ege_helper/ui/ui.dart';
import 'package:flutter/material.dart';

class SubjectsListCard extends StatelessWidget {
  const SubjectsListCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
      width: double.infinity,
      height: 210,
      margin: EdgeInsets.only(left: 30, right: 30).copyWith(bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 100,
            width: 160,
            color: theme.hintColor,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 30,
            width: 210,
            color: Colors.grey,
            child: Text('Предмет',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w400)),
          ),
          SizedBox(height: 10),
          Container(
              height: 30,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey,
              ),
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.grey,
                child: Text("Начать",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w300)),
              ))
        ],
      ),
    );
  }
}
