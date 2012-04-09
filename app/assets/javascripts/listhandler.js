function save(){
  var myForm = document.createElement("form");
  myForm.method="post";
  myForm.action="../../places_routes"
  var string = "";
  $('ol.connected').children().each(function(index){
        string += this.children[0].id+","
        //window.location = "../../places_routes"
  });
  console.log(string);
  var valueInput = document.createElement("input");
  valueInput.setAttribute("name","string");
  valueInput.setAttribute("value",string);
  myForm.appendChild(valueInput);

  var routeInput = document.createElement("input");
  routeInput.setAttribute("name","route");
  routeInput.setAttribute("value","<%=route.id%>");
  myForm.appendChild(routeInput);

  document.body.appendChild(myForm);
  myForm.submit();
  document.body.removeChild(myForm);
}
$(document).ready(function() { 
  $("#place-route").sortable({ 
    //handle : '.handle', 
    dropOnEmpty : true,
    //connectWith: ".connected",
    update: function() { 
        //console.log($(this))
    },
    receive: function(event, ui) {
        sortableIn = 1;
    },
    over: function(e, ui) { sortableIn = 1; },
    out: function(e, ui) { sortableIn = 0; },
    beforeStop: function(e, ui) {
        if (sortableIn == 0) { 
            ui.item.remove(); 
        } 
    }
  });
  $("#place").draggable({
    connectToSortable: "#place-route",
    helper: "clone",
    revert: "invalid"
  });
  $( "ul, li, ol" ).disableSelection();
}); 