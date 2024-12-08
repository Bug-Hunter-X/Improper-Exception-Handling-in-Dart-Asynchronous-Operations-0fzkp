```dart
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! Do something with 'response.body'
      print('Success: ${response.body}');
    } else {
      // There was an error.
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error in fetchData: $e');
    // Optionally: Exit the program or trigger a retry mechanism based on error severity
    // exit(1);  // Exits the application with a non-zero exit code, indicating an error
  }
}

void main() async {
  await fetchData();
  print('Program completed. Note: error handling determines program flow after exception.');
}
```