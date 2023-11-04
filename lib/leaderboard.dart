import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leaderboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LeaderboardPage(),
    );
  }
}

class LeaderboardPage extends StatelessWidget {
  final List<User> users = [
    User(
        name: 'User 1',
        avatarUrl: 'https://example.com/avatar1.jpg',
        score: 1000),
    User(
        name: 'User 2',
        avatarUrl: 'https://example.com/avatar2.jpg',
        score: 900),
    User(
        name: 'User 3',
        avatarUrl: 'https://example.com/avatar3.jpg',
        score: 800),
    User(
        name: 'User 4',
        avatarUrl: 'https://example.com/avatar4.jpg',
        score: 700),
    User(
        name: 'User 5',
        avatarUrl: 'https://example.com/avatar5.jpg',
        score: 600),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Leaderboard',
              style: TextStyle(
                color: Color(0xFF907F9F),
                fontSize: 45,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
      backgroundColor: Color(0xFF907F9F),
      body: ListView(
        children: [
          buildTopThreeAvatars(),
          Divider(),
          buildUserList(),
        ],
      ),
    );
  }

  Widget buildTopThreeAvatars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildPodiumUser(users[1], 2), // Middle avatar with rank 1
        buildPodiumUser(users[0], 1), // First avatar
        buildPodiumUser(users[2], 3), // Third avatar
      ],
    );
  }

  Widget buildPodiumUser(User user, int rank) {
    return Column(
      children: [
        SizedBox(height: rank == 1 ? 10.0 : 0.0),
        CircleAvatar(
          backgroundImage: NetworkImage(user.avatarUrl),
          radius: 48.0,
        ),
        SizedBox(height: 8.0),
        Text(
          'Rank $rank',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        Text(
          user.name,
          style: TextStyle(fontSize: 18.0),
        ),
        Text(
          '${user.score} Points',
          style: TextStyle(fontSize: 18.0),
        ),
      ],
    );
  }

  Widget buildUserList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(user.avatarUrl),
          ),
          title: Text(user.name),
          trailing: Text('${user.score} Points'),
        );
      },
    );
  }
}

class User {
  final String name;
  final String avatarUrl;
  final int score;

  User({
    required this.name,
    required this.avatarUrl,
    required this.score,
  });
}