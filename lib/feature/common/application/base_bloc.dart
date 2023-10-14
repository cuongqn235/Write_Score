import 'package:write_score/feature/common/application/base_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<Event, S extends BaseState> extends Bloc<Event, S> {
  BaseBloc(S initState) : super(initState);
}
