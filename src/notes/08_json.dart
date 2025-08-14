import 'dart:convert';

void main() {
    String json = '''
    {
      "usuario": "gabi@email.com",
      "senha": 123456,
      "permissoes": [
        "owner", "admin"
      ]
    }
    ''';
  print(json);
  var resultJson = jsonDecode(json);
  print(resultJson);
  print(resultJson.runtimeType); // tipo JsonMap
  print(resultJson['usuario']);
  print(resultJson['permissoes'][0]);
  
  Map mapa = {
    'nome': 'Gabi',
    'pass': 123,
    'permissions': ['owner', 'admin']
  };
  var result = jsonEncode(mapa);
  print(result);
}