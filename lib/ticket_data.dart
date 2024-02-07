class Ticket {
  String? adult;
  String? ticketType;
  String? ticketClass;
  String? child;
  String? trainType;
  String? paymentType;

  Ticket({
    this.adult,
    this.ticketType,
    this.ticketClass,
    this.child,
    this.trainType,
    this.paymentType,
  });

  Map<String, dynamic> toJson() {
    return {
      'adult': adult!,
      'ticketType': ticketType!,
      'ticketClass': ticketClass!,
      'child': child!,
      'trainType': trainType!,
      'paymentType': paymentType!,
    };
  }
}
