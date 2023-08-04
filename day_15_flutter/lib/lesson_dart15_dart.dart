//ternary operator vs if else

void main() {
  String blackCat = 'BlackCat'; //case sensitive

  if (blackCat == 'blackCat') {
    print('Yes it is black cat');
  } else {
    print('Np it isnt a black cat');
  }
  blackCat == 'blackcat'
      ? print('yes it is black cat')
      : print(
          'no it isnt a black cat'); //ene ni nuhtsul shalgah uuur bichiglel ym ? uunii aras ni true, : araas ni false statement

  int a = 5 > 6 ? 6 : 5;

  int b = 0;
  if (5 > 6) {
    b = 6;
  } else {
    b = 5;
  }
  print(b);
}
