import 'package:built_collection/built_collection.dart';
import 'package:built_collection/src/map.dart';
import 'package:khaithu/data/remote/response/error_response.dart';
import 'package:logger/logger.dart' as log;
import 'package:rx_shared_preferences/rx_shared_preferences.dart';
import 'package:tuple/tuple.dart';

import '../../domain/model/show_time.dart';
import '../../domain/repository/show_times_repository.dart';
import '../mappers.dart' as mappers;
import '../remote/auth_client.dart';
import '../remote/base_url.dart';
import '../remote/response/show_time_response.dart';
import '../serializers.dart';

class ShowTimesRepositoryImpl implements ShowTimesRepository {
  final AuthClient _authClient;
  final logger = log.Logger();

  ShowTimesRepositoryImpl(this._authClient);

  @override
  Future<BuiltList<ShowTime>> getShowTimesByTheatreId(
      String id, int page, int perPage) async {
    try {
      return await _authClient
          .getBody(
        buildUrl(
          '/admin-show-times/theatres/$id',
          {
            'page': page.toString(),
            'per_page': perPage.toString(),
          },
        ),
      ).then(( value) {
        logger.d('ahsbdjasd $value');
        return deserializeBuiltList<ShowTimeResponse>(value).map(mappers.showTimeResponseToShowTime).toBuiltList();
      }
      );
    } on ErrorResponse catch (e) {
      logger.e(e);
      rethrow;
    }

  }

  @override
  Future<void> addShowTime(
      {required String movieId,
        required String theatreId,
        required DateTime startTime,
        required List<Tuple2<String?, int>> tickets}) async {
    final res = await _authClient.postBody(
      buildUrl('/admin-show-times'),
      body: {
        'movie': movieId,
        'theatre': theatreId,
        'start_time': startTime.toUtc().toIso8601String(),
        'tickets': [
          for (final t in tickets)
            {
              'seat': t.item1,
              'price': t.item2,
            },
        ],
      },
    );

    print(res);
  }

  @override
  Future<List<Tuple2<DateTime, DateTime>>> availablePeriods(
      String theatre_id, DateTime day) async {
    final res = await _authClient.getBody(
      buildUrl(
        '/admin-show-times/available-periods',
        {
          'theatre_id': theatre_id,
          'day': day.toUtc().toIso8601String(),
        },
      ),
    ) as List;

    return [
      for (final r in res)
        Tuple2(
          DateTime.parse(r['start'])
              .also((v) => print('$v ${v.isUtc}'))
              .toLocal(),
          DateTime.parse(r['end'])
              .also((v) => print('$v ${v.isUtc}'))
              .toLocal(),
        )
    ];
  }

  @override
  Future<BuiltMap<String, int>> report(String theatre_id, String MMyyyy) async {
    final map = await _authClient.getBody(
      buildUrl(
        '/admin-show-times/report',
        {
          'MMyyyy': MMyyyy,
          'theatre_id': theatre_id,
        },
      ),
    ) as Map<String, dynamic>;

    return BuiltMap<String, int>.from(map);
  }
}

extension _E<T> on T {
  T also(void Function(T) block) {
    block(this);
    return this;
  }
}