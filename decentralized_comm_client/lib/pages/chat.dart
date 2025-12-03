import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {

     void onTap() {
      Navigator.pushNamed(context, '/chatroom');
    }

    Widget _buildListTile() {
      return ListTile(
        leading: CircleAvatar(),
        title: Text('Captain'),
        subtitle: Text('I will be there soon'),
        trailing: Text('00:00'),
        // onTap: onTap(),
      );
    }


    return ListView(
      children: [
        _buildListTile(),
        Divider(),
        _buildListTile(),
        Divider(),
        _buildListTile(),
        Divider(),
        _buildListTile(),
        Divider(),
        _buildListTile(),
        Divider(),
        _buildListTile(),
        Divider(),
        _buildListTile(),
        Divider(),
        _buildListTile(),
        Divider(),
        _buildListTile(),
        Divider(),
        _buildListTile(),
      ],
    );
  }
}
