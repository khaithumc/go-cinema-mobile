import 'package:built_collection/src/list.dart';
import 'package:domain/model/promotion.dart';
import 'package:domain/repository/promotion_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:utils/utils.dart';

import '../remote/auth_client.dart';
import '../remote/base_url.dart';
import '../remote/response/promotion_response.dart';
import '../serializers.dart';

class PromotionRepositoryImpl implements PromotionRepository {
  final AuthHttpClient _authClient;
  final Function1<PromotionResponse, Promotion> _promotionResponseToPromotion;

  PromotionRepositoryImpl(this._authClient, this._promotionResponseToPromotion);

  @override
  Stream<BuiltList<Promotion>> getPromotions(String showTimeId) {
    final jsonToResponses = (dynamic json) => deserializeBuiltList<PromotionResponse>(json).toBuiltList();

    final toDomain = (BuiltList<PromotionResponse> responses) => [
          for (final response in responses)
            _promotionResponseToPromotion(response)
        ].build();

    return Rx.fromCallable(
      () => _authClient
          .getJson(buildUrl('/promotions/show-times/$showTimeId'))
          .then(jsonToResponses.pipe(toDomain)),
    );
  }
}
