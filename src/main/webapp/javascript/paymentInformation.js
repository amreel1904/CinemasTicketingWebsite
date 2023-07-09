/**
 * This javascript code is to prevent user from enter more than one number into the input text
 */
const numberInputs = document.querySelectorAll('.number-input');

numberInputs.forEach((input, index) => {
  input.addEventListener('input', (event) => {
    const value = event.target.value;
    if (value.length >= 1 && index < numberInputs.length - 1) {
      numberInputs[index + 1].focus();
    }
    input.value = value.slice(0, 1);
  });
  input.addEventListener('keydown', (event) => {
    if (event.key === 'Backspace' && input.value.length === 0 && index > 0) {
      numberInputs[index - 1].focus();
    }
  });
});