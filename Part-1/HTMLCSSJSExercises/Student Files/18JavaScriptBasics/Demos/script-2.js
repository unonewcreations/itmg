/*
This script simply outputs
	"Hello, there!"
to the browser.
*/
document.write("<p>Hello, there!</p>");

// oefening manier 1
document.write("<div id='test'>test</div>");
let test = document.getElementById('test');
console.log(test);
test.addEventListener("click", function() {
	document.write("geklikt op de tekst");
});

// oefening manier 2
function functionA () {
	document.write("geklikt op de tekst");
}

functionA();
