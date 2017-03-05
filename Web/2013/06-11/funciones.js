function contar(input) {
//Comprobamos que no pase de 3000 caracteres y si pasa, que borre los sobrantes
if (input.value.length >= 500) {
input.value = input.value.substring(0,500);
}
//alamacenamos el resto
var resto = 500 - input.value.length;
 
//imprimimos los caracteres restantes en el span
var final=document.getElementById('letras');
final.innerHTML=resto+" caracteres";
 
}

function contar2(input) {
//Comprobamos que no pase de 3000 caracteres y si pasa, que borre los sobrantes
if (input.value.length >= 5000) {
input.value = input.value.substring(0,5000);
}
//alamacenamos el resto
var resto = 5000 - input.value.length;
 
//imprimimos los caracteres restantes en el span
var final=document.getElementById('letras2');
final.innerHTML=resto+" caracteres";
 
}

function contar3(input) {
//Comprobamos que no pase de 3000 caracteres y si pasa, que borre los sobrantes
if (input.value.length >= 500) {
input.value = input.value.substring(0,500);
}
//alamacenamos el resto
var resto = 500 - input.value.length;
 
//imprimimos los caracteres restantes en el span
var final=document.getElementById('letras3');
final.innerHTML=resto+" caracteres";
 
}
