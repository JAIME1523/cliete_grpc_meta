import 'package:shared_preferences/shared_preferences.dart';


class LocalStorage {
  static SharedPreferences? prefs;

 static Future configurePrefs() async => prefs = await SharedPreferences.getInstance();
  //int
  static Future<void> setInt(PreferencesInt name, int data) async => await prefs!.setInt(name.value, data);
  static int? getInt(PreferencesInt name) => prefs!.getInt(name.value);

  //String
  static Future<void> setString(PreferencesString name, String data) async => await prefs!.setString(name.value, data);
  static String getString(PreferencesString name) => prefs!.getString(name.value) ?? '';

  //bool
  static Future<void> setBool(PreferencesBool name, bool data) async => await prefs!.setBool(name.value, data);
  static bool getBool(PreferencesBool name) => prefs!.getBool(name.value) ?? false;

  static  remove(String name) => prefs!.remove(name);

  static  removeAll(String name) => prefs!.clear();

   static Future<int> getSaveCounter() async {
    int stan = prefs!.getInt(PreferencesInt.counter.value) ?? 0;
    await prefs!.setInt(PreferencesInt.counter.value, stan + 1);
    print(' ********este el conunter se guarda El counter ${stan+1}');

    return stan;
  } 
    static int getPort()  {
    int por = prefs!.getInt(PreferencesInt.port.value) ?? 8080;
    return por;
  } 

  static String getIpAdrres(){
       String por = prefs!.getString(PreferencesString.ipAddres.value) ?? '192.168.100.30';
    return por;
  }
}

enum PreferencesInt {
  userId('user_id'),
  counter('counter'),
  port('port');



  final String value;
  const PreferencesInt(this.value);
}

enum PreferencesString {
  token('token'),
  ipAddres('ipAddres'),
  config('config');


  final String value;
  const PreferencesString(this.value);
}

enum PreferencesBool {
  isConfigured('isConfigured'),
  isMatch('isMatch');

  final String value;
  const PreferencesBool(this.value);
}
