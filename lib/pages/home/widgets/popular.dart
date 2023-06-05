import 'package:flutter/material.dart';

import '../../../models/game.dart';

class PopularGame extends StatelessWidget {
   PopularGame({Key? key}) : super(key: key);

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal:25, vertical:20),
        scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector(
            onTap: (() => print('on Tap')),
            child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Container(
                    padding: EdgeInsets.all(5),
                    child: ClipRRect(
                      child: Image.asset(games[index].bgImage)
                    ),
                ),
            ),
          )),
          separatorBuilder: ((context, index) => const SizedBox(width:10)),
          itemCount: games.length),
    );
  }
}
