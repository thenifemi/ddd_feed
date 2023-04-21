// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ddd_feed/application/posts/posts_bloc.dart' as _i5;
import 'package:ddd_feed/domain/posts/post_interface.dart' as _i3;
import 'package:ddd_feed/infrastructure/posts/posts_repository.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.PostsInterface>(() => _i4.PostsRepository());
    gh.factory<_i5.PostsBloc>(() => _i5.PostsBloc(gh<_i3.PostsInterface>()));
    return this;
  }
}
