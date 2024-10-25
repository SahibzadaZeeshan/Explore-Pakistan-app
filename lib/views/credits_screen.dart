import 'package:custom_clippers/Clippers/sin_cosine_wave_clipper.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class RefrenceScreen extends StatelessWidget {
  const RefrenceScreen({super.key});

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipPath(
                clipper: SinCosineWaveClipper(
                  horizontalPosition: HorizontalPosition.RIGHT,
                  verticalPosition: VerticalPosition.BOTTOM,
                ),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFCE404D), Color(0xFF4E204D)],
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: InkWell(
                              onTap: Get.back,
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ))),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Explore Pakistan",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Text(
                        "Images used in app ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/2kRPqFID9',
                        image: 'assets/peshawar/Islamia1.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/5k1xbv2wU',
                        image: 'assets/peshawar/islamia2.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/5k1xbv2wU',
                        image: 'assets/peshawar/islmia3.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/5k1xbv2wU',
                        image: 'assets/peshawar/islamia4.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/2oUQrluBV',
                        image: 'assets/peshawar/musm1.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/7gADyWSbp',
                        image: 'assets/peshawar/musm2.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: ' https://pin.it/4FNxGMqTG',
                        image: 'assets/peshawar/musm4.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/7q6MR4X00',
                        image: 'assets/peshawar/musm3.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/5aGKx0pRD',
                        image: 'assets/peshawar/musm4.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/24vsOLQfl',
                        image: 'assets/peshawar/qila1.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/689WZdD7f',
                        image: 'assets/peshawar/qila2.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/1UsXJqBoe',
                        image: 'assets/peshawar/qila3.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/2lBu4uL19',
                        image: 'assets/peshawar/qila4.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),

                    ///masjid mohabbat ali khan
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/N7C2EBXnqxz2uc7GA',
                        image: 'assets/peshawar/mohabat1.jpg',
                        text: "this is image is created by The expres tribune",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/1TyKDszvuCZn2twh8',
                        image: 'assets/peshawar/mohabat2.jpg',
                        text: "this is image is created by InfopediaPk-Weebly",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/1TyKDszvuCZn2twh8',
                        image: 'assets/peshawar/mohabat3.jpg',
                        text: "this is image is created by InfopediaPk-Weebly",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),

                    ///peshawar zoo
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/mhKgoT98wrHbMypcA',
                        image: 'assets/peshawar/zoo1.jpeg',
                        text: "this is image is created by Daily Time",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/ksmsJhc8VWCxrABv7',
                        image: 'assets/peshawar/zoo2.jpg',
                        text: "this is image is created by wikiwand",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/no5Lbe9SDaB1UeUj9',
                        image: 'assets/peshawar/zoo3.jpg',
                        text: "this is image is created by Arab News Pakisatn",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/RVCKAhquPtxvx9V66',
                        image: 'assets/peshawar/zoo4.jpg',
                        text: "this is image is created by vymaps",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/1BWrSvK1CNfEvx9EA',
                        image: 'assets/peshawar/zoo5.jpg',
                        text: "this is image is created The Express Tribune",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),

                    ///Garison Park
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/8Gp2eQo4DBAwtgKe7',
                        image: 'assets/peshawar/park2.jpeg',
                        text: "this is image is created Traveler Trails",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/EjxJ2my67M7p2Sze6',
                        image: 'assets/peshawar/park1.jpg',
                        text: "this is image is import by Facebook",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/o383cWsdv1sN9X659',
                        image: 'assets/peshawar/park3.webp',
                        text: "this is image is created by Top.-Rated.Online",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/G8GKNDYzXZeFdDza8',
                        image: 'assets/peshawar/park4.jpeg',
                        text: "this is image is created by Khilari",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),

                    ///swat malam jabba
                    buildCustomLinkWidget(
                        url: 'https://pin.it/7t4p8w1BH',
                        image: 'assets/swat/malamjab1.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/2zDIQYs8H',
                        image: 'assets/swat/malamjaba2.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/28Bbu8kdu',
                        image: 'assets/swat/Facebook.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/n1WtAhaKZzj2PqtZ7',
                        image: 'assets/swat/malamjaba.jpg',
                        text: "this is image is created by Visit Swat Valley",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/zBo2aYAJDjGAGaxN6',
                        image: 'assets/swat/malamjab3.jpeg',
                        text: "this is image is created by pakistantravelplace",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/7KQsiLQeU',
                        image: 'assets/swat/kalam1.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/3fZn2h7m0',
                        image: 'assets/swat/kalam2.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/6tkHdE4wQ',
                        image: 'assets/swat/kalam3.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/2iDNLSzQ8',
                        image: 'assets/swat/kalam4.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(
                      height: 10,
                    ),

                    ///kumrat valley
                    buildCustomLinkWidget(
                        url: 'https://pin.it/3oqukmIxZ',
                        image: 'assets/swat/kumrat1.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/1uHVC7GVl',
                        image: 'assets/swat/kumrat2.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/7vmXjLWN8',
                        image: 'assets/swat/kumrat3.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/1V1ZtZKNi',
                        image: 'assets/swat/kumrat4.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),

                    ///mahoodand lake
                    buildCustomLinkWidget(
                        url: 'https://pin.it/5HwKKKftC',
                        image: 'assets/swat/mahood1.jpg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/ckFKsMot58LJnd7J6',
                        image: 'assets/swat/mahood2.jpeg',
                        text: "this is image is created by Pakistan Touism",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/RjEGStKqcxjG5Snm8',
                        image: 'assets/swat/mahood3.jpeg',
                        text: "this is image is created by Click Pakistan",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/QPnkLKPPfd6ddep37',
                        image: 'assets/swat/mahood4.jpeg',
                        text: "this is image is created by iMusafir.Pk",
                        scale: 2),
                    SizedBox(height: 10),

                    ///jahz banda
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/mEs53pAU1waBHoVw7',
                        image: 'assets/swat/jahz1.jpeg',
                        text: "this is image is created Travel Pakistani",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/mG1Rz8bwGaMB7LMw7',
                        image: 'assets/swat/jahz2.jpeg',
                        text: "this is image is created Travel Pakistani",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/g64SJVe1ZLpdQwez9',
                        image: 'assets/swat/jahz3.jpeg',
                        text: "this is image is created Travel Oasis",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/vdTvZaCVXcD5h9ff6',
                        image: 'assets/swat/jahz4.jpeg',
                        text: "this is image is created Gestkor",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/YpKSTu4ayfdWrKo69',
                        image: 'assets/swat/jahz5.webp',
                        text: "this is image is created Blizin.com",
                        scale: 2),
                    SizedBox(height: 10),

                    ///jagoro waterfall
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/Mrgb1XxncBUSHJ3s6',
                        image: 'assets/swat/jagoro1.jpg',
                        text: "this is image is created Trango Tours",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/KJdBmDU1acumo4Uh8',
                        image: 'assets/swat/jagoro2.jpg',
                        text: "this is image is created Wikipedia",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/yavY2vocmdXtZ8327',
                        image: 'assets/swat/jagoro3.jpg',
                        text: "this is image is created Facebook",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/YmJdznPDKfiWbiDo9',
                        image: 'assets/swat/jagoro4.jpg',
                        text: "this is image is created Wikimedia Commons",
                        scale: 2),
                    SizedBox(height: 10),

                    ///Gabin Jabba
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/qwuvk9HadxcBgAQS6',
                        image: 'assets/swat/gabin5.JPG',
                        text: "this is image is created Dawn.com",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/nyYx4uZmwZPdhfhD9',
                        image: 'assets/swat/gabin2.JPG',
                        text: "this is image is created Blizin.com",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/6ewFP2wCX4YpkZMG8',
                        image: 'assets/swat/gabin3.JPG',
                        text: "this is image is created booking.com",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/dirsAHhnBVz8TZmL8',
                        image: 'assets/swat/gabin4.JPG',
                        text: "this is image is created Traveler Trails",
                        scale: 2),
                    SizedBox(height: 10),

                    ///Naran Valley
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/TB21Zrhu8YtdVjzi6',
                        image: 'assets/Naran/Naran1.jpeg',
                        text: "this is image is created SayahatHub.pk",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/wXGZb9oryt7A7KcJ8',
                        image: 'assets/Naran/naran2.jpg',
                        text: "this is image is created iMusafir.pk",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/DviUuDZUCu9icjL66',
                        image: 'assets/Naran/naran3.jpg',
                        text: "this is image is created by iMusafir.pk",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/pZMD36tsuURBso9g8',
                        image: 'assets/Naran/Naran4.jpeg',
                        text: "this is image is created by Rising Pakistan",
                        scale: 2),
                    SizedBox(height: 10),

                    ///saif al malook
                    buildCustomLinkWidget(
                        url: 'https://pin.it/3TKMzipnA',
                        image: 'assets/Naran/saifalmaolook1.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/2d6IKjRGx',
                        image: 'assets/Naran/saifalmalook2.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/5XFvMCFzf',
                        image: 'assets/Naran/saifalmaook3.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/2y3heLfDd',
                        image: 'assets/Naran/saifalmalook4.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/oG9VfSybYecBrjVg8',
                        image: 'assets/Naran/saifalmalook5.jpeg',
                        text: "this is image is created by Dawn",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/s4xrhDSCxRbjtg6N7',
                        image: 'assets/Naran/SaifUlMulk6.jpg',
                        text: "this is image is created by Mount Feast",
                        scale: 2),
                    SizedBox(height: 10),

                    ///kaghan valley
                    buildCustomLinkWidget(
                        url: 'https://pin.it/d7GJMV65u',
                        image: 'assets/Naran/kaghan1.jpeg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/ht5BFwcvW3ZPgbxY6',
                        image: 'assets/Naran/kaghan2.jpeg',
                        text: "this is image is created by Travel Wilji's ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/eziFLwFJcCNnJz5w7',
                        image: 'assets/Naran/kaghan3.jpg',
                        text: "this is image is created by VisitSilkRoad ",
                        scale: 2),
                    SizedBox(height: 10),

                    ///shogran valley
                    buildCustomLinkWidget(
                        url: 'https://pin.it/7DFaF7Ifw',
                        image: 'assets/Naran/shogran1.jpeg',
                        text: "this is image is created by Pinterest ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/WUZgveqku',
                        image: 'assets/Naran/shogran2.jpeg',
                        text: "this is image is created by Pinterest ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/7ajaKqFcN',
                        image: 'assets/Naran/shogran3.jpeg',
                        text: "this is image is created by Pinterest ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/7ajaKqFcN',
                        image: 'assets/Naran/shogran4.jpeg',
                        text: "this is image is created by Pinterest ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/6bhVMh6xy',
                        image: 'assets/Naran/shogran5.jpeg',
                        text: "this is image is created by Pinterest ",
                        scale: 2),
                    SizedBox(height: 10),

                    ///babu sar top
                    buildCustomLinkWidget(
                        url: 'https://pin.it/5FKSNNLvx',
                        image: 'assets/Naran/babusar1.jpeg',
                        text: "this is image is created by Pinterest ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/6JuCK3prX',
                        image: 'assets/Naran/babusar2.jpeg',
                        text: "this is image is created by Pinterest ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/203cxxhpE',
                        image: 'assets/Naran/babuar3.jpeg',
                        text: "this is image is created by Pinterest ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/3HhNt66Oi',
                        image: 'assets/Naran/babusa4.jpeg',
                        text: "this is image is created by Pinterest ",
                        scale: 2),
                    SizedBox(height: 10),

                    ///lulu sar lake
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/JcLTGTUF1zvmHB3H7',
                        image: 'assets/Naran/lul1.jpg',
                        text: "this is image is created by Travel Pakistani ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/aSTmFuqnCy2M3QNp6',
                        image: 'assets/Naran/lulu2.jpeg',
                        text: "this is image is created by Travel Pakistani ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/dP2Zd79k6bDKPWw39',
                        image: 'assets/Naran/lulu3.jpg',
                        text: "this is image is created by Tripako ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/i2x3xU1JVrqRBFQj7',
                        image: 'assets/Naran/lulu4.jpg',
                        text: "this is image is created by Rozefs Tourism ",
                        scale: 2),
                    SizedBox(height: 10),

                    ///kohat
                    ///ghamkol sharif
                    buildCustomLinkWidget(
                        url: 'https://pin.it/50Xwtg4ye',
                        image: 'assets/kohat/ghamkol1.jpeg',
                        text: "this is image is created by Pinterest ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/4fYjcMPa0',
                        image: 'assets/kohat/ghamkol2.jpeg',
                        text: "this is image is created by Pinterest ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/5ckwENk9M',
                        image: 'assets/kohat/ghamkol3.jpeg',
                        text: "this is image is created by Pinterest ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/Bxokd8zz7HFwDVB6A',
                        image: 'assets/kohat/ghamkol4.jpeg',
                        text:
                            "this is image is created by Central Jamia \nMosque Ghamkol Sharif kohat ",
                        scale: 2),
                    SizedBox(height: 10),

                    ///thanda dam
                    buildCustomLinkWidget(
                        url: 'https://pin.it/5M7FyHfCO',
                        image: 'assets/kohat/dam1.jpeg',
                        text: "this is image is created by Pinterest ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://pin.it/2Smo2kdXi',
                        image: 'assets/kohat/dam2.jpeg',
                        text: "this is image is created by Pinterest ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/UiT2BFSPyGYjENkFA',
                        image: 'assets/kohat/dam3.jpg',
                        text: "this is image is created by Pin Page ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/qYrLqcJgAABFGMXt5',
                        image: 'assets/kohat/dam4.jpg',
                        text: "this is image is created by Freepik ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/RJaXi8UK4yXako666',
                        image: 'assets/kohat/dam5.jpeg',
                        text: "this is image is created by Facebook ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/KfqHA5C6HVXGzWV6A',
                        image: 'assets/kohat/dam6.jpeg',
                        text: "this is image is created by top10place.com ",
                        scale: 2),
                    SizedBox(height: 10),

                    ///masood bagh
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/gWBwfn2z9jA6Gdgx9',
                        image: 'assets/kohat/bagh1.jpeg',
                        text: "this is image is created by Facebook ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/y2PkEa5GkEvnMbAH6',
                        image: 'assets/kohat/bagh2.jpg',
                        text: "this is image is created by\n Top-Rated.online ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/2RvXDd6vUL2t4aa96',
                        image: 'assets/kohat/bagh3.jpg',
                        text: "this is image is created by Youtube ",
                        scale: 2),
                    SizedBox(height: 10),

                    ///Allah hoo trail
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/TWBrBgVUGjtbcCDTA',
                        image: 'assets/kohat/trail1.jpg',
                        text: "this is image is created by Youtube ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/hq7o4fnDMSaEXnWV8',
                        image: 'assets/kohat/trail2.jpeg',
                        text: "this is image is created by Facebook ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/JcBfFgUYVaTRhktaA',
                        image: 'assets/kohat/trail3.jpg',
                        text: "this is image is created by Facebook ",
                        scale: 2),
                    SizedBox(height: 10),

                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/oLmUQ992gZYB5xTz5',
                        image: 'assets/kohat/trail4.jpg',
                        text: "this is image is created by Facebook ",
                        scale: 2),
                    SizedBox(height: 10),

                    ///KDA PArk
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/MyPQoQ8R6GtiWEqD9',
                        image: 'assets/kohat/kda1.jpg',
                        text: "this is image is created by Pakistan Places ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/qmtN8qJT3pVuxzc79',
                        image: 'assets/kohat/kda2.jpg',
                        text: "this is image is created by Wikimapia ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/dcwZrPfJ73gTFipN6',
                        image: 'assets/kohat/kda3.jpg',
                        text: "this is image is created by Wikimapia ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/PxHpUpE2n2V98sRW6',
                        image: 'assets/kohat/kda4.jpeg',
                        text: "this is image is created by Wikimapia ",
                        scale: 2),
                    SizedBox(height: 10),

                    ///golf club
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/XzTSZh7fQLFfJAm29',
                        image: 'assets/kohat/golf1.jpeg',
                        text: "this is image is created by Facebook ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/T8nW2FpLmEjeyQR79',
                        image: 'assets/kohat/golf2.jpg',
                        text: "this is image is created by Worldorgs.com ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/HoAmnvytrbtteVKC8',
                        image: 'assets/kohat/gol3.jpeg',
                        text: "this is image is created by Hole19 ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/HoAmnvytrbtteVKC8',
                        image: 'assets/kohat/golf4.jpg',
                        text: "this is image is created by Wikimapia ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/bSSebvGgsJsYLnoJ8',
                        image: 'assets/kohat/golf5.jpg',
                        text: "this is image is created by Worldorgs.com ",
                        scale: 2),
                    SizedBox(height: 10),

                    ///Company Bagh
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/4UqqJs7fSGgYC8D4A',
                        image: 'assets/kohat/compnay1.jpeg',
                        text: "this is image is created by SindhSalamat ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/qftNNgAm3yUtc2iS9',
                        image: 'assets/kohat/compnay2.jpeg',
                        text: "this is image is created by Top-Rated.online ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/1fH7sRYW71Mhd8xm6',
                        image: 'assets/kohat/compnay3.jpeg',
                        text: "this is image is created by Pakistan Places ",
                        scale: 2),
                    SizedBox(height: 10),

                    ///Kust
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/KK9yd9iypi6qtreT8',
                        image: 'assets/kohat/kust1.jpeg',
                        text: "this is image is created by instagram ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/SPQkY1VRAX5furtc8',
                        image: 'assets/kohat/kust2.jpeg',
                        text: "this is image is created by Facebook ",
                        scale: 2),
                    SizedBox(height: 10),    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/sHGYTV8UFJg1Kodu9',
                        image: 'assets/kohat/kust3.jpeg',
                        text: "this is image is created by Facebook ",
                        scale: 2),
                    SizedBox(height: 10),

                    /// Chitral
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/7EASXEvrbTLLC6U39',
                        image: 'assets/chitral/chitral1.jpg',
                        text: "this is image is created by Skardu City ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/f7vhsgu8ehZXLmwA7',
                        image: 'assets/chitral/chitral2.jpg',
                        text:
                            "this is image is created by Dream Vista Travel\n and Tourism",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/HrenQG4PYdD9YhBY6',
                        image: 'assets/chitral/chitral4.jpg',
                        text: "this is image is created by Mytrip.pk",
                        scale: 2),
                    SizedBox(height: 10),

                    ///kalash valley
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/LksybppAsvfTkFGNA',
                        image: 'assets/chitral/kalash1.png',
                        text: "this is image is created by Guide to Pakistan",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/yo3wYWHwytc8sEts9',
                        image: 'assets/chitral/kalash2.jpg',
                        text:
                            "this is image is created by LowerChitral-\nkhyber Pakhtunkhwa",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/8phdgJwMtcYPb9bP9',
                        image: 'assets/chitral/kalash3.png',
                        text: "this is image is created by Travel Pakistani",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/6XmA6xWQu4nMMksv7',
                        image: 'assets/chitral/kalash4.png',
                        text: "this is image is created by Kumrat Tourism",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/Qr6YMEKP1YfjPAE49',
                        image: 'assets/chitral/kalash5.png',
                        text: "this is image is created by PNY Adventure",
                        scale: 2),

                    ///Shandur pass
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/874yb4twQYuoFQr58',
                        image: 'assets/chitral/shandur1.jpg',
                        text: "this is image is created by Wikipedia",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/nZqQW5oPyKgL23Gf7',
                        image: 'assets/chitral/shandur2.jpg',
                        text: "this is image is created by Kumrat Tourism",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/ch7Z5wZsh7btego87',
                        image: 'assets/chitral/shandur3.jpg',
                        text: "this is image is created by Traverse Pakistan",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/HzmToCTjEX45jEAKA',
                        image: 'assets/chitral/shandur4.jpg',
                        text: "this is image is created by Hum News English",
                        scale: 2),
                    SizedBox(height: 10),

                    ///Chitral Fort
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/9PtBh5VTtYsXXwd66',
                        image: 'assets/chitral/fort1.jpeg',
                        text: "this is image is created by Wikipedia",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/TXvWw1UPTn9nNUTSA',
                        image: 'assets/chitral/fort2.jpg',
                        text:
                            "this is image is created by Prestine Travels\nAnd Tours",
                        scale: 2),
                    SizedBox(height: 10),

                    ///Garam chashma

                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/gJb9qwnc5AWEYVwF8',
                        image: 'assets/chitral/garam1.jpg',
                        text: "this is image is created by Wikipedia",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/qHNo4Qy155c3jCZ77',
                        image: 'assets/chitral/garam2.jpg',
                        text:
                            "this is image is created by Prestine Travels\nAnd Tours",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/Yd4sBswBAUUFRvAS9',
                        image: 'assets/chitral/garam3.jpg',
                        text:
                            "this is image is created by Pakistan Tours Guide",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/yFQVnTErTfQprUuR6',
                        image: 'assets/chitral/garam4.jpg',
                        text: "this is image is created by Tripadvisor",
                        scale: 2),
                    SizedBox(height: 10),

                    ///Tirah
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/mjiLW7WZfxx6Cuyc7',
                        image: 'assets/Tirah/tirah1.jpg',
                        text: "this is image is created by Traveler Trails",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/7oK8XdzGKMDnA2WeA',
                        image: 'assets/Tirah/tirah2.jpg',
                        text: "this is image is created by Pin Page",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/kuttS2u49ynosGho8',
                        image: 'assets/Tirah/tirah3.jpg',
                        text: "this is image is created by -Vrogue -vrogue.com",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/csULRCGMSP86sJRZ9',
                        image: 'assets/Tirah/tirah4.jpg',
                        text: "this is image is created by Facebook",
                        scale: 2),
                    SizedBox(height: 10),

                    ///sampog
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/eHnNdfd5jD4uPLia6',
                        image: 'assets/Tirah/sampog.jpg',
                        text:
                            "this is image is created by Local Guides Connect",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/AvaiMsXNJz6Lse3o9',
                        image: 'assets/Tirah/sampog2.jpg',
                        text: "this is image is created by instagram",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/DWJPccXUCs4cm4Se9',
                        image: 'assets/Tirah/sampog.3jpg.jpg',
                        text: "this is image is created by Tourist Spot ",
                        scale: 2),
                    SizedBox(height: 10),

                    ///tiral valey
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/6L94Kmi26qAzGfyg9',
                        image: 'assets/Tirah/valley2.jpeg',
                        text: "this is image is created by Al Jazeera ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/BhacH4nwKaRekUkw9',
                        image: 'assets/Tirah/valley1.jpeg',
                        text: "this is image is created by Facebook ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/yoKL6d1EKVQ1hFWS9',
                        image: 'assets/Tirah/valley3.jpeg',
                        text: "this is image is created by Damadam ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/xMsk1JsM77Bcxk1y8',
                        image: 'assets/Tirah/valley4.jpeg',
                        text: "this is image is created by Facebook ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'hhttps://images.app.goo.gl/XKjWFcU8aPNGMtZU9',
                        image: 'assets/Tirah/valley5.jpeg',
                        text: "this is image is created by Traveler Trails ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/ud69wfP8ynpMtg8G7',
                        image: 'assets/Tirah/tirah5.jpg',
                        text: "this is image is created by Facebook ",
                        scale: 2),
                    SizedBox(height: 10),

                    ///abbotabad
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/VMD1KG3GKndhpNYz6',
                        image: 'assets/abbotabad/abat1.jpg',
                        text: "this is image is created by Fly Pakistan ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/mkkPmEz97Xokpfws5',
                        image: 'assets/abbotabad/abat2.jpg',
                        text: "this is image is created by Fly Pakistan ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/Y1tG54NRtEUgGL5C6',
                        image: 'assets/abbotabad/abat3.jpg',
                        text: "this is image is created by Tripadvisor ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/HHjbPTY1Ct1mzN7Z8',
                        image: 'assets/abbotabad/abat4.jpg',
                        text: "this is image is created by Pinterest ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/MAKg5mm3DLZewiFB7',
                        image: 'assets/abbotabad/abat5.jpg',
                        text: "this is image is created by Fly Pakistan ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/Lpo7SbtMo2vta8fg9',
                        image: 'assets/abbotabad/abat6.jpg',
                        text: "this is image is created by Foodi Travellers ",
                        scale: 2),
                    SizedBox(height: 10),

                    ///ayubia
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/uicHfAymz1aa6bq76',
                        image: 'assets/abbotabad/ayubia1.jpg',
                        text: "this is image is created by Tripako",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/4mvggMSSTJVBk2Ha8',
                        image: 'assets/abbotabad/ayubia2.jpg',
                        text: "this is image is created by Trango Tours",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/BpFrqRzV42jpN5Bh7',
                        image: 'assets/abbotabad/ayubia3.jpg',
                        text: "this is image is created by PYARA SKARDU",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/T93rg3gKRyAwVSnz9',
                        image: 'assets/abbotabad/ayubia4.jpg',
                        text:
                            "this is image is created by Galiyat Development\nAuthority",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/46bMvYFHQvfVEBK16',
                        image: 'assets/abbotabad/ayubia5.jpg',
                        text: "this is image is created by Youtube",
                        scale: 2),
                    SizedBox(height: 10),

                    ///thandyani
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/sp3ZUbWVLCZRvr7AA',
                        image: 'assets/abbotabad/tandq.jpg',
                        text: "this is image is created by Tripadvisor",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/F8AEf58xahr671ws6',
                        image: 'assets/abbotabad/tand1.jpg',
                        text: "this is image is created by Pinterest",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/Bohz2NsRKY14Cq4x5',
                        image: 'assets/abbotabad/tand3.jpg',
                        text: "this is image is created by Pixels ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/9MCabueGgr9oiqU16',
                        image: 'assets/abbotabad/tand4.jpg',
                        text: "this is image is created by Guestkor ",
                        scale: 2),
                    SizedBox(height: 10),

                    ///Nathiya Gali
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/fFadMv4gyh7r9Gqo8',
                        image: 'assets/abbotabad/nathia2.jpg',
                        text: "this is image is created by Facebook ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/QitFMwvxpsiJ3RFs8',
                        image: 'assets/abbotabad/nathia3.jpg',
                        text: "this is image is created by Travel Pakistani ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/ysbyg6zsk2rduGNE7',
                        image: 'assets/abbotabad/nathia4.jpg',
                        text: "this is image is created by Tripadvisor ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/Lv4FR6NvPEc3nMvRA',
                        image: 'assets/abbotabad/nathia5.jpg',
                        text: "this is image is created by nathiaagali.com ",
                        scale: 2),
                    SizedBox(height: 10),

                    ///Dunga gali
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/nS9NRDjwSzGWvmcYA',
                        image: 'assets/abbotabad/dunga2.jpg',
                        text: "this is image is created by Airbnb ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/PwjHrjpxWNepfgvy6',
                        image: 'assets/abbotabad/dunga3.jpg',
                        text: "this is image is created by Travel Pakistani ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/kYirnR4UAsdtGsxk7',
                        image: 'assets/abbotabad/dunga4.jpg',
                        text: "this is image is created by Reddit ",
                        scale: 2),
                    SizedBox(height: 10),
                    buildCustomLinkWidget(
                        url: 'https://images.app.goo.gl/FomvUb78gQrdXgoA7',
                        image: 'assets/abbotabad/dunga5.jpg',
                        text: "this is image is created by Facebook ",
                        scale: 2),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCustomLinkWidget(
      {required String url,
      required String image,
      required String text,
      required double scale}) {
    return GestureDetector(
      onTap: () => _launchURL(url),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fill)),
          ),
          SizedBox(width: 10),
          Container(
            width: 280,
            child: Text(
              text,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
