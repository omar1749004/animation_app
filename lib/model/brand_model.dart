class BrandModel {
  final String imageUrl;
  final String name;

  BrandModel({required this.imageUrl, required this.name});
}

List<BrandModel> brandList1 = [
  BrandModel(
    imageUrl: 'assets/images/1 (1).png',
    name: 'Sony',
  ), // :contentReference[oaicite:0]{index=0}
  BrandModel(
    imageUrl: 'assets/images/1ec.png',
    name: 'NVIDIA',
  ), // :contentReference[oaicite:1]{index=1}
];

List<BrandModel> brandList2 = [
  BrandModel(
imageUrl: 'assets/images/2ec.png',
    name: 'AMD',
  ), // :contentReference[oaicite:2]{index=2}
  BrandModel(
imageUrl: 'assets/images/3ec.png',
    name: 'Dell',
  ), // :contentReference[oaicite:3]{index=3}
  BrandModel(
imageUrl: 'assets/images/4ec.png',
    name: 'ASUS',
  ), // :contentReference[oaicite:4]{index=4}
];

List<BrandModel> brandList3 = [
  BrandModel(
imageUrl: 'assets/images/2.png',
    name: 'Microsoft',
  ), // :contentReference[oaicite:5]{index=5}
  BrandModel(
imageUrl: 'assets/images/3.png',
    name: 'Samsung',
  ), // :contentReference[oaicite:6]{index=6}
  BrandModel(
imageUrl: 'assets/images/4.jpg',
    name: 'HP',
  ), // :contentReference[oaicite:7]{index=7}
  BrandModel(
imageUrl: 'assets/images/Rectangle2.png',
    name: 'Intel',
  ), // :contentReference[oaicite:8]{index=8}
  BrandModel(
imageUrl: 'assets/images/Rectangle3.png',
    name: 'Google',
  ), // Official Google branding URL
];
