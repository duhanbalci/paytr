import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:paytr_test_case/src/features/detail/domain/address/address.dart';
import 'package:paytr_test_case/src/features/detail/domain/appliance/appliance.dart';
import 'package:paytr_test_case/src/features/detail/domain/bank/bank.dart';
import 'package:paytr_test_case/src/features/detail/domain/beer/beer.dart';
import 'package:paytr_test_case/src/features/detail/domain/blood_type/blood_type.dart';
import 'package:paytr_test_case/src/features/detail/domain/credit_card/credit_card.dart';
import 'package:paytr_test_case/src/features/detail/domain/user/user.dart';
import 'package:paytr_test_case/src/features/shared/data/dio.dart';

class ResourcesRepository {
  ResourcesRepository(this.ref);

  Ref ref;

  final userBox = Hive.box('user');
  final addressBox = Hive.box('address');
  final bankBox = Hive.box('bank');
  final applianceBox = Hive.box('appliance');
  final beerBox = Hive.box('beer');
  final bloodTypeBox = Hive.box('bloodType');
  final creditCardBox = Hive.box('creditCard');

  Future<User> fetchUser() async {
    final dio = ref.read(dioProvider);

    try {
      final res = await dio.get('/users');

      final user = User.fromJson(res.data);

      return user;
    } catch (e) {
      rethrow;
    }
  }

  Future<Address> fetchAddress() async {
    final dio = ref.read(dioProvider);

    try {
      final res = await dio.get('/addresses');

      final address = Address.fromJson(res.data);

      return address;
    } catch (e) {
      rethrow;
    }
  }

  Future<Bank> fetchBank() async {
    final dio = ref.read(dioProvider);

    try {
      final res = await dio.get('/banks');

      final bank = Bank.fromJson(res.data);

      return bank;
    } catch (e) {
      rethrow;
    }
  }

  Future<Appliance> fetchAppliance() async {
    final dio = ref.read(dioProvider);

    try {
      final res = await dio.get('/appliances');

      final appliance = Appliance.fromJson(res.data);

      return appliance;
    } catch (e) {
      rethrow;
    }
  }

  Future<Beer> fetchBeer() async {
    final dio = ref.read(dioProvider);

    try {
      final res = await dio.get('/beers');

      final beer = Beer.fromJson(res.data);

      return beer;
    } catch (e) {
      rethrow;
    }
  }

  Future<BloodType> fetchBloodType() async {
    final dio = ref.read(dioProvider);

    try {
      final res = await dio.get('/blood_types');

      final bloodType = BloodType.fromJson(res.data);

      return bloodType;
    } catch (e) {
      rethrow;
    }
  }

  Future<CreditCard> fetchCreditCard() async {
    final dio = ref.read(dioProvider);

    try {
      final res = await dio.get('/credit_cards');

      final creditCard = CreditCard.fromJson(res.data);

      return creditCard;
    } catch (e) {
      rethrow;
    }
  }

  // user
  void saveUser(User user) {
    userBox.put(user.id, jsonEncode(user.toJson()));
  }

  User? getUser(int id) {
    return User.fromJson(jsonDecode(userBox.get(id)));
  }

  List<User> getUsers() {
    return userBox.values.map((e) => User.fromJson(jsonDecode(e))).toList();
  }

  // address
  void saveAddress(Address address) {
    addressBox.put(address.zipCode, jsonEncode(address.toJson()));
  }

  Address? getAddress(String zipCode) {
    return Address.fromJson(jsonDecode(addressBox.get(zipCode)));
  }

  List<Address> getAddresses() {
    return addressBox.values
        .map((e) => Address.fromJson(jsonDecode(e)))
        .toList();
  }

  // bank
  void saveBank(Bank obj) {
    bankBox.put(obj.id, jsonEncode(obj.toJson()));
  }

  Bank? getBank(int id) {
    return Bank.fromJson(jsonDecode(bankBox.get(id)));
  }

  List<Bank> getBanks() {
    return bankBox.values.map((e) => Bank.fromJson(jsonDecode(e))).toList();
  }

  // appliance
  void saveAppliance(Appliance obj) {
    applianceBox.put(obj.id, jsonEncode(obj.toJson()));
  }

  Appliance? getAppliance(int id) {
    return Appliance.fromJson(jsonDecode(applianceBox.get(id)));
  }

  List<Appliance> getAppliances() {
    return applianceBox.values
        .map((e) => Appliance.fromJson(jsonDecode(e)))
        .toList();
  }

  // beer
  void saveBeer(Beer obj) {
    beerBox.put(obj.id, jsonEncode(obj.toJson()));
  }

  Beer? getBeer(int id) {
    return Beer.fromJson(jsonDecode(beerBox.get(id)));
  }

  List<Beer> getBeers() {
    return beerBox.values.map((e) => Beer.fromJson(jsonDecode(e))).toList();
  }

  // bloodType
  void saveBloodType(BloodType obj) {
    bloodTypeBox.put(obj.id, jsonEncode(obj.toJson()));
  }

  BloodType? getBloodType(int id) {
    return BloodType.fromJson(jsonDecode(bloodTypeBox.get(id)));
  }

  List<BloodType> getBloodTypes() {
    return bloodTypeBox.values
        .map((e) => BloodType.fromJson(jsonDecode(e)))
        .toList();
  }

  // creditCard
  void saveCreditCard(CreditCard obj) {
    creditCardBox.put(obj.id, jsonEncode(obj.toJson()));
  }

  CreditCard? getCreditCard(int id) {
    return CreditCard.fromJson(jsonDecode(creditCardBox.get(id)));
  }

  List<CreditCard> getCreditCards() {
    return creditCardBox.values
        .map((e) => CreditCard.fromJson(jsonDecode(e)))
        .toList();
  }
}

final resourcesRepositoryProvider = Provider<ResourcesRepository>((ref) {
  return ResourcesRepository(ref);
});
