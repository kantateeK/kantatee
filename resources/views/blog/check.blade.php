@extends('layouts.menu')
@section('content')
<script src="https://unpkg.com/sweetalert2@7.18.0/dist/sweetalert2.all.js"></script>
@include('sweetalert::alert')

  <div class="right_col" role="main">
  <div class="page-title">
  <div class="title_left">
  </div>
  <div class="clearfix"></div>
  <div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
      <div class="x_panel">
        <div class="x_title">
          <h2>From บันทึกตรวจทานกระดาษทำการ <small>สำนักงานตรวจบัญชีสหกรณ์บุรีรัมย์</small></h2>
          
          <div class="clearfix"></div>
        </div>
        <div class="x_content">
            {{ csrf_field() }}
            {!! Form::open(['url'=>'blog/create/insert','class'=>'form-horizontal']) !!}
           
 <div class="form-group">
<label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">เลือกผู้สอบบัญชี  <span class="required">*</span>
</label>
<div  class="col-md-6 col-sm-6 col-xs-12">
<select class="form-control" name="nam_id" id="nam_id"  >
    <option class="form-control" value="" >--เลือกผู้สอบบัญชี--</option>

    @foreach($namacus as $country)
    <option value="{{ $country->nam_id}}">{{ $country->acu_name }}</option>
    @endforeach
  



</select>

        </div>
            </div>
            <div class="form-group">
     
  
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">เลือกประเภทสหกรณ์  <span class="required">*</span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <select class="form-control" name="p_id" id="p_id"  >
                        <option class="form-control" value="" >--เลือกประเภทสหกรณ์--</option>
                        @foreach($business_s as $business_id)
                        <option value="{{ $business_id->p_id}}">{{ $business_id->a_p }}</option>
                        @endforeach
  
  
  
                      </select>

                </div>
              </div>
              <div class="form-group">

              <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">สำหรับปี <span class="required">*</span>
              </label>
              <div class="col-md-6 col-sm-6 col-xs-12">

                <select class="form-control" name="year" id="year"  >
                    <option  value="" >--เลือกปี--</option>
                    @foreach($years as $year)
                    <option value="{{ $year->year_name}}">{{ $year->year_name}}</option>
                    @endforeach

                     
                  </select>
          
</div>
</div>


          
<div class="x_content">
    
</div>
          <table  width="1000"  id="datatable-buttons" class="table table-striped table-bordered" ><tr>
<td colspan="10" bgcolor="#FFFFFF"><strong>รายชื่อสหกรณ์</strong> </td>
</tr>
<tr>
<td align="center" ><strong>ลำดับ</strong></td>
<td align="center" ><strong>รหัสสหกรณ์</strong></td>
<td align="center" ><strong>ชื่อสหกรณ์</strong></td>
<td align="center" ><strong>วันที่ลงรับ</strong></td>
<td align="center" ><strong>เวลาลงรับ</strong></td>
<td align="center" ><strong>ประจำปี</strong></td>

<td align="center" ><strong>เปลี่ยนแปลงข้อมูล</strong></td>
</tr>
            
              
<script src="{{ asset('js/jquery.min.js') }}"></script>
<script src="{{ asset('js/select2.min.js') }}"></script>
<script type="text/javascript">

    $("#year").select2({
          placeholder: "เลือกปี",
          allowClear: true
      });
      $("#nam_id").select2({
          placeholder: "เลือกผู้สอบ",
          allowClear: true
      });
      $("#p_id").select2({
          placeholder: "เลือกประเภทสหกรณ์",
          allowClear: true
      });
     

</script>



  <script src="{{ asset('js/getlist.js') }}"></script>

          
                  
{!! Form::close() !!}




@stop
