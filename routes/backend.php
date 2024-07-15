<?php

use App\Http\Controllers\Dashboard\SectionController;
use App\Http\Controllers\Dashboard\DoctorController;
use App\Http\Controllers\Dashboard\SingleServiceController;
use App\Http\Controllers\ProfileController;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
use App\Http\Controllers\Dashboard\DashboardController;
use App\Http\Controllers\Dashboard\InsuranceController;
use App\Http\Controllers\Dashboard\AmbulanceController;
use App\Http\Controllers\Dashboard\PatientController;
use App\Http\Controllers\Dashboard\ReceiptAccountController;
use App\Http\Controllers\Dashboard\PaymentAccountController;
use App\Http\Controllers\Dashboard\LaboratorieEmployeeController;
use App\Http\Controllers\Dashboard\RayEmployeeController;
use App\Events\MyEvent;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| backend Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/Dashboard_Admin', [DashboardController::class, 'index']);

Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']
    ],
    function () {
        ###########dashboard user################################
        Route::get('dashboard/user', function () {
            return view('Dashboard.User.dashboard');
        })->middleware(['auth', 'verified'])->name('dashboard.user');
        ###########end dashboard user################################

        ########### dashboard admin################################
        Route::get('dashboard/admin', function () {
            return view('Dashboard.Admin.dashboard');
        })->middleware(['auth:admin', 'verified'])->name('dashboard.admin');
        ###########end dashboard admin################################

        ########### dashboard doctor################################
        Route::get('dashboard/doctor', function () {
            return view('Dashboard.doctor.dashboard');
        })->middleware(['auth:doctor', 'verified'])->name('dashboard.doctor');
        ###########end dashboard doctor################################

        Route::middleware(['auth:admin'])->group(function () {

            Route::resource('Sections', SectionController::class);
            Route::resource('Doctors', DoctorController::class);
            Route::post('update_password', [DoctorController::class, 'update_password'])->name('update_password');
            Route::post('update_status', [DoctorController::class, 'update_status'])->name('update_status');

            ######service route#######
            Route::resource('Service', SingleServiceController::class);
            #####end service route####

            //############################# GroupServices route ##########################################

            Route::view('Add_GroupServices', 'livewire.GroupServices.include_create')->name('Add_GroupServices');

            //############################# end GroupServices route ######################################

            ##############insurance route######################
            Route::resource('Insurances', InsuranceController::class);
            ##############end insurance route##################

            //############################# Ambulance route ##########################################

            Route::resource('Ambulance', AmbulanceController::class);

            //############################# end Ambulance route ######################################

            //############################# Patients route ##########################################
            Route::resource('Patients', PatientController::class);
            //############################# end Patients route ######################################

            //############################# single-invoices route ##########################################
            Route::view('single_invoices', 'livewire.singleInvoices.index')->name('single_invoices');
            Route::view('Print_single_invoices', 'livewire.singleInvoices.print')->name('Print_single_invoices');
            //############################# end single-invoices route ######################################

            //############################# Receipt route ##########################################
            Route::resource('Receipt', ReceiptAccountController::class);
            //############################# end Receipt route ######################################

            //############################# Payment route ##########################################
            Route::resource('Payment', PaymentAccountController::class);
            //############################# end Payment route ######################################

            //############################# ray_employee route ##########################################
            Route::resource('ray_employee', RayEmployeeController::class);
            //############################# end ray_employee route ######################################

            //############################# Group_invoices route ##########################################
            Route::view('group_invoices', 'livewire.Group_invoices.index')->name('group_invoices');
            Route::view('group_Print_single_invoices', 'livewire.Group_invoices.print')->name('group_Print_single_invoices');
            //############################# end Group_invoices route ######################################

            //############################# LaboratorieEmployee route ##########################################
            Route::resource('laboratorie_employee', LaboratorieEmployeeController::class);
            //############################# end LaboratorieEmployee route ######################################

        });




        require __DIR__ . '/auth.php';
    }
);
