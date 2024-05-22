part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  factory ChatState.initial() {
    return ChatState(
        chatStatus: ChatStatus.init,
        errorMessage: "",
        messages: [],
        uId: "",
        listScrollController: ScrollController(),
        textEditingController: TextEditingController());
  }

  const factory ChatState(
      {required ChatStatus chatStatus,
      required String errorMessage,
      required List<Message> messages,
      required String uId,
      required ScrollController listScrollController,
      required TextEditingController textEditingController}) = chatState;
}
