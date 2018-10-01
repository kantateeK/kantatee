$(document).ready(function() {



    
    $('select[name="p_id"]').on('change', function(){
        $.ajax({
        
            url:'/getlist/'+$("#p_id").val(),
            type:'get',
            data:{'id':$("#p_id").val(),'nam_id':$("#nam_id").val()},
            dataType:'json',//return data will be json
            success:function(data){
                $('select[name="p_id"]').empty();
                $.each(data, function(key, value) {

                $('select[name="p_id"]').append('<td="'+ value.a_id +'"</td>');
            });
        
            },

            });
    });
    });

