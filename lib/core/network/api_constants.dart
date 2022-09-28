class ApiConstants {
  static const String baseUrl = 'https://api.nasa.gov';
  static const String articleBaseUrl = 'https://api.spaceflightnewsapi.net/v3';
  static const String apiKey = 'KfnnCbfweX5CGWyERbhxAh5Qebldqy1VitvYc84n';

  static String apodPath(int count) => '$baseUrl/planetary/apod?api_key=$apiKey&count=$count';
  static String articlesPath()=>'$articleBaseUrl/articles';
  static String articlePath()=>'$articleBaseUrl/articles';
}
