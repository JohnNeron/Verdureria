
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});

  function confirmEliminar(id)
{
  var respuesta = confirm("¿Quiere eliminar esta Mascota ?")

  if(respuesta == true)
  {
    return true;
  }
  else
  {
    return false; 
  }
}