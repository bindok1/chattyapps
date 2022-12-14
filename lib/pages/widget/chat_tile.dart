import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class ChatTile extends StatelessWidget {
final String imageUrl;  
final String name;
final String text;
final  time; 
final bool unread; //menggunakan ternary untuk membuat pesan yg dibaca dgn bold dan yg tidak

ChatTile({required this.imageUrl, required this.name,required this.text, required this.time, required this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(children:[ Image.asset (imageUrl, width: 55, height: 55,
      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: [Text (name, 
                        style: titleTextStyle,
                      ),
                      Text
                      (text, style : unread ? subTitleTextStyle.copyWith(color: blackColor) : subTitleTextStyle, ) 
                      ],
                      ),
                      Spacer(),
                      Text
                      (time, style: subTitleTextStyle, ), //untuk membuat widget langsung di pojok kanan
                      ]
                      ),
    );
  }
}