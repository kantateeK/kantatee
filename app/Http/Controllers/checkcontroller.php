<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\namacu;
use App\year;
use App\sahakorn;
use App\business;
use App\ProductCat;
use App\base;
use RealRashid\SweetAlert\Facades\Alert;

class checkcontroller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //$years = year::orderBy('year_name', 'ASC')->get();
      //$namacus = namacu::orderBy('nam_id', 'ASC')->get();
       // $businesss = business::orderBy('p_id', 'ASC')->get();
      // return view('blog/index', ['namacus' => $namacus]);

       // $namacus = namacu::orderBy('nam_id', 'ASC')->get();
      //  return view('blog/index', compact('namacus', 'selectednamacu'));
     
   

    }

    


    public function check()
    {
   // $subbus_id = DB::table('sahakorn')->orderBy('nam_id', 'ASC')->get();
  
   $namacus = DB::table('namacu')->orderBy('nam_id', 'ASC')->get();
   $years = DB::table('year')->orderBy('year_name', 'ASC')->get();
   $business_s = DB::table('business')->orderBy('p_id', 'ASC')->get();
   return view('blog.check',['namacus' => $namacus,'business_s' => $business_s,'years' => $years]);

    }
    /**
     * 
     * 
     * 
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       
    }
    public function getlist(Request $request)
    {

   $subbus_id=DB::table('base')
   ->leftJoin('dsahakon', 'sahakorn.a_id', '=', 'dsahakon.a_id')
   ->where('base.p_id','=',$request->id)
   ->where('base.nam_id','=',$request->nam_id)
   ->orderBy('base.a_id', 'ASC')
   ->get();
   return response()->json($subbus_id);  

    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

      

     //  $year=$request->input('year_id');
      // $data=array('year_name'=>$year);
     //  DB::table("year")->insert($data);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
       


    }
  
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

   
    
}





    

