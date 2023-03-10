import 'package:ui_ux_design/import/import.dart';

class signUpScreen extends StatefulWidget {
  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool _obscurePasswordText = true;
  bool _obscureConfirmPasswordText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              margin: EdgeInsets.only(top: 20),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your email here'),
              ),
            ),
            Container(
              width: 400,
              margin: EdgeInsets.only(top: 20),
              child: TextField(
                controller: passwordController,
                obscureText: _obscurePasswordText,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Input your password',
                  suffixIcon: IconButton(
                    icon: Icon(_obscurePasswordText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obscurePasswordText = !_obscurePasswordText;
                      });
                    },
                  ),
                ),
              ),
            ),
            Container(
              width: 400,
              margin: EdgeInsets.only(top: 20),
              child: TextField(
                controller: confirmPasswordController,
                obscureText: _obscurePasswordText,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm your password',
                  suffixIcon: IconButton(
                    icon: Icon(_obscurePasswordText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obscureConfirmPasswordText = !_obscureConfirmPasswordText;
                      });
                    },
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                MaterialPageRoute(builder: ((context) => const MyHomePage())),
                  );
                },
                child: Text("Sign Up"),
              ),
            ),
            OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Colors.blueGrey),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              onPressed: () async {
                /* 
              setState(() {
                _isSigningIn = true;
              });

              // TODO: Add method call to the Google Sign-In authentication

              setState(() {
                _isSigningIn = false;
              }); */
                Navigator.of(context).push(
                MaterialPageRoute(builder: ((context) => const MyHomePage())),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Image(
                      image: AssetImage("assets/logo/google_logo.jpg"),
                      height: 35.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Sign in with Google',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 600,
              child: Divider(
                color: Colors.grey[300],
                thickness: 2,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Already have an account?"),
                  InkWell(
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => loginPage()),
                      );
                    },
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
