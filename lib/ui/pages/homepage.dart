import 'package:flutter/material.dart';


class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
   _HomePageWidgetState createState() =>  _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(0xFFF85028),
        automaticallyImplyLeading: true,
        actions: const [
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Icon(
              Icons.settings_outlined,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: const Color(0xFFEB1D1D),
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image.network(
                    'https://i.pinimg.com/originals/8d/d2/c8/8dd2c852b2c390ff464c3d1b7e05fe3f.jpg',
                    width: 380,
                    height: 450,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Text(
                    "Feed POSTs",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ),
              ),
              Text(
                    "Feed Actividades",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14.0),
                  ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/content');
        },
        tooltip: 'homepage',
        child: const Icon(Icons.login),
      ),
    );
  }
}
