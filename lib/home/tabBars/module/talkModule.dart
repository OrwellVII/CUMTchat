import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cumtchat/community/community_expandPage.dart';
import 'package:flutter_cumtchat/module/button.dart';
import 'package:flutter_cumtchat/module/cardCon.dart';
import 'package:flutter_cumtchat/module/colors.dart';
import 'package:flutter_cumtchat/module/commentCard.dart';
import 'package:flutter_cumtchat/module/imageCon.dart';
import 'package:flutter_cumtchat/module/textStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';
class talkCard extends StatefulWidget{
  @override
  final Function() click;
  const talkCard(this.click,{Key key});
  talk_card createState() => talk_card();
}

class talk_card extends State<talkCard>{
  @override
  Widget build(BuildContext context) {
    void comment() {
      final top = 12.h;
      final txBottom = 40.h;
      final txHeight = 100.h;
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (ctx) {
          return StatefulBuilder(builder: (ctx2, state) {
            return Container(
              height: MediaQuery.of(ctx2).viewInsets.bottom +
                  txHeight +
                  top +
                  txBottom,
              color: Colors.white,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      left: 12.h,
                      bottom: (MediaQuery.of(ctx2).viewInsets.bottom < 0)
                          ? 0
                          : MediaQuery.of(ctx2).viewInsets.bottom,
                      right: 12.h,
                      top: top,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(8.w),
                                      height: txHeight,
                                      color: loginTFColor,
                                      child: TextField(
                                        // scrollPadding: EdgeInsets.zero,
                                        autofocus: true,
                                        maxLines: 4,
                                        style: TextStyle(
                                            fontSize: 15.sp, color: Colors.black),
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.zero,
                                            isDense: true,
                                            border: InputBorder.none),
                                      ),
                                    )),

                              ],
                            ),
                            Row(
                              children:<Widget> [
                                /*Container(
                                  height: txBottom,
                                  child: Image.asset(
                                    "images/pic.png",
                                    height: 30.h,
                                    width: 30.h,
                                  ),
                                ),*/
                                Expanded(
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).pop();
                                    },
                                    child: Container(
                                      alignment: Alignment.bottomRight,
                                      padding: EdgeInsets.only(left: 12.w, right: 12.w),
                                      child: Text("??????",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              color: Colors.orange)),
                                    ),),
                                  )
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              ),
            );
          });
        },
      );
    }//??????????????????
    return InkWell(
      onTap: (){
        widget.click();
      },
      child: Hero(tag: "BangdreamTalk", child: Material(
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.w)
            ),
            margin: EdgeInsets.fromLTRB(10.w, 10.w, 10.w, 0),
            child: Container(
              margin: EdgeInsets.fromLTRB(20.w, 20.w, 20.w, 0),
              child: Column(
                children:<Widget> [
                  Container(
                    child: Row(
                      children:<Widget> [
                        Container(
                          decoration: BoxDecoration(
                              border: new Border.all(width: 0.5,color: Colors.white),
                              borderRadius: BorderRadius.circular(80.w),
                              image: DecorationImage(
                                  image:AssetImage('images/touxiang.jpg'),
                                  fit: BoxFit.cover
                              )
                          ),
                          width: 50.w,
                          height: 50.w,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                          alignment: Alignment.topLeft,
                          width: 200.w,
                          height: 50.w,
                          child: Column(
                            children:<Widget> [
                              Container(
                                alignment: Alignment.topLeft,
                                width: 200.w,
                                height: 25.w,
                                child:Text("????????????",style: userIdText),
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                width: 200.w,
                                height: 25.w,
                                child: Text("??????????????????",style: annotationText),
                              )
                            ],
                          ),
                        ),
                        /*Container(
                          height: 50.w,
                          width: 20.w,
                          alignment: Alignment.center,
                          child: InkWell(
                            child: Icon(Icons.arrow_drop_down_outlined),
                          ),
                        )*/
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.fromLTRB(0, 20.w, 0, 0),
                    width: 280.w,
                    child: Text("??????????????????????????????",style: TextStyle(fontSize: 14.sp,
                        fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10.w, 0, 0),
                    child: Text("??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????wdnmd???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12.sp),),
                  ),
                  Container(
                      alignment: Alignment.bottomRight,
                      height: 40.h,
                      width: 300.w,
                      child: InkWell(
                        onTap: (){
                          widget.click();
                        },
                        child: Text("????????????",style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.green
                        ),),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10.w, 0, 10.w),
                    child: Wrap(
                      children:<Widget >[
                        imageCon1('images/cai.jpg'),
                        imageCon1('images/cai2.jpg'),
                        imageCon1('images/cai3.jpg')
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.w, 10.w, 0, 10.w),
                    width: 300.w,
                    child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          decoration: BoxDecoration(
                              color:loginTFColor
                          ),
                          padding: EdgeInsets.all(5.w),
                          child: Text("bangdream??????",style: TextStyle(fontSize: 10.sp),),
                        )
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        width: 300.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:<Widget> [
                            Container(
                              width: 95.w,
                              child:LikeButton(
                                size: 25.w,
                                likeBuilder: (bool isLiked){
                                },
                                likeCount: 100,
                              )
                            ),
                            Container(
                              width: 95.w,
                              child: homeClickButton('images/talk_pinglun.png', comment),)
                            ,
                            Container(
                              width: 95.w,
                              child: homeClickButton('images/talk_fenxiang.png', share),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 15.h,
                      )
                    ],
                  )
                ],
              ),
            )
        ),
      )),
    );
  }
}

