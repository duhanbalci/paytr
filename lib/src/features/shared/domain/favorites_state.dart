import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/constants/resources.dart';
import 'package:paytr_test_case/src/features/shared/data/shared_preferences_repository.dart';

class FavoritesState extends StateNotifier<List<Resource>> {
  FavoritesState(this.ref) : super([]);

  Ref ref;

  void add(Resource resource) {
    state = [...state, resource];
    save().ignore();
  }

  void remove(Resource resource) {
    state = state.where((element) => element != resource).toList();
    save().ignore();
  }

  void set(Iterable<Resource> resources) {
    state = [...resources];
    save().ignore();
  }

  bool contains(Resource resource) {
    return state.contains(resource);
  }

  Future<void> save() async {
    final nonFavoriteResources =
        Resource.values.where((element) => !state.contains(element));

    await Future.wait([
      ...state.map(
          (e) => ref.read(sharedPreferencesProvider).setBool(e.text, true)),
      ...nonFavoriteResources.map(
          (e) => ref.read(sharedPreferencesProvider).setBool(e.text, false)),
    ]);
  }

  Future<void> load() async {
    if (state.isNotEmpty) {
      return;
    }

    final favorites = Resource.values
        .where((element) =>
            ref.read(sharedPreferencesProvider).getBool(element.text) ?? false)
        .toList();

    state = [...favorites];
  }
}

final favoritesProvider = StateNotifierProvider<FavoritesState, List<Resource>>(
  (ref) => FavoritesState(ref),
);
