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
          <h2>From บันทึกลงรับกระดาษทำการ <small>สำนักงานตรวจบัญชีสหกรณ์บุรีรัมย์</small></h2>
          
          <div class="clearfix"></div>
        </div>
        <div class="x_content">
            {{ csrf_field() }}
            {!! Form::open(['url'=>'blog/create/insert','class'=>'form-horizontal']) !!}
           
 <div class="form-group">
<label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">สำหรับปี  <span class="required">*</span>
</label>
<div  class="col-md-6 col-sm-6 col-xs-12">
<select class="form-control" name="year" id="year"  >
    <option  value="" >--เลือกปี--</option>
    @foreach($years as $year)
    <option value="{{ $year->year_name}}">{{ $year->year_name}}</option>
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

              <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">เลือกผู้สอบบัญชี <span class="required">*</span>
              </label>
              <div class="col-md-6 col-sm-6 col-xs-12">

                  <select class="form-control" name='nam_id' id='nam_id' >

                      <option class="form-control" value="" >--เลือกผู้สอบบัญชี--</option>

                      @foreach($namacus as $country)
                      <option value="{{ $country->nam_id}}">{{ $country->acu_name }}</option>
                      @endforeach

                     
                  </select>
          
</div>
</div>


          
        
            
              
<div class="form-group">
             
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">เลือกสหกรณ์ <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                  
                                    <select class="form-control" name='a_id' id='a_id' >
                  
                                        <option class="form-control" value="" >--เลือกสหกรณ์--</option>
                  
                               
                  
                                       
                                    </select>
                                   
                                   
                  </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">วันที่ลงรับ <span class="required">*</span>
                    </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="input-group date">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input type="text" value="{{ old('birthDate') }}" name="d_1" class="form-control pull-right" id="birthDate" required>
                            <input type="hidden" value="Y" name="isstatus">
                            <input type="hidden" value="N" name="comfirm">
                            <input type="hidden" value="N" name="send">
                            <input type="hidden" value="N" name="isstatus_send">
                        </div>

                        
                  
                </div>
                  <div class="form-group"> 
                        <br /><br /> <div class="ln_solid"></div>
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
             
                      <button type="submit" class="btn btn-success">บันทึกข้อมูล</button>
                      <button type="button" class="btn btn-danger" onclick="window.location='{{ URL::previous() }}'">ยกเลิก</button>
                    </div>
                  </div>
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
                      $("#a_id").select2({
                          placeholder: "เลือกสหกรณ์",
                          allowClear: true
                      });

              </script>
      
      
      
                  <script src="{{ asset('js/getsahakorn.js') }}"></script>


          
                  
{!! Form::close() !!}




@stop
