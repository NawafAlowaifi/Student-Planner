import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:student_planner/API/ApiConstants.dart';

class ApiClient with ChangeNotifier {
  int id = 0;
  setId(int id1) {
    id = id1;
    notifyListeners();
  }

  List<dynamic> Passedcourses = [];
  List<dynamic> Currentcourses = [];

  String department = '';
  setDpartment(String department) {
    this.department = department;
  }

  String emaill = '';
  String passwordd = '';
  Future<int> Login(String email, String password) async {
    String url = ApiConstants.UserUrl +
        ApiConstants.LoginEndpoint +
        email +
        '/' +
        password;
    try {
      var res = await http.get(Uri.parse(url));

      emaill = email;
      passwordd = password;
      final data = jsonDecode(res.body);

      id = data[0]['id'];
      department = data[0]['department'];
      updatePassedCoursesandcurrent();
      return data[0]['id'];
    } catch (e) {
      return -1;
    }
  }

  Future<void> Register(
      String name, String email, String password, String department) async {
    Map data = {
      'name': name,
      'password': password,
      'email': email,
      'department': department,
      'commentCertified': true
    };
    String body = json.encode(data);

    try {
      var response = await http.post(
        Uri.parse(ApiConstants.UserUrl +
            '/register?url=' +
            ApiConstants.UserUrl +
            '/'),
        headers: {
          'Content-Type': "application/json",
          "accept": "application/json",
          "Access-Control-Allow-Origin": "*"
        },
        body: body,
      );
    } catch (_) {
      throw Exception();
    }
  }

  Future<Map<String, dynamic>> getUserdata() async {
    try {
      var url = Uri.parse('${ApiConstants.UserUrl}/get/$id');

      var response = await http.get(url);

      if (response.statusCode == 200) {
        Map<String, dynamic> data =
            new Map<String, dynamic>.from(json.decode(response.body));

        return data;
      }
    } catch (e) {
      log(e.toString());
    }
    throw Exception();
  }

  Future<void> ResetPassword(String email) async {
    Map data = {
      'email': email,
    };

    try {
      var response = await http.post(
        Uri.parse(ApiConstants.UserUrl +
            '/sendResetPasswordEmail/$email?url=${ApiConstants.UserUrl}'),
        headers: {
          'Content-Type': "application/json",
          "accept": "application/json",
          "Access-Control-Allow-Origin": "*"
        },
      );
    } catch (_) {
      throw Exception();
    }
  }

  Future<List<String>> getLinks(int courseID) async {
    List<String> lists = [];
    try {
      var url = Uri.parse('${ApiConstants.courseUrl}/get/$courseID');

      var response = await http.get(url);

      if (response.statusCode == 200) {
        Map<String, dynamic> data =
            new Map<String, dynamic>.from(json.decode(response.body));

        lists.add(data['whatsapp']);
        lists.add(data['telegram']);

        return lists;
      }
    } catch (e) {
      log(e.toString());
    }
    return lists;
  }

