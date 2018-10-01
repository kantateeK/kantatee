$(document).ready(function() {



    
    $('select[name="nam_id"]').on('change', function(){
        $.ajax({
        
            url:'/getsahakorn/'+$("#p_id").val(),
            type:'get',
            data:{'id':$("#p_id").val(),'nam_id':$("#nam_id").val(),'y_id':$("#year").val()},
            dataType:'json',//return data will be json
            success:function(data){
                $('select[name="a_id"]').empty();
                $.each(data, function(key, value) {

                $('select[name="a_id"]').append('<option value="'+ value.a_id +'">' + value.a_name + '</option>');
            });
        
            },

            });
    });
    });

    $('select[name="p_id"]').on('change', function(){
        $.ajax({
        
            url:'/getsahakorn/'+$("#p_id").val(),
            type:'get',
            data:{'id':$("#p_id").val(),'nam_id':$("#nam_id").val(),'y_id':$("#year").val()},
            dataType:'json',//return data will be json
            success:function(data){
                $('select[name="a_id"]').empty();
                $.each(data, function(key, value) {

                $('select[name="a_id"]').append('<option value="'+ value.a_id +'">' + value.a_name + '</option>');
            });
        
            },

            });
    });
    $('select[name="year"]').on('change', function(){
        $.ajax({
        
            url:'/getsahakorn/'+$("#year").val(),
            type:'get',
            data:{'id':$("#p_id").val(),'nam_id':$("#nam_id").val(),'y_id':$("#year").val()},
            dataType:'json',//return data will be json
            success:function(data){
                $('select[name="a_id"]').empty();
                $.each(data, function(key, value) {

                $('select[name="a_id"]').append('<option value="'+ value.a_id +'">' + value.a_name + '</option>');
            });
        
            },

            });
    });

