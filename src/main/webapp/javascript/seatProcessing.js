/**
 * 
 */
console.log("hello");
// Select all buttons with the desired class
const buttons = document.querySelectorAll('.seat-button');

// Iterate over the buttons and attach event listeners
buttons.forEach(button => {
	button.addEventListener('click', () => {
		
		if(button.style.backgroundColor === 'rgb(29, 231, 130)'){
			button.style.backgroundColor = '#ffffff';
		}else{
			button.style.backgroundColor = 'rgb(29, 231, 130)';
		}
		console.log('Button clicked!');
	});
});

function buttonDoStuff(e){
	let button = e.target;
	if(button.style.backgroundColor === 'rgb(29, 231, 130)'){
			button.style.backgroundColor = '#ffffff';
		}else{
			button.style.backgroundColor = 'rgb(29, 231, 130)';
		}
		console.log('Button clicked!');
}
