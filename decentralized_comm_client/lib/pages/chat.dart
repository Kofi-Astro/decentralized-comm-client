import 'package:decentralized_comm_client/pages/chatroom.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    void onTap(String name) {
      // Navigator.pushNamed(context, '/chatroom');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChatRoomPage(name: name)),
      );
    }

    Widget _buildListTile(String username) {
      return Column(
        children: [
          ListTile(
            leading: CircleAvatar(),
            title: Text(username),
            subtitle: Text('I will be there soon'),
            trailing: Text('00:00'),
            // onTap: onTap(username),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatRoomPage(name: username),
                ),
              );
            },
          ),
          Divider(),
        ],
      );
    }

    return ListView(
      children: [
        _buildListTile('Captain'),
        _buildListTile('Kelvin'),
        _buildListTile('Kay'),
        _buildListTile('Astro'),
        _buildListTile('Max'),
        _buildListTile('Captain'),
        _buildListTile('Kelvin'),
        _buildListTile('Kay'),
        _buildListTile('Astro'),
        _buildListTile('Max'),
        _buildListTile('Captain'),
        _buildListTile('Kelvin'),
        _buildListTile('Kay'),
        _buildListTile('Astro'),
        _buildListTile('Max'),
      ],
    );
  }
}
