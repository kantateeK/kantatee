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
class savejobcontroller extends Controller
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
     
      return view('blog.index');

    }

    


    public function getsahakorn(Request $request)
    {
   // $subbus_id = DB::table('sahakorn')->orderBy('nam_id', 'ASC')->get();
  







   $subbus_id=DB::table('sahakorn')
   ->leftJoin('dsahakon', 'sahakorn.a_id', '=', 'dsahakon.a_id')
   ->where('sahakorn.p_id','=',$request->id)
   ->where('sahakorn.nam_id','=',$request->nam_id)
   ->where('sahakorn.year','=',$request->y_id)
   ->where('sahakorn.isstatus','='," ")
   ->orderBy('sahakorn.a_id', 'ASC')
   ->get();
   return response()->json($subbus_id);  

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
        $namacus = DB::table('namacu')->orderBy('nam_id', 'ASC')->get();
      $years = DB::table('year')->orderBy('year_name', 'ASC')->get();
      $business_s = DB::table('business')->orderBy('p_id', 'ASC')->get();
      return view('blog.create',['namacus' => $namacus,'business_s' => $business_s,'years' => $years]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $this->validate($request,[
            'year'=>'Required',
            'p_id'=>'Required',
            'nam_id'=>'Required',
            'a_id'=>'Required',
            'isstatus'=>'Required',
            'comfirm'=>'Required',
            'send'=>'Required'
        ]);
   
        $num=DB::table('base')
        ->where('a_id','=',$request->a_id)
        ->where('comfirm','=',"Y")
       ->count();
       $num2=DB::table('base')
       ->where('a_id','=',$request->a_id)
       ->where('comfirm','=',"N")
      ->count();

       if ($num==0 AND $num2==0)
       {
        $blogs=$request->all();
        base::create($blogs);
      
        alert()->success('บันทึกข้อมูลสำเร็จ','');
        return redirect('blog/create');
       }
        else
        {
            alert()->error('ข้อมูลในการบันทึกมีอยู่แล้ว','');
            return redirect('blog/create');
        }

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





    

