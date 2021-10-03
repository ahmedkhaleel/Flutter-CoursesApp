
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_appm/strings.dart';
import 'package:flutter_appm/ui/courses/courses_page.dart';
import 'package:flutter_appm/ui/filter/filter_page.dart';

class RWCoursesApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
        appBar: AppBar(
            title: Text(Strings.appTitle),

          actions:<Widget> [
            IconButton(icon: Icon(Icons.filter_list),
                onPressed:()=> Navigator.of(context)
              .push(MaterialPageRoute( builder: (_) => FilterPage())),
            
            )
          ],
        ),
      body: CoursesPage(),
    );
  }

}