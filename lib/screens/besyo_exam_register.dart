import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';

class BesyoExamRegister extends StatefulWidget {
  const BesyoExamRegister({super.key});

  @override
  State<BesyoExamRegister> createState() => _BesyoExamRegisterState();
}

class _BesyoExamRegisterState extends State<BesyoExamRegister> {
  final _formKey = GlobalKey<FormState>();
  final _firestore = FirebaseFirestore.instance;
  bool _isLoading = false;
  bool _privacyPolicyAccepted = false;

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  String _selectedCity = 'İstanbul';
  String _selectedDistrict = '';

  // İl-İlçe verileri
  final Map<String, List<String>> _cityDistricts = {
    'Adana': [
      'Aladağ',
      'Ceyhan',
      'Çukurova',
      'Feke',
      'İmamoğlu',
      'Karaisalı',
      'Karataş',
      'Kozan',
      'Pozantı',
      'Saimbeyli',
      'Sarıçam',
      'Seyhan',
      'Tufanbeyli',
      'Yumurtalık',
      'Yüreğir'
    ],
    'Adıyaman': [
      'Besni',
      'Çelikhan',
      'Gerger',
      'Gölbaşı',
      'Kahta',
      'Merkez',
      'Samsat',
      'Sincik',
      'Tut'
    ],
    'Afyonkarahisar': [
      'Başmakçı',
      'Bayat',
      'Bolvadin',
      'Çay',
      'Çobanlar',
      'Dazkırı',
      'Dinar',
      'Emirdağ',
      'Evciler',
      'Hocalar',
      'İhsaniye',
      'İscehisar',
      'Kızılören',
      'Merkez',
      'Sandıklı',
      'Sinanpaşa',
      'Sultandağı',
      'Şuhut'
    ],
    'Ağrı': [
      'Diyadin',
      'Doğubayazıt',
      'Eleşkirt',
      'Hamur',
      'Merkez',
      'Patnos',
      'Taşlıçay',
      'Tutak'
    ],
    'Amasya': [
      'Göynücek',
      'Gümüşhacıköy',
      'Hamamözü',
      'Merkez',
      'Merzifon',
      'Suluova',
      'Taşova'
    ],
    'Ankara': [
      'Akyurt',
      'Altındağ',
      'Ayaş',
      'Balâ',
      'Beypazarı',
      'Çamlıdere',
      'Çankaya',
      'Çubuk',
      'Elmadağ',
      'Etimesgut',
      'Evren',
      'Gölbaşı',
      'Güdül',
      'Haymana',
      'Kalecik',
      'Kahramankazan',
      'Keçiören',
      'Kızılcahamam',
      'Mamak',
      'Nallıhan',
      'Polatlı',
      'Pursaklar',
      'Sincan',
      'Şereflikoçhisar',
      'Yenimahalle'
    ],
    'Antalya': [
      'Akseki',
      'Aksu',
      'Alanya',
      'Demre',
      'Döşemealtı',
      'Elmalı',
      'Finike',
      'Gazipaşa',
      'Gündoğmuş',
      'İbradı',
      'Kaş',
      'Kemer',
      'Kepez',
      'Konyaaltı',
      'Korkuteli',
      'Kumluca',
      'Manavgat',
      'Muratpaşa',
      'Serik'
    ],
    'Artvin': [
      'Ardanuç',
      'Arhavi',
      'Borçka',
      'Hopa',
      'Kemalpaşa',
      'Merkez',
      'Murgul',
      'Şavşat',
      'Yusufeli'
    ],
    'Aydın': [
      'Bozdoğan',
      'Buharkent',
      'Çine',
      'Didim',
      'Efeler',
      'Germencik',
      'İncirliova',
      'Karacasu',
      'Karpuzlu',
      'Koçarlı',
      'Köşk',
      'Kuşadası',
      'Kuyucak',
      'Nazilli',
      'Söke',
      'Sultanhisar',
      'Yenipazar'
    ],
    'Balıkesir': [
      'Altıeylül',
      'Ayvalık',
      'Balya',
      'Bandırma',
      'Bigadiç',
      'Burhaniye',
      'Dursunbey',
      'Edremit',
      'Erdek',
      'Gömeç',
      'Gönen',
      'Havran',
      'İvrindi',
      'Karesi',
      'Kepsut',
      'Manyas',
      'Marmara',
      'Savaştepe',
      'Sındırgı',
      'Susurluk'
    ],
    'Bilecik': [
      'Bozüyük',
      'Gölpazarı',
      'İnhisar',
      'Merkez',
      'Osmaneli',
      'Pazaryeri',
      'Söğüt',
      'Yenipazar'
    ],
    'Bingöl': [
      'Adaklı',
      'Genç',
      'Karlıova',
      'Kiğı',
      'Merkez',
      'Solhan',
      'Yayladere',
      'Yedisu'
    ],
    'Bitlis': [
      'Adilcevaz',
      'Ahlat',
      'Güroymak',
      'Hizan',
      'Merkez',
      'Mutki',
      'Tatvan'
    ],
    'Bolu': [
      'Dörtdivan',
      'Gerede',
      'Göynük',
      'Kıbrıscık',
      'Mengen',
      'Merkez',
      'Mudurnu',
      'Seben',
      'Yeniçağa'
    ],
    'Burdur': [
      'Ağlasun',
      'Altınyayla',
      'Bucak',
      'Çavdır',
      'Çeltikçi',
      'Gölhisar',
      'Karamanlı',
      'Kemer',
      'Merkez',
      'Tefenni',
      'Yeşilova'
    ],
    'Bursa': [
      'Büyükorhan',
      'Gemlik',
      'Gürsu',
      'Harmancık',
      'İnegöl',
      'İznik',
      'Karacabey',
      'Keles',
      'Kestel',
      'Mudanya',
      'Mustafakemalpaşa',
      'Nilüfer',
      'Orhaneli',
      'Orhangazi',
      'Osmangazi',
      'Yenişehir',
      'Yıldırım'
    ],
    'Çanakkale': [
      'Ayvacık',
      'Bayramiç',
      'Biga',
      'Bozcaada',
      'Çan',
      'Eceabat',
      'Ezine',
      'Gelibolu',
      'Gökçeada',
      'Lapseki',
      'Merkez',
      'Yenice'
    ],
    'Çankırı': [
      'Atkaracalar',
      'Bayramören',
      'Çerkeş',
      'Eldivan',
      'Ilgaz',
      'Kızılırmak',
      'Korgun',
      'Kurşunlu',
      'Merkez',
      'Orta',
      'Şabanözü',
      'Yapraklı'
    ],
    'Çorum': [
      'Alaca',
      'Bayat',
      'Boğazkale',
      'Dodurga',
      'İskilip',
      'Kargı',
      'Laçin',
      'Mecitözü',
      'Merkez',
      'Oğuzlar',
      'Ortaköy',
      'Osmancık',
      'Sungurlu',
      'Uğurludağ'
    ],
    'Denizli': [
      'Acıpayam',
      'Babadağ',
      'Baklan',
      'Bekilli',
      'Beyağaç',
      'Bozkurt',
      'Buldan',
      'Çal',
      'Çameli',
      'Çardak',
      'Çivril',
      'Güney',
      'Honaz',
      'Kale',
      'Merkezefendi',
      'Pamukkale',
      'Sarayköy',
      'Serinhisar',
      'Tavas'
    ],
    'Diyarbakır': [
      'Bağlar',
      'Bismil',
      'Çermik',
      'Çınar',
      'Çüngüş',
      'Dicle',
      'Eğil',
      'Ergani',
      'Hani',
      'Hazro',
      'Kayapınar',
      'Kocaköy',
      'Kulp',
      'Lice',
      'Silvan',
      'Sur',
      'Yenişehir'
    ],
    'Edirne': [
      'Enez',
      'Havsa',
      'İpsala',
      'Keşan',
      'Lalapaşa',
      'Meriç',
      'Merkez',
      'Süloğlu',
      'Uzunköprü'
    ],
    'Elazığ': [
      'Ağın',
      'Alacakaya',
      'Arıcak',
      'Baskil',
      'Karakoçan',
      'Keban',
      'Kovancılar',
      'Maden',
      'Merkez',
      'Palu',
      'Sivrice'
    ],
    'Erzincan': [
      'Çayırlı',
      'İliç',
      'Kemah',
      'Kemaliye',
      'Merkez',
      'Otlukbeli',
      'Refahiye',
      'Tercan',
      'Üzümlü'
    ],
    'Erzurum': [
      'Aşkale',
      'Aziziye',
      'Çat',
      'Hınıs',
      'Horasan',
      'İspir',
      'Karaçoban',
      'Karayazı',
      'Köprüköy',
      'Narman',
      'Oltu',
      'Olur',
      'Palandöken',
      'Pasinler',
      'Pazaryolu',
      'Şenkaya',
      'Tekman',
      'Tortum',
      'Uzundere',
      'Yakutiye'
    ],
    'Eskişehir': [
      'Alpu',
      'Beylikova',
      'Çifteler',
      'Günyüzü',
      'Han',
      'İnönü',
      'Mahmudiye',
      'Mihalgazi',
      'Mihalıççık',
      'Odunpazarı',
      'Sarıcakaya',
      'Seyitgazi',
      'Sivrihisar',
      'Tepebaşı'
    ],
    'Gaziantep': [
      'Araban',
      'İslahiye',
      'Karkamış',
      'Nizip',
      'Nurdağı',
      'Oğuzeli',
      'Şahinbey',
      'Şehitkamil',
      'Yavuzeli'
    ],
    'Giresun': [
      'Alucra',
      'Bulancak',
      'Çamoluk',
      'Çanakçı',
      'Dereli',
      'Doğankent',
      'Espiye',
      'Eynesil',
      'Görele',
      'Güce',
      'Keşap',
      'Merkez',
      'Piraziz',
      'Şebinkarahisar',
      'Tirebolu',
      'Yağlıdere'
    ],
    'Gümüşhane': ['Kelkit', 'Köse', 'Kürtün', 'Merkez', 'Şiran', 'Torul'],
    'Hakkari': ['Çukurca', 'Derecik', 'Merkez', 'Şemdinli', 'Yüksekova'],
    'Hatay': [
      'Altınözü',
      'Antakya',
      'Arsuz',
      'Belen',
      'Defne',
      'Dörtyol',
      'Erzin',
      'Hassa',
      'İskenderun',
      'Kırıkhan',
      'Kumlu',
      'Payas',
      'Reyhanlı',
      'Samandağ',
      'Yayladağı'
    ],
    'Isparta': [
      'Aksu',
      'Atabey',
      'Eğirdir',
      'Gelendost',
      'Gönen',
      'Keçiborlu',
      'Merkez',
      'Senirkent',
      'Sütçüler',
      'Şarkikaraağaç',
      'Uluborlu',
      'Yalvaç',
      'Yenişarbademli'
    ],
    'İstanbul': [
      'Adalar',
      'Arnavutköy',
      'Ataşehir',
      'Avcılar',
      'Bağcılar',
      'Bahçelievler',
      'Bakırköy',
      'Başakşehir',
      'Bayrampaşa',
      'Beşiktaş',
      'Beykoz',
      'Beylikdüzü',
      'Beyoğlu',
      'Büyükçekmece',
      'Çatalca',
      'Çekmeköy',
      'Esenler',
      'Esenyurt',
      'Eyüpsultan',
      'Fatih',
      'Gaziosmanpaşa',
      'Güngören',
      'Kadıköy',
      'Kağıthane',
      'Kartal',
      'Küçükçekmece',
      'Maltepe',
      'Pendik',
      'Sancaktepe',
      'Sarıyer',
      'Silivri',
      'Sultanbeyli',
      'Sultangazi',
      'Şile',
      'Şişli',
      'Tuzla',
      'Ümraniye',
      'Üsküdar',
      'Zeytinburnu'
    ],
    'İzmir': [
      'Aliağa',
      'Balçova',
      'Bayındır',
      'Bayraklı',
      'Bergama',
      'Beydağ',
      'Bornova',
      'Buca',
      'Çeşme',
      'Çiğli',
      'Dikili',
      'Foça',
      'Gaziemir',
      'Güzelbahçe',
      'Karabağlar',
      'Karaburun',
      'Karşıyaka',
      'Kemalpaşa',
      'Kınık',
      'Kiraz',
      'Konak',
      'Menderes',
      'Menemen',
      'Narlıdere',
      'Ödemiş',
      'Seferihisar',
      'Selçuk',
      'Tire',
      'Torbalı',
      'Urla'
    ],
    'Kahramanmaraş': [
      'Afşin',
      'Andırın',
      'Çağlayancerit',
      'Dulkadiroğlu',
      'Ekinözü',
      'Elbistan',
      'Göksun',
      'Nurhak',
      'Onikişubat',
      'Pazarcık',
      'Türkoğlu'
    ],
    'Karabük': [
      'Eflani',
      'Eskipazar',
      'Merkez',
      'Ovacık',
      'Safranbolu',
      'Yenice'
    ],
    'Karaman': [
      'Ayrancı',
      'Başyayla',
      'Ermenek',
      'Kazımkarabekir',
      'Merkez',
      'Sarıveliler'
    ],
    'Kars': [
      'Akyaka',
      'Arpaçay',
      'Digor',
      'Kağızman',
      'Merkez',
      'Sarıkamış',
      'Selim',
      'Susuz'
    ],
    'Kastamonu': [
      'Abana',
      'Ağlı',
      'Araç',
      'Azdavay',
      'Bozkurt',
      'Cide',
      'Çatalzeytin',
      'Daday',
      'Devrekani',
      'Doğanyurt',
      'Hanönü',
      'İhsangazi',
      'İnebolu',
      'Küre',
      'Merkez',
      'Pınarbaşı',
      'Seydiler',
      'Şenpazar',
      'Taşköprü',
      'Tosya'
    ],
    'Kayseri': [
      'Akkışla',
      'Bünyan',
      'Develi',
      'Felahiye',
      'Hacılar',
      'İncesu',
      'Kocasinan',
      'Melikgazi',
      'Özvatan',
      'Pınarbaşı',
      'Sarıoğlan',
      'Sarız',
      'Talas',
      'Tomarza',
      'Yahyalı',
      'Yeşilhisar'
    ],
    'Kırıkkale': [
      'Bahşılı',
      'Balışeyh',
      'Çelebi',
      'Delice',
      'Karakeçili',
      'Keskin',
      'Merkez',
      'Sulakyurt',
      'Yahşihan'
    ],
    'Kırklareli': [
      'Babaeski',
      'Demirköy',
      'Kofçaz',
      'Lüleburgaz',
      'Merkez',
      'Pehlivanköy',
      'Pınarhisar',
      'Vize'
    ],
    'Kırşehir': [
      'Akçakent',
      'Akpınar',
      'Boztepe',
      'Çiçekdağı',
      'Kaman',
      'Merkez',
      'Mucur'
    ],
    'Kilis': ['Elbeyli', 'Merkez', 'Musabeyli', 'Polateli'],
    'Kocaeli': [
      'Başiskele',
      'Çayırova',
      'Darıca',
      'Derince',
      'Dilovası',
      'Gebze',
      'Gölcük',
      'İzmit',
      'Kandıra',
      'Karamürsel',
      'Kartepe',
      'Körfez'
    ],
    'Konya': [
      'Ahırlı',
      'Akören',
      'Akşehir',
      'Altınekin',
      'Beyşehir',
      'Bozkır',
      'Çeltik',
      'Cihanbeyli',
      'Çumra',
      'Derbent',
      'Derebucak',
      'Doğanhisar',
      'Emirgazi',
      'Ereğli',
      'Güneysınır',
      'Hadim',
      'Halkapınar',
      'Hüyük',
      'Ilgın',
      'Kadınhanı',
      'Karapınar',
      'Karatay',
      'Kulu',
      'Meram',
      'Sarayönü',
      'Selçuklu',
      'Seydişehir',
      'Taşkent',
      'Tuzlukçu',
      'Yalıhüyük',
      'Yunak'
    ],
    'Kütahya': [
      'Altıntaş',
      'Aslanapa',
      'Çavdarhisar',
      'Domaniç',
      'Dumlupınar',
      'Emet',
      'Gediz',
      'Hisarcık',
      'Merkez',
      'Pazarlar',
      'Simav',
      'Şaphane',
      'Tavşanlı'
    ],
    'Malatya': [
      'Akçadağ',
      'Arapgir',
      'Arguvan',
      'Battalgazi',
      'Darende',
      'Doğanşehir',
      'Doğanyol',
      'Hekimhan',
      'Kale',
      'Kuluncak',
      'Pütürge',
      'Yazıhan',
      'Yeşilyurt'
    ],
    'Manisa': [
      'Ahmetli',
      'Akhisar',
      'Alaşehir',
      'Demirci',
      'Gölmarmara',
      'Gördes',
      'Kırkağaç',
      'Köprübaşı',
      'Kula',
      'Salihli',
      'Sarıgöl',
      'Saruhanlı',
      'Selendi',
      'Soma',
      'Şehzadeler',
      'Turgutlu',
      'Yunusemre'
    ],
    'Mardin': [
      'Artuklu',
      'Dargeçit',
      'Derik',
      'Kızıltepe',
      'Mazıdağı',
      'Midyat',
      'Nusaybin',
      'Ömerli',
      'Savur',
      'Yeşilli'
    ],
    'Mersin': [
      'Akdeniz',
      'Anamur',
      'Aydıncık',
      'Bozyazı',
      'Çamlıyayla',
      'Erdemli',
      'Gülnar',
      'Mezitli',
      'Mut',
      'Silifke',
      'Tarsus',
      'Toroslar',
      'Yenişehir'
    ],
    'Muğla': [
      'Bodrum',
      'Dalaman',
      'Datça',
      'Fethiye',
      'Kavaklıdere',
      'Köyceğiz',
      'Marmaris',
      'Menteşe',
      'Milas',
      'Ortaca',
      'Seydikemer',
      'Ula',
      'Yatağan'
    ],
    'Muş': ['Bulanık', 'Hasköy', 'Korkut', 'Malazgirt', 'Merkez', 'Varto'],
    'Nevşehir': [
      'Acıgöl',
      'Avanos',
      'Derinkuyu',
      'Gülşehir',
      'Hacıbektaş',
      'Kozaklı',
      'Merkez',
      'Ürgüp'
    ],
    'Niğde': ['Altunhisar', 'Bor', 'Çamardı', 'Çiftlik', 'Merkez', 'Ulukışla'],
    'Ordu': [
      'Akkuş',
      'Altınordu',
      'Aybastı',
      'Çamaş',
      'Çatalpınar',
      'Çaybaşı',
      'Fatsa',
      'Gölköy',
      'Gülyalı',
      'Gürgentepe',
      'İkizce',
      'Kabadüz',
      'Kabataş',
      'Korgan',
      'Kumru',
      'Mesudiye',
      'Perşembe',
      'Ulubey',
      'Ünye'
    ],
    'Osmaniye': [
      'Bahçe',
      'Düziçi',
      'Hasanbeyli',
      'Kadirli',
      'Merkez',
      'Sumbas',
      'Toprakkale'
    ],
    'Rize': [
      'Ardeşen',
      'Çamlıhemşin',
      'Çayeli',
      'Derepazarı',
      'Fındıklı',
      'Güneysu',
      'Hemşin',
      'İkizdere',
      'İyidere',
      'Kalkandere',
      'Merkez',
      'Pazar'
    ],
    'Sakarya': [
      'Adapazarı',
      'Akyazı',
      'Arifiye',
      'Erenler',
      'Ferizli',
      'Geyve',
      'Hendek',
      'Karapürçek',
      'Karasu',
      'Kaynarca',
      'Kocaali',
      'Pamukova',
      'Sapanca',
      'Serdivan',
      'Söğütlü',
      'Taraklı'
    ],
    'Samsun': [
      '19 Mayıs',
      'Alaçam',
      'Asarcık',
      'Atakum',
      'Ayvacık',
      'Bafra',
      'Canik',
      'Çarşamba',
      'Havza',
      'İlkadım',
      'Kavak',
      'Ladik',
      'Salıpazarı',
      'Tekkeköy',
      'Terme',
      'Vezirköprü',
      'Yakakent'
    ],
    'Siirt': [
      'Baykan',
      'Eruh',
      'Kurtalan',
      'Merkez',
      'Pervari',
      'Şirvan',
      'Tillo'
    ],
    'Sinop': [
      'Ayancık',
      'Boyabat',
      'Dikmen',
      'Durağan',
      'Erfelek',
      'Gerze',
      'Merkez',
      'Saraydüzü',
      'Türkeli'
    ],
    'Sivas': [
      'Akıncılar',
      'Altınyayla',
      'Divriği',
      'Doğanşar',
      'Gemerek',
      'Gölova',
      'Gürün',
      'Hafik',
      'İmranlı',
      'Kangal',
      'Koyulhisar',
      'Merkez',
      'Suşehri',
      'Şarkışla',
      'Ulaş',
      'Yıldızeli',
      'Zara'
    ],
    'Şanlıurfa': [
      'Akçakale',
      'Birecik',
      'Bozova',
      'Ceylanpınar',
      'Eyyübiye',
      'Halfeti',
      'Haliliye',
      'Harran',
      'Hilvan',
      'Karaköprü',
      'Siverek',
      'Suruç',
      'Viranşehir'
    ],
    'Şırnak': [
      'Beytüşşebap',
      'Cizre',
      'Güçlükonak',
      'İdil',
      'Merkez',
      'Silopi',
      'Uludere'
    ],
    'Tekirdağ': [
      'Çerkezköy',
      'Çorlu',
      'Ergene',
      'Hayrabolu',
      'Kapaklı',
      'Malkara',
      'Marmaraereğlisi',
      'Muratlı',
      'Saray',
      'Süleymanpaşa',
      'Şarköy'
    ],
    'Tokat': [
      'Almus',
      'Artova',
      'Başçiftlik',
      'Erbaa',
      'Merkez',
      'Niksar',
      'Pazar',
      'Reşadiye',
      'Sulusaray',
      'Turhal',
      'Yeşilyurt',
      'Zile'
    ],
    'Trabzon': [
      'Akçaabat',
      'Araklı',
      'Arsin',
      'Beşikdüzü',
      'Çarşıbaşı',
      'Çaykara',
      'Dernekpazarı',
      'Düzköy',
      'Hayrat',
      'Köprübaşı',
      'Maçka',
      'Of',
      'Ortahisar',
      'Sürmene',
      'Şalpazarı',
      'Tonya',
      'Vakfıkebir',
      'Yomra'
    ],
    'Tunceli': [
      'Çemişgezek',
      'Hozat',
      'Mazgirt',
      'Merkez',
      'Nazımiye',
      'Ovacık',
      'Pertek',
      'Pülümür'
    ],
    'Uşak': ['Banaz', 'Eşme', 'Karahallı', 'Merkez', 'Sivaslı', 'Ulubey'],
    'Van': [
      'Bahçesaray',
      'Başkale',
      'Çaldıran',
      'Çatak',
      'Edremit',
      'Erciş',
      'Gevaş',
      'Gürpınar',
      'İpekyolu',
      'Muradiye',
      'Özalp',
      'Saray',
      'Tuşba'
    ],
    'Yalova': [
      'Altınova',
      'Armutlu',
      'Çınarcık',
      'Çiftlikköy',
      'Merkez',
      'Termal'
    ],
    'Yozgat': [
      'Akdağmadeni',
      'Aydıncık',
      'Boğazlıyan',
      'Çandır',
      'Çayıralan',
      'Çekerek',
      'Kadışehri',
      'Merkez',
      'Saraykent',
      'Sarıkaya',
      'Şefaatli',
      'Sorgun',
      'Yenifakılı',
      'Yerköy'
    ],
    'Zonguldak': [
      'Alaplı',
      'Çaycuma',
      'Devrek',
      'Ereğli',
      'Gökçebey',
      'Kilimli',
      'Kozlu',
      'Merkez'
    ],
  };

