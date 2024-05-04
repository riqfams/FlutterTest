
class TourismPlace{
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Guci',
    location: 'Bumijawa, Kabupaten Tegal',
    description: 'Tepatnya di Jl. Objek Wisata Guci, Kalengan, Sigedong, Bumijawa, '
        'Tegal, Jawa Tengah. Wisata ini terletak di kaki Gunung Slamet dengan '
        'ketinggian kurang lebih 1.050 meter di atas permukaan laut dan berbatasan '
        'dengan Kabupaten Brebes dan Pemalang.',
    openDays: 'Open Everyday',
    openTime: '07:00 - 17-00 WIB',
    ticketPrice: 'Rp15.000',
    imageAsset: 'images/guci.jpg',
    imageUrls: [
      'https://cdn-2.tstatic.net/jateng/foto/bank/images/vgtyhj.jpg',
      'https://assets.promediateknologi.com/crop/0x0:0x0/750x500/photo/ayosemarang/images/post/articles/2021/05/22/77596/pemandian-air-panas-guci.jpg',
    ]
  ),
  TourismPlace(
      name: 'Pantai Alam Indah',
      location: 'Mintaragen, Kota Tegal',
      description: 'Objek wisata Pantai Alam Indah berada di Kota Tegal, Jawa Tengah, '
                  'tepatnya di Kelurahan Mintaragen, Kecamatan Tegal Timur. Dari jalan '
                  'Pantura hanya berjarak 500 meter. Meskipun belum ada jalur angkutan '
                  'kota yang menuju ke PAI, masyarakat dapat menjangkau dengan '
                  'transportasi apa pun, termasuk berjalan kaki.',
      openDays: 'Open Everyday',
      openTime: '07:00 - 17-00 WIB',
      ticketPrice: 'Rp5.000',
      imageAsset: 'images/pai.jpg',
      imageUrls: [
        'https://awsimages.detik.net.id/detiktravel/temp/img_20160919165259_57dfb57b93e40.jpg',
        'https://pacitanisti.files.wordpress.com/2016/02/226ec-paitegal2_artikelpedia-lakalaka-blogspot-com.jpg?w=640',
      ]
  ),
  TourismPlace(
      name: 'Waduk Cacaban',
      location: 'Karanganyar, Kabupaten Tegal',
      description: 'Waduk Cacaban adalah sebuah bendungan yang terletak di Kecamatan '
          'Kedungbanteng, Kabupaten Tegal, Jawa Tengah, Indonesia. Luas areal waduk '
          'adalah 928,7 hektar dan berisi air sebanyak 90 juta m³. Waduk ini didukung '
          'dengan latar belakang pemandangan hutan dengan panorama yang indah.',
      openDays: 'Open Everyday',
      openTime: '08:00 - 16-00 WIB',
      ticketPrice: 'Rp10.000',
      imageAsset: 'images/cacaban.jpg',
      imageUrls: [
        'https://www.jejakpiknik.com/wp-content/uploads/2018/07/wadukcacabantegal-630x380.jpg',
        'https://pbs.twimg.com/media/DibbICyV4AAyiKo.jpg',
      ]
  ),
];