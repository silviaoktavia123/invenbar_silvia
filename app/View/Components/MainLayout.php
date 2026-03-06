<?php

namespace App\View\Components;

use Illuminate\View\Component;
use Illuminate\View\View;

class MainLayout extends Component
{
    public string|null $titlePage;

    public function __construct(string|null $titlePage = null)
    {
        $this->titlePage = $titlePage;
    }

    public function render(): View
    {
        return view('layouts.main');
    }
}