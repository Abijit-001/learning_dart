
main(){
  ranMap();
}

void ranMap() {
  var details = {'Username':'tom','Password':'pass@123'};
  details['Uid'] = 'U1oo1';
  print(details);
  details.removeWhere((key, value) => value=='U1oo1');
  print(details);
  details.update('Password', (value) => value='123_123');
  print(details);

}
