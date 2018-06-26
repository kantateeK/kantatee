@extends('layouts.menu')
@section('content')



{!! Form::open(['url'=>'blog','class'=>'form-horizontal']) !!}
                <div class="x_panel">
                  <div class="x_title">
                    <h2>เพิ่มข้อมูล <small>Bordered table subtitle</small></h2>
                                       
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">


                    <div class="form-group">

      {!! form::label('label1','หมายเลข') !!}
      {!! form::text('text1', null, ['class'=>'form-control']) !!}
	  {!! $errors->has('text1')?$errors->first('text1'):'' !!}
                <p></P>                 
				
              
                 
                  {!! form::submit('บันทึก', ['class'=>'btn btn-success']) !!}
  </div>
                  </div>
                </div>
              </div>
          
              {!! Form::close() !!}
@stop
