import 'dart:math';
class Calculate{

  int add(var a,var b){
    return int.parse(a)+int.parse(b);
  }
  int substract(var a,var b){
    return int.parse(a)-int.parse(b);
  }
  int multiply(var a,var b){
    return int.parse(a)*int.parse(b);
  }
  double divide(var a,var b){
    return int.parse(a)/int.parse(b);
  }
  num expo(var a,var b){
    return pow(int.parse(a),int.parse(b));
    // return a;
  }
}