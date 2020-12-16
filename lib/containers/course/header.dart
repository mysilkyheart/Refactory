import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xff4c94b6),
        image: DecorationImage(
          image: NetworkImage(
            "https://refactory.id/wp-content/uploads/2020/01/IMG_7378.jpg",
          ),
          colorFilter: new ColorFilter.mode(
            Colors.blue.withOpacity(0.2),
            BlendMode.dstATop,
          ),
          fit: BoxFit.cover,
        ),
      ),
      height: MediaQuery.of(context).size.height - 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Tingkatkan skill pemrograman kapan pun, dimana pun',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'We’re a brand of passionate software engineers and educators with an engaging curriculum backed by real-world software projects ready to boost your career.',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Text(
                  'Masuk & Mulai Belajar',
                  style: TextStyle(fontSize: 12),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/listcourse');
                },
                color: Colors.orange,
              ),
              SizedBox(width: 10),
              RaisedButton(
                child: Text(
                  'Daftar Sekarang',
                  style: TextStyle(fontSize: 12),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                onPressed: () {},
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
