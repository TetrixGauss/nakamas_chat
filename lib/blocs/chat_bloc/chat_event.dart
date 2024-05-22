part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {

  const factory ChatEvent.sendMessage(String? convoID, String peerID, String message) = sendMessageEvent;

  const factory ChatEvent.showMessages(String convoID, String peerID) = showMessagesEvent;

  const factory ChatEvent.back() = backEvent;

}
