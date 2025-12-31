import 'prefs_manager.dart';

class ChannelSettingsStore {
  static const String _smazKeyPrefix = 'channel_smaz_';

  Future<bool> loadSmazEnabled(int channelIndex) async {
    final prefs = PrefsManager.instance;
    final key = '$_smazKeyPrefix$channelIndex';
    return prefs.getBool(key) ?? false;
  }

  Future<void> saveSmazEnabled(int channelIndex, bool enabled) async {
    final prefs = PrefsManager.instance;
    final key = '$_smazKeyPrefix$channelIndex';
    await prefs.setBool(key, enabled);
  }
}
