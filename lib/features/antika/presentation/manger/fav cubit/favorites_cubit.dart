import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation_project/features/antika/data/models/antika_model.dart';
import 'package:graduation_project/features/antika/data/repos/antika_repo.dart';

part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit(this.antikaRepo) : super(FavoritesInitial());
  final AntikaRepo antikaRepo;

  Future<void> fetchFavoriteAntika() async {
    emit(FavoritesLoading());
    var result = await antikaRepo.fetchFavoriteAntika();
    result.fold((failure) {
      emit(FavoritesFailure(failure.errorMessage));
    }, (showAntika) {
      emit(FavoritesSuccess(showAntika));
    });
  }
}
