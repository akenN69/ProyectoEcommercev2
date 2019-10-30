$(document).on('turbolinks:load', function(){
    // Filtrar comentarios
    $('[name=q]').on('keyup', function (){
        //Filtra
        if($(this).val().length > 2){
            $.ajax({
                type: "GET",
                url: "/products",
                data: { q: $(this).val() },
                dataType: "script"                         
            }); 
        };
        //Libera
        if($(this).val().length == 0){
            $.ajax({
                type: "GET",
                url: "/products",
                dataType: "script"                         
            }); 
        }
    })
})