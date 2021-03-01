import 'package:flutter/material.dart';
import 'package:mypage/color.dart';
import 'package:mypage/icons.dart';
import 'package:mypage/mypage_profile/widget/profile_name_text.dart';
import 'package:mypage/mypage_profile/widget/profile_button.dart';
import 'package:mypage/mypage_profile_edit/screen/mypage_profile_edit.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(top: 84),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment(-1.0, 0.0),
                child: Text(
                  '프로필',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 34, left: 20),
                    child: Image.asset(iconProfile),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 34, left: 10),
                    child: Column(
                      children: [
                        MyPageText("Semple Text", 22, Colors.black),
                        MyPageText("Semple Text", 14, Color(0x99999999))
                      ],
                    ),
                  ),
                ],
              ),
              Container(),
              Container(
                margin: EdgeInsets.only(top: 34),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProfileButton("강사 전환", Colors.white, Colors.black,
                        Colors.black, context, null),
                    ProfileButton("프로필 수정", Colors.white, Colors.black,
                        Colors.black, context, ProfileEdit()),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: double.infinity,
                height: 10,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: lineColor,
                    width: 10,
                  ),
                  color: textColor,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                alignment: Alignment(-1.0, 0.0),
                child: ProFileText("관리", Colors.black, 18),
              ),
              Container(
                margin: EdgeInsets.only(top: 27, left: 20),
                alignment: Alignment(-1.0, 0.0),
                child: ProFileText("찜 관리", textColor, 16),
              ),
              Container(
                margin: EdgeInsets.only(top: 27, left: 20),
                alignment: Alignment(-1.0, 0.0),
                child: ProFileText("관심 분야", textColor, 16),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                width: double.infinity,
                height: 1,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: lineColor,
                    width: 10,
                  ),
                  color: textColor,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                alignment: Alignment(-1.0, 0.0),
                child: ProFileText("설정", Colors.black, 18),
              ),
              Container(
                margin: EdgeInsets.only(top: 27, left: 20),
                alignment: Alignment(-1.0, 0.0),
                child: ProFileText("알림설정", textColor, 16),
              ),
              Container(
                margin: EdgeInsets.only(top: 27, left: 20),
                alignment: Alignment(-1.0, 0.0),
                child: ProFileText("공지사항", textColor, 16),
              ),
              Container(
                margin: EdgeInsets.only(top: 27, left: 20),
                alignment: Alignment(-1.0, 0.0),
                child: ProFileText("문의", textColor, 16),
              ),
              Container(
                margin: EdgeInsets.only(top: 27, left: 20),
                alignment: Alignment(-1.0, 0.0),
                child: ProFileText("버전정보", textColor, 16),
              ),
              Container(
                margin: EdgeInsets.only(top: 27, left: 20),
                alignment: Alignment(-1.0, 0.0),
                child: ProFileText("로그아웃", textColor, 16),
              ),
            ],
          ),
        ));
  }
}

class ProFileText extends StatelessWidget {
  final String textTilte;
  final Color textColor;
  final double textSize;

  ProFileText(this.textTilte, this.textColor, this.textSize);

  @override
  Widget build(BuildContext context) {
    return Text(
      textTilte,
      style: TextStyle(
        color: textColor,
        fontSize: textSize,
      ),
    );
  }
}
