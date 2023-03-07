import 'package:ui_ux_design/import/import.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Your Name"),
            accountEmail: Text("youremail@example.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                "Y",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: ((context) => const Placeholder())),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.align_vertical_bottom),
            title: const Text("Schools"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: ((context) => const Placeholder())),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.align_vertical_bottom),
            title: const Text("Performance"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: ((context) => const Placeholder())),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: ((context) => const Placeholder())),
              );
            },
          ),
        ],
      ),
    );
  }
}
