<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Providers\RouteServiceProvider;
use App\Http\Requests\Auth\LaboratorieEmployeeLoginRequest;
use Illuminate\Support\Facades\Auth;

class LaboratorieController extends Controller
{
    public function store(LaboratorieEmployeeLoginRequest $request)
    {
        if ($request->authenticate()) {
            $request->session()->regenerate();
            return redirect()->intended(RouteServiceProvider::LABORATORIEEMPLOYEE);
        }
        return redirect()->back()->withErrors(['name' => (trans('Dashboard/auth.failed'))]);
    }

    public function destroy(Request $request)
    {
        Auth::guard('laboratorie_employee')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    } //
}
