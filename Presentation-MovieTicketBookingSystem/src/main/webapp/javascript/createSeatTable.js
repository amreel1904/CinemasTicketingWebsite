/**
 * 
 */
document.addEventListener('DOMContentLoaded', function() {
	let numberOfRow = 7;
	let numberOfColumn = 10;

	let table = document.getElementById('seats-table');
	let tbody = document.createElement('tbody');
	let alphabet = 'A';
	table.appendChild(tbody);

	for (let i = 1; i <= numberOfRow; i++) {
		let row = tbody.insertRow();
		for (let j = 1; j <= numberOfColumn; j++) {
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
/*	row = tbody.insertRow();
	let cell = row.insertCell();
	let button = document.createElement('button');

	button.classList.add("seat-button");
	button.setAttribute('role', 'button');
	button.textContent = "x";
	button.addEventListener('click', buttonDoStuff);
	cell.colSpan = numberOfColumn;
	cell.appendChild(button);*/

});