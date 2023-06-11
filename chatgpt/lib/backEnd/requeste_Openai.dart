/*import 'package:http/http.dart'; 

Future<void> fetchChatGptResponse() async {
  var url = Uri.parse('https://api.openai.com/v1/chat/completions');
  var headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer YOUR_API_KEY',
  };

  var response = await http.post(url, headers: headers, body: {
    'messages': [
      {'role': 'system', 'content': 'You are a helpful assistant.'},
      {'role': 'user', 'content': 'Who won the world series in 2020?'}
    ],
    'max_tokens': 100,
  });

  print(response.body);*/