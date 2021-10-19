abstract class ApiConfig {
  String get repoBaseUrl;
}

class DevApiConfig extends ApiConfig {
  @override
  String get repoBaseUrl => 'https://api.github.com/';
}

class ProdApiConfig extends ApiConfig {
  @override
  String get repoBaseUrl => 'https://api.github.com/';
}
