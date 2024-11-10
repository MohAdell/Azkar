class AzkarModel {
  String azkarCategorys;
  bool? basmalaQuraan;
  String azkarAR;
  String azkarFranco;
  String azkarEN;
  String azkarFrom;
  String? TekrarQuraan;
  String imageCategory;
  bool? isFavorite;

  AzkarModel(this.azkarCategorys, this.azkarAR, this.azkarFranco, this.azkarEN,
      this.azkarFrom, {required this.imageCategory, required this.TekrarQuraan,required this.basmalaQuraan, required this.isFavorite});

  static List<AzkarModel> azkarList = [
    AzkarModel(
        "اذكار الصباح",
        "أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ وَالْحَمْدُ لِلَّهِ، لَا إِلَهَ إِلَّّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، رَبِّ أَسْأَلُكَ خَيْرَ مَا فِيْ هَذَا الْيَوْمِ وَخَيْرَ مَا بَعْدَهُ، وَأَعُوْدُ بِكَ مِنْ شَرِّ مَا فِي هَذَا الْيَوْمِ وَشَرِّ مَا بَعْدَهُ، رَبِّ أَعُوْدُ بِكَ مِنَ الْكَسَلِ، وَسُوءِ الْكِبَرِ، رَبِّ أَعُوْدُ بِكَ مِنْ عَذَابٍ فِيْ النَّارِ وَعَذَابٍ فِيْ الْقَبْرِ.",
        "Asbahna wa-asbahal-mulku lillah walhamdu lillah la ilaha illal-lah, wahdahu la shareeka lah, lahul-mulku walahul-hamd, wahuwa AAala kulli shayin qadeer, rabbi as-aluka khayra ma fee hatha-alyawmi, wakhayra ma baAAdaho, wa-aAAoothu bika min sharri hatha-alyawmi, washarri ma baAAdaho, rabbi aAAoothu bika minal-kasal, wasoo-il kibar, rabbi aAAoothu bika min AAathabin fin-nar, waAAathabin fil-qabr.",
        "We have reached the morning and at this very time unto Allah belongs all sovereignty, and all praise is for Allah. None has the right to be worshipped except Allah, alone, without partner, to Him belongs all sovereignty and praise and He is over all things omnipotent. My Lord, I ask You for the good of this day and the good of what follows it and I take refuge in You from the evil of this day and the evil of what follows it. My Lord, I take refuge in You from laziness and senility. My Lord, I take refuge in You from torment in the Fire and punishment in the grave.",
        "Muslim 4:2088",
      imageCategory: 'assets/homePage/morning.jpg',
      TekrarQuraan: null,
      basmalaQuraan: false, isFavorite: null,
    ),
    AzkarModel(
        "اذكار الصباح",
        "اللَّهُمَّ بِكَ أَصْبَحْنَا، وَبِكَ أَمْسَيْنَا، وَبِكَ نَحْيَا، وَبِكَ نَمُوتُ، وَإِلَيْكَ النُّشُورُ.",
        "Allahumma bika asbahna wabika amsayna, wabika nahya, wabika namootu wa-ilaykan-nushoor.",
        "O Allah, by your leave we have reached the morning and by Your leave we have reached the evening, by Your leave we live and die and unto You is our resurrection.",
        "At-Tirmidhi 5:466",
        imageCategory: 'assets/homePage/morning.jpg',
      TekrarQuraan: null,
      basmalaQuraan: null, isFavorite: null,
    ),
    AzkarModel(
        "اذكار الصباح",
        "اللَّهُمَّ أَنْتَ رَبِّي لَّا إِلَهَ إِلَّا أَنْتَ، خَلَقْتَنِي وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ، وَأَبُوءُ بِذَنْبِي فَاغْفِر لِي فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ.",
        "Allahumma anta rabbee la ilaha illa ant, khalaqtanee wa-ana AAabduk, wa-ana AAala AAahdika wawaAAdika mas-tataAAt, aAAoothu bika min sharri ma sanaAAt, aboo-o laka biniAAmatika AAalay, wa-aboo-o bithanbee, faghfir lee fa-innahu la yaghfiruth-thunooba illa ant.",
        "O Allah, You are my Lord, none has the right to be worshipped except You, You created me and I am Your servant and I abide to Your covenant and promise as best I can, I take refuge in You from the evil of which I have committed. I acknowledge Your favour upon me and I acknowledge my sin, so forgive me, for verily none can forgive sin except You.",
        "Al-Bukhari 7:150",
        imageCategory: 'assets/homePage/morning.jpg',
      TekrarQuraan: null,
      basmalaQuraan: null, isFavorite: null,
    ),
    AzkarModel(
        "اذكار الصباح",
        "اللَّهُمَّ إِنِّي أَصْبَحْتُ أُشْهِدُكَ وَأُشْهِدُ حَمَلَةَ عَرْشِكَ، وَمَلَائِكَتَكَ وَجَمِيعَ خَلْقِكَ، أَنَّكَ أَنْتَ اللَّهُ لَا إِلَهَ إِلَّا أَنْتَ وَحْدَكَ لَا شَرِيكَ لَكَ، وَأَنَّ مُحَمَّداً عَبْدُكَ وَرَسُولُكَ (أربع مرات)",
        "Allahumma innee asbahtu oshhiduk, wa-oshhidu hamalata AAarshik, wamala-ikatak, wajameeAAa khalqik, annaka antal-lahu la ilaha illa ant, wahdaka la shareeka lak, wa-anna Muhammadan AAabduka warasooluk (four times).",
        "O Allah, verily I have reached the morning and call on You, the bearers of Your throne, Your angles, and all of Your creation to witness that You are Allah, none has the right to be worshipped except You, alone, without partner and that Muhammad is Your Servant and Messenger. (four times).",
        "Abu Dawud 4:317",
        imageCategory: 'assets/homePage/morning.jpg',
      TekrarQuraan: 'أربع مرات',
      basmalaQuraan: null,isFavorite: null,
    ),
    AzkarModel(
        "اذكار الصباح",
        "اللَّهُمَّ مَا أَصْبَحَ بِي مِنْ نِعْمَةٍ أَوْ بِأَحَدٍ مِنْ خَلْقِكَ فَمِنْكَ وَحْدَكَ لَا شَرِيكَ لَكَ، فَلَكَ الْحَمْدُ وَلَكَ الشُّكْرُ.",
        "Allahumma ma asbaha bee min niAAmatin, aw bi-ahadin min khalqik, faminka wahdaka la shareeka lak, falakal-hamdu walakash-shukr.",
        "O Allah, what blessing I or any of Your creation have risen upon, is from You alone, without partner, so for You is all praise and unto You all thanks.",
        "Abu Dawud 4:318",
        imageCategory: 'assets/homePage/morning.jpg',
      TekrarQuraan: null,
      basmalaQuraan: null,isFavorite: null,
    ),
    AzkarModel(
        "اذكار الصباح",
        "اللَّهُمَّ عَافِـني فِي بَدَنِي، اللَّهُمَّ عَافِـنِي فِي سَمْعِي، اللَّهُمَّ عَافِنِي فِي بَصَرِي، لَا إِلَهَ إلاَّ أَنْتَ.(ثلاثاً) اللَّهُمَّ إِنِّي أَعُوذُبِكَ مِنَ الْكُفْر، وَالفَقْرِ، وَأَعُوذُبِكَ مِنْ عَذَابِ الْقَبْرِ ، لَا إلَهَ إلاَّ أَنْتَ. (ثلاثاً).",
        "Allahumma AAafinee fee badanee, allahumma AAafinee fee samAAee, allahumma AAafinee fee basaree, la ilaha illa ant.(three times). Allahumma innee aAAoothu bika minal-kufr, walfaqr, wa-aAAoothu bika min AAathabil-qabr, la ilaha illa ant (three times).",
        "O Allah, grant my body health, O Allah, grant my hearing health, O Allah, grant my sight health. None has the right to be worshipped except You.(three times) O Allah, I take refuge with You from disbelief and poverty, and I take refuge with You from the punishment of the grave. None has the right to be worshipped except You. (three times)",
        "Abu Dawud 4:324",
        imageCategory: 'assets/homePage/morning.jpg',
      TekrarQuraan: 'ثلاثاً',
      basmalaQuraan: null,isFavorite: null,
    ),
    AzkarModel(
        "اذكار الصباح",
        "حَسْبِيَ اللَّهُ لَآ إِلَهَ إِلَّا هُوَ عَلَيْهِ تَوَكَّلْتُ وَهُوَ رَبُّ الْعَرْشِ الْعَظِيمِ. (سبع مَرّات حينَ يصْبِح وَيمسي)",
        "Hasbiyal-lahu la ilaha illa huwa, AAalayhi tawakkalt, wahuwa rabbul-AAarshil-AAatheem.",
        "Allah is Sufficient for me, none has the right to be worshipped except Him, upon Him I rely and He is Lord of the exalted throne. (seven times morning and evening)",
        "Abu Dawud 4:321",
        imageCategory: 'assets/homePage/morning.jpg',
      TekrarQuraan: 'سبع مَرّات حينَ يصْبِح وَيمسي',
      basmalaQuraan: null,isFavorite: null,
    ),
    AzkarModel(
        "اذكار الصباح",
        "أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ. (ثلاثاً إِذا أمسى)",
        "aAAoothu bikalimatil-lahit-tammati min sharri ma khalaq.",
        "I take refuge in Allah’s perfect words from the evil He has created. (three times in the evening)",
        "Ahmad 2:290, At-Tirmidhi 3:187",
        imageCategory: 'assets/homePage/morning.jpg',
      TekrarQuraan: 'ثلاثاً إِذا أمسى',
      basmalaQuraan: null,isFavorite: null,
    ),
    AzkarModel(      "اذكار الصباح",
        "اللَّهُمَّ عَالِمَ الْغَيْبِ وَالشَّهَادَةِ فَاطِرَ السَّماوَاتِ وَالْأَرْضِ، رَبَّ كُلِّ شَيْءٍ وَمَلِيكَهُ، أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا أَنْتَ، أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي، وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ، وَأَنْ أَقْتَرِفَ عَلَى نَفْسِي سُوءاً أَوْ أَجُرَّهُ إِلَى مُسْلِمٍ.",
        "Allahumma AAalimal-ghaybi washshahadah, fatiras-samawati wal-ard, rabba kulli shayin wamaleekah, ashhadu an la ilaha illa ant, aAAoothu bika min sharri nafsee wamin sharrish-shaytani washirkih, waan aqtarifa AAala nafsee soo-an aw ajurrahu ila muslim.",
        "O Allah, Knower of the unseen and the seen, Creator of the heavens and the Earth, Lord and Sovereign of all things, I bear witness that none has the right to be worshipped except You. I take refuge in You from the evil of my soul and from the evil and shirk of the devil, and from committing wrong against my soul or bringing such upon another Muslim.",
        "At-Tirmidhi 3:142",
        imageCategory: 'assets/homePage/morning.jpg',
      TekrarQuraan: null,
      basmalaQuraan: null,isFavorite: null,
    ),
    AzkarModel(
        "اذكار الصباح",
        "بِسْمِ اللَّهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الَْأرْضِ وَلَا فِي السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ. (ثلاثاً)",
        "Bismil-lahil-lathee la yadurru maAAas-mihi shay-on fil-ardi wala fis-sama-i wahuwas-sameeAAul-AAaleem.",
        "In the name of Allah with whose name nothing is harmed on earth nor in the heavens and He is The All-Seeing, The All-Knowing.(three times)",
        "Abu Dawud 4:323",
        imageCategory: 'assets/homePage/morning.jpg',
      TekrarQuraan: 'ثلاثاً',
      basmalaQuraan: null,isFavorite: null,
    ),
    AzkarModel(
        "اذكار الصباح",
        "رَضِيتُ باللَّهِ رَبًّا، وَبِالْإِسْلَامِ دِيناً، وَبِمُحَمَّدٍ صَلَى اللَّهُ عَلِيهِ وَسَلَّمَ نَبِيَّاً. (ثلاثاً)",
        "Radeetu billahi rabban wabil-islami deenan wabiMuhammadin peace be upon to him nabiyya.",
        "I am pleased with Allah as a Lord, and Islam as a religion and Muhammad peace be upon to him as a Prophet. (three times)",
        "Abu Dawud 4:318",
        imageCategory: 'assets/homePage/morning.jpg',
      TekrarQuraan: 'ثلاثاً',
      basmalaQuraan: null,isFavorite: null,
    ),
    AzkarModel(
        "اذكار الصباح",
        "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ عَدَدَ خَلْقِهِ، وَرِضَا نَفْسِهِ، وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ . (ثلاثاً)",
        "Subhanal-lahi wabihamdih, AAadada khalqihi warida nafsih, wazinata AAarshih, wamidada kalimatih.",
        "How perfect Allah is and I praise Him by the number of His creation and His pleasure, and by the weight of His throne, and the ink of His words. (three times)",
        "Muslim 4:2090",
        imageCategory: 'assets/homePage/morning.jpg',
      TekrarQuraan: 'ثلاثاً',
      basmalaQuraan: null,isFavorite: null,
    ),
    AzkarModel(
        "اذكار الصباح",
        "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ . (مائة مرة)",
        "Subhanal-lahi wabihamdih.",
        "How perfect Allah is and I praise Him.(one hundred times)",
        "Muslim 4:2071",
        imageCategory: 'assets/homePage/morning.jpg',
      TekrarQuraan: 'مائة مرة',
      basmalaQuraan: null,isFavorite: null,
    ),
    AzkarModel(
        "اذكار الصباح",
        "يَاحَيُّ، يَا قَيُّومُ، بِرَحْمَتِكَ أَسْتَغِيثُ، أَصْلِحْ لِي شَأْنِي كُلَّهُ، وَلَا تَكِلْنِي إِلَى نَفْسِي طَرْفَةَ عَيْنٍ.",
        "Ya hayyu ya qayyoom, birahmatika astagheeth, aslih lee sha/nee kullah, wala takilnee ila nafsee tarfata AAayn.",
        "O Ever Living, O Self-Subsisting and Supporter of all, by Your mercy I seek assistance, rectify for me all of my affairs and do not leave me to myself, even for the blink of an eye.",
        "Sahih-ut-Targhib wat- Tarhib 1:273",
        imageCategory: 'assets/homePage/morning.jpg',
      TekrarQuraan: null,
      basmalaQuraan: null,isFavorite: null,
    ),
    AzkarModel(
        "اذكار الصباح",
        "لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ . (مائة مرة)",
        "La ilaha illal-lah, wahdahu la shareeka lah, lahul-mulku walahul-hamd, wahuwa AAala kulli shay-in qadeer.",
        "None has the right to be worshipped except Allah, alone, without partner, to Him belongs all sovereignty and praise, and He is over all things omnipotent. (one hundred times)",
        "Al-Bukhari 4:95, Muslim 4:2071",
        imageCategory: 'assets/homePage/morning.jpg',
      TekrarQuraan: 'مائة مرة',
      basmalaQuraan: null,isFavorite: null,
    ),
    AzkarModel(
        "اذكار الصباح",
        "أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ رَبِّ الْعَالَمِينَ، اللَّهُمَّ إِنِّـي أَسْأَلُكَ خَـيْرَ هَذَا الْـيَوْمِ ، فَتْحَهُ، وَنَصْرَهُ، وَنُورَهُ وَبَرَكَتَهُ، وَهُدَاهُ، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فِيهِ وَشَرِّ مَا بَعْدَهُ.",
        "Asbahna wa-asbahal-mulku lillahi rabbil-AAalameen, allahumma innee as-aluka khayra hathal-yawm, fat-hahu, wanasrahu, wanoorahu, wabarakatahu, wahudahu, wa-aAAoothu bika min sharri ma feehi, washarri ma baAAdah.",
        "We have reached the morning and at this very time all sovereignty belongs to Allah, Lord of the worlds. O Allah, I ask You for the good of this day, its triumphs and its victories, its light and its blessings and its guidance, and I take refuge in You from the evil of this day and the evil that follows it.",
        "Abu Dawud 4:322",
        imageCategory: 'assets/homePage/morning.jpg',
      TekrarQuraan: null,
      basmalaQuraan: null,isFavorite: null,
    ),
AzkarModel(
        "اذكار المساء",
        "أَمْسَيْنَا وَأَمْسَى الْمُلْكُ لِلَّهِ وَالْحَمْدُ لِلَّهِ لاَ إِلَهَ إِلاَّ اللَّهُ وَحْدَهُ لاَ شَرِيكَ لَهُ لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَىْءٍ قَدِيرٌ رَبِّ أَسْأَلُكَ خَيْرَ مَا فِي هَذِهِ اللَّيْلَةِ وَخَيْرَ مَا بَعْدَهَا وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فِي هَذِهِ اللَّيْلَةِ وَشَرِّ مَا بَعْدَهَا رَبِّ أَعُوذُ بِكَ مِنَ الْكَسَلِ وَسُوءِ الْكِبَرِ رَبِّ أَعُوذُ بِكَ مِنْ عَذَابٍ فِي النَّارِ وَعَذَابٍ فِي الْقَبْرِ.",
        "Amsayna wa-amsal-mulku lillah walhamdu lillah la ilaha illal-lah, wahdahu la shareeka lah, lahul-mulku walahul-hamd, wahuwa AAala kulli shayin qadeer, rabbi as-aluka khayra ma fee hathihil-laylah, wakhayra ma baAAdaha, wa-aAAoothu bika min sharri hathihil-laylah, washarri ma baAAdaha, rabbi aAAoothu bika minal-kasal, wasoo-il kibar, rabbi aAAoothu bika min AAathabin fin-nar, waAAathabin fil-qabr.",
        "We have reached the evening and at this very time unto Allah belongs all sovereignty, and all praise is for Allah. None has the right to be worshipped except Allah, alone, without partner, to Him belongs all sovereignty and praise and He is over all things omnipotent. My Lord, I ask You for the good of this night and the good of what follows it and I take refuge in You from the evil of this night and the evil of what follows it. My Lord, I take refuge in You from laziness and senility. My Lord, I take refuge in You from torment in the Fire and punishment in the grave.",
        "Muslim 4:2088",
    TekrarQuraan: null,
    basmalaQuraan: null,isFavorite: null,
    imageCategory: 'assets/homePage/evening.webp'),
    AzkarModel(
        "اذكار المساء",
        "اللَّهُمَّ بِكَ أَمْسَيْنَا، وَبِكَ أَصْبَحْنَا، وَبِكَ نَحْيَا، وَبِكَ نَمُوتُ وَإِلَـيْكَ المَصِيْر.",
        "Allahumma bika amsayna, wabika asbahna, wabika nahya wabika namootu wa-ilaykal-maseer.",
        "O Allah, by Your leave we have reached the evening and by Your leave we have reached the morning, by Your leave we live and die and unto You is our return.",
        "At-Tirmidhi 5:466",    TekrarQuraan: null,
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/evening.webp'),
    AzkarModel(
        "اذكار المساء",
        "اللَّهُمَّ أَنْتَ رَبِّي لَّا إِلَهَ إِلَّا أَنْتَ، خَلَقْتَنِي وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ، وَأَبُوءُ بِذَنْبِي فَاغْفِر لِي فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ.",
        "Allahumma anta rabbee la ilaha illa ant, khalaqtanee wa-ana AAabduk, wa-ana AAala AAahdika wawaAAdika mas-tataAAt, aAAoothu bika min sharri ma sanaAAt, aboo-o laka biniAAmatika AAalay, wa-aboo-o bithanbee, faghfir lee fa-innahu la yaghfiruth-thunooba illa ant.",
        "O Allah, You are my Lord, none has the right to be worshipped except You, You created me and I am Your servant and I abide to Your covenant and promise as best I can, I take refuge in You from the evil of which I have committed. I acknowledge Your favour upon me and I acknowledge my sin, so forgive me, for verily none can forgive sin except You.",
        "Al-Bukhari 7:150",    TekrarQuraan: null,
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/evening.webp'),
    AzkarModel(
        "اذكار المساء",
        "اللَّهُمَّ أَمْسَيْنَا نُشْهِدُكَ وَنُشْهِدُ حَمَلَةَ عَرْشِكَ وَمَلاَئِكَتَكَ وَجَمِيعَ خَلْقِكَ بِأَنَّكَ الله لاَ إِلَهَ إِلاَّ أَنْتَ وَحْدَكَ لاَ شَرِيكَ لَكَ وَأَنَّ مُحَمَّدًا عَبْدُكَ وَرَسُولُكَ.",
        "Allahumma amsaina nush-hiduka wa nush-hidu ḥamalata arshika wa mala’ikataka wa jami`a khalqika bi-annaka Allah, la ilaha illa anta, waḥdaka la sharika laka, wa anna Muḥammadan abduka wa rasuluk.",
        "O Allah, we have reached the evening, calling You to witness, and calling the carriers of Your Throne to witness, and Your angels, and all of Your creation, that You are Allah, none has the right to be worshipped but You, Alone, without a partner, and that Muhammad (S.A.W.) is Your slave and Your Messenger.",
        "At-Tirmidhi: 3501",    TekrarQuraan: null,
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/evening.webp'),
    AzkarModel(
        "اذكار المساء",
        "اللَّهُمَّ مَا أََمْسَ بِي مِنْ نِعْمَةٍ أَوْ بِأَحَدٍ مِنْ خَلْقِكَ فَمِنْكَ وَحْدَكَ لَا شَرِيكَ لَكَ، فَلَكَ الْحَمْدُ وَلَكَ الشُّكْرُ.",
        "Allahumma ma amsa bee min niAAmatin, aw bi-ahadin min khalqik, faminka wahdaka la shareeka lak, falakal-hamdu walakash-shukr.",
        "O Allah, what blessing I or any of Your creation have risen upon, is from You alone, without partner, so for You is all praise and unto You all thanks.",
        "Abu Dawud 4:318",    TekrarQuraan: null,
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/evening.webp'),
    AzkarModel(
        "اذكار المساء",
        "اللَّهُمَّ عَافِـني فِي بَدَنِي، اللَّهُمَّ عَافِـنِي فِي سَمْعِي، اللَّهُمَّ عَافِنِي فِي بَصَرِي، لَا إِلَهَ إلاَّ أَنْتَ.(ثلاثاً) اللَّهُمَّ إِنِّي أَعُوذُبِكَ مِنَ الْكُفْر، وَالفَقْرِ، وَأَعُوذُبِكَ مِنْ عَذَابِ الْقَبْرِ ، لَا إلَهَ إلاَّ أَنْتَ. (ثلاثاً).",
        "Allahumma AAafinee fee badanee, allahumma AAafinee fee samAAee, allahumma AAafinee fee basaree, la ilaha illa ant.(three times). Allahumma innee aAAoothu bika minal-kufr, walfaqr, wa-aAAoothu bika min AAathabil-qabr, la ilaha illa ant (three times).",
        "O Allah, grant my body health, O Allah, grant my hearing health, O Allah, grant my sight health. None has the right to be worshipped except You.(three times) O Allah, I take refuge with You from disbelief and poverty, and I take refuge with You from the punishment of the grave. None has the right to be worshipped except You. (three times)",
        "Abu Dawud 4:324",    TekrarQuraan: 'ثلاثاً',
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/evening.webp'),
    AzkarModel(
        "اذكار المساء",
        "حَسْبِيَ اللَّهُ لَآ إِلَهَ إِلَّا هُوَ عَلَيْهِ تَوَكَّلْتُ وَهُوَ رَبُّ الْعَرْشِ الْعَظِيمِ. (سبع مَرّات حينَ يصْبِح وَيمسي)",
        "Hasbiyal-lahu la ilaha illa huwa, AAalayhi tawakkalt, wahuwa rabbul-AAarshil-AAatheem.",
        "Allah is Sufficient for me, none has the right to be worshipped except Him, upon Him I rely and He is Lord of the exalted throne. (seven times morning and evening)",
        "Abu Dawud 4:321",    TekrarQuraan: 'سبع مَرّات حينَ يصْبِح وَيمسي',
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/evening.webp'),
    AzkarModel(
        "اذكار المساء",
        "أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ. (ثلاثاً إِذا أمسى)",
        "aAAoothu bikalimatil-lahit-tammati min sharri ma khalaq.",
        "I take refuge in Allah’s perfect words from the evil He has created. (three times in the evening)",
        "Ahmad 2:290, At-Tirmidhi 3:187",    TekrarQuraan: 'ثلاثاً إِذا أمسى',
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/evening.webp'),
    AzkarModel(
        "اذكار المساء",
        "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي الدُّنْيَا وَالْآخِرَةِ، اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي دِينِي، وَدُنْيَايَ، وَأَهْلِي، وَمَالِي، اللَّهُمَّ اسْتُرْ عَوْرَاتِي، وَآمِنْ رَوْعَاتِي، اللَّهُمَّ احْفَظْنِي مِنْ بَيْنِ يَدَيَّ، وَمِنْ خَلْفِي، وَعَنْ يَمِينِي، وَعَنْ شِمَالِي، وَمِنْ فَوْقِي، وَأَعُوذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِي.",
        "Allahumma innee as-alukal-AAafwa walAAafiyah, fid-dunya wal-akhirah, allahumma innee as-alukal-AAafwa walAAafiyah fee deenee, wadunyaya wa-ahlee, wamalee, allahummas-tur AAawratee, wa-amin rawAAatee, allahummah-fathnee min bayni yaday, wamin khalfee, waAAan yameenee, waAAan shimalee, wamin fawqee, wa-aAAoothu biAAathamatika an oghtala min tahtee.",
        "O Allah, I ask You for pardon and well-being in this life and the next. O Allah, I ask You for pardon and well-being in my religious and worldly affairs, and my family and my wealth. O Allah, veil my weaknesses and set at ease my dismay. O Allah, preserve me from the front and from behind and on my right and on my left and from above, and I take refuge with You lest I be swallowed up by the earth.",
        "Ibn Majah 2:332",    TekrarQuraan: null,
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/evening.webp'),
    AzkarModel(
        "اذكار المساء",
        "اللَّهُمَّ عَالِمَ الْغَيْبِ وَالشَّهَادَةِ فَاطِرَ السَّماوَاتِ وَالْأَرْضِ، رَبَّ كُلِّ شَيْءٍ وَمَلِيكَهُ، أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا أَنْتَ، أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي، وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ، وَأَنْ أَقْتَرِفَ عَلَى نَفْسِي سُوءاً أَوْ أَجُرَّهُ إِلَى مُسْلِمٍ.",
        "Allahumma AAalimal-ghaybi washshahadah, fatiras-samawati wal-ard, rabba kulli shayin wamaleekah, ashhadu an la ilaha illa ant, aAAoothu bika min sharri nafsee wamin sharrish-shaytani washirkih, waan aqtarifa AAala nafsee soo-an aw ajurrahu ila muslim.",
        "O Allah, Knower of the unseen and the seen, Creator of the heavens and the Earth, Lord and Sovereign of all things, I bear witness that none has the right to be worshipped except You. I take refuge in You from the evil of my soul and from the evil and shirk of the devil, and from committing wrong against my soul or bringing such upon another Muslim.",
        "At-Tirmidhi 3:142",    TekrarQuraan: null,
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/evening.webp'),
    AzkarModel(
        "اذكار المساء",
        "بِسْمِ اللَّهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الَْأرْضِ وَلَا فِي السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ. (ثلاثاً)",
        "Bismil-lahil-lathee la yadurru maAAas-mihi shay-on fil-ardi wala fis-sama-i wahuwas-sameeAAul-AAaleem.",
        "In the name of Allah with whose name nothing is harmed on earth nor in the heavens and He is The All-Seeing, The All-Knowing.(three times)",
        "Abu Dawud 4:323",    TekrarQuraan: 'ثلاثاً',
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/evening.webp'),
    AzkarModel(
        "اذكار المساء",
        "رَضِيتُ باللَّهِ رَبًّا، وَبِالْإِسْلَامِ دِيناً، وَبِمُحَمَّدٍ صَلَى اللَّهُ عَلِيهِ وَسَلَّمَ نَبِيَّاً. (ثلاثاً)",
        "Radeetu billahi rabban wabil-islami deenan wabiMuhammadin peace be upon to him nabiyya.",
        "I am pleased with Allah as a Lord, and Islam as a religion and Muhammad peace be upon to him as a Prophet. (three times)",
        "Abu Dawud 4:318",    TekrarQuraan: 'ثلاثاً',
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/evening.webp'),
    AzkarModel(
        "اذكار المساء",
        "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ عَدَدَ خَلْقِهِ، وَرِضَا نَفْسِهِ، وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ . (ثلاثاً)",
        "Subhanal-lahi wabihamdih, AAadada khalqihi warida nafsih, wazinata AAarshih, wamidada kalimatih.",
        "How perfect Allah is and I praise Him by the number of His creation and His pleasure, and by the weight of His throne, and the ink of His words. (three times)",
        "Muslim 4:2090",    TekrarQuraan: 'ثلاثاً',
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/evening.webp'),
    AzkarModel(
        "اذكار المساء",
        "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ . (مائة مرة)",
        "Subhanal-lahi wabihamdih.",
        "How perfect Allah is and I praise Him.(one hundred times)",
        "Muslim 4:2071",    TekrarQuraan: 'مائة مرة',
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/evening.webp'),
    AzkarModel(
        "اذكار المساء",
        "يَاحَيُّ، يَا قَيُّومُ، بِرَحْمَتِكَ أَسْتَغِيثُ، أَصْلِحْ لِي شَأْنِي كُلَّهُ، وَلَا تَكِلْنِي إِلَى نَفْسِي طَرْفَةَ عَيْنٍ.",
        "Ya hayyu ya qayyoom, birahmatika astagheeth, aslih lee sha/nee kullah, wala takilnee ila nafsee tarfata AAayn.",
        "O Ever Living, O Self-Subsisting and Supporter of all, by Your mercy I seek assistance, rectify for me all of my affairs and do not leave me to myself, even for the blink of an eye.",
        "Sahih-ut-Targhib wat- Tarhib 1:273",    TekrarQuraan: null,
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/evening.webp'),
    AzkarModel(
        "اذكار المساء",
        "لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ . (مائة مرة)",
        "La ilaha illal-lah, wahdahu la shareeka lah, lahul-mulku walahul-hamd, wahuwa AAala kulli shay-in qadeer.",
        "None has the right to be worshipped except Allah, alone, without partner, to Him belongs all sovereignty and praise, and He is over all things omnipotent. (one hundred times)",
        "Al-Bukhari 4:95, Muslim 4:2071",    TekrarQuraan: 'مائة مرة',
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/evening.webp'),
    AzkarModel(
        "اذكار المساء",
        "أَمْسَيْنَا وَأَمْسَى الْمُلْكُ لِلَّهِ رَبِّ الْعَالَمِينَ اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَ هَذِهِ اللَّيْلَةَ فَتْحَهَا وَنَصْرَهَا وَنُورَهَا وَبَرَكَتَهَا وَهُدَاهَا وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فِيهَا وَشَرِّ مَا بَعْدَهَا.",
        "Amsayna wa-amsal-mulku lillahi rabbil-AAalameen, allahumma innee as-aluka khayra hathal-yawm, fat-hahu, wanasrahu, wanoorahu, wabarakatahu, wahudahu, wa-aAAoothu bika min sharri ma feehi, washarri ma baAAdah.",
        "We have reached the evening and at this very time all sovereignty belongs to Allah, Lord of the worlds. O Allah, I ask You for the good of this day, its triumphs and its victories, its light and its blessings and its guidance, and I take refuge in You from the evil of this day and the evil that follows it.",
        "Abu Dawud 4:322",    TekrarQuraan: null,
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/evening.webp'),
    AzkarModel(isFavorite: null,'أذكار قبل النوم', 'بِاسْمِكَ رَبِّي وَضَعْتُ جَنْبِي، وَبِكَ أَرْفَعُهُ، فَإِنْ أَمْسَكْتَ نَفْسِي فَارْحَمْهَا، وَإِنْ أَرْسَلْتَهَا فَاحْفَظْهَا، بِمَا تَحْفَظُ بِهِ عِبَادَكَ الصَّالِحِينَ.', '''Bismika rabbee wadaAAtu janbee wabika arfaAAuh, fa-in amsakta nafsee farhamha, wa-in arsaltaha fahfathha bima tahfathu bihi AAibadakas-saliheen''', 'In Your name my Lord, I lie down and in Your name I rise, so if You should take my soul then have mercy upon it, and if You should return my soul then protect it in the manner You do so with Your righteous servants.', 'Al-Bukari 11:126', imageCategory: 'assets/homePage/before-sleeping avatar.webp', TekrarQuraan: null, basmalaQuraan: null),
    AzkarModel('أذكار قبل النوم', 'اللَّهمَّ إِنَّكَ خَلَقْتَ نَفْسِي وَأَنْتَ تَوَفَّاهَا لَكَ مَمَاتُهَا وَمَحْيَاهَا، إِنْ أَحْيَيْتَهَا فَاحْفَظْهَا، وَإِنْ أَمَتَّهَا فَاغْفِرْ لَهَا. اللَّهمَّ إِنِّي أَسْأَلُكَ العَافِيَةَ.', '''Allahumma innaka khalaqta nafsee wa-anta tawaffaha, laka mamatuha wamahyaha in ahyaytaha fahfathha, wa-in amattaha faghfir laha. Allahumma innee as-alukal-AAafiyah.''', 'O Allah, verily You have created my soul and You shall take its life, to You belongs its life and death. If You should keep my soul alive then protect it, and if You should take its life then forgive it. O Allah, I ask You to grant me good health.’', 'Al-Muslim 4:2083', imageCategory: 'assets/homePage/before-sleeping.jpg', TekrarQuraan: null, basmalaQuraan: null, isFavorite: null),
    AzkarModel(isFavorite: null,'أذكار قبل النوم', 'اللَّهُمَّ قِنِي عَذَابَكَ يَوْمَ تَبْعَثُ عِبَادَكَ.', '''Allahumma qinee AAathabaka yawma tabAAathu AAibadak.''', 'O Allah, protect me from Your punishment on the day Your servants are resurrected.', 'Abu Dawud 4:311', imageCategory: 'assets/homePage/before-sleeping.jpg', TekrarQuraan: null, basmalaQuraan: null),
    AzkarModel(isFavorite: null,'أذكار قبل النوم', 'اللَّهُمَّ بِاسْـمِكَ أَمُوتُ وَأَحْيَا', '''Bismikal-lahumma amootu wa-ahya.''', 'In Your name O Allah, I live and die.', 'Al-Bukhari 11:113, Muslim 4:2083', imageCategory: 'assets/homePage/before-sleeping.jpg', TekrarQuraan: null, basmalaQuraan: null),
    AzkarModel(isFavorite: null,'أذكار قبل النوم', 'اَلْحَمْدُ للهِ الَّذِي أَطْعَمَنَا وَسَقَانَا، وَكَفَانَا، وَآوَانَا، فَكَمْ مِمَّنْ لا كَافِيَ لَه ُُ وَلا مُؤْوِي.', '''Alhamdu lillahil-lathee atAAamana wasaqana, wakafana, wa-awana, fakam mimman la kafiya lahu wala mu/wee.''', 'All praise is for Allah, Who fed us and gave us drink, and Who is sufficient for us and has sheltered us, for how many have none to suffice them or shelter them.', 'Muslim 4: 2083', imageCategory: 'assets/homePage/before-sleeping.jpg', TekrarQuraan: null, basmalaQuraan: null),
    AzkarModel(isFavorite: null,'أذكار قبل النوم', 'اللَّهمَّ عَالِمَ الغَيْبِ وَالشَّهَادَةِ فَاطِرَ السَّمَاوَاتِ وَالأَرْضِ رَبَّ كُلِّ شَيء ٍ وَمَلِيْكَهُ، أَشْهَدُ أَنْ لا إِلَهََ إِلاَّ أَنْتَ، أَعُوْذُ بِكَ مِنْ شَرِّ نَفْسِي، وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ، وَأَنْ أَقْتَرِفَ عَلَى نَفْسِي سُوْءاً أَوْ أَجُرَّهُ~ُ إِلَى مُسْلِم.', '''Allahumma AAalimal-ghaybi washshahadah, fatiras-samawati wal-ard, rabba kulli shayin wamaleekah, ashhadu an la ilaha illa ant, aAAoothu bika min sharri nafsee wamin sharrish-shaytani washirkih, wa-an aqtarifa AAala nafsee soo-an aw ajurrahu ila muslim.''', 'O Allah, Knower of the seen and the unseen, Creator of the heavens and the earth, Lord and Sovereign of all things I bear witness that none has the right to be worshipped except You. I take refuge in You from the evil of my soul and from the evil and shirk of the devil, and from committing wrong against my soul or bringing such upon another Muslim.’ shirk: to associate others with Allah in those things which are specific to Him. This can occur in (1) belief, e.g. to believe that other than Allah has the power to benefit or harm, (2) speech, e.g. to swear by other than Allah and (3) action, e.g. to bow or prostrate to other than Allah.', 'Abu Dawud 4:317', imageCategory: 'assets/homePage/before-sleeping.jpg', TekrarQuraan: null, basmalaQuraan: null),
    AzkarModel(isFavorite: null,'أذكار قبل النوم', 'اللَّهُمَّ أَسْلَمْتُ نَفْسِي إِلَيْكَ، وَفَوَّضْتُ أَمْرِي إِلَيْكَ، وَوَجَّهْتُ وَجْهِي إِلَيْكَ، وَأَلْجَأْتُ ظَهْرِي إِلَيْكَ، رَغْبَةً وَرَهْبَةً إِلَيْكَ، لَا مَلْجَأَ وَلّا مَنْجَا مِنْكَ إِلَّا إِلَيْكَ، آمَنْتُ بِكِتَابِكَ وَبِنَبِيِّكَ الَّذِي أَرْسَلْتَ.', '''Allahumma aslamtu nafsee ilayk, wafawwadtu amree ilayk, wawajjahtu wajhee ilayk, wa-alja/tu thahree ilayk, raghbatan warahbatan ilayk, la maljaa wala manja minka illa ilayk, amantu bikitabikal-lathee anzalt, wabinabiyyikal-lathee arsalt.''', 'O Allah, I submit my soul unto You, and I entrust my affair unto You, and I turn my face towards You, and I totally rely on You, in hope and fear of You. Verily there is no refuge nor safe haven from You except with You. I believe in Your Book which You have revealed and in Your Prophet whom You have sent.', 'Al-Bukhari 11:113, Muslim 4:2081', imageCategory: 'assets/homePage/before-sleeping.jpg', TekrarQuraan: null, basmalaQuraan: null),
    AzkarModel(isFavorite: null,'أذكار قبل النوم', 'اللهُ لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلَّا بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلَا يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلَّا بِمَا شَاءَ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ وَلَا يَئُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ', '''Allaahu laa 'ilaaha 'illaa Huwal-Hayyul-Qayyoom, laa ta'khuthuhu sinatun wa laa nawm, lahu maa fis-samaawaati wa maafil-'ardh, man thal-lathee yashfa'u 'indahu 'illaa bi'ithnih, ya'lamu maa bayna 'aydeehim wa maa khalfahum, wa laa yuheetoona bishay'im-min 'ilmihi 'illaa bimaa shaa'a, wasi'a kursiyyuhus-samaawaati wal'ardh, wa laa ya'ooduhu hifdhuhumaa, wa Huwal-'Aliyyul- 'Adheem''', 'Allah! There is none worthy of worship but He, the Ever Living, the One Who sustains and protects all that exists. Neither slumber nor sleep overtakes Him. To Him belongs whatever is in the heavens and whatever is on the earth. Who is he that can intercede with Him except with His Permission? He knows what happens to them in this world, and what will happen to them in the Hereafter. And they will never compass anything of His Knowledge except that which He wills. His Throne extends over the heavens and the earth, and He feels no fatigue in guarding and preserving them. And He is the Most High, the Most Great.', 'Surah Al-Baqarah - 2:255', imageCategory: 'assets/homePage/before-sleeping.jpg', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أذكار الإستيقاظ من النوم', 'الحَمْـدُ لِلّهِ الّذي أَحْـيانا بَعْـدَ ما أَماتَـنا وَإليه النُّـشور.', '''al7َmْـdُ lِlّhِ alّzy  أَ7ْـy ana bَ3ْـdَ ma أَmatَـna  wَely h alnُّـsh wr.''', 'All praise is due to Allah, who has given us life after He caused us to die, and to Him is the resurrection.', 'Sahih al-Bukhari', imageCategory: 'assets/homePage/Waking-up-same-time.webp', TekrarQuraan: null, basmalaQuraan: null),
    AzkarModel(isFavorite: null,'أذكار الإستيقاظ من النوم', 'الحمدُ للهِ الذي عافاني في جَسَدي وَرَدّ عَليّ روحي وَأَذِنَ لي بِذِكْرِه. ', '''al7mdُ llhِ alzy  3afany  fy  gَsَdy   wَrَdّ 3َly ّ r w7y   wَأَzِnَ ly  bِzِkْrِh.''', 'All praise is due to Allah, who has granted me health in my body, returned my soul to me, and permitted me to remember Him.', 'al termiziy', imageCategory: 'assets/homePage/Waking-up-same-time.webp', TekrarQuraan: null, basmalaQuraan: null),
    AzkarModel(isFavorite: null,'أذكار الإستيقاظ من النوم', 'لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شَـريكَ له، لهُ المُلـكُ ولهُ الحَمـد، وهوَ على كلّ شيءٍ قدير، سُـبْحانَ اللهِ، والحمْـدُ لله ، ولا إلهَ إلاّ اللهُ واللهُ أكبَر، وَلا حَولَ وَلا قوّة إلاّ باللّهِ العليّ العظيم. رَبِّ اغْفرْ لي.', '''la elhَ elaّ allّhُ  wَ7ْـdَhُ la shَـry kَ lh، lhُ almُlـkُ  wlhُ al7َmـd،  wh wَ 3la  klّ shy 2ٍ 8dy r، sُـbْ7anَ allahِ، wl7mْـdُ llh ،  wla elhَ elaّ allahُ  wallahُ أkbَr،  wَla 7َ wlَ  wَla 8 wّh elaّ ballّhِ al3ly ّ al3zy m. rَbِّ a4ْfrْ ly .''', 'There is no deity but Allah, alone with no partner. To Him belongs the dominion and to Him belongs the praise, and He is capable of all things. Glory be to Allah, and all praise is due to Allah. There is no deity but Allah, and Allah is the Greatest. There is no power and no strength except with Allah, the Most High, the Most Great. O Lord, forgive me.', 'Sahih al-Bukhari', imageCategory: 'assets/homePage/Waking-up-same-time.webp', TekrarQuraan: null, basmalaQuraan: null),
    AzkarModel(isFavorite: null,'أذكار الإستيقاظ من النوم', 'إِنَّ فِي خَلۡقِ ٱلسَّمَٰوَٰتِ وَٱلۡأَرۡضِ وَٱخۡتِلَٰفِ ٱلَّيۡلِ وَٱلنَّهَارِ لَأٓيَٰتٖ لِّأُوْلِي ٱلۡأَلۡبَٰبِ (190) ٱلَّذِينَ يَذۡكُرُونَ ٱللَّهَ قِيَٰمٗا وَقُعُودٗا وَعَلَىٰ جُنُوبِهِمۡ وَيَتَفَكَّرُونَ فِي خَلۡقِ ٱلسَّمَٰوَٰتِ وَٱلۡأَرۡضِ رَبَّنَا مَا خَلَقۡتَ هَٰذَا بَٰطِلٗا سُبۡحَٰنَكَ فَقِنَا عَذَابَ ٱلنَّارِ (191) رَبَّنَآ إِنَّكَ مَن تُدۡخِلِ ٱلنَّارَ فَقَدۡ أَخۡزَيۡتَهُۥۖ وَمَا لِلظَّٰلِمِينَ مِنۡ أَنصَارٖ (192) رَّبَّنَآ إِنَّنَا سَمِعۡنَا مُنَادِيٗا يُنَادِي لِلۡإِيمَٰنِ أَنۡ ءَامِنُواْ بِرَبِّكُمۡ فَـَٔامَنَّاۚ رَبَّنَا فَٱغۡفِرۡ لَنَا ذُنُوبَنَا وَكَفِّرۡ عَنَّا سَيِّـَٔاتِنَا وَتَوَفَّنَا مَعَ ٱلۡأَبۡرَارِ (193) رَبَّنَا وَءَاتِنَا مَا وَعَدتَّنَا عَلَىٰ رُسُلِكَ وَلَا تُخۡزِنَا يَوۡمَ ٱلۡقِيَٰمَةِۖ إِنَّكَ لَا تُخۡلِفُ ٱلۡمِيعَادَ (194) فَٱسۡتَجَابَ لَهُمۡ رَبُّهُمۡ أَنِّي لَآ أُضِيعُ عَمَلَ عَٰمِلٖ مِّنكُم مِّن ذَكَرٍ أَوۡ أُنثَىٰۖ بَعۡضُكُم مِّنۢ بَعۡضٖۖ فَٱلَّذِينَ هَاجَرُواْ وَأُخۡرِجُواْ مِن دِيَٰرِهِمۡ وَأُوذُواْ فِي سَبِيلِي وَقَٰتَلُواْ وَقُتِلُواْ لَأُكَفِّرَنَّ عَنۡهُمۡ سَيِّـَٔاتِهِمۡ وَلَأُدۡخِلَنَّهُمۡ جَنَّٰتٖ تَجۡرِي مِن تَحۡتِهَا ٱلۡأَنۡهَٰرُ ثَوَابٗا مِّنۡ عِندِ ٱللَّهِۚ وَٱللَّهُ عِندَهُۥ حُسۡنُ ٱلثَّوَابِ (195) لَا يَغُرَّنَّكَ تَقَلُّبُ ٱلَّذِينَ كَفَرُواْ فِي ٱلۡبِلَٰدِ (196) مَتَٰعٞ قَلِيلٞ ثُمَّ مَأۡوَىٰهُمۡ جَهَنَّمُۖ وَبِئۡسَ ٱلۡمِهَادُ (197) لَٰكِنِ ٱلَّذِينَ ٱتَّقَوۡاْ رَبَّهُمۡ لَهُمۡ جَنَّٰتٞ تَجۡرِي مِن تَحۡتِهَا ٱلۡأَنۡهَٰرُ خَٰلِدِينَ فِيهَا نُزُلٗا مِّنۡ عِندِ ٱللَّهِۗ وَمَا عِندَ ٱللَّهِ خَيۡرٞ لِّلۡأَبۡرَارِ (198) وَإِنَّ مِنۡ أَهۡلِ ٱلۡكِتَٰبِ لَمَن يُؤۡمِنُ بِٱللَّهِ وَمَآ أُنزِلَ إِلَيۡكُمۡ وَمَآ أُنزِلَ إِلَيۡهِمۡ خَٰشِعِينَ لِلَّهِ لَا يَشۡتَرُونَ بِـَٔايَٰتِ ٱللَّهِ ثَمَنٗا قَلِيلًاۚ أُوْلَٰٓئِكَ لَهُمۡ أَجۡرُهُمۡ عِندَ رَبِّهِمۡۗ إِنَّ ٱللَّهَ سَرِيعُ ٱلۡحِسَابِ (199) يَٰٓأَيُّهَا ٱلَّذِينَ ءَامَنُواْ ٱصۡبِرُواْ وَصَابِرُواْ وَرَابِطُواْ وَٱتَّقُواْ ٱللَّهَ لَعَلَّكُمۡ تُفۡلِحُونَ (200)', '''eِnَّ fِy  5َlۡ8ِ ٱlsَّmَٰ wَٰtِ  wَٱlۡأَrۡdِ  wَٱ5ۡtِlَٰfِ ٱlَّy ۡlِ  wَٱlnَّhَarِ lَأٓy َٰtٖ lِّأُ wْlِy  ٱlۡأَlۡbَٰbِ (190) ٱlَّzِy nَ y َzۡkُrُ wnَ ٱllَّhَ 8ِy َٰmٗa  wَ8ُ3ُ wdٗa  wَ3َlَa ٰ gُnُ wbِhِmۡ  wَy َtَfَkَّrُ wnَ fِy  5َlۡ8ِ ٱlsَّmَٰ wَٰtِ  wَٱlۡأَrۡdِ rَbَّnَa mَa 5َlَ8ۡtَ hَٰzَa bَٰ6ِlٗa sُbۡ7َٰnَkَ fَ8ِnَa 3َzَabَ ٱlnَّarِ (191) rَbَّnَaٓ eِnَّkَ mَn tُdۡ5ِlِ ٱlnَّarَ fَ8َdۡ أَ5ۡzَy ۡtَhُۥۖ  wَmَa lِlzَّٰlِmِy nَ mِnۡ أَn9َarٖ (192) rَّbَّnَaٓ eِnَّnَa sَmِ3ۡnَa mُnَadِy ٗa y ُnَadِy  lِlۡeِy mَٰnِ أَnۡ 2َamِnُwْ bِrَbِّkُmۡ fَـَٔamَnَّaۚ rَbَّnَa fَٱ4ۡfِrۡ lَnَa zُnُ wbَnَa  wَkَfِّrۡ 3َnَّa sَy ِّـَٔatِnَa  wَtَ wَfَّnَa mَ3َ ٱlۡأَbۡrَarِ (193) rَbَّnَa  wَ2َatِnَa mَa  wَ3َdtَّnَa 3َlَa ٰ rُsُlِkَ  wَlَa tُ5ۡzِnَa y َ wۡmَ ٱlۡ8ِy َٰmَhِۖ eِnَّkَ lَa tُ5ۡlِfُ ٱlۡmِy 3َadَ (194) fَٱsۡtَgَabَ lَhُmۡ rَbُّhُmۡ أَnِّy  lَaٓ أُdِy 3ُ 3َmَlَ 3َٰmِlٖ mِّnkُm mِّn zَkَrٍ أَ wۡ أُnthَa ٰۖ bَ3ۡdُkُm mِّnۢ bَ3ۡdٖۖ fَٱlَّzِy nَ hَagَrُwْ  wَأُ5ۡrِgُwْ mِn dِy َٰrِhِmۡ  wَأُ wzُwْ fِy  sَbِy lِy   wَ8َٰtَlُwْ  wَ8ُtِlُwْ lَأُkَfِّrَnَّ 3َnۡhُmۡ sَy ِّـَٔatِhِmۡ  wَlَأُdۡ5ِlَnَّhُmۡ gَnَّٰtٖ tَgۡrِy  mِn tَ7ۡtِhَa ٱlۡأَnۡhَٰrُ thَ wَabٗa mِّnۡ 3ِndِ ٱllَّhِۚ  wَٱllَّhُ 3ِndَhُۥ 7ُsۡnُ ٱlthَّ wَabِ (195) lَa y َ4ُrَّnَّkَ tَ8َlُّbُ ٱlَّzِy nَ kَfَrُwْ fِy  ٱlۡbِlَٰdِ (196) mَtَٰ3ٞ 8َlِy lٞ thُmَّ mَأۡ wَa ٰhُmۡ gَhَnَّmُۖ  wَbِyۡsَ ٱlۡmِhَadُ (197) lَٰkِnِ ٱlَّzِy nَ ٱtَّ8َ wۡaْ rَbَّhُmۡ lَhُmۡ gَnَّٰtٞ tَgۡrِy  mِn tَ7ۡtِhَa ٱlۡأَnۡhَٰrُ 5َٰlِdِy nَ fِy hَa nُzُlٗa mِّnۡ 3ِndِ ٱllَّhِۗ  wَmَa 3ِndَ ٱllَّhِ 5َy ۡrٞ lِّlۡأَbۡrَarِ (198)  wَeِnَّ mِnۡ أَhۡlِ ٱlۡkِtَٰbِ lَmَn y ُoۡmِnُ bِٱllَّhِ  wَmَaٓ أُnzِlَ eِlَy ۡkُmۡ  wَmَaٓ أُnzِlَ eِlَy ۡhِmۡ 5َٰshِ3ِy nَ lِlَّhِ lَa y َshۡtَrُ wnَ bِـَٔay َٰtِ ٱllَّhِ thَmَnٗa 8َlِy lًaۚ أُ wْlَٰٓyِkَ lَhُmۡ أَgۡrُhُmۡ 3ِndَ rَbِّhِmۡۗ eِnَّ ٱllَّhَ sَrِy 3ُ ٱlۡ7ِsَabِ (199) y َٰٓأَy ُّhَa ٱlَّzِy nَ 2َamَnُwْ ٱ9ۡbِrُwْ  wَ9َabِrُwْ  wَrَabِ6ُwْ  wَٱtَّ8ُwْ ٱllَّhَ lَ3َlَّkُmۡ tُfۡlِ7ُ wnَ (200)
''', '''Indeed, in the creation of the heavens and the earth, and the alternation of night and day, there are signs for those of understanding (190) who remember Allah while standing, sitting, and lying on their sides and reflect on the creation of the heavens and the earth: "Our Lord, You did not create this without purpose; exalted are You! Protect us from the punishment of the Fire" (191) Our Lord, indeed, whoever You admit to the Fire - You have disgraced him; and for the wrongdoers there are no helpers (192) Our Lord, indeed, we have heard a caller calling to faith, 'Believe in your Lord,' and we have believed. Our Lord, forgive us our sins and remove from us our misdeeds and let us die with the righteous (193) Our Lord, and grant us what You promised us through Your messengers and do not disgrace us on the Day of Resurrection. Indeed, You do not fail in the appointment" (194) So their Lord responded to them, "Never will I allow to be lost the work of any of you, whether male or female; you are of one another. So those who emigrated or were driven out of their homes and suffered in My cause and fought and were killed - I will surely remove from them their misdeeds and admit them to gardens beneath which rivers flow, as reward from their Lord, and Allah has with Him the best reward" (195) Let not the disbelievers' unhurried movement throughout the land deceive you (196) It is but a brief enjoyment; then their refuge is Hell, and wretched is the resting place (197) But indeed, for those who have feared their Lord are gardens beneath which rivers flow, wherein they will abide eternally, a hospitality from Allah; and what is with Allah is best for the righteous (198) And indeed, among the People of the Scripture are those who believe in Allah and what has been revealed to you and what has been revealed to them, humbling themselves before Allah. They do not exchange the verses of Allah for a small price. Those are the ones who will have their reward with their Lord. Indeed, Allah is swift in account (199) O you who have believed, persevere and endure and remain stationed and fear Allah that you may be successful (200)''', 'آخر عشر آيات من سورة آل عمران', imageCategory: 'assets/homePage/Waking-up-same-time.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(
        'اذكار بعد الصلاة',
        'أَسْتَغْفِرُ اللَّهَ . (ثَلاثاً) اللَّهُمَّ أَنْتَ السَّلاَمُ، وَمِنْكَ السَّلَامُ، تَبَارَكْتَ يَا ذَا الْجَلَالِ وَالإِكْرَامِ .',
        'Astaghfirul-lah (three times) Allahumma antas-salam waminkas-salam, tabarakta ya thal-jalali wal-ikram.',
        'I ask Allah for forgiveness.(three times) O Allah, You are As-Salam and from You is all peace, blessed are You, O Possessor of majesty and honour.’ AS-Salam: The One Who is free from all defects and deficiencies.',
        'Muslim 1:414',    TekrarQuraan: null,
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/Remembrance after prayer.jpg'),
    AzkarModel(
        'اذكار بعد الصلاة',
        'لَا إلَهَ إِلاَّ اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، اللَّهُمَّ لَا مَانِعَ لِمَا أَعْطَيْتَ، وَلَا مُعْطِيَ لِمَا مَنَعْتَ، وَلَا يَنْفَعُ ذَا الْجَدِّ مِنْكَ الْجَدُّ.',
        'La ilaha illal-lahu wahdahu la shareeka lah, lahul-mulku walahul-hamd, wahuwa AAala kulli shayin qadeer, allahumma la maniAAa lima aAAtayt, wala muAAtiya lima manaAAt, wala yanfaAAu thal-jaddi minkal-jad.',
        'None has the right to be worshipped except Allah, alone, without partner, to Him belongs all sovereignty and praise and He is over all things omnipotent.O Allah, none can prevent what You have willed to bestow and none can bestow what You have willed to prevent, and no wealth or majesty can benefit anyone, as from You is all wealth and majesty.',
        'Al-Bukhari 1:255, Muslim 414',    TekrarQuraan: null,
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/Remembrance after prayer.jpg'),
    AzkarModel(
        'اذكار بعد الصلاة',
        'سُبْحَانَ اللَّهِ، وَالْحَمْدُ لِلَّهِ، وَاللَّهُ أَكْبَرُ. (ثلاثاً وثلاثين) لَا إِلَهَ إِلاَّ اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ .',
        'Subhanal-lah walhamdu lillah, wallahu akbar (thirty-three times). La ilaha illal-lahu wahdahu la shareeka lah, lahul-mulku walahul-hamd, wahuwa AAala kulli shayin qadeer.',
        'How perfect Allah is, all praise is for Allah, and Allah is the greatest.’ (thirty-three times) None has the right to be worshipped except Allah, alone, without partner, to Him belongs all sovereignty and praise and He is over all things omnipotent.',
        'Muslim 1:415',    TekrarQuraan: null,
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/Remembrance after prayer.jpg'),
    AzkarModel(
        'اذكار بعد الصلاة',
        'قُلْ هُوَ اللهُ أَحَدٌ. اللهُ الصَّمَدُ. لَمْ يَلِدْ وَلَمْ يُولَدْ. وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ. [ الإِخْـلاصْ ] قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ. مِنْ شَرِّ مَا خَلَقَ. وَمِنْ شَرِّ غَاسِقٍ إِذَا وَقَبَ. وَمِنْ شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ. وَمِنْ شَرِّ حَاسِدٍ إِذَا حَسَدَ [ الفَلَـقْ ] قُلْ أَعُوذُ بِرَبِّ النَّاسِ. مَلِكِ النَّاسِ. إِلَهِ النَّاسِ. مِنْ شَرِّ الْوَسْوَاسِ الْخَنَّاسِ. الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ. مِنَ الْجِنَّةِ وَالنَّاسِ [ الـنّاس ] (ثلاث مرات بعد صلاتي الفجر والمغرب. ومرة بعد الصلوات الأخرى)',
        '''Qul Huwa-llahu ‘Ahadn Allahus-SamadnLam Yalid Wa Lam YuladnWalam Yakul-La-Hu-Kufuwan ‘Ahad [Al-Ikhlas] Qul ‘A’udhu Bi-Rabbil-FalaqnMin Sharri Ma KhalaqnWa Min Sharri Ghasiqin ‘Idha WaqabnWa Min Sharri-Naffathati Fil-‘UqadinWa Min Sharri Hasidin ‘Idha Hasad [Al-Falaq] Qul ‘A’udhu Bi-Rabbin-Nasn Malikin-Nasn Ilahin-Nasn Min-Sharril-Waswasil-Khan-Nasn Al-Ladhi Yuwas-wisu Fee Sudurin-NasnMina Al-Jinnati Wan-Nas [An-Nas]''',
        'Say : He is Allah,(the) One, Allahus-Samad ( The Self-Sufficient Master, Whom all creatures need, He neither eats nor drinks ). He begots not , nor was He begotten; And there is none co-equal or comparable unto Him. [Al-Ikhlas] Say : I seek refuge with ( Allah ) the Lord of the daybreak, From the evil of what He has created; And from the evil of the darkening ( night ) as it comes with its darkness; ( or the moon as it sets or goes away ). And from the evil of the witchcrafts when they blow in the knots, And from the evil of the envier when he envies. [Al-Falaq] Say : I seek refuge with (Allah ) the lord of mankind, The king of mankind, The Ilah ( God ) of mankind, From the evil of the whisperer ( devi l who whispers evil in the hearts of men) , who withdraws ( from his whispering in one’s heart after one remembers Allah ), Who whispers in the breasts of mankind , Of jinns and men. [An-Nas] After morning and evening prayers, 3 times. After the other prayers 1 time.',
        '''Abu Dawud 2:86, An-Nasa'i 3:68''',    TekrarQuraan: 'ثلاث مرات بعد صلاتي الفجر والمغرب. ومرة بعد الصلوات الأخرى',
        basmalaQuraan: true,isFavorite: null,

        imageCategory: 'assets/homePage/Remembrance after prayer.jpg'),
    AzkarModel(
        'اذكار بعد الصلاة',
        'اللَّهُ لاَ إِلَهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَىْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاءَ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ',
        '''Allaahu laa 'ilaaha 'illaa Huwal-Hayyul-Qayyoom, laa ta'khuthuhu sinatun wa laa nawm, lahu maa fis-samaawaati wa maafil-'ardh, man thal-lathee yashfa'u 'indahu 'illaa bi'ithnih, ya'lamu maa bayna 'aydeehim wa maa khalfahum, wa laa yuheetoona bishay'im-min 'ilmihi 'illaa bimaa shaa'a, wasi'a kursiyyuhus-samaawaati wal'ardh, wa laa ya'ooduhu hifdhuhumaa, wa Huwal-'Aliyyul- 'Adheem.''',
        'Allah! There is none worthy of worship but He, the Ever Living, the One Who sustains and protects all that exists. Neither slumber nor sleep overtakes Him. To Him belongs whatever is in the heavens and whatever is on the earth. Who is he that can intercede with Him except with His Permission? He knows what happens to them in this world, and what will happen to them in the Hereafter. And they will never compass anything of His Knowledge except that which He wills. His Throne extends over the heavens and the earth, and He feels no fatigue in guarding and preserving them. And He is the Most High, the Most Great.',
        'Surah Al-Baqarah - 2:255',    TekrarQuraan: null,
        basmalaQuraan: true,isFavorite: null,

        imageCategory: 'assets/homePage/Remembrance after prayer.jpg'),
    AzkarModel(
        'اذكار بعد الصلاة',
        'لَا إِلَهَ إِلَّا اللَّهُ وَحَدْهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ يُحْيِي وَيُمِيتُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ . (عَشْر مَرّات بَعْدَ المَغْرِب وَالصّـبْح )',
        'La ilaha illal-lahu wahdahu la shareeka lah, lahul-mulku walahul-hamd, yuhyee wayumeet, wahuwa AAala kulli shayin qadeer.(ten times after the maghrib & fajr prayers)',
        'None has the right to be worshipped except Allah, alone, without partner, to Him belongs all sovereignty and praise, He gives life and causes death and He is over all things omnipotent. (ten times after the maghrib and fajr prayers)',
        'At-Tirmidhi 5:515',    TekrarQuraan: 'عَشْر مَرّات بَعْدَ المَغْرِب وَالصّـبْح',
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/Remembrance after prayer.jpg'),
    AzkarModel(
        'اذكار بعد الصلاة',
        'اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْماً نَافِعاً وَرِزْقاً طَيِّباً، وَعَمَلاً مُتَقَبَّلاً . (بَعْد السّلامِ من صَلاةِ الفَجْر )',
        'Allahumma innee as-aluka AAilman nafiAAan, warizqan tayyiban, waAAamalan mutaqabbalan.(after salam from fajr prayer).',
        'O Allah, I ask You for knowledge which is beneficial and sustenance which is good, and deeds which are acceptable. (To be said after giving salam for the fajr prayer)',
        'Ibn Majah 1:152',    TekrarQuraan: 'بَعْد السّلامِ من صَلاةِ الفَجْر',
        basmalaQuraan: null,isFavorite: null,

        imageCategory: 'assets/homePage/Remembrance after prayer.jpg'),
    AzkarModel(
      "الأدعية اليومية", // Category
      "اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْماً نَافِعاً، وَرِزْقاً طَيِّباً، وَعَمَلاً مُتَقَبَّلاً", // Arabic text
      "Allaahumma 'innee 'as'aluka 'ilman naafi'an, wa rizqan tayyiban, wa 'amalan mutaqabbalan", // Transliteration
      "O Allah, I ask You for knowledge that is of benefit , a good provision , and deeds that will be accepted.", // English translation
      "Ibn Majah: 925", // Source
      imageCategory: 'assets/homePage/daily supplications.png', // Image path (adjust as needed)
      TekrarQuraan: null,
      basmalaQuraan: null,isFavorite: null,
    ),
    AzkarModel(
      "الأدعية اليومية",
      "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْجَنَّةَ وَأَعُوذُ بِكَ مِنَ النَّارِ",
      "Allaahumma 'innee 'as'alukal-jannata wa 'a'oothu bika minan-naar",
      "O Allah , I ask You for Paradise and seek Your protection from the Fire.",
      "Abu Dawud: 792",
      imageCategory: 'assets/homePage/daily_supplications.jpg',
      TekrarQuraan: null,
      basmalaQuraan: null,isFavorite: null,
    ),
    AzkarModel(
      "الأدعية اليومية",
      "سُبْحَانَ اللهِ ، والْحَمْدُ للهِ ، وَاللهُ أَكْبَرُ",
      "Subhaanallaahi, Walhamdu lillaahi, Wallaahu 'Akbar",
      "Glory is to Allah, praise is to Allah, Allah is the Most Great!",
      "Muslim 4:2091",
      imageCategory: 'assets/homePage/daily_supplications.jpg',
      TekrarQuraan: null,
      basmalaQuraan: null,isFavorite: null,
    ),
    AzkarModel(
      "الأدعية اليومية",
      "لاَ إِلَهَ إِلَّا أنْـت سُـبْحانَكَ إِنِّي كُنْـتُ مِنَ الظّـالِميـن",
      "Laa 'ilaaha 'illaa 'Anta subhaanaka 'innee kuntu minadh-dhaalimeen",
      "There is none worthy of worship but You, glory is to You. Surely, I was among the wrongdoers.",
      "Surah Al-Anbiya - 21:87",
      imageCategory: 'assets/homePage/daily_supplications.jpg',
      TekrarQuraan: null,
      basmalaQuraan: true,isFavorite: null,
    ),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبَّنَا تَقَبَّلْ مِنَّا إِنَّكَ أَنْتَ السَّمِيعُ العَلِيمُ', 'Rabbana taqabbal minna innaka antas Sameeaul Aleem', 'Our Lord! Accept (this service) from us: For Thou art the All-Hearing, the All-knowing.', 'Surah Al-Baqarah - 2:127', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبَّنَا وَاجْعَلْنَا مُسْلِمَيْنِ لَكَ وَمِن ذُرِّيَّتِنَا أُمَّةً مُّسْلِمَةً لَّكَ وَأَرِنَا مَنَاسِكَنَا وَتُبْ عَلَيْنَآ إِنَّكَ أَنتَ التَّوَّابُ الرَّحِيمُ', '''Rabbana wa-j'alna Muslimayni laka wa min Dhurriyatina 'Ummatan Muslimatan laka wa 'Arina Manasikana wa tub 'alayna 'innaka 'antat-Tawwabu-Raheem''', 'Our Lord! Make of us Muslims, bowing to Thy (Will), and of our progeny a people Muslim, bowing to Thy (will); and show us our place for the celebration of (due) rites; and turn unto us (in Mercy); for Thou art the Oft-Returning, Most Merciful.', 'Surah Al-Baqarah - 2:128', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبَّنَآ اٰتِنَا فِي الدُّنْيَا حَسَنَةً وَّفِي الْاٰخِرَةِ حَسَـنَةً وَّقِنَا عَذَابَ النَّارِ', 'Rabbanaaa Aatinaa Fiddunyaa H’asanata Wa Fil Aakhirati H’asanata Wa Qinaa A’d’aaban Naar', 'Our Lord! Give us in this world that which is good and in the Hereafter that which is good, and save us from the torment of the Fire!', 'Surah Al-Baqarah - 2:201', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبَّنَا أَفْرِغْ عَلَيْنَا صَبْراً وَثَبِّتْ أَقْدَامَنَا وَانصُرْنَا عَلَى القَوْمِ الكَافِرِينَ', '''Rabbana afrigh 'alayna sabran wa thabbit aqdamana wansurna 'alal-qawmil-kafirin''', 'Our Lord! Bestow on us endurance, make our foothold sure, and give us help against the disbelieving folk.', 'Al-Baqarah - 2:250', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'ۭرَبَّنَا لَا تُؤَاخِذْنَآ اِنْ نَّسِيْنَآ اَوْ اَخْطَاْنَا ۚ رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَآ اِصْرًا كَمَا حَمَلْتَهٗ عَلَي الَّذِيْنَ مِنْ قَبْلِنَا ۚ رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهٖ ۚ وَاعْفُ عَنَّا ۪ وَاغْفِرْ لَنَا ۪ وَارْحَمْنَا ۪ اَنْتَ مَوْلٰىنَا فَانْــصُرْنَا عَلَي الْقَوْمِ الْكٰفِرِيْنَ', '''Rabbanaa Laa Too-Akhid’naaa In-Naseenaa Aw Akht’aanaa Rabbanaa wa Laa Tah’mil A’laynaaa Is’ran Kamaa Ha’maltahoo A’lal Lad’eena min Qablinaa Rabbanaa wa Laa Tuh’ammilnaa Maa Laa T’aaqata Lanaa Bih Wa’-Fu A’nnaa Waghfirlanaa Warh’amnaa Anta Mawlaanaa Fans’urnaa A’lal Qawmil Kaafireen''', 'Allah burdens not a person beyond his scope. He gets reward for that (good) which he has earned, and he is punished for that (evil) which he has earned. "Our Lord! Punish us not if we forget or fall into error, our Lord! Lay not on us a burden like that which You did lay on those before us; our Lord! Put not on us a burden greater than we have strength to bear. Pardon us and grant us Forgiveness. Have mercy on us. You are our Maula (Patron, Supporter and Protector, etc.) and give us victory over the disbelieving people."', 'Surah Al-Baqarah - 2:286', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبَّنَا لَا تُزِغْ قُلُوْبَنَا بَعْدَ اِذْ ھَدَيْتَنَا وَھَبْ لَنَا مِنْ لَّدُنْكَ رَحْمَةً ۚ اِنَّكَ اَنْتَ الْوَھَّابُ', 'Rabbanaa Laa Tuzigh Quloobanaa Ba’-Da Id’hadaytanaa Wa Hab Lanaa Mil Ladunka Rah’mah Innaka Antal Wahaab', 'Our Lord! Let not our hearts deviate (from the truth) after You have guided us, and grant us mercy from You. Truly, You are the Bestower.', 'Surah Al-Imran - 3:8', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبَّنَا إِنَّكَ جَامِعُ النَّاسِ لِيَوْمٍ لاَّ رَيْبَ فِيهِ إِنَّ اللّهَ لاَ يُخْلِفُ الْمِيعَادَ', '''Rabbana innaka jami'unnasi li-Yawmil la rayba fi innAllaha la yukhliful mi'aad''', 'Our Lord, surely You will gather the people for a Day about which there is no doubt. Indeed, Allah does not fail in His promise.', 'Surah Al-Imran - 3:9', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبَّنَآ اِنَّنَآ اٰمَنَّا فَاغْفِرْ لَنَا ذُنُوْبَنَا وَقِنَا عَذَابَ النَّارِ', '''Rabbana innana amanna faghfir lana dhunuubana wa qinna 'adhaban-Naar''', 'Our Lord! We have indeed believed, so forgive us our sins and save us from the punishment of the Fire.', 'Surah Al-Imran - 3:16', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبَّنَآ ءَامَنَّا بِمَآ أَنزَلۡتَ وَٱتَّبَعۡنَا ٱلرَّسُولَ فَٱكۡتُبۡنَا مَعَ ٱلشَّٰهِدِينَ', '''Rabbana amanna bima anzalta wattaba 'nar-Rusula fak-tubna ma'ash-Shahideen''', 'Our Lord! We believe in what Thou hast revealed, and we follow the Messenger. Then write us down among those who bear witness.', 'Surah Al-Imran - 3:53', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبَّنَا اغْفِرْ لَنَا ذُنُوْبَنَا وَ اِسْرَافَنَا فِيْٓ اَمْرِنَا وَثَبِّتْ اَقْدَامَنَا وَانْصُرْنَا عَلَي الْقَوْمِ الْكٰفِرِيْنَ', '''Rabbanaghfir lanaa d’unoobanaa wa israafanaa fee amrinaa wa thabbit aqdaamanaa wan s’urnaa a’lal qawmil kaafireen''', 'Our Lord! Forgive us our sins and our transgressions (in keeping our duties to You), establish our feet firmly, and give us victory over the disbelieving folk.', 'Surah Al-Imran - 3:147', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبَّنَا مَا خَلَقْتَ هٰذَا بَاطِلًا ۚ سُبْحٰنَكَ فَقِنَا عَذَابَ النَّارِ. رَبَّنَآ اِنَّكَ مَنْ تُدْخِلِ النَّارَ فَقَدْ اَخْزَيْتَهٗ ۭ وَمَا لِلظّٰلِمِيْنَ مِنْ اَنْصَارٍ. رَبَّنَآ اِنَّنَا سَمِعْنَا مُنَادِيًا يُّنَادِيْ لِلْاِيْمَانِ اَنْ اٰمِنُوْا بِرَبِّكُمْ فَاٰمَنَّا ۚ رَبَّنَا فَاغْفِرْ لَنَا ذُنُوْبَنَا وَكَفِّرْ عَنَّا سَيِّاٰتِنَا وَتَوَفَّنَا مَعَ الْاَبْرَارِ. رَبَّنَا وَاٰتِنَا مَا وَعَدْتَّنَا عَلٰي رُسُلِكَ وَلَا تُخْزِنَا يَوْمَ الْقِيٰمَةِ ۭاِنَّكَ لَا تُخْلِفُ الْمِيْعَادَ.', '''Rabbana ma khalaqta hadha batila Subhanaka faqina 'adhaban-Naar. Rabbana innaka man tudkhilin nara faqad akhzaytah wa ma liDh-dhalimeena min ansar. Rabbanaa Innanaa Sami’-Naa Munaadiyay Yunaadee Lil – Eemaani An Aaminoo Birabbikum Fa- Aamannaa Rabbanaa Faghfir Lanaa D’unoobanaa Wa Kaffir A’nnaaa Sayyi- Aatinaa Wa Tawaffanaa Ma-A’l Abraaar. Rabbanaa Wa Aatinaa Maa Wa-A’ttanaa A’laa Rusulika Wa Laa Tukhzinaa Yawal Qiyaamah Innak Laa Tukhliful Mee’a’ad.''', '''Our Lord! You have not created (all) this without purpose, glory to You! (Exalted be You above all that they associate with You as partners). Give us salvation from the torment of the Fire. *Our Lord! Verily, whom You admit to the Fire, indeed, You have disgraced him, and never will the Zaalimoon (polytheists and wrong-doers) find any helpers. *Our Lord! Verily, we have heard the call of one (Muhammad p.b.u.h.) calling to Faith: 'Believe in your Lord,' and we have believed. *Our Lord! Forgive us our sins and remit from us our evil deeds, and make us die in the state of righteousness along with Al-Abraar (those who are obedient to Allah and follow strictly His Orders). *Our Lord! Grant us what You promised unto us through Your Messengers and disgrace us not on the Day of Resurrection, for You never break (Your) Promise.''', 'Surah Al-Imran 191-194', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبَّنَا آمَنَّا فَاكْتُبْنَا مَعَ الشَّاهِدِينَ', '''Rabbana aamana faktubna ma' ash-shahideen''', 'Our Lord! We believe; write us down among the witnesses.', '''Surah Al-Ma'ida - 5:83''', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبَّنَا أَنزِلْ عَلَيْنَا مَآئِدَةً مِّنَ السَّمَاء تَكُونُ لَنَا عِيداً لِّأَوَّلِنَا وَآخِرِنَا وَآيَةً مِّنكَ وَارْزُقْنَا وَأَنتَ خَيْرُ الرَّازِقِينَ', '''Rabbana anzil 'alayna ma'idatam minas-Samai tuknu lana 'idal li-awwa-lina wa aakhirna wa ayatam-minka war-zuqna wa anta Khayrul-Raziqeen''', 'O Allah our Lord! Send us from heaven a table set (with viands), that there may be for us - for the first and the last of us - a solemn festival and a sign from thee; and provide for our sustenance, for thou art the best Sustainer (of our needs).', '''Surah Al-Ma'ida - 5:114''', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبَّنَا ظَلَمْنَا أَنفُسَنَا وَإِن لَّمْ تَغْفِرْ لَنَا وَتَرْحَمْنَا لَنَكُونَنَّ مِنَ الْخَاسِرِينَ', 'Rabbana zalamna anfusina wa il lam taghfir lana wa tarhamna lana kunan minal-khasireen', 'Our Lord! We have wronged our own souls: If thou forgive us not and bestow not upon us Thy Mercy, we shall certainly be lost.', '''Surah Al-A'raf - 7:23''', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبَّنَا لاَ تَجْعَلْنَا مَعَ الْقَوْمِ الظَّالِمِينَ', '''Rabbanaa Laa Taj-a’lnaa Ma – A’l Qawmiz’ Z’aalimeen''', 'Our Lord! Place us not with the people who are Zaalimoon (polytheists and wrong doers).', '''Surah Al-A'raf - 7:47''', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبَّنَا افْتَحْ بَيْنَنَا وَبَيْنَ قَوْمِنَا بِالْحَقِّ وَأَنتَ خَيْرُ الْفَاتِحِينَ', '''Rabbanaf-tah baynana wa bayna qawmina bil haqqi wa anta Khayrul Fatiheen''', 'Our Lord! Decide Thou between us and our people in truth, for Thou art the best to decide.', '''Surah Al-A'raf - 7:89''', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبَّنَا أَفْرِغْ عَلَيْنَا صَبْرًا وَتَوَفَّنَا مُسْلِمِينَ', '''Rabbana afrigh 'alayna sabraw wa tawaffana Muslimeen''', 'Our Lord! pour out on us patience, and cause us to die as Muslims.', '''Surah Al-A'raf - 7:126''', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'عَلَى اللَّهِ تَوَكَّلْنَا رَبَّنَا لَا تَجْعَلْنَا فِتْنَةً لِلْقَوْمِ الظَّالِمِينَ وَنَجِّنَا بِرَحْمَتِكَ مِنَ الْقَوْمِ الْكَافِرِينَ', '''Alal Allahi thawakkalna rabbana la taj'alna fitnatal lil-qawmidh-Dhalimeen. Wa najjina bi-Rahmatika minal qawmil kafireen.''', 'Upon Allah do we rely. Our Lord, make us not [objects of] trial for the wrongdoing people. And save us by Your mercy from the disbelieving people.', 'Surah Yunus - 10:85-86', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبَّنَا إِنَّكَ تَعْلَمُ مَا نُخْفِي وَمَا نُعْلِنُ وَمَا يَخْفَى عَلَى اللّهِ مِن شَيْءٍ فَي الأَرْضِ وَلاَ فِي السَّمَاء', '''Rabbana innaka ta'lamu ma nukhfi wa ma nu'lin wa ma yakhfa 'alal-lahi min shay'in fil-ardi wa la fis-Sama''', 'O our Lord! Truly Thou dost know what we conceal and what we reveal: for nothing whatever is hidden from Allah, whether on earth or in heaven', 'Surah Ibraheem - 38', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,'أدعية القرآن الكريم', 'رَبِّ اجْعَلْنِيْ مُقِيْمَ الصَّلٰوةِ وَمِنْ ذُرِّيَّتِيْ رَبَّنَا وَتَقَبَّلْ دُعَاۗءِ', '''Rabbij-A’lnee Muqeemas’ S’alaati Wa Min D’urrriyyatee Rabbanaa Wa Taqabbal Du-A’aa''', 'O my Lord! Make me one who performs As-Salaat (Iqaamat-as-Salaat), and (also) from my offspring, our Lord! And accept my invocation.', 'Surah Ibraheem - 14:40', imageCategory: 'assets/homePage/ادعيه من القران.webp', TekrarQuraan: null, basmalaQuraan: true),
    AzkarModel(isFavorite: null,"عند نزول المطر", 'مُطِرْنَا بِفَضْلِ اللهِ وَ رَحْمَتِهِ', 'Mutirnaa bifadhlillaahi wa rahmatihi.', 'We have been given rain by the grace and mercy of Allah.', 'Al-Bukhari 1:205, Muslim 1:83', imageCategory: 'assets/homePage/The descent of rain.jpg', TekrarQuraan: null, basmalaQuraan: null),
    AzkarModel(isFavorite: null,"عند نزول المطر", 'اللّهُمَّ صَيِّـباً نافِـعاً', '''Allaahumma sayyiban naafi'an.''', 'O Allah, (bring) beneficial rain clouds.', 'Al-Bukhari 2:158', imageCategory: 'assets/homePage/The descent of rain.jpg', TekrarQuraan: null, basmalaQuraan: null),
    AzkarModel(isFavorite: null,"عند نزول المطر", 'اللّهُمَّ حَوالَيْنا وَلا عَلَيْـنَا، اللّهُمَّ عَلى الآكَـامِ وَالظِّـرابِ، وَبُطُـونِِ الأوْدِيةِ، وَمَنـابِِتِ الشَّجَـرِ', '''Allaahumma hawaalaynaa wa laa 'alaynaa. Allaahumma 'alal-'aakaami wadh-dhiraabi, wa butoonil-'awdiyati, wa manaabitish-shajari''', 'O Allah, let it pass us and not fall upon us, but upon the hills and mountains, and the center of the valleys, and upon the forested lands.', 'Al-Bukhari 1:224, Muslim 1:614', imageCategory: 'assets/homePage/The descent of rain.jpg', TekrarQuraan: null, basmalaQuraan: null),
AzkarModel(isFavorite: null,'في أوقات الشدة والقلق', 'اللّهُـمَّ إِنِّي أَعْوذُ بِكَ مِنَ الهَـمِّ وَ الْحُـزْنِ، والعًجْـزِ والكَسَلِ والبُخْـلِ والجُـبْنِ، وضَلْـعِ الـدَّيْنِ وغَلَبَـةِ الرِّجال', '''Allaahumma 'innee 'a'oothu bika minal-hammi walhazani, wal'ajzi walkasali, walbukhli waljubni, wa dhala'id-dayni wa ghalabatir-rijaal''', '''O Allah, I seek refuge in you from grief and sadness, from weakness and from laziness, from miserliness and from cowardice, from being overcome by debt and overpowered by men (i .e . others).''', 'Al-Bukhari: 2893, 5425, 6363, 6369', imageCategory: 'assets/homePage/Times of hardship and anxiety.jpg', TekrarQuraan: null, basmalaQuraan: null),
 AzkarModel(isFavorite: null,'لتحيا حياة صحية', 'اللّهُـمَّ عافِـني في بَدَنـي ، اللّهُـمَّ عافِـني في سَمْـعي ، اللّهُـمَّ عافِـني في بَصَـري ، لا إلهَ إلاّ أَنْـتَ. اللّهُـمَّ إِنّـي أَعـوذُبِكَ مِنَ الْكُـفر ، وَالفَـقْر ، وَأَعـوذُبِكَ مِنْ عَذابِ القَـبْر ، لا إلهَ إلاّ أَنْـتَ', '''Allaahumma 'aafinee fee badanee, Allaahumma 'aafinee fee sam'ee, Allaahumma 'aafinee fee basaree, laa 'ilaaha 'illaa 'Anta. Allaahumma 'innee 'a'oothu bika minal-kufri, walfaqri, wa 'a'oothu bika min 'athaabil-qabri, laa 'ilaaha 'illaa 'Anta.''', '''O Allah, make me healthy in my body. O Allah, preserve for me my hearing. O Allah, preserve for me my sight. There is none worthy of worship but You . O Allah , I seek refuge in You from disbelief and poverty and I seek refuge in You from the punishment of the grave . There is none worthy of worship but You.''', 'Abu Dawud: 5090', imageCategory: 'assets/homePage/To live a healthy life.webp', TekrarQuraan: null, basmalaQuraan: null),

  ];
  Map<String, dynamic> toJson() {
    return {
      'azkarCategorys': azkarCategorys,
      'azkarAR': azkarAR,
      'azkarFranco': azkarFranco,
      'azkarEN': azkarEN,
      'azkarFrom': azkarFrom,
      'imageCategory': imageCategory,
      'TekrarQuraan': TekrarQuraan,
      'basmalaQuraan': basmalaQuraan,
      'isFavorite': isFavorite,

    };
  }
  factory AzkarModel.fromJson(Map<String, dynamic> json) {
    return AzkarModel(
      json['azkarCategorys'],
      json['azkarAR'],
      json['azkarFranco'],
      json['azkarEN'],
      json['azkarFrom'],
      imageCategory: json['imageCategory'],
      TekrarQuraan: json['TekrarQuraan'],
      basmalaQuraan: json['basmalaQuraan'],
      isFavorite: json['isFavorite'] ?? false,
    );
  }
}
