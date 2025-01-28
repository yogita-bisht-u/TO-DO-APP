import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp(
    title: 'Flutter Demo',
    message: 'Flutter is an open-source cross-platform mobile application development SDK created by Google. It is highly user-friendly and builds high-quality mobile applications. The intention behind this article is to guide readers through the process of building an application through flutter by creating a simple Flutter App on Android Studio.',
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert_outlined),
              onPressed: () {},
            ),
          ],
        ),
         body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            
            children: [
              const SizedBox(height: 20), 
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            alignment: Alignment.center,
            decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
              color: Colors.grey.withValues(alpha: 0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            ),
            child:
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text('Flutter', style: TextStyle(fontWeight: FontWeight.w900,color: Colors.blue,fontSize:20),textAlign: TextAlign.center, ),

                      Text('Flutter is an open-source cross-platform mobile application development SDK',textAlign:  TextAlign.center,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.green[500]),
                          Icon(Icons.star, color: Colors.green[500]),
                          Icon(Icons.star, color: Colors.green[500]),
                          Icon(Icons.star, color: Colors.black),
                          Icon(Icons.star, color: Colors.black),
                          Text('170 '),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: const Image(
                    image: AssetImage('assets/images/R.jpeg'),
                  ),
                ),

              ],
            ),
            // Add more widgets here if needed
         
          ),
            ],
         ),
      ),
      ),
          );
  }
}












class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      theme: ThemeData(
    primarySwatch: Colors.blue
    ),
      
      home: Scaffold(
        appBar:AppBar(
          title:Text('FLUTTER APPLICATION'),
          centerTitle: true,
          actions: <Widget>[
            
          IconButton(
            icon: const Icon(Icons.add_alert_outlined),
            onPressed:(){},
          ),
  ],
       
        ),
        body:
         Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
             
        
              const Divider(
                color: Color.fromARGB(255, 0, 0, 0), 
                height: 20, 
                thickness: 2, 
                indent: 20, 
                endIndent: 20,
              ),
          
            const Image(image: AssetImage('assets/images/R.jpeg'),),

            const Divider(
                color: Color.fromARGB(255, 0, 0, 0), 
                height: 20, 
                thickness: 2, 
                indent: 20, 
                endIndent: 20,
              ),
              
              ElevatedButton(
                onPressed:(){
                  Fluttertoast.showToast(
                      msg: "This is Center Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );

                },
                child: const Text('Press Me'),
              ),

               const Icon(
              Icons.access_alarms,
              color: Color.fromARGB(255, 67, 54, 244),
              size: 50.0,

              
              
              ),

            
            
             Container(
            width: 2,
           height: 100,
          color: const Color.fromARGB(255, 0, 0, 0),
),
              
            ],
          ),
        ),
      ),
    );
  }
}
