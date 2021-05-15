part of 'beneficiary_cubit.dart';

@immutable
abstract class BeneficiaryState {}

class BeneficiaryInitial extends BeneficiaryState {}

class BeneficiaryLoading extends BeneficiaryState {}

class BeneficiaryError extends BeneficiaryState {
  final String message;

  BeneficiaryError(this.message);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is BeneficiaryError && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

class BeneficiariesFetched extends BeneficiaryState {
  final List<Beneficiary> beneficiaries;

  BeneficiariesFetched(this.beneficiaries);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is BeneficiariesFetched && o.beneficiaries == beneficiaries;
  }

  @override
  int get hashCode => beneficiaries.hashCode;
}

class BeneficiaryAdded extends BeneficiaryState {
  final String beneficiaryId;

  BeneficiaryAdded(this.beneficiaryId);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is BeneficiaryAdded && o.beneficiaryId == beneficiaryId;
  }

  @override
  int get hashCode => beneficiaryId.hashCode;
}

class BeneficiaryRemoved extends BeneficiaryState {}
