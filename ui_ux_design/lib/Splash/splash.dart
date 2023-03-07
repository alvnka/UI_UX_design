import 'package:ui_ux_design/import/import.dart';

class splashPage extends StatelessWidget {
  ColorFilter? colorFilter = ColorFilter.mode(
  Colors.black.withOpacity(0.9),
  BlendMode.darken,
);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
          ),
        ),
        ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                const AssetImage("assets/images/istockphoto-155344110-1024x1024.jpg"),
            fit: BoxFit.cover,
            colorFilter: colorFilter!,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: SizedBox(
                  width: 500,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => loginPage())),
                      );
                    },
                    child: const Text("Login"),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: SizedBox(
                  width: 500,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: ((context) => signUpScreen())),
                      );
                    },
                    child: const Text("SignUp"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
