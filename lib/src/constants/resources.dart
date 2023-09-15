enum Resource {
  users('USERS'),
  addresses('ADDRESSES'),
  banks('BANKS'),
  appliances('APPLIANCES'),
  beers('BEERS'),
  bloodTypes('BLOOD_TYPES'),
  creditCards('CREDIT_CARDS');

  const Resource(this.text);

  final String text;

  static Resource fromText(String text) {
    for (final action in Resource.values) {
      if (action.text.toLowerCase() == text.toLowerCase()) {
        return action;
      }
    }
    throw Exception('Unknown resource: $text');
  }

  String toReadableString() {
    return switch (this) {
      Resource.users => 'Kullanıcılar',
      Resource.addresses => 'Adresler',
      Resource.banks => 'Bankalar',
      Resource.appliances => 'Cihazlar',
      Resource.beers => 'Biralar',
      Resource.bloodTypes => 'Kan Grupları',
      Resource.creditCards => 'Kredi Kartları',
    };
  }

  @override
  String toString() => text;
}
