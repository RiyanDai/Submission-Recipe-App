class Recipe {
  String name;
  String origin;
  String description;
  String cookingTime;
  String servingSize;
  String difficulty;
  String imageAsset;
  List<String> imageUrls;
  List<String> instructions;
  List<String> ingredients; // Add this field

  Recipe({
    required this.name,
    required this.origin,
    required this.description,
    required this.cookingTime,
    required this.servingSize,
    required this.difficulty,
    required this.imageAsset,
    required this.imageUrls,
    required this.instructions,
    required this.ingredients, // Add this to the constructor
  });
}

var recipeList = [
  Recipe(
    name: 'Rendang',
    origin: 'Padang',
    description:
        'Rendang adalah masakan daging bercita rasa pedas yang menggunakan campuran dari berbagai bumbu dan rempah-rempah.',
    cookingTime: '4-5 jam',
    servingSize: '4 porsi',
    difficulty: 'Sulit',
    imageAsset: 'images/rendang.jpg',
    imageUrls: [
      'images/rendang.jpg',
       'images/rendang-2.jpg',
       'images/rendang-3.jpg',
    ],
    instructions: [
      'Potong daging sapi menjadi bagian kecil.',
      'Haluskan bumbu seperti bawang merah, bawang putih, cabai, jahe, lengkuas, dan serai.',
      'Tumis bumbu halus hingga wangi, lalu masukkan santan.',
      'Masukkan daging sapi ke dalam santan dan masak dengan api kecil.',
      'Masak hingga santan mengental dan daging empuk (sekitar 4-5 jam), aduk sesekali.',
      'Sajikan rendang dengan nasi hangat.'
    ],
    ingredients: [
      '1 kg daging sapi',
      '500 ml santan',
      '5 siung bawang merah',
      '3 siung bawang putih',
      '10 cabai merah',
      '2 cm jahe',
      '3 cm lengkuas',
      '2 batang serai',
    ],
  ),
   Recipe(
    name: 'Nasi Goreng',
    origin: 'Jakarta',
    description:
        'Nasi goreng adalah hidangan nasi yang digoreng bersama bumbu, daging, telur, dan sayuran.',
    cookingTime: '30 menit',
    servingSize: '2 porsi',
    difficulty: 'Mudah',
    imageAsset: 'images/nasi-goreng.jpg',
    imageUrls: [
      'images/nasi-goreng-2.jpg',
      'images/nasi-goreng-3.jpg',
      'images/nasi-goreng-4.jpg',
    ],
    instructions: [
      'Panaskan minyak dalam wajan dan tumis bawang merah, bawang putih, dan cabai hingga harum.',
      'Tambahkan telur dan buat orak-arik.',
      'Masukkan nasi putih ke dalam wajan dan aduk rata.',
      'Tambahkan kecap manis, garam, dan merica sesuai selera.',
      'Aduk hingga semua bahan tercampur rata dan nasi panas.',
      'Sajikan nasi goreng dengan irisan mentimun dan kerupuk.'
    ],
    ingredients: [
      '2 porsi nasi putih',
      '2 siung bawang merah',
      '2 siung bawang putih',
      '2 telur',
      'Kecap manis secukupnya',
      'Garam secukupnya',
      'Merica secukupnya',
      'Mentimun dan kerupuk untuk penyajian',
    ],
  ),
  Recipe(
    name: 'Sate Ayam',
    origin: 'Madura',
    description:
        'Sate ayam terbuat dari potongan daging ayam yang dipanggang di atas arang, disajikan dengan saus kacang.',
    cookingTime: '45 menit',
    servingSize: '3 porsi',
    difficulty: 'Sedang',
    imageAsset: 'images/sate-ayam.jpg',
    imageUrls: [
      'images/sate-ayam-1.jpg',
      'images/sate-ayam-2.jpg',
     'images/sate-ayam-3.jpg',
    ],
    instructions: [
      'Potong daging ayam menjadi bagian kecil dan tusukkan ke tusuk sate.',
      'Haluskan bumbu kacang (kacang tanah, bawang putih, cabai, gula, dan garam).',
      'Olesi sate dengan bumbu kacang sebelum memanggang.',
      'Panggang sate di atas arang hingga matang, sambil sesekali dioles dengan bumbu kacang.',
      'Sajikan sate dengan lontong dan saus kacang.'
    ],
    ingredients: [
      '500 gram daging ayam',
      '100 gram kacang tanah',
      '2 siung bawang putih',
      '5 cabai merah',
      '1 sdm gula',
      'Garam secukupnya',
      'Tusuk sate',
    ],
  ),
  Recipe(
    name: 'Gado-Gado',
    origin: 'Jawa',
    description:
        'Gado-gado adalah salad sayuran khas Indonesia yang disiram dengan saus kacang. Biasanya terdiri dari campuran sayuran, kentang, tahu, tempe, telur, dan lontong.',
    cookingTime: '20 menit',
    servingSize: '2 porsi',
    difficulty: 'Mudah',
    imageAsset: 'images/gado-gado.jpg',
    imageUrls: [
      'images/gado-gado-1.jpg',
      'images/gado-gado-2.jpg',
      'images/gado-gado-3.jpg',
    ],
    instructions: [
      'Rebus sayuran seperti kacang panjang, tauge, dan kentang hingga matang.',
      'Goreng tahu dan tempe hingga kecokelatan.',
      'Siapkan saus kacang dengan cara menghaluskan kacang tanah, bawang putih, cabai, gula, dan garam.',
      'Susun sayuran, tahu, tempe, dan telur di piring.',
      'Siram dengan saus kacang dan sajikan dengan kerupuk.'
    ],
    ingredients: [
      '100 gram kacang panjang',
      '100 gram tauge',
      '2 kentang, rebus',
      '2 tahu, goreng',
      '2 tempe, goreng',
      '2 telur, rebus',
      '100 gram kacang tanah',
      '2 siung bawang putih',
      '5 cabai merah',
      '1 sdm gula merah',
      'Garam secukupnya',
      'Kerupuk untuk penyajian',
    ],
  ),
  Recipe(
    name: 'Soto Ayam',
    origin: 'Jawa Tengah',
    description:
        'Soto ayam adalah sup tradisional Indonesia yang terdiri dari kuah kaldu ayam, dengan tambahan bihun, telur, kentang goreng, dan taburan bawang goreng.',
    cookingTime: '1 jam',
    servingSize: '4 porsi',
    difficulty: 'Sedang',
    imageAsset: 'images/soto-ayam.jpg',
    imageUrls: [
      'images/soto-ayam-1.jpg',
      'images/soto-ayam-2.jpg',
      'images/soto-ayam-3.jpg',
    ],
    instructions: [
      'Rebus ayam hingga matang, lalu suwir-suwir dagingnya.',
      'Tumis bumbu halus (bawang merah, bawang putih, jahe, kunyit, dan serai) hingga harum.',
      'Masukkan tumisan bumbu ke dalam air rebusan ayam dan tambahkan garam serta merica.',
      'Masukkan bihun dan suwir ayam ke dalam mangkuk.',
      'Siram dengan kuah kaldu dan tambahkan kentang goreng, telur rebus, dan bawang goreng.',
      'Sajikan soto ayam dengan nasi dan sambal.'
    ],
    ingredients: [
      '1 ekor ayam, rebus dan suwir',
      '100 gram bihun',
      '2 kentang, goreng',
      '4 telur rebus',
      '5 siung bawang merah',
      '3 siung bawang putih',
      '2 cm jahe',
      '2 cm kunyit',
      '1 batang serai',
      'Garam dan merica secukupnya',
      'Bawang goreng untuk taburan',
      'Sambal untuk penyajian',
    ],
  ),
  Recipe(
    name: 'Bakso',
    origin: 'Malang',
    description:
        'Bakso adalah bola daging yang terbuat dari campuran daging sapi, tepung, dan bumbu. Hidangan ini biasanya disajikan dengan kuah kaldu yang hangat, mie, dan pelengkap lainnya.',
    cookingTime: '1,5 jam',
    servingSize: '5 porsi',
    difficulty: 'Sedang',
    imageAsset: 'images/bakso.jpg',
    imageUrls: [
      'images/bakso-1.jpg',
      'images/bakso-2.jpg',
      'images/bakso-3.jpg',
    ],
    instructions: [
      'Campur daging sapi, tepung, dan bumbu (garam, merica, bawang putih).',
      'Bentuk adonan menjadi bola-bola bakso.',
      'Rebus bola bakso dalam air mendidih hingga mengapung dan matang.',
      'Siapkan kuah kaldu dengan merebus tulang sapi, bawang putih, dan bumbu lainnya.',
      'Sajikan bakso dengan mie, bihun, dan pelengkap seperti daun bawang, bawang goreng, dan sambal.'
    ],
    ingredients: [
      '500 gram daging sapi giling',
      '100 gram tepung tapioka',
      '3 siung bawang putih, haluskan',
      'Garam dan merica secukupnya',
      '200 gram mie atau bihun',
      '1 batang daun bawang, iris tipis',
      'Bawang goreng untuk taburan',
      'Sambal untuk penyajian',
    ],
  ),
  Recipe(
  name: 'Gudeg',
  origin: 'Yogyakarta',
  description:
      'Gudeg adalah masakan khas Yogyakarta yang terbuat dari nangka muda yang dimasak dengan santan, sering disajikan dengan telur, ayam, dan sambal krecek.',
  cookingTime: '5 jam',
  servingSize: '6 porsi',
  difficulty: 'Sulit',
  imageAsset: 'images/gudeg.jpg',
  imageUrls: [
    'images/gudeg-1.jpg',
    'images/gudeg-2.jpg',
    'images/gudeg-3.jpg',
  ],
  instructions: [
    'Potong nangka muda menjadi bagian kecil.',
    'Rebus nangka bersama dengan bumbu (bawang merah, bawang putih, lengkuas, dan daun salam) hingga empuk.',
    'Tambahkan santan dan masak dengan api kecil hingga santan mengental dan bumbu meresap (sekitar 5 jam).',
    'Sajikan gudeg dengan nasi, telur rebus, ayam opor, dan sambal krecek.'
  ],
  ingredients: [
    '1 kg nangka muda, potong kecil',
    '500 ml santan kental',
    '3 siung bawang merah, iris halus',
    '2 siung bawang putih, iris halus',
    '2 cm lengkuas, memarkan',
    '2-3 lembar daun salam',
    'Garam secukupnya',
    '1 sendok teh gula merah',
    'Telur rebus dan ayam opor sebagai pelengkap',
  ],
),
  Recipe(
  name: 'Pempek',
  origin: 'Palembang',
  description:
      'Pempek adalah makanan khas Palembang yang terbuat dari ikan dan tepung sagu, disajikan dengan cuka atau kuah asam pedas.',
  cookingTime: '1 jam',
  servingSize: '4 porsi',
  difficulty: 'Sedang',
  imageAsset: 'images/pempek.jpg',
  imageUrls: [
    'images/pempek-1.jpg',
    'images/pempek-2.jpg',
    'images/pempek-3.jpg',
  ],
  instructions: [
    'Campur ikan giling dengan tepung sagu dan bumbu (garam, bawang putih, dan merica).',
    'Bentuk adonan menjadi pempek kapal selam dan isi dengan telur.',
    'Rebus pempek dalam air mendidih hingga mengapung, lalu angkat.',
    'Goreng pempek hingga kecokelatan.',
    'Sajikan dengan cuka atau kuah asam pedas dan irisan mentimun.'
  ],
  ingredients: [
    '300 gram ikan tenggiri, giling halus',
    '200 gram tepung sagu',
    '1 sendok teh garam',
    '2 siung bawang putih, haluskan',
    '2 butir telur, untuk isi',
    'Minyak untuk menggoreng',
    'Cuka atau kuah asam pedas untuk penyajian'
  ],
),
  Recipe(
  name: 'Ayam Taliwang',
  origin: 'Lombok',
  description:
      'Ayam Taliwang adalah hidangan ayam panggang dengan bumbu khas dari Lombok, yang disajikan dengan sambal pedas dan nasi putih.',
  cookingTime: '1 jam',
  servingSize: '3 porsi',
  difficulty: 'Sedang',
  imageAsset: 'images/ayam-taliwang.jpg',
  imageUrls: [
    'images/ayam-taliwang-1.jpg',
    'images/ayam-taliwang-2.jpg',
    'images/ayam-taliwang-3.jpg',
  ],
  instructions: [
    'Bersihkan ayam dan lumuri dengan garam serta perasan air jeruk nipis, lalu diamkan selama 15 menit.',
    'Haluskan bumbu (bawang merah, bawang putih, cabai, kemiri, dan terasi).',
    'Tumis bumbu halus hingga harum dan matang, lalu oleskan merata pada seluruh bagian ayam.',
    'Diamkan ayam selama 30 menit agar bumbu meresap.',
    'Panggang ayam di atas bara arang atau grill pan dengan api sedang, sambil sesekali diolesi dengan sisa bumbu.',
    'Panggang hingga ayam matang merata dan kulitnya berwarna kecokelatan.',
    'Sajikan Ayam Taliwang dengan sambal pedas dan nasi putih.'
  ],
  ingredients: [
    '1 ekor ayam kampung, belah jadi dua',
    '5 siung bawang merah',
    '3 siung bawang putih',
    '10 buah cabai merah keriting',
    '5 buah cabai rawit (sesuai selera)',
    '3 butir kemiri, sangrai',
    '1 sendok teh terasi, bakar',
    '1 sendok teh gula merah, sisir',
    'Garam secukupnya',
    '1 sendok makan perasan air jeruk nipis',
    'Minyak untuk menumis'
  ],
),
];
