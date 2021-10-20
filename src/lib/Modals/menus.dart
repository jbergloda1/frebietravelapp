class MyMenu {
  int id;
  String name;

  MyMenu({
    required this.id,
    required this.name,
  });
}

List<MyMenu> menus = [
  MyMenu(id: 1, name: 'ALL'),
  MyMenu(id: 2, name: 'MUSEUMS'),
  MyMenu(id: 3, name: 'HISTORICAL PLACES'),
  MyMenu(id: 4, name: 'RESTAURANT'),
];
