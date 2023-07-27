/**
 * 
 */
console.log("hello");
// Select all buttons with the desired class
const buttons = document.querySelectorAll('.seat-button');

// Iterate over the buttons and attach event listeners
buttons.forEach(button => {
	button.addEventListener('click', () => {

		if (button.style.backgroundColor === 'rgb(29, 231, 130)') {
			button.style.backgroundColor = '#ffffff';
		} else {
			button.style.backgroundColor = 'rgb(29, 231, 130)';
		}
		console.log('Button clicked!');
	});
});

function buttonDoStuff(e) {
	let button = e.target;
	const moviePrice = 12.80;
	const paragraph = document.getElementById('seat-names');
	const totalPriceText = document.getElementById('total-price');
	const seatTotalPrice = document.getElementById("price");
	const seatNumber = document.getElementById("selectedSeat");
	const seatNames = document.getElementById("selectedName");
	
	if (button.style.backgroundColor === 'rgb(29, 231, 130)') {
		seatNumber.value = parseInt(seatNumber.value) - 1;
		seatTotalPrice.value = moviePrice *parseFloat(seatNumber.value);
		totalPriceText.textContent = "RM"+Number(seatTotalPrice.value).toFixed(2);
		button.style.backgroundColor = '#ffffff';
		if(paragraph.textContent.length > 2 && paragraph.textContent.lastIndexOf(button.textContent)>2){
			seatNames.value = seatNames.value.replace(","+button.textContent, "");
			paragraph.textContent = paragraph.textContent.replace(","+button.textContent, "");	
		}
		else if(paragraph.textContent.lastIndexOf(button.textContent)< 2 && paragraph.textContent.length>2){
			seatNames.value = seatNames.value.replace(button.textContent+",", "");
			paragraph.textContent = paragraph.textContent.replace(button.textContent+",", "");
		}
		else{
			seatNames.value = "";
			paragraph.textContent = "";
		}
			
	
		if(paragraph.textContent === ''){
			paragraph.textContent='None';
		}
	} else {
		
	seatNumber.value = parseInt(seatNumber.value) + 1;
	seatTotalPrice.value = encodeURIComponent(moviePrice * parseFloat(seatNumber.value)); 
	totalPriceText.textContent = "RM"+ Number(seatTotalPrice.value).toFixed(2);
	seatNames.value += button.textContent+',';
	console.log(totalPriceText.value);
		button.style.backgroundColor = 'rgb(29, 231, 130)';
		paragraph.textContent = paragraph.textContent==="None"? button.textContent:paragraph.textContent + "," +button.textContent;
	}
	
}

function buttonClearAll() {
	const buttons = document.querySelectorAll('.seat-button');
	buttons.forEach(button => {
		if (button.style.backgroundColor === 'rgb(29, 231, 130)') {
			button.style.backgroundColor = '#ffffff';
		}		
	});
	const totalPrice = document.getElementById("total-price");
	const seatNumber = document.getElementById("selectedSeat");
	const seatNames = document.getElementById("selectedName");
	const paragraph = document.getElementById('seat-names');
	paragraph.textContent = 'None';
	seatNumber.value = 0;
	seatNames.value = "";
	totalPrice.textContent = "RM00.00"
}

