<?php

namespace App\Interfaces\Services;

use App\Repository\Services\SingleServiceRepostory;

interface SingleServiceRepostoryInterface
{
    public function index();
    public function store($request);
    public function update($request);
    public function destroy($request);
}
