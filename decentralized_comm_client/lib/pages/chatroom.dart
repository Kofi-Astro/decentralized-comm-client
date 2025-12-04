import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

class ChatRoomPage extends StatelessWidget {
  final String name;
  const ChatRoomPage({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    final double audioIndex = 4;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(name), backgroundColor: Colors.indigo[200]),
        body: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  // color: Colors.blue,
                  child: ListView(
                    children: [
                      Container(height: 30, color: Colors.pink),
                      BubbleNormal(
                        text: 'This is a normal text bubble',
                        color: Colors.teal,
                      ),
                      BubbleNormalAudio(
                        onSeekChanged: (index) {
                          index = audioIndex;
                        },
                        onPlayPauseButtonClick: () {},
                        color: Colors.purple,
                      ),

                      BubbleNormalImage(
                        id: 'Anime',
                        image: Image.asset('assets/images/anime.jpeg'),
                        color: Colors.deepOrange,
                        isSender: false,
                      ),
                      BubbleSpecialOne(
                        text: 'This is special bubble 1',
                        color: Colors.deepPurpleAccent,
                      ),
                      BubbleSpecialOne(
                        text: 'This is special bubble 1',
                        color: Colors.deepPurpleAccent,
                        isSender: false,
                      ),
                      BubbleSpecialTwo(
                        text: 'This is special bubble 2',
                        color: Colors.greenAccent,
                      ),
                      BubbleSpecialTwo(
                        text: 'This is special bubble 2',
                        color: Colors.greenAccent,
                        isSender: false,
                      ),
                      BubbleSpecialThree(
                        text: 'This is special bubble 3',
                        color: Colors.blue,
                      ),
                      DateChip(date: DateTime.now()),
                      BubbleSpecialThree(
                        text: 'This is special bubble 3',
                        color: Colors.blue,
                        isSender: false,
                      ),
                      BubbleSpecialThree(
                        text: 'This is special bubble 3',
                        color: Colors.blue,
                        isSender: false,
                      ),
                    ],
                  ),
                ),
              ),

              MessageBar(
                actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
