import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerYStackPage extends StatefulWidget {
  const DrawerYStackPage({Key? key}) : super(key: key);

  @override
  State<DrawerYStackPage> createState() => _DrawerYStackPageState();
}

class _DrawerYStackPageState extends State<DrawerYStackPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isInvisible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xfff3e8ff),
       
        drawer: Drawer(
          elevation: 20,
          child: Column(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://images.pexels.com/photos/26746886/pexels-photo-26746886.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/5721050/pexels-photo-5721050.jpeg",
                      ),
                    ),
                    Text(
                      "Juan Lopez Perez",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      "Colaborador",
                      style: GoogleFonts.poppins(
                        color: Colors.white70,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Avatar Page"),
                onTap: () {
                  Navigator.pushNamed(context, '/avatar');
                },
              ),
              ListTile(
                leading: Icon(Icons.warning),
                title: Text("Alert 1"),
                onTap: () {
                  Navigator.pushNamed(context, '/alert');
                },
              ),
              ListTile(
                leading: Icon(Icons.warning),
                title: Text("Alert 2"),
                onTap: () {
                  Navigator.pushNamed(context, '/alert2');
                },
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text("Inputs"),
                onTap: () {
                  Navigator.pushNamed(context, '/inputs');
                },
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              child: IconButton(
                onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                icon: Icon(
                  Icons.menu,
                  color: Color(0xff9440b7),
                  size: 30.0,
                ),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  top: -150,
                  right: -150,
                  child: MyCircleWidget(
                    colors: [Color(0xffD74287), Color(0xffE99189)],
                    radius: 400,
                  ),
                ),
                Positioned(
                  left: 70,
                  top: 70,
                  child: MyCircleWidget(
                    radius: 50,
                    colors: [Color(0xff9730ec), Color(0xff0c7544)],
                  ),
                ),
                Positioned(
                  bottom: -150,
                  left: -100,
                  child: MyCircleWidget(
                    radius: 300,
                    colors: [Color(0xff9730ec), Color(0xff0c7544)],
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 220.0,
                      child: Text(
                        "Create Your Account",
                        style: TextStyle(
                          color: Color(0xff362274),
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      style: TextStyle(color: Color(0xff6200ea)),
                      cursorColor: Color(0xff6200ea),
                      decoration: InputDecoration(
                        hintText: "Email Address",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff6200ea),
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color(0xff6200ea),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff6200ea),
                            width: 1.4,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      style: TextStyle(color: Color(0xff6200ea)),
                      cursorColor: Color(0xff6200ea),
                      obscureText: isInvisible,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff6200ea),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xff6200ea),
                        ),
                        suffixIcon: IconButton(
                          icon: isInvisible
                              ? Icon(
                            Icons.visibility_off,
                            color: Color(0xff6200ea),
                          )
                              : Icon(
                            Icons.visibility,
                            color: Color(0xff6200ea),
                          ),
                          onPressed: () {
                            setState(() {
                              isInvisible = !isInvisible;
                            });
                          },
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff6200ea),
                            width: 1.4,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0),
                    Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(40.5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(4, 4),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCircleWidget extends StatelessWidget {
  final double radius;
  final List<Color> colors;

  MyCircleWidget({required this.radius, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: colors,
        ),
        boxShadow: [
          BoxShadow(
            color: colors[0].withOpacity(0.7),
            blurRadius: 12,
            offset: Offset(4, 4),
          ),
        ],
      ),
    );
  }
}
