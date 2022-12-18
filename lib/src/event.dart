import 'package:equatable/equatable.dart';

class Event extends Equatable {
  final EventName name;

  // ignore: member-ordering
  const Event({required this.name});

  // ignore: member-ordering
  factory Event.fromJson(Map<String, dynamic> json) => Event(
        name: changeEventNameFromJson(json['name']),
      );

  Map<String, dynamic> toJson() => {
        'name': changeEventNameToJson(name),
      };

  // ignore: member-ordering
  @override
  List<Object?> get props => [name];
}

enum EventName {
  sendMessage,
  ping,
  pong,
  receiveMessage,
  startTyping,
  stopTyping,
  openChannel,
  closeChannel,
  other,
}

EventName changeEventNameFromJson(String name) {
  switch (name) {
    case 'send-message':
      return EventName.sendMessage;
    case 'ping':
      return EventName.ping;
    case 'pong':
      return EventName.pong;
    case 'receive-message':
      return EventName.receiveMessage;
    case 'start-typing':
      return EventName.startTyping;
    case 'stop-typing':
      return EventName.stopTyping;
    case 'open-channel':
      return EventName.openChannel;
    case 'close-channel':
      return EventName.closeChannel;

    default:
      return EventName.other;
  }
}

String changeEventNameToJson(EventName name) {
  switch (name) {
    case EventName.sendMessage:
      return 'send-message';
    case EventName.ping:
      return 'ping';
    case EventName.pong:
      return 'pong';
    case EventName.receiveMessage:
      return 'receive-message';
    case EventName.startTyping:
      return 'start-typing';
    case EventName.stopTyping:
      return 'stop-typing';
    case EventName.openChannel:
      return 'open-channel';
    case EventName.closeChannel:
      return 'close-channel';

    default:
      return 'Other';
  }
}
