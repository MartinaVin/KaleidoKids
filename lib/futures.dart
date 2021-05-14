import 'package:http/http.dart';

Future<String> fetch_data() async {
  final futureresponse = get(Uri.parse("https://randomuser.me/api/"));
  final response = await futureresponse;
  //aspetta 10 secondi dopo aver ricevuto i dati, rallenta l'esecuzione del codice
  //await Future.delayed(Duration(seconds: 10));
  //data una lista di future, ritorna il vaore ritornato dal future che completa prima, scartando gli altri
  //Future.any(futures)
  //data un lista di future, completa quando tutti i future sono completi, utile per parallelizzare istruzioni
  //Future.wait(futures)
  return response.body;
}
