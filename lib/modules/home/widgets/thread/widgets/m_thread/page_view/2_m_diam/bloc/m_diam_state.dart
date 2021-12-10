part of 'm_diam_bloc.dart';
enum MDbStatus { initial, loading, success, failure }
class MState {
  const MState({
    this.status = MDbStatus.initial,
    this.diams = const <String>[],
  });

  final List<String> diams;
  final MDbStatus status;

  MState copyWith({
    MDbStatus? status,
    List<String>? diams,
  }) {
    return MState(
      status: status ?? this.status,
      diams: diams ?? this.diams,
    );
  }

  @override
  List<Object?> get props => [status, diams];

  @override
  String toString() {
    return '''MDiamState { status: $status, diams: ${diams.length} }''';
  }
}
