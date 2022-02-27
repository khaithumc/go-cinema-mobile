import 'package:built_collection/built_collection.dart';
import 'package:domain/model/ticket.dart';
import 'package:domain/repository/ticket_repository.dart';
import 'package:utils/utils.dart';


import '../remote/auth_client.dart';
import '../remote/base_url.dart';
import '../remote/response/ticket_response.dart';
import '../serializers.dart';

class TicketRepositoryImpl implements TicketRepository {
  final AuthHttpClient _authClient;
  final Function1<TicketResponse, Ticket> _ticketResponseToTicket;

  TicketRepositoryImpl(
    this._authClient,
    this._ticketResponseToTicket,
  );

  @override
  Stream<BuiltList<Ticket>> getTicketsByShowTimeId(String id) async* {
    final json =
        await _authClient.getJson(buildUrl('/seats/tickets/show-times/$id'));

    final tickets = deserializeBuiltList<TicketResponse>(json);

    yield tickets.map(_ticketResponseToTicket).toBuiltList();
  }
}
