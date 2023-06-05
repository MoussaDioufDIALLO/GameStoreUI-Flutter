import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
   //   height: 200,
      //color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Welcome',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'What would you like to play',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              )
            ],
          ),
          CircleAvatar(
            child: Image.asset('assets/images/avatar.png',
            fit : BoxFit.cover),
          )
        ],
      ),
    );
  }
}
