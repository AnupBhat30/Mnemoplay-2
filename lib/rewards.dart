import 'package:flutter/material.dart';

class RewardPage extends StatefulWidget {
  @override
  _RewardPageState createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  int _points = 10000;
  List<Reward> _rewards = [
    Reward("Cool Avatar", "Equip a unique avatar", 50,
        Image.asset("assets/temp/avatar_reward.png")),
    Reward("Bonus Points x2", "Double your points for 1 hour", 200,
        Image.asset("assets/temp/points_boost.png")),
    Reward("Unlock Hints", "Unlock hints to help with quiz", 200,
        Image.asset("assets/temp/hint.png")),
    Reward("Social Treasure", "You can't buy them, you can't get them", 200,
        Image.asset("assets/temp/mystery.png")),
    Reward("Aurora Achievement", "Attain unique achievements that trigger dazzling auroras", 500,
        Image.asset("assets/temp/aurora.png")),
    Reward("Mystic Challenges", "Secrets only the wisest can unravel.", 9999,
        Image.asset("assets/temp/rere.png")),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 50,
        width: 50,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/lead');
          },
          child: Image.asset('assets/temp/home1.png', height: 30, width: 30),
        ),
      ),
      backgroundColor: Color(0xFFF7E7CE),

      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: Color(0xFF6F4E37),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rewards",
                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      "$_points",
                      style: TextStyle(color:Colors.white, fontSize: 20),
                    ),
                    SizedBox(width: 4),
                    Image.asset("assets/temp/coin_icon.png", height: 20),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: _rewards.length,
              itemBuilder: (context, index) {
                return Align(
                  alignment: Alignment.bottomCenter,
                  child: RewardCard(
                    reward: _rewards[index],
                    onRedeem: () {
                      setState(() {
                        _points -= _rewards[index].cost;
                      });
                    },
                    points: _points,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}





class Reward {
  final String name;
  final String description;
  final int cost;
  final Image image;

  Reward(this.name, this.description, this.cost, this.image);
}



class RewardCard extends StatelessWidget {
  final Reward reward;
  final VoidCallback onRedeem;
  final int points;

  const RewardCard({
    Key? key,
    required this.reward,
    required this.onRedeem,
    required this.points,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF6F4E37),
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [

              SizedBox(
                height: 70,
                child: reward.image,
              ),
              Text(reward.name,
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
              Text(reward.description, style: TextStyle(color: Colors.white, fontSize: 12)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${reward.cost} points",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  ElevatedButton(
                    onPressed: onRedeem,
                    child: Text("Redeem"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
