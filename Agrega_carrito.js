function comprar(arreglo,v){ // arreglo de [arreglos de (cantidad, id) en string]
    var url="";
    url+="../php/realiza_compra.php?";
    for(var i=0; i<arreglo.length; i++){
        // alert(arreglo[i]);
        url+="datos[";
        url+=i;
        url+="]=";
        url+=arreglo[i];
        url+="&";
    }
    url+="v="
    url+=v;
    // alert(url);
    window.location.replace(url);
}
function agregar_al_carrito(id){
    var cantidad_seleccionada=Number(document.getElementById("cantidad_seleccionada").value);
    var url="";
    url+="../php/agrega_carrito.php?cantidad=";
    url+=cantidad_seleccionada;
    url+="\&Producto=";
    url+=id;
    window.location.replace(url);
}
function enviar_a_comprar_uno(id){
    var cantidad_seleccionada=Number(document.getElementById("cantidad_seleccionada").value);
    var url="";
    url+="../php/comprar.php?datos[0]=";
    url+=cantidad_seleccionada;
    url+=",";
    url+=id;
    url+="&v=0";
    window.location.replace(url);
}
function enviar_a_comprar_muchos(arreglo_local){
    var url="";
    url+="../php/comprar.php?";
    for(var i=0; i<arreglo_local.length; i++){
        // alert(arreglo_local[i]);
        url+="datos[";
        url+=i;
        url+="]=";
        url+=arreglo_local[i];
        url+="&";
    }
    url+="v=1";
    // alert(url);
    window.location.replace(url);
}