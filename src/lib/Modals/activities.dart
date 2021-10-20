class MyActivities {
  int id;
  String name;
  bool isCentraal;
  double rating;
  String isOpen;
  String time;
  String imgUrl;

  MyActivities(
      {required this.id,
      required this.name,
      required this.isCentraal,
      required this.rating,
      required this.isOpen,
      required this.time,
      required this.imgUrl});
}

List<MyActivities> activities = [
  MyActivities(
    id: 1,
    name: 'Taking a boat tour through Canals',
    isCentraal: true,
    rating: 4.1,
    time: '12 min',
    isOpen: 'Closest 7.35pm',
    imgUrl: 'assets/images/1.png',
  ),
  MyActivities(
    id: 1,
    name: 'Biking the City',
    isCentraal: false,
    rating: 5.0,
    time: '12 min',
    isOpen: 'Closest 8.35am',
    imgUrl: 'assets/images/3.png',
  ),
  MyActivities(
    id: 1,
    name: 'I Amsterdam',
    isCentraal: false,
    rating: 3.2,
    time: '3 min',
    isOpen: 'Closest 1.35pm',
    imgUrl: 'assets/images/4.png',
  ),
  MyActivities(
    id: 1,
    name: 'Another Activites',
    isCentraal: false,
    rating: 3.5,
    time: '1 hours',
    isOpen: 'Closest 6.35pm',
    imgUrl: 'assets/images/2.png',
  ),
];
