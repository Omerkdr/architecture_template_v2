import 'package:equatable/equatable.dart';

final class HomeState extends Equatable {
  const HomeState({required this.isLoading});

  final bool isLoading;

  @override
  // TODO: implement props
  // props: if u wanna change the any variable add here in array
  List<Object?> get props => [isLoading];
}
