<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;


class DashboardController extends Controller
{
     public function index()
     {


          // $userData = User::all();

          // $userData = User::all('id', 'name', 'mat_no', 'is_user', 'email', 'bursar', 'faculty')->where('is_user','false');

          $userData = User::where('is_user', 'false')->get();

          // $userData = array_slice($userData, 5);
          
// $array = array_slice($categories->getIterator()->getArrayCopy(), 2);

          // $flight = User::find(11);
 
          // $flight->faculty = 'approved';
 
          // $flight->save();

          // $userDatanew = [];

          // $userDataNew = array_slice($userData, 6);
          
          
          if (Auth::user()->hasRole('user')) {
               return view('userdash', ['data' => $userData]);
          } elseif (Auth::user()->hasRole('hostel')) {
               return view('hostelDashboard', ['data' => $userData]);
          } elseif (Auth::user()->hasRole('admin')) {
               return view('dashboard', ['data' => $userData]);
          } elseif (Auth::user()->hasRole('library')) {
               return view('libraryDashboard', ['data' => $userData]);
          } elseif (Auth::user()->hasRole('bursar')) {
               return view('bursarDashboard', ['data' => $userData]);
          } elseif (Auth::user()->hasRole('faculty')) {
               return view('facultyDashboard', ['data' => $userData]);
          } elseif (Auth::user()->hasRole('laboratory')) {
               return view('laboratoryDashboard', ['data' => $userData]);
          } elseif (Auth::user()->hasRole('sport')) {
               return view('sportDashboard', ['data' => $userData]);
          }elseif (Auth::user()->hasRole('security')) {
               return view('securityDashboard', ['data' => $userData]);
          }elseif (Auth::user()->hasRole('department')) {
               return view('departmentDashboard', ['data' => $userData]);
          }
     }

     public function myprofile()
     {
          return view('myprofile');
     }

     public function updateStatus($id, $department, $status)
     {
          $data = User::find($id);
 
          $data->$department = $status;
 
          $data->save();


          return redirect('/dashboard');

     }

     public function postcreate()
     {
          return view('postcreate');
     }
}