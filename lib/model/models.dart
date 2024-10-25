class Province {
  final String name;
  final List<City> cities;

  Province({required this.name, required this.cities});
}

class City {
  final String name;
  final List<Place> places;

  City({required this.name, required this.places});
}

///simple one img
// class Place {
//   final String name; // New field for place name
//   final String image;
//
//   // final String image1;
//   // final String image2;
//   final String description;
//   final String location;
//   final double? height;
//   final double? longitude;
//   final double? latitude;
//
//   Place({
//     required this.name,
//     // required this.image1,
//     // required this.image2,
//     required this.image,
//     required this.description,
//     required this.location,
//     required this.height,
//     required this.latitude,
//     required this.longitude,
//   });
// }
///add list
class Place {
  final String name;
  final List<String> images; // List of images
  final String description;
  final String location;
  final double? height;
  final double? longitude;
  final double? latitude;

  Place({
    required this.name,
    required this.images, // Update to use a list of images
    required this.description,
    required this.location,
    required this.height,
    required this.latitude,
    required this.longitude,
  });
}

List<Province> provinces = [
  Province(
    name: 'KPK',
    cities: [
      ///peshawar
      City(
        name: 'Peshawar',
        places: [
          /// islamia college peshawar
          Place(
            name: 'Islamia College Peshawar',
            height: 55,
            images: [
              'assets/peshawar/Islamia1.jpeg',
              'assets/peshawar/islamia2.jpeg',
              'assets/peshawar/islmia3.jpeg',
              'assets/peshawar/islamia4.jpeg'
            ],
            location:
                'Grand Trunk Rd, Rahat Abad, Peshawar, Khyber Pakhtunkhwa',
            description:
                'Founded by Sir S.A. Qayyum and Sir George Roos-Keppel in 1913, it is one of the oldest institutions of'
                'higher education in Pakistan, and its historical roots are traced from the culminating point of the Aligarh Movement.'
                'Islamia College Peshawar, the symbol of academic excellence is rich in history. Its building, which is the best embodiment of Muslim civilization in south Asia and its lush green lawns attract visitors from all over the country and abroad. It is not only the culminating point of the Aligarh Movement, it is in fact the beautiful combination of Aligarh and Deoband Schools of Thought. Being the breeding ground of the Pashtun intelligentsia, this great seat of learning is the place, where diamonds are skimmed since 1913. Moreover, Islamia College Peshawar was destined to become mother institution of the three universities and several colleges on its campus. The credit of this goes to Sir Sahibzada Abdul Qayyum,'
                ' who is commonly called The Sir Sayyed of the Frontier and his sincere colleagues, who founded Islamia College Peshawar in 1913.',
            longitude: 71.5249,
            latitude: 34.0081,
          ),

          ///musem peshawar
          Place(
            name: 'Peshawar Museum',
            height: 50,
            images: [
              'assets/peshawar/musm1.jpeg',
              'assets/peshawar/musm2.jpeg',
              'assets/peshawar/musm3.jpeg',
              'assets/peshawar/musm4.jpeg',
            ],
            location:
                '    2H55+47P، Saddar Road opposite Governor House Peshawar & Civil Secretariat,'
                ' Finance Department, Civil Secretariat, Peshawar, Khyber Pakhtunkhwa',
            description:
                'The Peshawar Museum was founded in 1907 as "Victoria Hall,"'
                ' in memory of Queen Victoria. The two-story building was built'
                ' in a syncretic architectural style consisting of British, Hindu,'
                ' Buddhist and Mughal Islamic styles.The current collection consists of'
                ' nearly 14,000 itemsbased on Gandhara, Greco-Buddhist, Kushan, Parthian, and Indo-Scythian culture.',
            longitude: 71.5582,
            latitude: 34.0078,
          ),

          ///peshawar fort
          Place(
            name: 'Qila Balahisar',
            height: 45,
            images: [
              'assets/peshawar/qila1.jpeg',
              'assets/peshawar/qila2.jpeg',
              'assets/peshawar/qila3.jpeg',
              'assets/peshawar/qila4.jpeg',
            ],
            location:
                'Bala Hisar Fort, Hashtnagri, Peshawar, Khyber Pakhtunkhwa',
            description:
                'Babur first built a fort here in 1526 after capturing Peshawar. '
                'It was a royal residence for the Afghan Durrani dynasty before being captured'
                'trashed ,and in 1834, rebuilt in mud by the Sikhs (replaced by brick by the British).'
                'Its now the headquarters of the Frontier Corps.The city of Hisar was founded by a Muslim ruler,'
                ' Firozshah Tughlaq in 1354 A.D. Hisar is an Arabic word which means Fort. The city,'
                '                   which we know today as Hisar, was originally called Hisar Firoza'
                ' (also Hisar-e-Firoza) or in other words the Fort of Firoz',
            longitude: 71.5697,
            latitude: 34.0128,
          ),

          /// mohabbat ali khan mosque
          Place(
            name: 'Mohabbat Ali Khan Mosque',
            height: 45,
            images: [
              'assets/peshawar/mohabat2.jpg',
              'assets/peshawar/mohabat1.jpg',
              'assets/peshawar/mohabat3.jpg'
            ],
            location:
                ' 2H6F+67W, Andar Shehr Mohallah Baqir Shah, Peshawar, Khyber Pakhtunkhwa',
            description:
                'Masjid Mahabat Khan was in-built 1630 A.D in Peshawar Valley, '
                'throughout the rule of Mughal Emperor Shan Jehan by Mahabat Khan the Governor of Peshawar valley.'
                'Since the Mosque was funded and financed by him. The mosque became to be called “MASJID MAHABAT KHAN”'
                'The construction of the Mahabat Maqbara was started in 1878 by Nawab Mahabat Khan II (1851–82)'
                'and ended in 1892 during the reign of Nawab Bahadur Khan III (1882–92).'
                'A trip to Peshawar simply isn’t complete without seeing the beautiful (and historical) '
                'Mahabat Khan Masjid. Located deep in the narrow twists and turns of the Old City, this 17th-century mosque '
                'reflects the architecture of the famed Mughal Era, and remains in relatively good condition despite its advanced age. ',
            longitude: 71.57323,
            latitude: 34.0106,
          ),

          ///peshawar zoo
          Place(
            name: 'Peshawar Zoo',
            height: 40,
            images: [
              'assets/peshawar/zoo2.jpg',
              'assets/peshawar/zoo1.jpeg',
              'assets/peshawar/zoo3.jpg',
              'assets/peshawar/zoo4.jpg',
              'assets/peshawar/zoo5.jpg'
            ],
            location:
                '2F8R+Q2J, Palosi Rd, Qadir Abad, Peshawar, Khyber Pakhtunkhwa',
            description:
                'Peshawar Zoo is one of the largest zoos in Pakistan and the first ever zoo in Peshawar. It opened on 12 February 2018.'
                ' It is managed by the Forests, Environment and Wildlife department of the Government of Khyber Pakhtunkhwa.'
                'Peshawar Zoo has a total area of 29 acres (12 ha). The Peshawar Zoo has 68 species, including 22 species of'
                ' mammals, 37 species of birds, and 9 species of reptiles ',
            longitude: 71.4900,
            latitude: 34.0170,
          ),

          ///Garison Park peshawar
          Place(
            name: 'Garrison Park',
            height: 45,
            images: [
              'assets/peshawar/park2.jpeg',
              'assets/peshawar/park1.jpg',
              'assets/peshawar/park3.webp',
              'assets/peshawar/park4.jpeg',
            ],
            location:
                'Col Shair Khan Shaheed Stadium, Bashirabad, Peshawar, Khyber Pakhtunkhwa',
            description:
                'This lovely place is located on Col Shair Khan Shaheed, Stadium Road. '
                'It is a part of Peshawar Cantt. It was created by the British government in 1892 and was called Queen’s Park.'
                'The park was renamed in 1928 to pay tribute to the British Army Garrison which was stationed in Peshawar',
            longitude: 71.5481,
            latitude: 34.0185,
          ),
        ],
      ),

      ///swat
      City(
        name: 'Swat',
        places: [
          ///Malam Jaba
          Place(
            name: 'Malam Jabba ',
            height: 50,
            images: [
              'assets/swat/malamjab1.jpeg',
              'assets/swat/Facebook.jpeg',
              'assets/swat/malamjaba2.jpeg',
              'assets/swat/malamjaba.jpg',
              'assets/swat/malamjab3.jpeg',
            ],
            location: 'Malam Jabba, Swat, Khyber Pakhtunkhwa',
            description:
                'Malam Jabba, located in the Swat Valley of Khyber Pakhtunkhwa, Pakistan,'
                'is renowned for being the country’s premier ski resort. The resort was originally '
                'developed in the 1980s with assistance from the Austrian government to promote winter'
                'sports and tourism in the region. Situated at an elevation of 2,804 meters (9,199 feet), '
                'it became a key attraction for skiing, with facilities such as ski slopes, chair lifts,'
                'and a skating rink.However, in 2008, during the Taliban insurgency in Swat, the resort'
                'was damaged and its chair lifts destroyed. After the successful military operation that'
                'cleared Swat of militants in 2009, efforts to restore the resort began. In 2014, the'
                'Samson Group took charge of redevelopment, modernizing the facilities. By 2017, '
                'Malam Jabba was fully restored and reopened to tourists, offering skiing, hiking, '
                'and other recreational activities.',
            longitude: 72.5722,
            latitude: 34.7999,
          ),

          ///kalam valley
          Place(
            name: 'Kalam Valley ',
            height: 45,
            images: [
              'assets/swat/kalam1.jpeg',
              'assets/swat/kalam2.jpeg',
              'assets/swat/kalam3.jpeg',
              'assets/swat/kalam4.jpeg',
            ],
            location: 'Kalam, Swat, Khyber Pakhtunkhwa, Pakistan',
            description:
                'Kalam is a valley located at a distance of 99 kilometers from Mingora '
                'in the northern upper reaches of Swat valley along the bank of Swat River in'
                'Khyber Pakhtunkhwa province of Pakistan. The area has become a popular tourist'
                'attraction, known for its mountains, forests, and lakes.High Season (June-August & November-December):'
                ' Vacationing families and Pakistani travelers on extended holiday make the summer'
                ' months one of the most popular times to visit Swat Valley.',
            longitude: 72.5796,
            latitude: 35.4902,
          ),

          ///kumrat valley
          Place(
            name: 'Kumrat Valley ',
            height: 40,
            images: [
              'assets/swat/kumrat1.jpeg',
              'assets/swat/kumrat2.jpeg',
              'assets/swat/kumrat3.jpeg',
              'assets/swat/kumrat4.jpeg',
            ],
            location: 'Kumrat, Swat, Khyber Pakhtunkhwa, Pakistan',
            description:
                'Kumrat Valley is a picturesque and serene valley located in the Upper Dir District of Khyber Pakhtunkhwa Pakistan.'
                'the valley offers breathtaking landscapes and a peaceful retreat for nature lovers.'
                'It is famous for spots like the Jahaz Banda,Katora Lake, and Do Kala Chashma,'
                'where tourists can enjoy trekking, camping, and sightseeing. '
                'Every summer season, thousands of tourists from different areas '
                'of the Pakistan and abroad visit Kumrat Valley for its greenery and cool weather.',
            longitude: 72.2193,
            latitude: 35.5369,
          ),

          ///mahodand lake swat
          Place(
            name: 'Mahodand Lake Kalam Swat Valley ',
            height: 45,
            images: [
              'assets/swat/mahood1.jpg',
              'assets/swat/mahood2.jpeg',
              'assets/swat/mahood3.jpeg',
              'assets/swat/mahood4.jpeg',
            ],
            location: 'Swat, Khyber Pakhtunkhwa',
            description:
                'This a lake located in the upper Usho Valley at a distance of about 35 kilometres '
                '(22 mi) from Kalam in Swat District of Khyber Pakhtunkhwa province of Pakistan.'
                'Its famous for its surreal natural beauty.In Northern Pakistan there is a'
                'piece of land called Swat – often referred to as the “Switzerland of East”.'
                't’s famous for its surreal natural beauty. In the center of this land there'
                'is a lake like no other called, Mahodand Lake. It’s undoubtedly one of the '
                'most beautiful lakes in the world. The lake is 9,400 ft above sea level and '
                'spread over 2kms in length. ',
            longitude: 72.6510,
            latitude: 35.7139,
          ),

          ///jahz banda swat
          Place(
            name: 'Jaaz Banda ',
            height: 45,
            images: [
              'assets/swat/jahz1.jpeg',
              'assets/swat/jahz2.jpeg',
              'assets/swat/jahz3.jpeg',
              'assets/swat/jahz4.jpeg',
              'assets/swat/jahz5.webp',
            ],
            location: ' Kumrat Valley, Upper Dir, Khyber Pakhtunkhwa',
            description:
                'Jahaz Banda, located in the scenic and picturesque region of Khyber Pakhtunkhwa,'
                'is the most beautiful and breathtaking tourist destination. It offers vast and expansive meadows'
                ', resembling lush and vibrant green carpets, along with waterfalls and lakes. Situated at an '
                'elevation of approximately 11,000 feet above sea level,ahaz Banda is so stunning that'
                ' tourists often refer to it as the "Fairyland" or the "Switzerland of Pakistan.Throughout history,'
                ' Jahaz Banda has served as a grazing pasture, as the word "Banda" in the local language, Gojri,'
                ' means a grazing ground.',
            longitude: 72.3052,
            latitude: 35.3972,
          ),

          ///Jagoro Waterfall
          Place(
            name: ' Jagoro Waterfall  ',
            height: 45,
            images: [
              'assets/swat/jagoro1.jpg',
              'assets/swat/jagoro2.jpg',
              'assets/swat/jagoro3.jpg',
              'assets/swat/jagoro4.jpg',
            ],
            location:
                'Jarogo Waterfall Swat Valley, Chaatekal, Swat, Khyber Pakhtunkhwa',
            description:
                'Jarogo Waterfall, also known as Jarogo Banda Waterfall,is a waterfall located in Matta Tehsil '
                'in Swat District of Khyber Pakhtunkhwa province of Pakistan.It is one of the famous waterfalls'
                'of Swat Valley. It is about 30 kilometres (19 mi) from Matta Tehsil and 53 kilometres (33 mi) from Mingora.'
                'The word Jarogo means broom in Pashto but its history goes back to the ancient times of the Hindu Shahi period in Swat.'
                ' There was a Hindu woman named Jarogai,who was widely known and esteemed in the surrounding areas, so the people named it after her.',
            longitude: 72.2115925,
            latitude: 35.103334,
          ),

          ///Gabin jabba
          Place(
            name: ' Gabin Jabba   ',
            height: 45,
            images: [
              'assets/swat/gabin5.JPG',
              'assets/swat/gabin2.JPG',
              'assets/swat/gabin3.JPG',
              'assets/swat/gabin4.JPG',
            ],
            location: 'Gabin Jabba, Swat, Khyber Pakhtunkhwa',
            description:
                'Gabin Jabba, located in the Swat Valley of Khyber Pakhtunkhwa,'
                'Pakistan, is a picturesque hill station known for its lush green meadows,'
                'dense forests, and panoramic views. The name "Gabin Jabba" translates to '
                '"Honey Marshes" in Pashto, reflecting the areas reputation for natural '
                'beauty and the abundance of wildflowers that attract honeybees.Gabin Jabba'
                'means the “Honey Marshes” and is located 59km (37miles) from Mingora'
                'in Swat. At the elevation of 2582m (8471ft), Gabin Jabba can be reached at approx.'
                '1 h 46 min of travel from Mingora city and in around 5 hrs at a distance'
                'of 389 km (241 miles) from Islamabad in Pakistan.Gabin Jabba serves as a gateway'
                'to the Daral Lake, situated at an elevation of over 500 meters beyond Gabin Jabbas altitude.',
            longitude: 72.3711,
            latitude: 35.1706,
          ),
        ],
      ),

      ///Naran kaghan
      City(
        name: 'Kaghan Naran',
        places: [
          ///Naran
          Place(
            name: 'Naran Valley ',
            height: 50,
            images: [
              'assets/Naran/Naran1.jpeg',
              'assets/Naran/naran2.jpg',
              'assets/Naran/naran3.jpg',
              'assets/Naran/Naran4.jpeg',
            ],
            location: 'Mansehra, Khyber Pakhtunkhwa',
            description:
                'Naran and Kaghan are two of Pakistans most popular tourist destinations'
                'located in the Khyber Pakhtunkhwa provinceThese areas are renowned for their'
                'natural beauty, including lush valleys, rivers, lakes, and mountains.'
                'Naran is a medium sized town in upper Kaghan Valley in Mansehra District'
                ' of Khyber Pakhtunkhwa province of the Pakistan.'
                'The Naran-Kaghan Valley is not only renowned for its natural beauty but'
                'also for the rich history it carries, dating back to the British Colonial period.'
                'This place has inhabited different casts since the stone age, like Swati, Awan,'
                'Kashmiri, Durai, Mughal, and Quraish.',
            longitude: 73.6507,
            latitude: 34.9093,
          ),

          ///saif al malook lake
          Place(
            name: 'Saif-ul-Malook Lake ',
            height: 45,
            images: [
              'assets/Naran/saifalmaolook1.jpeg',
              'assets/Naran/saifalmalook2.jpeg',
              'assets/Naran/saifalmaook3.jpeg',
              'assets/Naran/saifalmalook4.jpeg',
              'assets/Naran/saifalmalook5.jpeg',
              'assets/Naran/SaifUlMulk6.jpg'
            ],
            location:
                ' jheel Saif ul Muluk lake , Kaghan Valley, Khyber Pakhtunkhwa, Pakistan',
            description:
                ' One of the most famous lakes in Pakistan, known for its crystal-clear'
                'water and the surrounding snow-capped mountains,'
                'The lake covers'
                ' an area of about 2.75 square kilometers.Water Source The lake is'
                ' primarily fed by the melting glaciers from the surrounding mountains,'
                'especially the Malika Parbat (the highest peak in the Kaghan Valley'
                ' at 5,290 meters or 17,356 feet). research shows that the depth of'
                ' Lake Saif ul Malook is around 34 meters (113 ft), and it covers'
                ' 2.75 km square of surface area.There are a lot of things to do '
                'to have the best time at the Saif Ul Malook. Some of the most'
                ' interesting ones are waters sports,camping adventure, walking'
                ' around the lake, horse or pony riding, Snow sliding on the glacier,'
                ' food adventure, and much more.',
            longitude: 73.6934,
            latitude: 34.8762,
          ),

          ///kaghan valley
          Place(
            name: 'Kaghan Valley ',
            height: 45,
            images: [
              'assets/Naran/kaghan1.jpeg',
              'assets/Naran/kaghan2.jpeg',
              'assets/Naran/kaghan3.jpg',
            ],
            location: 'Balakot, Mansehra, Khyber Pakhtunkhwa',
            description:
                'Kaghan Valley is one of Pakistan’s most scenic and popular tourist destinations,'
                ' located in the Mansehra district of Khyber Pakhtunkhwa province. Famous for its lush green'
                ' meadows, snow-capped peaks, alpine lakes, and beautiful rivers the valley stretches for'
                ' approximately 160 kilometers, offering stunning views and a cool, refreshing climate'
                'The valley is around 160 kilometers (100 miles) long.',
            longitude: 73.3500,
            latitude: 34.5417,
          ),

          ///shogran valley
          Place(
            name: 'Shogran Valley ',
            height: 45,
            images: [
              'assets/Naran/shogran1.jpeg',
              'assets/Naran/shogran2.jpeg',
              'assets/Naran/shogran3.jpeg',
              'assets/Naran/shogran4.jpeg',
              'assets/Naran/shogran5.jpeg'
            ],
            location:
                'Mansehra District, Khyber Pakhtunkhwa, Pakistan, South Asia, Asia',
            description:
                'Shogran Valley is a beautiful and serene hill station located in the Kaghan Valley of Khyber Pakhtunkhwa,'
                'Pakistan. Known for its lush meadows, dense forests, and stunning views of the surrounding Himalayan'
                'peaks, Shogran is one of the most popular tourist destinations in the region. It serves as a gateway'
                'to several scenic spots in the area, including Siri Paye meadows and offers an ideal retreat for'
                'nature lovers, adventurers, and those looking to escape the hustle of city life.Shogran is located'
                'at an altitude of about 2,362 meters (7,749 feet) above sea level, making it a cool and pleasant'
                'place, especially during the hot summer months.'
                'It is around 34 kilometers from Naran, a major tourist hub in the Kaghan Valley',
            longitude: 73.4607431,
            latitude: 34.6398264,
          ),

          ///Babu Sar top
          Place(
            name: ' Babu Sar Top ',
            height: 45,
            images: [
              'assets/Naran/babusar1.jpeg',
              'assets/Naran/babusar2.jpeg',
              'assets/Naran/babuar3.jpeg',
              'assets/Naran/babusa4.jpeg',
            ],
            location:
                'the northern end of Kaghan Valley, connecting Khyber Pakhtunkhwa with Gilgit-Baltistan.',
            description:
                'Babusar Top, also known as Babusar Pass, is a high-altitude mountain pass located in'
                'the northern areas of Pakistan. It serves as the highest point in the Kaghan Valley'
                'providing a scenic route to the Chilas in Gilgit-Baltistan. Known for its breathtaking'
                'views, rugged terrain, and cool climate Babusar Top is a popular destination for travelers'
                'looking to experience the natural beauty of the northern regions.'
                'Babusar Top sits at an elevation of 4,173 meters (13,691 feet) above sea level, making it '
                'one of the highest mountain passes in Pakistan.It is located at the northernmost point of'
                'the Kaghan Valley, in the Mansehra District of Khyber Pakhtunkhwa.Babusar Top is located '
                'about 80 kilometers from the town of Naran, which is a popular base for tourists exploring Kaghan Valley.'
                ' It provides access to Chilas in the Gilgit-Baltistan region, linking Kaghan Valley with the Karakoram Highway (KKH)',
            longitude: 74.0482,
            latitude: 35.1462,
          ),

          ///Lulu Sar lake
          Place(
            name: ' Lulu Sar Lake ',
            height: 45,
            images: [
              'assets/Naran/lul1.jpg',
              'assets/Naran/lulu2.jpeg',
              'assets/Naran/lulu3.jpg',
              'assets/Naran/lulu4.jpg',
            ],
            location: '	Kaghan Valley, Mansehra District, Khyber-Pakhtunkhwa.',
            description:
                'Lulusar Lake is a beautiful, high-altitude lake located in the Kaghan Valley'
                'of Pakistans Khyber Pakhtunkhwa province.Lulusar Lake, standing at an '
                'elevation of about 3,410 meters (11,190 feet), holds a special place in'
                'the history of the Kaghan region.Lulusar Lake is a peaceful place with'
                'lush green meadows.Tourists visiting Babusar Top must also visit Lulusar Lake.'
                'From Naran Bazar, you can easily reach Lulusar Lake in 2 hours of drive.'
                'Lulusar Lake is an irresistible lake and is located over 11,190 feet above'
                'sea level on Mansehra-Naran-Jalkhad Road amid Bassal and Babusar tops.'
                'Known for its mesmerizing blue waters and panoramic mountain views, it'
                'serves as the source of the Kunhar River.Lulusar Lake is approximately'
                '50 kilometers (31 miles) north of Naran in the Kaghan Valley. '
                'The journey from Naran to Lulusar Lake typically takes around 1.5 to 2 hours'
                'by car, depending on road conditions and weather, as the route passes through'
                'winding mountain roads. ',
            longitude: 73.9262,
            latitude: 35.0800,
          ),
        ],
      ),

      ///kohat
      City(
        name: 'Kohat',
        places: [
          Place(
            name: ' Ghamkol Sharif ',
            height: 45,
            images: [
              'assets/kohat/ghamkol1.jpeg',
              'assets/kohat/ghamkol2.jpeg',
              'assets/kohat/ghamkol3.jpeg',
              'assets/kohat/ghamkol4.jpeg',
            ],
            location:
                ' JCGQ+M2H, Bypass Road Camp No 3 kohat  , Khyber Pakhtunkhwa',
            description:
                'The charity was founded by the Khulafa of Darbar e Aaliya Ghamkol Sharif'
                'under the guidance and support of Ala Hazrat Khawaja Qibla'
                'Syed Zinda Peer Sahib رحمة الله عليه, known as Zinda Pir Sahib (رحمة الله عليه)'
                'of Darbar e Aaliya Ghamkol Sharif.'
                'Ghamkol shareef is a very famous shrine. This place is so'
                'beautiful located in the middle of the mountain.'
                'The foundation stone was laid in 1992 and the Masjid'
                'was completed, within 5 years, by 1997 and named as'
                'Central Jamia Mosque Ghamkol Sharif.This area is close'
                'to the birth place of Zinda Pir Sahib(رحمة الله عليه), Jungle Khail, Kohat',
            longitude: 71.4376,
            latitude: 33.6267,
          ),

          ///thanda dam kohat
          Place(
            name: ' Thanda Dam ',
            height: 55,
            images: [
              'assets/kohat/dam1.jpeg',
              'assets/kohat/dam2.jpeg',
              'assets/kohat/dam3.jpg',
              'assets/kohat/dam4.jpg',
              'assets/kohat/dam5.jpeg'
                  'assets/kohat/dam6.jpeg'
            ],
            location:
                'Kohat District, Khyber Pakhtunkhwa, Pakistan, South Asia, Asia ',
            description:
                'It became operational on 17 July 1967.though it was inaugurated by the then president Ayub Khan in 1962.'
                'Covering an area of 405 ha (1,000 acres), Tanda Dam had the initial capacity to store 65,000 acreeet'
                'of water and provide a perennial supply of 260 cusecs of water for irrigation.Maximum depth '
                'of 100ft. Its a beautiful picnic spot for visitors across Pakistan and local areas.Tanda Dam or'
                'Tanda Lake is a small dam and also a lake view park located in the Kohat District of the Khyber'
                'Pakhtunkhwa province of Pakistan.The dam supplies water for irrigation to Jurma, Tappi, Baqizai,'
                'Dhoda, Shahpur and many other villages by means of canals from Tanda Lake.',
            longitude: 71.3980,
            latitude: 33.5703,
          ),

          ///Masaood Bagh
          Place(
            name: 'Masood Bagh and Park',
            height: 50,
            images: [
              'assets/kohat/bagh1.jpeg',
              'assets/kohat/bagh2.jpg',
              'assets/kohat/bagh3.jpg',
              '',
            ],
            location: 'HC4C+WQX, Tanda Dam Rd, Kohat, Khyber Pakhtunkhwa ',
            description:
                'Masaood Bagh and Park in Kohat is named after Masaood Khan, a notable'
                'figure from the Nawab family linked to Nawab Sir Sahibzada Abdul '
                'Qayyum Khan, who played a key role in the regions development. '
                'Established as a tribute to the familys contributions, the park became '
                'a popular recreational spot in Kohat Established as a tribute to the '
                'familys contributions, the park became  a popular recreational spot in Kohat,'
                'known for its lush greenery and   serene environment. It has served as a '
                'public space for social gatherings and leisure,  preserving its historical '
                'significance as part of Kohats cultural heritage.',
            longitude: 71.4220,
            latitude: 33.5574,
          ),

          ///Allah Ho Trail
          Place(
            name: 'Kohat View Resort Allah Hoo Trail',
            height: 50,
            images: [
              'assets/kohat/trail1.jpg',
              'assets/kohat/trail2.jpeg',
              'assets/kohat/trail3.jpg',
              'assets/kohat/trail4.jpg',
            ],
            location: 'JFQC+JH2, Dara Adamkhel, Frontier region Kohat ',
            description:
                'Pakistan Army has added a new picturesque site ‘Allah Hoo’ '
                'to the enchanting mountains of Kohat for the lovers of hiking, '
                'which is thronged by people to check their stamina and nerves'
                'by climbing the snake-like high narrow track The 6.9-kilometre '
                'track has been carved out on the three tiers of mountains between'
                'Kohat and Darra Adamkhel, and it starts from Kotal Pass.'
                'From its top connecting north with the west of Khyber Pakhtunkhwa '
                'for ages it gives a bird’s eye view of beautiful landscapes of Kohat and Darra Adamkhel',
            longitude: 71.4714,
            latitude: 33.6390,
          ),

          ///KDA PArk
          Place(
            name: 'Kohat View Resort Allah Hoo Trail',
            height: 50,
            images: [
              'assets/kohat/kda1.jpg',
              'assets/kohat/kda2.jpg',
              'assets/kohat/kda3.jpg',
              'assets/kohat/kda4.jpeg',
            ],
            location:
                'JF36+WGV, Kohat Development Authority (KDA), Kohat, Khyber Pakhtunkhwa ',
            description:
                'KDA PARK is in Kohat District, Khyber Pakhtunkhwa. KDA PARK is situated nearby'
                'to SECTOR 9 market and the government office KDA mess guest house. KDA Park was'
                'established by the Kohat Development Authority (KDA) in the 1980s as part of '
                'urban development initiatives in the Kohat district.In recent years, efforts'
                'have been made to enhance the parks facilities, including improvements to'
                'walking paths, seating areas, and landscaping. These initiatives aim to attract'
                'more visitors and promote outdoor activities.',
            longitude: 71.4613,
            latitude: 33.6049,
          ),

          ///Golf CLub Kohat
          Place(
            name: 'Golf Club Kohat',
            height: 50,
            images: [
              'assets/kohat/golf2.jpg',
              'assets/kohat/golf1.jpeg',
              'assets/kohat/gol3.jpeg',
              'assets/kohat/golf4.jpg',
              'assets/kohat/golf5.jpg'
            ],
            location: 'GFPM+MXX, Dhoda Road, Kohat, Khyber Pakhtunkhwa ',
            description:
                'The Kohat Golf Club, established in 1918 during British colonial rule,'
                'is one of the oldest golf clubs in Pakistan. Located in Kohat, Khyber Pakhtunkhwa,'
                'the club was initially created as a recreational outlet for British military officers'
                'stationed in the region.Golf, a favored sport among British administrators and army personnel,'
                'found its place in Kohat due to the towns strategic military importance. The clubs 9-hole course'
                'has retained much of its original rustic charm, reflecting the simple yet elegant designs of the time.'
                'After Pakistans independence in 1947, the Kohat Golf Club continued to serve both military personnel'
                'and civilians, preserving its historic legacy. While it may not have gained international fame like other'
                'major golf clubs in Pakistan, it remains a significant institution, offering a glimpse '
                'into the region’s colonial past and the evolution of golf in the country. ',
            longitude: 71.4850,
            latitude: 33.5367,
          ),

          ///Company bagh
          Place(
            name: 'Company Bagh',
            height: 40,
            images: [
              'assets/kohat/compnay1.jpeg',
              'assets/kohat/compnay2.jpeg',
              'assets/kohat/compnay3.jpeg',
            ],
            location: ' HCRR+4GQ, Jangal Khel, Kohat, Khyber Pakhtunkhwa ',
            description:
                'Company Bagh Kohat is a historical garden with deep roots in'
                'the colonial past of the region, dating back to the British era. '
                'Established in the late 19th or early 20th century it was built as'
                'a public garden for British officers and local elites during the British Raj.'
                'The term "Company Bagh" (which translates to "Company Garden") refers to the'
                'East India Company, which ruled much of India before British Crown rule was '
                'established. Like other "Company Bagh" parks across India and Pakistan,'
                'this one in Kohat was designed to offer recreational space for British officers stationed '
                'in the cantonment area and to provide a scenic, relaxing environment for the colonial administration and their families.'
                'The garden, known for its lush greenery and well-maintained walking paths, became an essential part of social life in Kohat'
                'After Pakistan gained independence in 1947, Company Bagh remained a popular public space, and the garden became accessible to'
                'the general public. It continued to serve as a vital recreational and cultural hub for the people of Kohat. ',
            longitude: 71.4414,
            latitude: 33.5903,
          ),

          ///Kohat University
          Place(
            name: 'Kohat University',
            height: 40,
            images: [
              'assets/kohat/kust1.jpeg',
              'assets/kohat/kust2.jpeg',
              'assets/kohat/kust3.jpeg',
            ],
            location:
                'Bannu Road, near Jarma Bridge, Kohat, Khyber Pakhtunkhwa ',
            description:
                ' The Kohat University of Science and Technology (KUST) is a public university located at the Kohat District within the Khyber Pakhtunkhwa province of Pakistan. It was established in 2001. '
                'The university was inaugurated by the then Governor of Khyber Pakhtunkhwa, Lt. Gen. Syed Iftikhar Hussain Shah(late).'
                'The university was founded with four institutes - Institute of Information Technology, Institute of Management Sciences,'
                'Institute of Education and Research and Department of Microbiology. These offered two-year and four-year bachelor '
                'degrees and two-year master degrees in 2004. Later on, the university was expanded by establishing departments in '
                'Physics, Chemistry, Botany, Zoology (Dr. Farzana Perveen has established the department of Zoology at KUST from the'
                'beginning and brings it up) and Microbiology. These departments offer B.S. (Hons.), M.Sc., M.Phil. and Ph.D. '
                'degree programs.The first vice chancellor of the university was Prof. Dr. Sher Ali Khan Shinwari.KUST is ranked 22'
                'in the general category of the Higher Education Commission (Pakistan) rankings.',
            longitude: 71.4459,
            latitude: 33.5231,
          ),
        ],
      ),

      ///Chitral

      City(
        name: 'Chitral',
        places: [
          Place(
            name: 'Chitral Valley ',
            height: 45,
            images: [
              'assets/chitral/chitral1.jpg',
              'assets/chitral/chitral2.jpg',
              'assets/chitral/chitral3.jpg',
              'assets/chitral/chitral4.jpg'
            ],
            location:
                'Chitral, town, northern Khyber Pakhtunkhwa province, Pakistan.',
            description:
                'Chitral District is located in the Koh Hindu Kush range in Khyber-Pakhtunkhawa Province of Pakistan.'
                'It shares a border with Afghanistan to the west and north and with Gilgit-Baltistan,'
                'the northernmost part of Pakistan.The Kalash religion is polytheist faith similar to'
                'paganism and ancient forms of Hinduism and the people offer sacrifices for their gods.'
                'Their culture is interlinked with their religion and includes several unique festivals'
                'and celebrations.Chitral, town, northern Khyber Pakhtunkhwa province, Pakistan.'
                'The town lies along the Kunar River (also known as the Chitral River) in a valley 2 miles (3 km) wide, at an elevation of about 4,900 feet (1,490 metres) above sea level.',
            longitude: 71.7864,
            latitude: 35.8510,
          ),

          ///kalash valley
          Place(
            name: 'Kalash Valley ',
            height: 50,
            images: [
              'assets/chitral/kalash1.png',
              'assets/chitral/kalash2.jpg',
              'assets/chitral/kalash3.png',
              'assets/chitral/kalash4.png',
              'assets/chitral/kalash5.png'
            ],
            location:
                'MMVG+Q8V The center of kalash Valley, Kalash, Batrik, Chitral, Khyber Pakhtunkhwa',
            description:
                'Kailash Valley, located in Pakistans Chitral district, is known for its rich cultural and historical heritage.'
                'The most famous valleys in Chitral are the Kalasha Valleys. The valleys are surrounded by the Hindu Kush '
                'mountain range. The inhabitants of the valley are the Kalash people, who have a unique culture, language'
                'and follow a form of ancient Hinduism. As such, the Kalasha Valleys are a source of attraction for '
                'Pakistani as well as International tourists. There are three main valleys. The largest and most populous'
                'valley is Bumburet (Mumuret), reached by a road from Ayun in the Kunar Valley. Rumbur is a side valley'
                'north of Bumburet. The third valley, Biriu (Birir), is s side valley of the Kunar Valley south of Bumburet.'
                'The most famous and most visited valley among these three is the Bumborate Valley which is 36Km from main'
                'Chitral city.The Kalash people are a small religious and ethnic minority of Pakistan. The Kalash religion'
                'is polytheist faith similar to paganism and ancient forms of Hinduism and the people offer sacrifices for their gods.'
                'Their culture is interlinked with their religion and includes several unique festivals and celebrations.'
                'Held annually in August, the Kalash Uchal Festival coincides with the barley and wheat harvest season. '
                'The festival features singing, dancing, and paying homage to nature. '
                'Women dressed in traditional attire perform dances, and the community comes together to celebrate with joy and enthusiasm.',
            longitude: 71.7619,
            latitude: 35.6961,
          ),

          ///Shandur Pass
          Place(
            name: 'Shandur Pass ',
            height: 50,
            images: [
              'assets/chitral/shandur1.jpg',
              'assets/chitral/shandur2.jpg',
              'assets/chitral/shandur3.jpg',
              'assets/chitral/shandur4.jpg',
            ],
            location: ' Upper Chitral, Chitral',
            description:
                'Shandur Pass, located at an altitude of about 3,700 meters (12,139 feet) in northern Pakistan,'
                'serves as a natural border between the Chitral district in Khyber Pakhtunkhwa and the'
                'Ghizer district in Gilgit-Baltistan. Known as the "Roof of the World," Shandur Pass is'
                'famous for its scenic beauty and cultural significance. Historically, it has been an'
                'important route for trade and communication between the mountainous regions of Chitral and Gilgit.'
                'The Khyber Pakhtunkhwa government has launched a helicopter safari service for tourists'
                'at the Shandur Polo Festival.As per details, the helicopter safari service is a'
                'collaboration of KP Culture and Tourism Authority and Patronate Aviation.The pass gained '
                'global recognition due to the Shandur Polo Festival, which has been held annually since 1936.'
                'This traditional polo tournamentis played between the teams of Chitral and Gilgit,'
                'attracting tourists and sports enthusiasts from around the world.'
                'Shandur Pass serves as a natural border between Khyber Pakhtunkhwa (KPK) and Gilgit-Baltistan,'
                'but it itself is not entirely within KPK. The pass lies at the boundary, with one side in'
                'the Chitral district of KPK and the other in the Ghizer district of Gilgit-Baltistan. '
                'While people from both regions participate in the annual Shandur Polo Festival,'
                'geographically, the pass connects and separates the two regions rather than being exclusively located in either.',
            longitude: 72.5362,
            latitude: 36.0655,
          ),

          ///Chitral Fort
          Place(
            name: ' Chitral Fort ',
            height: 55,
            images: [
              'assets/chitral/fort1.jpeg',
              'assets/chitral/fort2.jpg',
              'assets/chitral/fort3.jpg',
            ],
            location:
                ' VQ4R+489, Fort Rd, Chitrāl, Chitral, Khyber Pakhtunkhwa',
            description:
                'The Chitral Fort is a fortification in Chitral town, Khyber Pakhtunkhwa, Pakistan.'
                'The fort is situated on the banks of the Chitral River. The fort has a commanding '
                'position on the river and is believed to have been built in 1774 during the '
                'reign of Mohtaram Shah Katur II and restored in 1911 by His Highness Sir Shuja ul-Mulk.'
                'The compound used to house the barracks of the guards of Mehtar of Chitral.'
                'The fort was declared as the personal property of the last ruler of Chitral'
                'following the merger of Chitral State in 1969. It is now occupied by the'
                'current ceremonial Mehtar, Fateh-ul-Mulk Ali Nasir who has renovated the'
                'old Darbar Hall and state rooms following damage sustained during the earthquake of 2015.',
            longitude: 71.7909,
            latitude: 35.8553,
          ),

          ///Garam Chashma
          Place(
            name: ' Garam Chashma ',
            height: 55,
            images: [
              'assets/chitral/garam1.jpg',
              'assets/chitral/garam2.jpg',
              'assets/chitral/garam3.jpg',
              'assets/chitral/garam4.jpg',
            ],
            location: 'Lower Chitral',
            description:
                'Garam Chashma, located in the Chitral district of Khyber Pakhtunkhwa, Pakistan,'
                'is renowned for its therapeutic hot springs and scenic beauty. The name "Garam Chashma"'
                'translates to "hot spring" in Urdu, and the area has long been a popular destination'
                'for visitors seeking relief from ailments due to the springs mineral-rich waters,'
                'which are believed to have healing properties. The local people have traditionally'
                'used these hot springs for treating conditions like arthritis, skin diseases, and digestive disorders.'
                'It is one of the highest human settlements in the Hindukush ranges with an altitude of almost 2550 meters (8389 feet).'
                'The place is known for its hot spring, which is one of the tourist attraction sites.It is also famous for its trout fish. The water flowing down through the length of the valley is famous for fishing sports.',
            longitude: 71.7884,
            latitude: 35.8952,
          ),
        ],
      ),

      ///Tirah valley
      City(
        name: 'Tirah  Valley',
        places: [
          Place(
            name: 'Maidan Valley ',
            height: 45,
            images: [
              'assets/Tirah/tirah1.jpg',
              'assets/Tirah/tirah2.jpg',
              'assets/Tirah/tirah3.jpg',
              'assets/Tirah/tirah4.jpg',
            ],
            location: 'Maidan Valley ',
            description:
                'Tirah Maidan, located in the Tirah Valley of Khyber Pakhtunkhwa, Pakistan,'
                'is a historically significant region inhabited primarily by the Afridi'
                'and Orakzai Pashtun tribes. Known for its rugged terrain and strategic '
                'importance, the area has a history of resistance to external control, '
                'notably during the British colonial period when the tribes fiercely '
                'opposed British incursions, leading to the 1897 Tirah Expedition. '
                'The valley has long served as a refuge and stronghold for local tribes, '
                'preserving their traditionalway of life and governance through tribal'
                'codes and jirgas, while also being a region marked by conflict and resilience.'
                'Maidan is the central part of Tirah Valley and is known for its lush greenery,'
                'fertile fields, and fruit orchards. The area features terraced farmlands,'
                'vibrant flora, and is surrounded by high mountains, making it a stunning and tranquil spot.',
            longitude: 70.1681,
            latitude: 33.8053,
          ),

          ///sampog
          Place(
            name: 'Sampog Top ',
            height: 50,
            images: [
              'assets/Tirah/sampog.jpg',
              'assets/Tirah/sampog2.jpg',
              'assets/Tirah/sampog.3jpg.jpg',
            ],
            location: 'Sampog Top ,Tirah Valley, Khyber District, Pakistan ',
            description:
                'Sampogtop, located in the Tirah Valley of Khyber District, Khyber Pakhtunkhwa, Pakistan,'
                'is known for its stunning natural beauty and strategic significance. Here’s a description:'
                'Sampogtop is characterized by its rugged terrain, lush green landscapes, and picturesque '
                'mountains that surround the area. The region is primarily inhabited by Pashtun tribes, who'
                ' maintain a traditional lifestyle closely tied to the land. The area features terraced '
                'fields, vibrant flora, and a variety of fruit orchards, making it an agricultural hub.'
                ' Its elevation provides stunning panoramic views, and the area is popular for outdoor '
                'activities like hiking and trekking, attracting nature lovers and adventure enthusiasts.'
                ' The strategic location of Sampogtop has historically made it significant for trade routes '
                'and military movements, particularly during the colonial period. Today, it remains a serene '
                'and relatively untouched destination, offering a glimpse into the rich cultural heritage and'
                ' natural beauty of the Tirah Valley.',
            longitude: 70.1880,
            latitude: 33.7907,
          ),

          ///Tirah Valley
          Place(
            name: 'Tirah Valley ',
            height: 45,
            images: [
              'assets/Tirah/valley1.jpeg',
              'assets/Tirah/valley2.jpeg',
              'assets/Tirah/valley3.jpeg',
              'assets/Tirah/valley4.jpeg',
              'assets/Tirah/valley5.jpeg',
              'assets/Tirah/tirah5.jpg',
            ],
            location: ' Tirah Valley, Khyber District, Pakistan ',
            description:
                'Tirah was the scene of the campaign (1897–98) in which the Afrīdī rose in '
                'a jihad (holy war) against the British, captured the Khyber posts, and attacked forts near Peshawar.'
                'In the hardest campaign since the Second Afghan War, 40,000 British and Indian troops were sent to Tirah.'
                'Tirah Valley is not only a testament to its historical significance but also a beautiful tourist destination.'
                'Visitors can explore places like Sampogtop, known for its stunning views; Maidan Valley, with its lush'
                'greenery and Rajgal Valley, famous for its breathtaking landscapes. Other notable attractions include Arhanga Valley and Dwa Toi, both offering scenic beauty and '
                'opportunities for trekking and outdoor activities, making Tirah a hidden gem for nature lovers and adventure enthusiasts.'
                'Tirah valley has an approximate population of 80,000 to 150,000 individuals, and is inhabited by five major Afridi tribes'
                'Malik din Khel (MDK), Shalobar (SHB), Bar Qambarkhel (BQK), Zaka Khel (ZK) and Adam Khel (AK).'
                'There is Very Beautiful places for tourism . ',
            longitude: 70.8111,
            latitude: 33.8575,
          ),
        ],
      ),

      ///abbotabad
      City(
        name: 'Abbottabad',
        places: [
          ///abbottabad city
          Place(
            name: ' Abbottabad ',
            height: 40,
            images: [
              'assets/abbotabad/abat1.jpg',
              'assets/abbotabad/abat2.jpg',
              'assets/abbotabad/abat3.jpg',
              'assets/abbotabad/abat4.jpg',
              'assets/abbotabad/abat5.jpg'
                  'assets/abbotabad/abat6.jpg'
            ],
            location: 'Abbottabad Khyber Pakhtunkhwa',
            description:
                'Abbottabad, located in the Hazara Division of Khyber Pakhtunkhwa, Pakistan, has a rich and diverse history.'
                'The modern city of Abbottabad was established in the mid-19th century during the British colonial period.'
                'Named after Major James Abbott, a British officer who played a significant role in the areas development,'
                'Abbottabad was established as a military garrison and administrative center.After the partition of India'
                'in 1947, Abbottabad became part of Pakistan. It continued to develop as a military and administrative'
                'center and gained recognition as a tourist destination due to its beautiful landscapes and cool climate.'
                'In recent decades, Abbottabad has emerged as an educational hub, home to several notable institutions, '
                'including the Pakistan Military Academy (Kakul) and various colleges and universities.'
                'The city is surrounded by stunning natural beauty, including mountains and forests, making it a popular'
                'destination for tourists seeking outdoor activities, such as hiking and trekking. Nearby attractions '
                'include Nathia Gali, Ayubia National Park, and Thandiani.Abbottabads blend of historical significance,'
                'military heritage, and natural beauty makes it an important city in Pakistans Hazara Division.',
            longitude: 73.2215,
            latitude: 34.1688,
          ),

          ///ayubia
          Place(
            name: ' Ayubia  ',
            height: 45,
            images: [
              'assets/abbotabad/ayubia1.jpg',
              'assets/abbotabad/ayubia2.jpg',
              'assets/abbotabad/ayubia4.jpg',
              'assets/abbotabad/ayubia5.jpg',
              'assets/abbotabad/ayubia3.jpg',
            ],
            location: 'Ayubia Abbottabad, Khyber Pakhtunkhwa',
            description:
                'It was declared a national park in 1984. Ayubia was named after Muhammad Ayub Khan (1958–1969),'
                'second President of Pakistan. The area supports temperate coniferous forest and temperate'
                'broadleaf and mixed forest ecoregion habitats, with an average elevation of 8,000 feet (2,400 m)'
                'above sea level.Ayubia is a protected area located in Abbottabad District in Khyber Pakhtunkhwa, Pakistan.'
                'It is also known as Ayubia National Park and was called a national park in 1984. '
                'It is a small natural park 26 km from the Murree hill station. Ayubia was named after Ayub Khan,'
                'the second president of Pakistan. From the common leopard, red fox and the rare woolly flying '
                'squirrel to over 200 species of birds, the park is a home to extraordinary biodiversity.',
            longitude: 73.4026,
            latitude: 34.0292,
          ),

          ///thandiyani
          Place(
            name: ' Thandiani   ',
            height: 40,
            images: [
              'assets/abbotabad/tandq.jpg',
              'assets/abbotabad/tand1.jpg',
              'assets/abbotabad/tand3.jpg',
              'assets/abbotabad/tand4.jpg',
            ],
            location: 'Thandiani  ',
            description:
                'Thandiani, meaning “very cold” in the local language, is situated in the northeastern part'
                'of the Abbottabad District, approximately 37.5 kilometres (23.3 miles) away from Abbottabad,'
                'at the foothills of the majestic Himalayas.Thandiani is described by its fantastic climate '
                'and rich vegetation in the late spring months, and snow-shrouded vistas and slopes in '
                'the colder time of year. Numerous sightseers from Khyber Pakhtunkhwa and all over Pakistan '
                'visit here, particularly in the late spring season. Being at a high elevation, with an '
                'alluring view and a few climbing trails into the woods and other close-by areas, it is an appealing possibility.'
                'Many tourists from Khyber Pakhtunkhwa and all over Pakistan visit here, especially in the summer season.'
                'The hills of Thandiani are about 2,750 metres (9,020 ft) above sea level. Most of the people residing'
                'here belong to the Qureshi- Damal , Karlal, Syed, Awan, Abbasi, and Gujjar tribes.',
            longitude: 73.3563,
            latitude: 34.0408,
          ),

          ///Nathiya Gali
          Place(
            name: ' Nathia Gali   ',
            height: 45,
            images: [
              'assets/abbotabad/nathia2.jpg',
              'assets/abbotabad/nathia3.jpg',
              'assets/abbotabad/nathia4.jpg',
              'assets/abbotabad/nathia5.jpg',
            ],
            location: 'Nathia Gali Abbottabad, Khyber Pakhtunkhwa',
            description:
                'Nathia Gali or Nathiagali is a hill station and mountain resort town located in the Abbottabad District of Khyber Pakhtunkhwa, Pakistan.'
                'It is located at the centre of the Galyat range, where several hill stations are situated. Nathia Gali is known for its scenery, hiking'
                'trails and weather,[citation needed] which is much cooler than the rest of the Galyat range due to it being at a higher altitude. '
                'It is situated approximately 32 kilometres (20 mi) away from both Murree and Abbottabad.The natural scenery is highly attractive. Nathia Gali'
                'is famous for its lush, green meadows and deep forests of oak, cedar and pine. In winter, snowfall adds to the scene.'
                'Nathiagali offers several top attractions, including Mukshpuri Top, Miranjani Peak, Nathiagali Church, Ayubia National Park,'
                'Dunga Gali Pine Line Track, Nathiagali Bazaar, and the Green Spot.',
            longitude: 73.3812,
            latitude: 34.0729,
          ),

          ///Dunga Gali
          Place(
            name: ' Dunga Gali   ',
            height: 40,
            images: [
              'assets/abbotabad/dunga2.jpg',
              'assets/abbotabad/dunga3.jpg',
              'assets/abbotabad/dunga4.jpg',
              'assets/abbotabad/dunga5.jpg',
            ],
            location: 'Dunga Gali Abbottabad, Khyber Pakhtunkhwa  ',
            description:
                'Dunga Gali is one of the towns of the Galyat area of Ayubia National Park, at an altitude of 2,500 metres (8,200 ft) in northern Pakistan.'
                'Dunga Gali is located in Nathia Gali Union Council (subdivision) of Abbottabad District in the Khyber Pakhtunkhwa Province.'
                'it is 3 kilometres (1.9 mi) from Nathia Gali.Snowfall in Dunga Gali typically occurs between December and February, with January being '
                'the peak month for snow. The area, like the rest of the Galiyat region, transforms into a winter wonderland during these months, attracting'
                'tourists who come to enjoy the snow-covered landscapes and engage in winter activities. Occasionally, snowfall can start as early as '
                'late November and last into March, depending on the weather conditions.Dunga Gali is approximately 30 kilometers (about 18.6 miles) from Abbottabad.'
                'The drive typically takes around 45 minutes to 1 hour, depending on road conditions and traffic. The route offers scenic views of the hills and valleys,'
                'making the journey enjoyable for visitors traveling from Abbottabad to Dunga Gali.',
            longitude: 73.4070,
            latitude: 34.0528,
          ),
        ],
      ),

// ///kohat
// City(
//   name: 'Kohat',

//     ///golf club
//     Place(
//       name: 'Picquet Golf and Country Club Kohat ',
//       height: 45,
//       images: [
//         'assets/kohat/golf1.png',
//         'assets/kohat/golf2.png',
//         'assets/kohat/golf3.png',
//         'assets/kohat/golf4.png',
//         'assets/kohat/golf5.png',
//       ],
//       location: 'GFMJ+3Q8, Kohat, Khyber Pakhtunkhwa ',
//       description:
//           'The Kohat Golf Club, established in 1918 during British colonial rule,'
//           ' is one of the oldest golf clubs in Pakistan. Located in Kohat, Khyber Pakhtunkhwa,'
//           ' the club was initially created as a recreational outlet for British military officers'
//           ' stationed in the region.Golf, a favored sport among British administrators and army personnel,'
//           ' found its place in Kohat due to the towns strategic military importance. The clubs 9-hole course'
//           ' has retained much of its original rustic charm, reflecting the simple yet elegant designs of the time.'
//           'After Pakistans independence in 1947, the Kohat Golf Club continued to serve both military personnel'
//           ' and civilians, preserving its historic legacy. While it may not have gained international fame like other'
//           ' major golf clubs in Pakistan, it remains a significant institution, offering a glimpse '
//           'into the region’s colonial past and the evolution of golf in the country. ',
//       longitude: 71.4850,
//       latitude: 33.5367,
//     ),

//   ],
// ),
//
    ],
  ),

];

