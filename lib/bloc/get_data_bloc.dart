import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sample_project/get_api.dart';
import 'package:sample_project/get_data_model.dart';

part 'get_data_event.dart';
part 'get_data_state.dart';

class GetDataBloc extends Bloc<GetDataEvent, GetDataState> {
  late GetData getData;
  GetDataBloc() : super(GetDataInitial()) {
    on<FetchData>((event, emit) async {
      emit(GetDataLoading());

      try {
        getData = await getDataApi();
        if (getData.results[0].gender == 'male') {
          emit(MaleData());
        }
        if (getData.results[0].gender == 'female') {
          emit(FemaleData());
        }
      
      } catch (e) {
        emit(GetDataError());
      }
    });
  }
}
