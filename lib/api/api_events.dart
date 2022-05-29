class ApiEvents {
  static const String _apiBaseUrl = "api.seatgeek.com";
  static const String _apiPath = "/events";
  static const String _clientID = "MjcxMjI3NjB8MTY1MzM4MzE1OC4yNjk5MDQx";

  Uri events(int perPage, int pageNumber) => _buildUri(
        endpoint: _apiPath,
        parametersBuilder: () => eventsQueryParameters(perPage, pageNumber),
      );

  Uri search(String query, int perPage, int pageNumber) => _buildUri(
        endpoint: _apiPath,
        parametersBuilder: () =>
            searchQueryParameters(query, perPage, pageNumber),
      );

  Uri _buildUri({
    required String endpoint,
    required Map<String, dynamic> Function() parametersBuilder,
  }) {
    return Uri(
      scheme: "https",
      host: _apiBaseUrl,
      path: endpoint,
      queryParameters: parametersBuilder(),
    );
  }

  Map<String, dynamic> eventsQueryParameters(int perPage, int page) => {
        "client_id": _clientID,
        "per_page": perPage.toString(),
        "page": page.toString(),
      };

  Map<String, dynamic> searchQueryParameters(
          String query, int perPage, int page) =>
      {
        "client_id": _clientID,
        "per_page": perPage.toString(),
        "q": query,
        "page": page.toString(),
      };
}