void empty(){

}

class talkExpand extends StatefulWidget{
  @override
  talk_expand createState() => talk_expand();
}

class talk_expand extends State<talkExpand>
{
  @override
  Widget build(BuildContext context) {
    void comment() {
      final top = 12.h;
      final txBottom = 40.h;
      final txHeight = 100.h;
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (ctx) {
          return StatefulBuilder(builder: (ctx2, state) {
            return Container(
              height: MediaQuery.of(ctx2).viewInsets.bottom +
                  txHeight +
                  top +
                  txBottom,
              color: Colors.white,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      left: 12.h,
                      bottom: (MediaQuery.of(ctx2).viewInsets.bottom < 0)
                          ? 0
                          : MediaQuery.of(ctx2).viewInsets.bottom,
                      right: 12.h,
                      top: top,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(8.w),
                                      height: txHeight,
                                      decoration: BoxDecoration(
                                        color: loginTFColor,
                                        borderRadius: BorderRadius.circular(10.w)
                                      ),
                                      child: TextField(
                                        // scrollPadding: EdgeInsets.zero,
                                        autofocus: true,
                                        maxLines: 4,
                                        style: TextStyle(
                                            fontSize: 15.sp, color: Colors.black),
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.zero,
                                            isDense: true,
                                            border: InputBorder.none),
                                      ),
                                    )),

                              ],
                            ),
                            Row(
                              children:<Widget> [
                                /*Container(
                                  height: txBottom,
                                  child: Image.asset(
                                    "images/pic.png",
                                    height: 30.h,
                                    width: 30.h,
                                  ),
                                ),*/
                                Expanded(
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).pop();
                                    },
                                    child: Container(
                                      alignment: Alignment.bottomRight,
                                      margin: EdgeInsets.fromLTRB(0, 10.h, 0, 0),
                                      child: Text("??????",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              color: Colors.orange)),
                                    ),),
                                )
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              ),
            );
          });
        },
      );
    }//??????????????????
    return Hero(
        tag: 'BangdreamTalk', child:Material(
        child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.h),
          child: AppBar(
            actions: [
              IconButton(icon: Image.asset('images/dot.png'),onPressed: (){
              },)
            ],
          iconTheme: IconThemeData(
              color: Colors.black
          ),
          backgroundColor: tabBar,
          elevation: 0.8.h,
          title: Text("??????",style: TextStyle(color: Colors.black),),
        ),
      ),
          body: Container(
          child:  Column(
            children: [
              Expanded(child:   SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                child:ScrollConfiguration(
                  behavior: CusBehavior(),
                  child: Column(
                    children:<Widget> [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              CupertinoPageRoute(builder: (context)=>
                                  communityExPandCard()
                              ));
                        },
                        child:Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10.h),
                          decoration: BoxDecoration(
                              color: tabBar
                          ),
                          width: 350.w,
                          height: 60.h,
                          child: Row(
                            children:<Widget> [
                              Container(
                                margin: EdgeInsets.fromLTRB(20.h, 0, 10.h, 0),
                                alignment: Alignment.center,
                                width: 40.h,
                                height: 40.h,
                                child: Image.asset('images/bangdream.jpg'),
                              ),
                              Container(
                                child: Text("Bangdream",style: TextStyle(fontSize: 16.sp),),
                              ),
                              Expanded(
                                  child: Container(
                                    width: 40.h,
                                    alignment: Alignment.centerRight,
                                    child: IconButton(
                                      color: Colors.grey,
                                      icon: Icon(Icons.arrow_forward_ios),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: tabBar
                          ),
                          width: 350.w,
                          child: Container(

                            child: Column(
                              children:<Widget> [
                                Container(
                                  alignment: Alignment.center,
                                  height: 60.h,
                                  width:350.w,
                                  child: Row(
                                    children:<Widget> [
                                      Container(
                                        margin:EdgeInsets.fromLTRB(10.w, 0, 10.w, 0),
                                        decoration: BoxDecoration(
                                            border: new Border.all(width: 0.5,color: Colors.white),
                                            borderRadius: BorderRadius.circular(80.w),
                                            image: DecorationImage(
                                                image:AssetImage('images/touxiang.jpg'),
                                                fit: BoxFit.cover
                                            )
                                        ),
                                        width: 40.w,
                                        height: 40.w,
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        height: 40.w,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children:<Widget> [
                                            Text("????????????",style: userIdText,),
                                            Text("9???????????????",style: annotationText,)
                                          ],
                                        ),
                                      ),
                                      Expanded(child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 10.w, 0),
                                        alignment: Alignment.centerRight,
                                        child: RaisedButton(
                                          color: attentionColor,
                                          onPressed: (){
                                          },
                                          shape: StadiumBorder(),
                                          child: Text("??????",style: attentionText,),
                                        ),
                                      )
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Container(
                                    margin:EdgeInsets.fromLTRB(20.w, 0, 10.w, 0),
                                    child: Text(
                                      '??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????wdnmd??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????'
                                      ,style: talkExpandText,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 350.w,
                                  height: 100.h,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.fromLTRB(10.w, 10.h, 20.w, 10.h),
                                  child: Wrap(
                                    spacing: 20.w,
                                    children:<Widget> [
                                      imageCon1('images/cai.jpg'),
                                      imageCon1('images/cai2.jpg'),
                                      imageCon1('images/cai3.jpg')
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 20.h,
                                )
                              ],
                            ),
                          )
                      ),
                      Container(
                        width: 350.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            color: tabBar
                        ),
                        margin: EdgeInsets.fromLTRB(0, 10.h, 0, 10.h),
                        child: Row(
                          children:<Widget> [
                            Container(
                              margin: EdgeInsets.fromLTRB(20.w, 0, 20.w, 0),
                              child: Text(
                                "??? 1",style: tabText,
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                                child: Row(
                                  children:<Widget> [
                                    Text(
                                      "?????? 1",style: tabText,
                                    ),
                                    Icon(Icons.arrow_drop_down_rounded,
                                      color: HexColor("#7E7E7E"),),

                                  ],
                                )
                            ),
                            Expanded(child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 10.w, 0),
                              child: Text("?????? 0",style: tabText,),
                              alignment: Alignment.centerRight,
                            ))
                          ],
                        ),
                      ),
                      Container(
                        width: 350.w,
                        child: Column(
                          children:<Widget> [
                            commentCard(),
                            Divider(height: 1.w,
                              thickness: 1.w,),
                            Container(
                                height: 200.h,
                                decoration: BoxDecoration(
                                    color: tabBar
                                ),
                                alignment: Alignment.center,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text("?????????????????????",style: tabText,),
                                )
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
            )),
              Container(
                alignment: Alignment.center,
                child:FlatButton(
                  child: Text("?????????"),
                  onPressed: (){
                    comment();
                  },
                )
              )

            ],
          )
      ),
    ),));
  }
}

class CusBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return super.buildViewportChrome(context, child, axisDirection);
  }
}