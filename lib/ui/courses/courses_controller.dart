import 'package:flutter_appm/model/course.dart';
import 'package:flutter_appm/repository/repository.dart';

class CoursesController {
  final Repository _repository;
  CoursesController(this._repository);

  Future<List<Course>> fetchCourses(int domainFilter){
    return _repository.getCourses(domainFilter);
  }
}

