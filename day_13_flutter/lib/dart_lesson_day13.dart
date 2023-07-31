var tortnuud = <String>['pineapple', 'cake', 'donut', 'biscuit'];
List<String> test = ['test1', 'test2'];
//spread operator buyu 2 array g hoornd ni nemj shine array uusgej bn
//3 tsegiig spread operator gene
var shienTortnuud = <String>[
  'cream',
  'chocolate',
  ...tortnuud
]; //while for loop ashiglaj blno
//array inside array boloh ... tseggui tohioldold
var tortInsideTort = ['cherry', tortnuud];
void main() {
  print(tortnuud);
  print(shienTortnuud);
  print(tortInsideTort);
}
