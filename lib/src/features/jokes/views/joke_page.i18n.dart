import 'package:i18n_extension/i18n_extension.dart';

const kAppTitle = 'FlutterJokes';
const kTellJokeMessage = 'Click the button below for me to think about a joke.';
const kGiveMeAJoke = 'Give me a joke';
const kThinkingMessage = "Umm, let me think a better one.";

/// This extension method contains all
/// the strings for the Jokes view
extension JokesStrings on String {
  static final _t = Translations('en_us') +
      {
        'en_us': kAppTitle,
        'es_es': 'FlutterBromas',
      } +
      {
        'en_us': kTellJokeMessage,
        'es_es': 'Dale click al botón de abajo para pensar en una broma.',
      } +
      {
        'en_us': kGiveMeAJoke,
        'es_es': 'Dame una broma',
      } +
      {
        'en_us': kThinkingMessage,
        'es_es': 'Mmm, dejame pensar una mejor',
      };

  /// Getter to translate the string
  String get i18n => localize(this, _t);

  /// Method for interpolating strings
  String fill(List<Object> params) => localizeFill(this, params);

  /// Method for pluralizing strings
  String plural(int value) => localizePlural(value, this, _t);

  /// Method for creating custom modifiers according to any conditions
  String version(Object modifier) => localizeVersion(modifier, this, _t);

  /// Method for retrieving all the custom modifiers
  Map<String, String> allVersions() => localizeAllVersions(this, _t);
}
