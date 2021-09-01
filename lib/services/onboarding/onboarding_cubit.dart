import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../image_uploader.dart';
import '../user_service_contract.dart';
import 'onboarding_state.dart';



class OnboardingCubit extends Cubit<OnboardingState> {
  // ignore: unused_field
  final IUserService _userService;
  final Imageuploader _imageUploader;
  OnboardingCubit(this._userService, this._imageUploader)
      : super(OnboardingInitial());
  Future<void> connect(String name, File profileImage) async {
    emit(Loading());
    // ignore: unused_local_variable
    final url = await _imageUploader.uploadImage(profileImage);
    // final user = User(
    //   username: name,
    //   photoUrl: url.toString(),
    //   active: true,
    //   lastseen: DateTime.now(),
    // );
    // final createdUser = await _userService.connect(user);
    // emit(OnboardingSuccess(createdUser));
  }
}