  Future<List<dynamic>> getcoursebyday(int i) async {
    try {
      var url = Uri.parse(
          '${ApiConstants.SchduleUrl}/getCoursesByStudentIdWithDay/$id/$i');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        return json.decode(response.body);
      }
    } catch (e) {
      log(e.toString());
    }
    throw Exception();
  }

  Future<List<dynamic>> getallcoursesstudent() async {
    try {
      var url = Uri.parse('${ApiConstants.courseUrl}/getFor/$id');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        return json.decode(response.body);
      }
    } catch (e) {
      log(e.toString());
    }
    throw Exception();
  }

  Future<List<dynamic>> getallcourses() async {
    try {
      var url = Uri.parse('${ApiConstants.courseUrl}/getAll');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        return json.decode(response.body);
      }
    } catch (e) {
      log(e.toString());
    }
    throw Exception();
  }

  Future<List<String>> addcoursetoSch(String courseId) async {
    try {
      List<String> names = [];
      var response = await http.post(
        Uri.parse(
            ApiConstants.SchduleUrl + '/addCourseToSchedule/$courseId/$id/'),
        headers: {
          'Content-Type': "application/json",
          "accept": "application/json",
          "Access-Control-Allow-Origin": "*"
        },
      );
      final data = jsonDecode(response.body);
      if (response.statusCode == 200)
        return names;
      else {
        names = [
          data['trace'].toString().split(':')[2],
          data['trace'].toString().split(':')[3].split('\n')[0]
        ];
      }

      return names;
    } catch (_) {
      throw Exception();
    }
  }

  Future<void> removecoursetoSch(int courseId) async {
    try {
      var response = await http.post(
        Uri.parse(ApiConstants.SchduleUrl +
            '/deleteCourseFromSchedule/$courseId/$id/'),
        headers: {
          'Content-Type': "application/json",
          "accept": "application/json",
          "Access-Control-Allow-Origin": "*"
        },
      );
    } catch (_) {
      throw Exception();
    }
  }

  Future<void> Addtask(String title, String date, String time) async {
    Map data = {
      'title': title,
      'date': date,
      'time': time,
    };
    String body = json.encode(data);

    try {
      var response = await http.post(
        Uri.parse(ApiConstants.taskUrl + '/create/$id'),
        headers: {
          'Content-Type': "application/json",
          "accept": "application/json",
          "Access-Control-Allow-Origin": "*"
        },
        body: body,
      );
    } catch (_) {
      throw Exception();
    }
  }

  Future<void> Edit(int ID, String title, String date, String time) async {
    Map data = {
      'title': title,
      'date': date,
      'time': time,
    };
    String body = json.encode(data);

    try {
      var response = await http.post(
        Uri.parse(ApiConstants.taskUrl + '/update/$ID'),
        headers: {
          'Content-Type': "application/json",
          "accept": "application/json",
          "Access-Control-Allow-Origin": "*"
        },
        body: body,
      );
    } catch (_) {
      throw Exception();
    }
  }

  Future<List<dynamic>> getalltasks() async {
    try {
      var url = Uri.parse('${ApiConstants.taskUrl}/getAllByStudent/$id');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        return json.decode(response.body);
      }
    } catch (e) {
      log(e.toString());
    }
    throw Exception();
  }

  Future<void> DeleteTask(int ID) async {
    try {
      var response = await http.post(
        Uri.parse(ApiConstants.taskUrl + '/delete/$ID'),
        headers: {
          'Content-Type': "application/json",
          "accept": "application/json",
          "Access-Control-Allow-Origin": "*"
        },
      );
    } catch (_) {
      throw Exception();
    }
  }

  Future<void> addAbsence(int ID) async {
    try {
      var response = await http.post(
        Uri.parse(ApiConstants.absenceUrl + '/addAbsence/$id/$ID'),
        headers: {
          'Content-Type': "application/json",
          "accept": "application/json",
          "Access-Control-Allow-Origin": "*"
        },
      );
    } catch (_) {
      throw Exception();
    }
  }

  Future<void> deleteAbsence(int ID) async {
    try {
      var response = await http.post(
        Uri.parse(ApiConstants.absenceUrl + '/deleteAbsence/$id/$ID'),
        headers: {
          'Content-Type': "application/json",
          "accept": "application/json",
          "Access-Control-Allow-Origin": "*"
        },
      );
    } catch (_) {
      throw Exception();
    }
  }

  Future<void> resetAbsence(int ID) async {
    try {
      var response = await http.post(
        Uri.parse(ApiConstants.absenceUrl + '/resetAbsence/$id/$ID'),
        headers: {
          'Content-Type': "application/json",
          "accept": "application/json",
          "Access-Control-Allow-Origin": "*"
        },
      );
    } catch (_) {
      throw Exception();
    }
  }

  Future<int> getAbsence(int ID) async {
    try {
      var url = Uri.parse('${ApiConstants.absenceUrl}/get/$id/$ID');

      var response = await http.get(url);

      if (response.statusCode == 200) {
        return int.parse(response.body);
      }
    } catch (e) {
      log(e.toString());
    }
    throw Exception();
  }

  Future<void> addreview(int ID, String comment) async {
    try {
      var response = await http.post(
        Uri.parse(ApiConstants.ReviewUrl + '/save/$ID/$id/$comment'),
        headers: {
          'Content-Type': "application/json",
          "accept": "application/json",
          "Access-Control-Allow-Origin": "*"
        },
      );
    } catch (_) {
      throw Exception();
    }
  }

  Future<void> deletereview(int reviewID) async {
    try {
      var response = await http.post(
        Uri.parse(ApiConstants.ReviewUrl + '/delete/$reviewID'),
        headers: {
          'Content-Type': "application/json",
          "accept": "application/json",
          "Access-Control-Allow-Origin": "*"
        },
      );
    } catch (_) {
      throw Exception();
    }
  }

  Future<List<dynamic>> getallreviews(int courseID) async {
    try {
      var url = Uri.parse('${ApiConstants.ReviewUrl}/getAllByCourse/$courseID');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        return json.decode(response.body);
      }
    } catch (e) {
      log(e.toString());
    }
    throw Exception();
  }

  Future<List<dynamic>> getStudentReviews() async {
    try {
      var url = Uri.parse('${ApiConstants.ReviewUrl}/getAllByUser/$id');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        return json.decode(response.body);
      }
    } catch (e) {
      log(e.toString());
    }
    throw Exception();
  }

  Future<List<dynamic>> getallreviewsadmin() async {
    try {
      var url = Uri.parse('${ApiConstants.ReviewUrl}/getAll');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        return json.decode(response.body);
      }
    } catch (e) {
      log(e.toString());
    }
    throw Exception();
  }

  Future<void> Blockuser(int studentid) async {
    try {
      var response = await http.post(
        Uri.parse(ApiConstants.UserUrl + '/blockUser/$studentid'),
        headers: {
          'Content-Type': "application/json",
          "accept": "application/json",
          "Access-Control-Allow-Origin": "*"
        },
      );
    } catch (_) {
      throw Exception();
    }
  }

  Future<List<dynamic>> getBlockedUsers() async {
    try {
      var url = Uri.parse('${ApiConstants.UserUrl}/getBlockedUsers');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        return json.decode(response.body);
      }
    } catch (e) {
      log(e.toString());
    }
    throw Exception();
  }

  Future<void> unBlockuser(int studentid) async {
    try {
      var response = await http.post(
        Uri.parse(ApiConstants.UserUrl + '/unblockUser/$studentid'),
        headers: {
          'Content-Type': "application/json",
          "accept": "application/json",
          "Access-Control-Allow-Origin": "*"
        },
      );
    } catch (_) {
      throw Exception();
    }
  }

  Future<void> DeleteCourse(int courseid) async {
    try {
      var response = await http.post(
        Uri.parse(ApiConstants.courseUrl + '/delete/$courseid'),
        headers: {
          'Content-Type': "application/json",
          "accept": "application/json",
          "Access-Control-Allow-Origin": "*"
        },
      );
    } catch (_) {
      throw Exception();
    }
  }

  Future<void> Addcourse(
    String code,
    String startTime,
    String endTime,
    String days,
    String wtslink,
    String tellink,
  ) async {
    Map data = {
      'code': code,
      "startTime": startTime,
      "endTime": endTime,
      "days": days,
      "color": '',
      "whatsapp": wtslink,
      "telegram": tellink,
      'prerequisite': []
    };
    String body = json.encode(data);
    try {
      var response = await http.post(Uri.parse(ApiConstants.courseUrl + '/add'),
          headers: {
            'Content-Type': "application/json",
            "accept": "application/json",
            "Access-Control-Allow-Origin": "*"
          },
          body: body);
    } catch (_) {
      throw Exception();
    }
  }

  Future<void> UpdateStudent(
    String name,
  ) async {
    Map data = {
      'name': name,
    };
    String body = json.encode(data);
    try {
      var response =
          await http.post(Uri.parse(ApiConstants.UserUrl + '/update/$id'),
              headers: {
                'Content-Type': "application/json",
                "accept": "application/json",
                "Access-Control-Allow-Origin": "*"
              },
              body: body);
    } catch (_) {
      throw Exception();
    }
  }

  Future<List<String>> Passcourse(String coursecode) async {
    List<String> names = [];
    try {
      var response = await http.post(
        Uri.parse(ApiConstants.PlanUrl + '/addPassedCourses/$id/$coursecode'),
        headers: {
          'Content-Type': "application/json",
          "accept": "application/json",
          "Access-Control-Allow-Origin": "*"
        },
      );
      final data = jsonDecode(response.body);

      if (response.statusCode == 200)
        return names;
      else {
        names = [
          data['trace'].toString().split(':')[1],
        ];
      }

      return names;
    } catch (_) {
      throw Exception();
    }
  }

  Future<void> updatePassedCoursesandcurrent() async {
    try {
      var url = Uri.parse('${ApiConstants.PlanUrl}/get/$id');
      var response = await http.get(url);
      var data = json.decode(response.body);

      if (response.statusCode == 200) {
        Passedcourses = data['passedCourses'];
        Currentcourses = data['currentCourses'];
        notifyListeners();
      }
    } catch (e) {
      log(e.toString());
    }
    throw Exception();
  }

  Future<void> DeletePassedCourse(String courseCode) async {
    try {
      var url = Uri.parse(
          '${ApiConstants.PlanUrl}/deletePassedCourses/$id/$courseCode');
      var response = await http.post(
        url,
        headers: {
          'Content-Type': "application/json",
          "accept": "application/json",
          "Access-Control-Allow-Origin": "*"
        },
      );

      if (response.statusCode == 200) {
        updatePassedCoursesandcurrent();
        notifyListeners();
      }
    } catch (e) {
      log(e.toString());
    }
    throw Exception();
  }
}
