class ApiConstants {
  static String baseUrl = '188.50.167.48';
  static String UserUrl = 'http://$baseUrl:8080/api/v1/user';
  static String SchduleUrl = 'http://$baseUrl:8080/api/v1/schedule';
  static String courseUrl = 'http://$baseUrl:8080/api/v1/course';
  static String taskUrl = 'http://$baseUrl:8080/api/v1/task';
  static String absenceUrl = 'http://$baseUrl:8080/api/v1/absence';
  static String ReviewUrl = 'http://$baseUrl:8080/api/v1/review';
  static String PlanUrl = 'http://$baseUrl:8080/api/v1/plan';

  static String LoginEndpoint = '/login/';
  static String geturl(String username, String password) {
    return UserUrl + LoginEndpoint + username + '/' + password;
  }
}
