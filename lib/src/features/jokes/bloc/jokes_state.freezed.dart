// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'jokes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$JokesStateTearOff {
  const _$JokesStateTearOff();

// ignore: unused_element
  JokeAvailable call({@required JokeModel joke}) {
    return JokeAvailable(
      joke: joke,
    );
  }

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Error error([String message]) {
    return Error(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $JokesState = _$JokesStateTearOff();

/// @nodoc
mixin _$JokesState {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(JokeModel joke), {
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(JokeModel joke), {
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(JokeAvailable value), {
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(JokeAvailable value), {
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult error(Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $JokesStateCopyWith<$Res> {
  factory $JokesStateCopyWith(
          JokesState value, $Res Function(JokesState) then) =
      _$JokesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$JokesStateCopyWithImpl<$Res> implements $JokesStateCopyWith<$Res> {
  _$JokesStateCopyWithImpl(this._value, this._then);

  final JokesState _value;
  // ignore: unused_field
  final $Res Function(JokesState) _then;
}

/// @nodoc
abstract class $JokeAvailableCopyWith<$Res> {
  factory $JokeAvailableCopyWith(
          JokeAvailable value, $Res Function(JokeAvailable) then) =
      _$JokeAvailableCopyWithImpl<$Res>;
  $Res call({JokeModel joke});
}

/// @nodoc
class _$JokeAvailableCopyWithImpl<$Res> extends _$JokesStateCopyWithImpl<$Res>
    implements $JokeAvailableCopyWith<$Res> {
  _$JokeAvailableCopyWithImpl(
      JokeAvailable _value, $Res Function(JokeAvailable) _then)
      : super(_value, (v) => _then(v as JokeAvailable));

  @override
  JokeAvailable get _value => super._value as JokeAvailable;

  @override
  $Res call({
    Object joke = freezed,
  }) {
    return _then(JokeAvailable(
      joke: joke == freezed ? _value.joke : joke as JokeModel,
    ));
  }
}

/// @nodoc
class _$JokeAvailable implements JokeAvailable {
  const _$JokeAvailable({@required this.joke}) : assert(joke != null);

  @override
  final JokeModel joke;

  @override
  String toString() {
    return 'JokesState(joke: $joke)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JokeAvailable &&
            (identical(other.joke, joke) ||
                const DeepCollectionEquality().equals(other.joke, joke)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(joke);

  @JsonKey(ignore: true)
  @override
  $JokeAvailableCopyWith<JokeAvailable> get copyWith =>
      _$JokeAvailableCopyWithImpl<JokeAvailable>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(JokeModel joke), {
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(joke);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(JokeModel joke), {
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(joke);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(JokeAvailable value), {
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(JokeAvailable value), {
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class JokeAvailable implements JokesState {
  const factory JokeAvailable({@required JokeModel joke}) = _$JokeAvailable;

  JokeModel get joke;
  @JsonKey(ignore: true)
  $JokeAvailableCopyWith<JokeAvailable> get copyWith;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$JokesStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'JokesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(JokeModel joke), {
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(JokeModel joke), {
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(JokeAvailable value), {
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(JokeAvailable value), {
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements JokesState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$JokesStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'JokesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(JokeModel joke), {
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(JokeModel joke), {
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(JokeAvailable value), {
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(JokeAvailable value), {
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements JokesState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$JokesStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(Error(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error([this.message]);

  @override
  final String message;

  @override
  String toString() {
    return 'JokesState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(JokeModel joke), {
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(JokeModel joke), {
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(JokeAvailable value), {
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(JokeAvailable value), {
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements JokesState {
  const factory Error([String message]) = _$Error;

  String get message;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith;
}
