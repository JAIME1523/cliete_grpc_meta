class SvgRouter {
//las imagenes son de este color hex  #B9B9BB
  static String _getPaht({required String name}){
    return 'assets/svg/$name.svg';
  }
  static String warning =  _getPaht(name: 'warning_cone');


}

enum Pahts {
  icon('icons'),
  img('img');

  final String value;
  const Pahts(this.value);
}
