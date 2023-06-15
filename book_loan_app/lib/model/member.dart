// 회원 정보 모델
class Member {
  DateTime registrationDate;
  String name;
  String address;
  String phoneNumber;
  DateTime? birthDate;

  Member({
    required this.registrationDate,
    required this.name,
    required this.address,
    required this.phoneNumber,
    required this.birthDate,
  });
}
