const payBtn = document.querySelector('#payBtn');
const form = document.querySelector('#formAction');
console.log(payBtn);
console.log(form);

payBtn.addEventListener('click', function(){
    form.setAttribute('action', 'purchase.jsp')
});