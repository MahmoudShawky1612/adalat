import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YourFitnessProfileWidget extends StatelessWidget {
  const YourFitnessProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding:  EdgeInsets.all(8.0),
          child: Text(
            "Your Fitness Profile",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          color: Colors.white,
          width: double.infinity,
          height: 222,
          child: Column(
            children: [
              _buildProfileRow("Gender", "Male"),
              _buildDivider(),
              _buildProfileRow("Weight", "75 Kg"),
              _buildDivider(),
              _buildProfileRow("Height", "180 cm"),
              _buildDivider(),
              _buildProfileRow("Fitness Level", "Newbie"),
              _buildDivider(),
              _buildProfileRow("Goals", "Body Building"),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: Colors.black,
          ),
          child: TextButton(
            onPressed: () {},
            child:const Text(
              "Save Changes",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProfileRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Row(
        children: [
          Text(title),
          const Spacer(),
          Text(value),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      height: 2,
      thickness: 2,
      color: Colors.grey[300],
    );
  }
}

