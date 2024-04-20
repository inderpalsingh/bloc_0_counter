import 'package:bloc_0/bloc/count_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountBloc extends Bloc<CountEvent, int>{
  
  CountBloc(): super(0){
    on<IncrementCount>((event, emit){
      /// build logic here.... 
      emit(state + 1);
      
    });
    
    on<DecrementCount>((event, emit){
      /// build logic here...
      if(state >0){
        emit(state -1);
      } 
      
    });
    
  }
  
}