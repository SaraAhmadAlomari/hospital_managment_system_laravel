<?php


use Illuminate\Support\Facades\Route;
use App\Http\Controllers\doctor\InvoiceController;
use App\Http\Controllers\Dashboard_Doctor\DiagnosticController;
use App\Http\Controllers\Dashboard_Doctor\RayController;
use App\Http\Controllers\Dashboard_Doctor\PatientDetailsController;
use App\Http\Controllers\Dashboard_Doctor\LaboratorieController;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
use App\Http\Livewire\Chat\Createchat;
use App\Http\Livewire\Chat\Main;

/*
|--------------------------------------------------------------------------
| doctor Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']
    ],
    function () {

        ########### dashboard doctor################################
        Route::get('dashboard/doctor', function () {
            return view('Dashboard.doctor.dashboard');
        })->middleware(['auth:doctor', 'verified'])->name('dashboard.doctor');
        ###########end dashboard doctor################################

        Route::middleware(['auth:doctor'])->group(function () {
            Route::prefix('doctor')->group(function () {

                //############################# completed_invoices route ##########################################
                Route::get('completed_invoices', [InvoiceController::class, 'completedInvoices'])->name('completedInvoices');
                //############################# end completed_invoices route #############################################

                //############################# review_invoices route ##########################################
                Route::get('review_invoices', [InvoiceController::class, 'reviewInvoices'])->name('reviewInvoices');
                //############################# end review_invoices route #############################################


                route::resource('invoices',InvoiceController::class);

                //############################# add_review route ##########################################
                Route::post('add_review', [DiagnosticController::class, 'addReview'])->name('add_review');
                //############################# end add_review route #############################################

                //############################# Diagnostics route ##########################################
                route::resource('Diagnostics', DiagnosticController::class);
                //#############################end Diagnostics route ##########################################

                //############################# rays route ##########################################
                Route::resource('rays', RayController::class);
                //############################# end rays route ######################################


                // //############################# Laboratories route ##########################################
                Route::resource('Laboratories', LaboratorieController::class);
                Route::get('show_laboratorie/{id}', [InvoiceController::class, 'showLaboratorie'])->name('show.laboratorie');
                // //############################# end Laboratories route ######################################


                // //############################# patient_details route ##########################################
                Route::get('patient_details/{id}', [PatientDetailsController::class, 'index'])->name('patient_details');
                // //############################# end patient_details route ######################################

                // //############################# Chat route ##########################################
                Route::get('list/patients', Createchat::class)->name('list.patients');
                Route::get('chat/patients', Main::class)->name('chat.patients');
                // //############################# end Chat route ######################################
            });

            Route::get('/404', function () {
                return view('Dashboard.404');
            })->name('404');

        });
        require __DIR__ . '/auth.php';
    });