///simple work city places
// Sample Data
// List<Province> provinces = [
//   Province(
//     name: 'Khyber PakhtoonKhwa',
//     cities: [
//       City(
//         name: 'Peshawar',
//         places: [
//           Place(
//             // image1:,
//             // image2:,
//             name: 'Islamia College Peshawar',
//             height: 55,
//             image: 'assets/peshawar/Img1.png',
//             location:
//                 'Grand Trunk Rd, Rahat Abad, Peshawar, Khyber Pakhtunkhwa',
//             description:
//                 'History. Founded by Sir S.A. Qayyum and Sir George Roos-Keppel in 1913,'
//                 ' it is one of the oldest institutions of higher education in Pakistan,'
//                 ' and its historical roots are traced from the culminating point of the Aligarh Movement.',
//             longitude: 71.5249,
//             // Corrected longitude
//             latitude: 34.0081, // Corrected latitude
//           ),
//           Place(
//             // image1:,
//             // image2:,
//             name: 'Peshawar Museum ',
//             height: 55,
//             image: 'assets/peshawar/musem1.png',
//             location:
//                 'Saddar Road opposite Governor House Peshawar & Civil Secretariat, '
//                     'Finance Department, Civil Secretariat, Peshawar, Khyber Pakhtunkhwa',
//             description:
//                 'Established in the Grand Victoria Memorial Hall in 1906,'
//                     ' the Peshawar Museum is famous the world over for housing a unique '
//                     '& rare collection of Gandhara Sculptures, coins, epigraphs & other antiquities recovered from the excavation  '
//                     'of ancient sites located in the Peshawar Valley, a region known as Gandhara in the past.',
//             longitude: 71.5249,
//             // Corrected longitude
//             latitude: 34.0078, // Corrected latitude
//           ),
//         ],
//       ),
//     ],
//   ),
// ];
