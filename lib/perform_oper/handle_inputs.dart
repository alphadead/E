import 'package:endroid/bots/calculator.dart';

class Handle {
   calculate(var value) {
    List numbers=[];
    if(value.contains('+')){
      numbers=value.split('+');
      for (var i = 0; i < numbers.length; i++) {

        // check if the numbers is percedded or suceeded by spaces
        numbers[i]=int.parse(numbers[i].split());
      }
      int result=Calculate().add(numbers[0],numbers[1]);
      return result;
    }
    else if(value.contains('-')){
      numbers=value.split('-');
      for (var i = 0; i < numbers.length; i++) {

        // check if the numbers is percedded or suceeded by spaces
        numbers[i]=int.parse(numbers[i].split());
      }
      int result=Calculate().substract(numbers[0],numbers[1]);
      return result;
    }
    else if(value.contains('*')){
      numbers=value.split('*');
      for (var i = 0; i < numbers.length; i++) {

        // check if the numbers is percedded or suceeded by spaces
        numbers[i]=int.parse(numbers[i].split());
      }
      int result=Calculate().multiply(numbers[0],numbers[1]);
      return result;
    }
    else if(value.contains('/')){
      numbers=value.split('/');
      for (var i = 0; i < numbers.length; i++) {

        // check if the numbers is percedded or suceeded by spaces
        numbers[i]=int.parse(numbers[i].split());
      }
      double result=Calculate().divide(numbers[0],numbers[1]);
      return result;
    }
    else if(value.contains('^')){
      numbers=value.split('^');
      for (var i = 0; i < numbers.length; i++) {

        // check if the numbers is percedded or suceeded by spaces
        numbers[i]=int.parse(numbers[i].split());
      }
      num result=Calculate().expo(numbers[0],numbers[1]);
      return result;
    }
    else{
      return "PLease enter some valid numbers";
    }

  }
  github(var value){
      // call the github api for the user inside the value and fetch the repos
      // return a list view if the present containing the repo name and 2-3 lines of read me file
      // if no data or user is there show apt message
      // in case of some error show error message
  }
  movie(var value){
    // show movies related to what the user has entered
    // list view and show the messages as apt
  }
  recommendMovie(){
    // user will just say it wants the movie recommendationss and simple TBDB api call for recommending movies
    // same can be done for recommending TV series 
  }
  findMeanings(String value){

    // simply call the api and find the meanings of the word given by user 
  }
}
