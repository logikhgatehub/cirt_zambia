import 'api_manager.dart';

Future<dynamic> getArticlesCall({
  String title = '',
  String author = '',
  String description = '',
  String urlToImage = '',
  String publishedAt = '',
  String content = '',
  String articleUrl = '',
}) {
  return ApiManager.instance.makeApiCall(
    callName: 'Get Articles',
    apiUrl: 'http://www.cirt.zm/data/articles.json',
    callType: ApiCallType.GET,
    headers: {},
    params: {
      'title': title,
      'author': author,
      'description': description,
      'urlToImage': urlToImage,
      'publishedAt': publishedAt,
      'content': content,
      'articleUrl': articleUrl,
    },
    returnResponse: true,
  );
}

Future<dynamic> getBadWebsiteCall({
  String url = '',
}) {
  return ApiManager.instance.makeApiCall(
    callName: 'Get bad website',
    apiUrl:
        'https://ipqualityscore.com/api/json/url/w3hl4yAmGOD0FKIQdNVkbl1Pim8xPXwb/',
    callType: ApiCallType.POST,
    headers: {},
    params: {
      'url': url,
    },
    bodyType: BodyType.NONE,
    returnResponse: true,
  );
}
