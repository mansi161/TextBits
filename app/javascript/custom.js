$(function() {
	$('[data-toggle="tooltip"]').tooltip();
});

$(function() {
	$('[data-toggle="popover"]').popover();
});	

$(document).ready(function(){
  $("p").click(function(){
    $(this).hide();
  });
});

// $(document).ready(function(){
//   $("#myBtn").click(function(){
//     $("#myModal").modal();
//   });
// });	



// handler = Gmaps.build('Google');  
// handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){  
//   markers = handler.addMarkers([  
//     {  
//       "lat": 37.3333945,  
//       "lng": -121.8806499,  
//       "picture": {  
//         "width":  32,  
//         "height": 32  
//       },  
//       "infowindow": "SJSU"  
//     }  
//   ]);  
//   handler.bounds.extendWith(markers);  
//   handler.fitMapToBounds();  
// });  

// $(document).ready(function() {
  
//   jQuery(".best_in_place").best_in_place();
// });


$(document).ready(function(){
	$("#myInput").on("keyup", function(){
		var value = $(this).val().toLowerCase();
		$(".divTableBody .divTableRow").filter(function(){
			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		});
	});
});