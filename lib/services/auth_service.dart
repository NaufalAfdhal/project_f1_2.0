class AuthService {
  static Future<bool> login(String username, String password) async {
    // Dummy login logic
    return username == "admin" && password == "admin";
  }
}
