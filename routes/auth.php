<?php

use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\Auth\ConfirmablePasswordController;
use App\Http\Controllers\Auth\EmailVerificationNotificationController;
use App\Http\Controllers\Auth\EmailVerificationPromptController;
use App\Http\Controllers\Auth\NewPasswordController;
use App\Http\Controllers\Auth\PasswordController;
use App\Http\Controllers\Auth\PasswordResetLinkController;
use App\Http\Controllers\Auth\RegisteredUserController;
use App\Http\Controllers\Auth\VerifyEmailController;
use App\Http\Controllers\Auth\AdminController;
use App\Http\Controllers\Auth\DoctorController;
use App\Http\Controllers\Auth\RayEmployeeController;
use App\Http\Controllers\Auth\LaboratorieController;
use App\Http\Controllers\Auth\PatientController;
use Illuminate\Support\Facades\Route;

Route::middleware('guest')->group(function () {
    Route::get('register', [RegisteredUserController::class, 'create'])
        ->name('register');

    Route::post('register', [RegisteredUserController::class, 'store']);
##################route user#######################
    Route::get('login', [AuthenticatedSessionController::class, 'create'])
    ->name('login');
    Route::post('login', [AuthenticatedSessionController::class, 'store'])->name('login.user');
##################end route user#######################

##################route admin#########################
    Route::post('login/admin', [AdminController::class, 'store'])->name('login.admin');
##################end route admin#######################

##################route doctor#########################
    Route::post('login/doctor', [DoctorController::class, 'store'])->name('login.doctor');
##################end route doctor#######################

##################route rayemployee#########################
    Route::post('login/ray_employee', [RayEmployeeController::class, 'store'])->name('login.ray_employee');
##################end route rayemployee#######################

##################route laboratorie_employee#########################
    Route::post('login/laboratorie_employee', [LaboratorieController::class, 'store'])->name('login.laboratorie_employee');
##################end route laboratorie_employee#######################

##################route patient#########################
    Route::post('login/patient', [PatientController::class, 'store'])->name('login.patient');
##################end route patient#######################


    Route::get('forgot-password', [PasswordResetLinkController::class, 'create'])
        ->name('password.request');

    Route::post('forgot-password', [PasswordResetLinkController::class, 'store'])
        ->name('password.email');

    Route::get('reset-password/{token}', [NewPasswordController::class, 'create'])
        ->name('password.reset');

    Route::post('reset-password', [NewPasswordController::class, 'store'])
        ->name('password.store');
});

Route::middleware('auth')->group(function () {
    Route::get('verify-email', EmailVerificationPromptController::class)
        ->name('verification.notice');

    Route::get('verify-email/{id}/{hash}', VerifyEmailController::class)
        ->middleware(['signed', 'throttle:6,1'])
        ->name('verification.verify');

    Route::post('email/verification-notification', [EmailVerificationNotificationController::class, 'store'])
        ->middleware('throttle:6,1')
        ->name('verification.send');

    Route::get('confirm-password', [ConfirmablePasswordController::class, 'show'])
        ->name('password.confirm');

    Route::post('confirm-password', [ConfirmablePasswordController::class, 'store']);

    Route::put('password', [PasswordController::class, 'update'])->name('password.update');
########for user#######
    Route::post('logout/user', [AuthenticatedSessionController::class, 'destroy'])
    ->name('logout.user');

});

########for admin#######
Route::post('logout/admin', [AdminController::class, 'destroy'])->middleware('auth:admin')
    ->name('logout.admin');

########for doctor#######
Route::post('logout/doctor', [DoctorController::class, 'destroy'])->middleware('auth:doctor')
    ->name('logout.doctor');

########for ray_employee#######
Route::post('logout/ray_employee', [RayEmployeeController::class, 'destroy'])->middleware('auth:ray_employee')
    ->name('logout.ray_employee');

########for Laboratorie_employee#######
Route::post('logout/laboratorie_employee', [LaboratorieController::class, 'destroy'])->middleware('auth:laboratorie_employee')
    ->name('logout.laboratorie_employee');

########for patient#######
Route::post('logout/patient', [PatientController::class, 'destroy'])->middleware('auth:patient')
    ->name('logout.patient');
