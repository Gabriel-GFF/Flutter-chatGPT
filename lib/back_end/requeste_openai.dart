import 'dart:convert';
import 'package:http/http.dart' as http; 

const request = 'https://api.openai.com/v1/chat/completions';
const host = "api.openai.com";
const path = "/v1/chat/completions";
const fragment = {"key": " "};//Não tem, e é um parametro nomeado opcional


String apiKey = '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'; // Substitua pela sua chave da API do ChatGPT

Future<String> enviarMensagem(String mensagem) async {
  var url = Uri.https(host,path);

  var headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $apiKey',
  };

  var body = {
    'model': 'gpt-3.5-turbo',
    'messages': [
      {'role': 'system', 'content': 'Você é um bot'},
      {'role': 'user', 'content': mensagem},
    ],
  };

  var response = await http.post(url, headers: headers, body: jsonEncode(body));

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    var resposta = data['choices'][0]['message']['content'];
    return resposta;
  } else {
    throw Exception('Erro ao fazer a requisição à API');
  }
}