import 'package:facebook_clone/DATA/Data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';

class Feedpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Container(
            height: 110,
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/profiles/5.png',
                      width: 55,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'What\'s on your mind',
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Ionicons.videocam,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Live',
                          style: TextStyle(fontFamily: 'Nunito'),
                        ),
                      ],
                    ),
                    Container(
                      height: 20,
                      width: 2,
                      color: Colors.grey.withOpacity(0.4),
                    ),

                    //2nd
                    Row(
                      children: [
                        Icon(
                          Icons.photo_album,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Photos',
                          style: TextStyle(fontFamily: 'Nunito'),
                        ),
                      ],
                    ),
                    //3rd
                    Container(
                      height: 20,
                      width: 2,
                      color: Colors.grey.withOpacity(0.4),
                    ),

                    Row(
                      children: [
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Short Videos',
                          style: TextStyle(fontFamily: 'Nunito'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 15,
          color: Colors.grey[400].withOpacity(0.6),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 230,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: Data.dataList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => storyCard(index: index),
            ),
          ),
        ),
        Container(
          height: 15,
          color: Colors.grey[400].withOpacity(0.6),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          //height: 320,
          // padding: EdgeInsets.all(15.0),
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: Data.dataList.length,
            itemBuilder: (context, index) => post(index: index),
          ),
        ),
      ],
    );
  }

  Widget post({int index}) {
    return Data.dataList[index].isCreate
        ? Container()
        : Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            Data.dataList[index].imgPath,
                            width: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Data.dataList[index].userName,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Row(
                                  children: [
                                    Text(
                                      Data.dataList[index].hour,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.globeAsia,
                                      color: Colors.grey[700],
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.grey[700],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Image.asset(Data.dataList[index].postImage),
                ),
                Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            FontAwesomeIcons.solidThumbsUp,
                            color: Colors.blue[700],
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            FontAwesomeIcons.solidHeart,
                            color: Colors.red,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '100',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '10 Comments',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '5 Shares',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.thumbsUp),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Like'),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.comment),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Comment'),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.share),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Share'),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
              ],
            ),
          );
  }

  Widget storyCard({int index}) {
    return Data.dataList[index].isCreate
        ? Padding(
            padding: EdgeInsets.all(5),
            child: Container(
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(0.2),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.7),
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          image: DecorationImage(
                            image: AssetImage(Data.dataList[index].imgPath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        'Add to Story',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito',
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 10,
                    left: 0,
                    right: 70,
                    child: Center(
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Container(
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.blue,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.all(5),
            child: Container(
              //height: 130,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(Data.dataList[index].postImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    height: 230,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.transparent,
                        ],
                        begin: FractionalOffset.bottomCenter,
                        end: FractionalOffset.topCenter,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: CircleAvatar(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(Data.dataList[index].imgPath),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    left: 8,
                    child: Text(
                      Data.dataList[index].userName,
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Nunito'),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
