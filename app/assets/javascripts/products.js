$(document).on('ready turbolinks:load', function(){
    $('[name=q]').on('keyup', function(){
      //filtra
      var q = $(this).val()
      if (q.length > 0){
        $.ajax({
          type: "GET",
          url: "/products",
          data: { q: q },
          dataType: "script"
        });
      };
      //Libera
      if (q.length == 0){
        $.ajax({
          type: "GET",
          url: "/products",
          dataType: "script"
        });
      };
    });
  });  

// $(document).on('ready turbolinks:load', function(){
//     // Filtrar comentarios
//     $('[name=q]').on('keyup', function (){
//         //Filtra
//         if($(this).val().length > 0){
//             $.ajax({
//                 type: "GET",
//                 url: "/products",
//                 data: { q: $(this).val() },
//                 dataType: "script"                         
//             }); 
//         };
//         //Libera
//         if($(this).val().length == 0){
//             $.ajax({
//                 type: "GET",
//                 url: "/products",
//                 dataType: "script"                         
//             }); 
//         }
//     })
// })


  