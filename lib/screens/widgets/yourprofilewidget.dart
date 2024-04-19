import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YourProfileWidget extends StatefulWidget {
  const YourProfileWidget({Key? key}) : super(key: key);

  @override
  State<YourProfileWidget> createState() => _YourProfileWidgetState();
}

class _YourProfileWidgetState extends State<YourProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding:  EdgeInsets.only(left: 10.0),
          child: Text("Your Profile",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
       const  SizedBox(height: 10,),
        Center(
          child: Container(
            color:Colors.white ,
            width: double.infinity,
            height: 264,
            child: Column(
              children: [
                const Padding(
                  padding: const EdgeInsets.all( 11.0),
                  child: Row(
                    children: [
                      Text("Email"),
                      Spacer(),
                      Text("Khalid@gmail.com",overflow:TextOverflow.ellipsis,maxLines: 1,),
                    ],
                  ),
                ),
                _buildDivider(),
               const Padding(
                  padding: const EdgeInsets.all( 11.0),
                  child: Row(
                    children: [
                      Text("Name"),
                      Spacer(),
                      Text("khalid",overflow:TextOverflow.ellipsis,maxLines: 1,),
                    ],
                  ),
                ),
                _buildDivider(),
               const Padding(
                  padding: const EdgeInsets.all( 11.0),
                  child: Row(
                    children: [
                      Text("Username"),
                      Spacer(),
                      Text("Khaled32"),
                    ],
                  ),
                ),
                _buildDivider(),
                Padding(
                  padding: const EdgeInsets.all( 11.0),
                  child: Row(
                    children: [
                      const Text("City"),
                      const Spacer(),
                      SizedBox(
                        width: 54,
                        height: 16,// Adjust the width as needed
                        child: TextFormField(
                          style: const TextStyle(fontSize: 12),
                          decoration:const InputDecoration(
                            hintText: "Enter City",
                            border: InputBorder.none, // Remove the border
                          ),
                          // Add onChanged or controller to handle user input
                        ),
                      ),
                    ],
                  ),
                ),

                _buildDivider(),
                const Padding(
                  padding: const EdgeInsets.all( 11.0),
                  child: Row(
                    children: [
                      Text("Gym ID"),
                      Spacer(),
                      Text("7657658"),
                    ],
                  ),
                ),
                _buildDivider(),
                const Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Row(
                    children: [
                      Text("Language"),
                      Spacer(),
                      Text("English"),
                    ],
                  ),
                ),
                _buildDivider(),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10,),
      ],
    );
  }

}
Widget _buildDivider() {
  return Divider(
    height: 2,
    thickness: 2,
    color: Colors.grey[300],
  );
}
