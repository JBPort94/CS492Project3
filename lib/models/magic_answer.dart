import 'dart:math';

class MagicAnswer{

  final Random random = Random();
  final answerBank = [
    'YES.',
    'Totally My Dude!',
    'Did you really just ask that?',
    'Possibly....',
    'When pigs fly.',
    'I\'m busy, ask again.',
    'Honestly, I have no idea.',
    'There\'s a chance!'
  ];
  int _chosenAnswer = 0;
  
  String get chosenAnswer => answerBank[_chosenAnswer];

  void shake() {
    _chosenAnswer = random.nextInt(answerBank.length);
  }

}