part of 'home_bloc.dart';

enum AllHomeStatus { initial, success, error, loading }

extension HomeStatusX on AllHomeStatus {
  bool get isInitial => this == AllHomeStatus.initial;
  bool get isSuccess => this == AllHomeStatus.success;
  bool get isError => this == AllHomeStatus.error;
  bool get isLoading => this == AllHomeStatus.loading;
}

class HomeState extends Equatable {

  final AllHomeStatus status;

  const HomeState(this.status);

  @override
  List<Object?> get props => [status];

  HomeState copyWith(AllHomeStatus status) {
    return HomeState(this.status);
  }
}