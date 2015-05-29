$(document).ready(function() {

    $("#city").on("keyup", function(e){
        var input_city = e.currentTarget.value;
        get_destinations(input_city);
    })

    var get_destinations = function(input_city){
        $.ajax({
            url: '/destinations',
            type: 'get',
            data: { input_city: input_city }
        }).done(function(data){
            data = JSON.parse(data);
            console.log(data);
            $("#cities").html("");
            data.forEach(function(element, index, array){
                console.log(element);
                $("#cities").append("<option value='" + element + "'>")
            });



            console.log(data);
        }).fail(function(data){
            console.log("fail!");
        })
    }
});


