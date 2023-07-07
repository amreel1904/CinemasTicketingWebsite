/**
 * 
 */
document.addEventListener('DOMContentLoaded', function() {
	let numberOfRow = 10;
	let numberOfColumn = 7;

	let table = document.getElementById('seats-table');
	let tbody = document.createElement('tbody');
	let alphabet = 'A';
	table.appendChild(tbody);
	
	for (let i = 1; i <= numberOfColumn; i++) {
		let row = tbody.insertRow();
		for (let j = 1; j <= numberOfRow; j++) {
			let cell = row.insertCell();
			let button = document.createElement('button');
			
			button.classList.add("seat-button");
			button.setAttribute('role', 'button');
			button.textContent = alphabet + j;
			button.addEventListener('click', buttonDoStuff);
			
			cell.appendChild(button);
		}
		
		alphabet = String.fromCharCode(alphabet.charCodeAt(0) + 1);
	}

});