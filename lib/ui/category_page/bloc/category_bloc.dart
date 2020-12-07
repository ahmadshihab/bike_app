import 'package:bikes_app/data/repository/irepository.dart';
import 'package:bloc/bloc.dart';
import 'category_event.dart';
import 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  IRepository _repository;

  CategoryBloc(this._repository);

  @override
  CategoryState get initialState => CategoryState.initail();

  @override
  Stream<CategoryState> mapEventToState(
    CategoryEvent event,
  ) async* {
    if (event is ClearError) {
      yield state.rebuild((b) => b..error = "");
    }
    if (event is GetCategory) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..menus = null);
        final data = await _repository.getCategory();
        print('GetOrder Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..menus.replace([data]));
      } catch (e) {
        print(e.toString());
      }
    }
  }
}
