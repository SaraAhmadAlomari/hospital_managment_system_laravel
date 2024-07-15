<?php

namespace App\Interfaces\Sections;
use App\Repository\Sections\SectionRepository;

interface SectionRepositoryInterface
{
    public function index();
    public function show($id);
    public function store($request);
    public function update($request);
    public function destroy($request);
}
