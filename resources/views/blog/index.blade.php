@extends('layouts.menu')
@section('content')

<div class="clearfix"></div>

                <div class="x_panel">
                  <div class="x_title">
                    <h2>Boardered table <small>Bordered table subtitle</small></h2>
                                       
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                  <a href="blog/create" class="btn btn-default submit">Add new</a>
                    <table class="table table-bordered">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>First Name</th>
                          <th>Last Name</th>
                          <th>Username</th>
                          <th>แก้ไขข้อมูล</th>
                        </tr>
                      </thead>
                      <tbody>
                      @foreach($blogs as $name_g)
                        <tr>
                          <th scope="row">{{ $name_g->id }}</th>
                          <th scope="row">{{ $name_g->text1 }}</th>
                          


                          
                          <td><a href="{{ route('blog.edit', $name_g->id) }}" class="btn btn-default submit">edit</a></td>
                          
                          <td> {!! Form::submit('Delete', ['class'=>'btn btn-danger', 'onclick'=>'return confirm("Do you want to delete this record?")']) !!}</td>
                        </tr>
                      @endforeach
                      </tbody>
                    </table>

                  </div>
                </div>
              </div>
              

@stop