  @override
  void initState() {
    super.initState();
    _selectedDistrict = _cityDistricts[_selectedCity]![0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deneme Sınavı Kayıt'),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'TYT Deneme Sınavı Kayıt Formu',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 64, 255),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              // Bilgilendirme Kartı
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.info_outline,
                        color: Color.fromARGB(255, 0, 64, 255),
                        size: 32,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Türkiye Geneli Besyoculara özel TYT deneme sınavları, '
                        'yeterli kaydın olduğu her yerde ücretsiz olarak gerçekleştirilecektir. '
                        'Sınav tarih, yer ve saat bilgisi kayıt olan adaylara iletilecektir.',
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.5,
                          color: Colors.grey[800],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              TextFormField(
                controller: _fullNameController,
                decoration: InputDecoration(
                  labelText: 'Ad Soyad',
                  filled: true,
                  fillColor: const Color(0xFF31E1F7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Ad Soyad gerekli' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Telefon Numarası',
                  hintText: '5xxxxxxxxx',
                  prefixText: '+90 ',
                  filled: true,
                  fillColor: const Color(0xFF31E1F7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Telefon numarası gerekli';
                  }
                  if (!RegExp(r'^\d{10}$')
                      .hasMatch(value.replaceAll(' ', ''))) {
                    return 'Geçerli bir telefon numarası girin';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _selectedCity,
                decoration: InputDecoration(
                  labelText: 'İl',
                  filled: true,
                  fillColor: const Color(0xFF31E1F7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
                items: _cityDistricts.keys.map((String city) {
                  return DropdownMenuItem(
                    value: city,
                    child: Text(city),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedCity = newValue!;
                    _selectedDistrict = _cityDistricts[_selectedCity]![0];
                  });
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _selectedDistrict,
                decoration: InputDecoration(
                  labelText: 'İlçe',
                  filled: true,
                  fillColor: const Color(0xFF31E1F7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
                items: _cityDistricts[_selectedCity]!.map((String district) {
                  return DropdownMenuItem(
                    value: district,
                    child: Text(district),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedDistrict = newValue!;
                  });
                },
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Checkbox(
                    value: _privacyPolicyAccepted,
                    onChanged: (bool? value) {
                      setState(() {
                        _privacyPolicyAccepted = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black),
                        children: [
                          const TextSpan(
                            text: 'Gizlilik politikasını ',
                          ),
                          TextSpan(
                            text: 'okudum ve kabul ediyorum',
                            style: const TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                _showPrivacyPolicy();
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              if (_isLoading)
                const Center(child: CircularProgressIndicator())
              else
                ElevatedButton(
                  onPressed: _privacyPolicyAccepted ? _submitForm : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 64, 255),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Kayıt Ol',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) return;
    if (!_privacyPolicyAccepted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Lütfen gizlilik politikasını kabul edin'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Lütfen önce giriş yapın'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      await _firestore.collection('besyo_exam_registrations').add({
        'fullName': _fullNameController.text,
        'phoneNumber': '+90${_phoneController.text}',
        'city': _selectedCity,
        'district': _selectedDistrict,
        'registrationDate': FieldValue.serverTimestamp(),
        'userId': user.uid,
        'email': user.email,
      });

      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Kayıt başarıyla tamamlandı'),
          backgroundColor: Colors.green,
        ),
      );

      Navigator.pop(context);
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Kayıt sırasında bir hata oluştu: $e'),
          backgroundColor: Colors.red,
        ),
      );
      debugPrint('Kayıt hatası: $e');
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void _showPrivacyPolicy() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Gizlilik Politikası'),
        content: const SingleChildScrollView(
          child: Text(
            'Burada gizlilik politikası metni yer alacak...',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Kapat'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }
} 