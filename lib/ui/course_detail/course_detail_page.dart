import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appm/model/course.dart';
import 'package:flutter_appm/ui/course_detail/image_container.dart';
import 'package:flutter_appm/utils/string_extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseDetailsPage extends StatelessWidget {
  final Course course;

  CourseDetailsPage({Key key, this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildImage(),
          _buildMain(context),
          _buildDetails(context),
          FlatButton(onPressed: () => _launchCourse(course.courseId), child: Text("View Course")),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Hero(
      tag: "cardArtwork-${course.courseId}",
      transitionOnUserGestures: true,
      child: ImageContainer(
        height: 200,
        url: course.artworkUrl,
      ),
    );
  }

  Widget _buildMain(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            course.name,
            style: Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 24),
          ),
          Text(
            course.description,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }

  Widget _buildDetails(BuildContext context) {
    final style = TextStyle(fontSize: 16);

    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          Text(
            'Domain(s): ${course.domainsString}',
            style: style,
          ),
          Text(
            'Level: ${course.difficulty.capitalize()}',
            style: style,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              '${course.contributors}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  void _launchCourse(String courseId){
    launch("https://raywenderlich.com/$courseId");
  }
}