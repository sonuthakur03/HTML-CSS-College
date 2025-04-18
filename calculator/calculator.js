
const display = document.getElementById('result');
const buttons = document.querySelectorAll('button');

let opr = ['+','-','*','/'];
let val1 = 0;
let op = '';
let str = '';

buttons.forEach(button => {
    button.addEventListener('click', () => {
        const value = button.textContent;

        if (value === 'C') {
            display.value = '';
        } else if (value === '=') {
            try {
                display.value = eval(str);
            } catch (error) {
                display.value = 'Error';
            }
        }else if(opr.includes(value)){
            val1 = display.value;
            display.value = '';
            op = value;
            str = val1 + op;
            console.log(str);
        } else {
            str += value; 
            display.value += value;
        }
    });
})