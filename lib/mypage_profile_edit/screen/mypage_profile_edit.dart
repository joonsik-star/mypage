import 'package:flutter/material.dart';
import 'package:mypage/icons.dart';
import 'package:mypage/mypage_profile_edit/widget/mypage_profile_edit_textfield.dart';
import 'package:mypage/color.dart';
import 'package:mypage/mypage_profile/widget/profile_button.dart';

class ProfileEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(top: 84, left: 20, right: 20),
          child: Column(
            children: [
              Container(
                width: 106,
                height: 106,
                //child: Image.asset(iconProfile),
                child:
                    IconButton(icon: Image.asset(iconProfile), onPressed: null),
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                alignment: Alignment(-1.0, 0.0),
                child: Text("닉네임"),
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                child: ProFileEditTextField("문짱구"),
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                alignment: Alignment(-1.0, 0.0),
                child: Text("이름"),
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                child: ProFileEditTextField("문짱구"),
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                alignment: Alignment(-1.0, 0.0),
                child: Text("성별"),
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                child: ProFileEditTextField("여성"),
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                alignment: Alignment(-1.0, 0.0),
                child: Text("출생년도"),
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                child: ProFileEditTextField("2000년 1월 1일"),
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                alignment: Alignment(-1.0, 0.0),
                child: Text(
                  "회원탈퇴",
                  style: TextStyle(
                      decoration: TextDecoration.underline, color: textColor),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 12),
                child: ProfileButton(
                    "수정", mainColor, mainColor, Colors.white, context, null),
              ),
            ],
          ),
        ));
  }
}
