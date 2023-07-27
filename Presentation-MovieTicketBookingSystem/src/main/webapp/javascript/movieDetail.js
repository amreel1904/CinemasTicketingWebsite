/**
 * 
 */
const buttons = document.querySelectorAll('.selection-button');

// Iterate over the buttons and attach event listeners
buttons.forEach(button => {
	button.addEventListener('click', () => {
		
		
		if (button.style.backgroundColor === 'rgb(29, 231, 130)') {
			button.style.backgroundColor = 'transparent';
		} else {
			if(button.classList.contains("detail-loc")){
				let buttons = document.querySelectorAll(".detail-loc");
				 for (var i = 0; i < buttons.length; i++) {
				    buttons[i].style.backgroundColor = "transparent";
				 }
				let h3 = document.getElementsByTagName("h3")[1];
				h3.innerHTML = button.textContent;
				let locationToSend = document.getElementById("location");
				 locationToSend.value = button.textContent;
				
			}else if(button.classList.contains("detail-date")){
				let buttons = document.querySelectorAll(".detail-date");
				 for (var i = 0; i < buttons.length; i++) {
				    buttons[i].style.backgroundColor = "transparent";
				 }
				 let dateDetail = document.getElementById("movie-date").firstChild;
				 dateDetail.nodeValue = button.textContent;
				 let dateToSend = document.getElementById("date");
				 dateToSend.value = button.textContent;
			}else if(button.classList.contains("detail-time")){
				let buttons = document.querySelectorAll(".detail-time");
				 for (var i = 0; i < buttons.length; i++) {
				    buttons[i].style.backgroundColor = "transparent";
				 }
				 let timeDetail = document.getElementById("movie-time");
				 timeDetail.textContent = button.textContent;
				 let timeToSend = document.getElementById("time");
				 timeToSend.value = button.textContent;
			}
			button.style.backgroundColor = 'rgb(29, 231, 130)';
		}
		console.log('Button clicked!');
	});
});