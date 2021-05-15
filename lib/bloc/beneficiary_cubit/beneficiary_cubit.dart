import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:book_my_shot/data_provider/beneficiary_provider.dart';
import 'package:book_my_shot/models/beneficiary.dart';

part 'beneficiary_state.dart';

class BeneficiaryCubit extends Cubit<BeneficiaryState> {
  BeneficiaryCubit() : super(BeneficiaryInitial());

  Future<void> getBeneficiaries() async {
    BeneficiaryProvider _provider = BeneficiaryProvider();

    try {
      emit(BeneficiaryLoading());
      print('fetching beneficiaries');

      final response = await _provider.getBeneficiaries();

      List<Beneficiary> beneficiaries = List.empty(growable: true);

      response.forEach((element) {
        beneficiaries.add(Beneficiary.fromMap(element));
      });

      emit(BeneficiariesFetched(beneficiaries));
    } catch (e) {
      emit(BeneficiaryError(e.toString()));
    }
  }

  Future<void> postBeneficiary(Beneficiary beneficiary) async {
    BeneficiaryProvider _provider = BeneficiaryProvider();

    try {
      emit(BeneficiaryLoading());
      print('fetching beneficiaries');

      final response = await _provider.postBeneficiary(beneficiary.toJson());

      emit(BeneficiaryAdded(response));
    } catch (e) {
      emit(BeneficiaryError(e.toString()));
    }
  }

  Future<void> deleteBeneficiary(String beneficiaryId) async {
    BeneficiaryProvider _provider = BeneficiaryProvider();

    try {
      emit(BeneficiaryLoading());
      print('fetching beneficiaries');

      await _provider.deleteBeneficiary(beneficiaryId);

      emit(BeneficiaryRemoved());
    } catch (e) {
      emit(BeneficiaryError(e.toString()));
    }
  }
}
