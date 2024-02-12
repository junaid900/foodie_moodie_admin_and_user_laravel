<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ReaustaurantController extends Controller
{
    public function list_map()
    {
        return view('home.list-map');
    }

    public function detail_raustaurent()
    {
        return view('home.detail-restaurant');
    }

    public function submit_raustaurent()
    {
        return view('home.submit-restaurant');
    }
}
