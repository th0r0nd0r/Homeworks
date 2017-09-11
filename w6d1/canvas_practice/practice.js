document.addEventListener("DOMContentLoaded", function(){

});

let canvas = document.getElementById('mycanvas');
let ctx = canvas.getContext('2d');

ctx.fillStyle = 'blue';
ctx.fillRect(0,0,45,87);

ctx.beginPath();
ctx.arc(100, 100, 10, 0, 2 * Math.PI, true);
ctx.strokeStyle = "red";
ctx.lineWidth = 5;
ctx.stroke();

ctx.fillStyle = "orange";
ctx.fill();

ctx.beginPath();
ctx.moveTo(200, 200);
ctx.lineTo(220,235);
ctx.quadraticCurveTo(400, 300, 220, 260);
ctx.bezierCurveTo(0, 0, 100, 450, 150, 100);
ctx.closePath();
ctx.fill();
