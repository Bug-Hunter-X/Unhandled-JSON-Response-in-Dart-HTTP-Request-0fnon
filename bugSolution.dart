```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Check if jsonData is a list and not empty
      if (jsonData is List && jsonData.isNotEmpty) {
        // Check if the first element is a map and contains 'name'
        if (jsonData[0] is Map && jsonData[0].containsKey('name')) {
          final firstElement = jsonData[0];
          print(firstElement['name']);
        } else {
          print('JSON data does not contain the expected structure.');
        }
      } else {
        print('JSON response is empty or not a list.');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```