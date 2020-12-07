import 'package:bikes_app/data/repository/irepository.dart';
import 'package:bloc/bloc.dart';
import 'products_event.dart';
import 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  IRepository _repository;

  ProductsBloc(this._repository);

  @override
  ProductsState get initialState => ProductsState.initail();

  @override
  Stream<ProductsState> mapEventToState(
    ProductsEvent event,
  ) async* {
    if (event is GetMenu) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..menus = null);

        final data = await _repository.getMenus();
        print('GetMenus Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..menus.replace(data));
      } catch (e) {
        print('GetMenus Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..menus = null);
      }
    }
  }
}
