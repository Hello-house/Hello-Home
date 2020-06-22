const amountsBtn = document.querySelector('#amountsBtn');
const showPrice = document.querySelector('#showPrice');
console.log(showPrice);
const price = document.querySelector('.price');
console.log(price);
let money = price.textContent;
console.log(money+1);;
console.log(price.innerText + 2)
let changePrice = amountsBtn.value * money[0];

amountsBtn.addEventListener('change',function() {
    showPrice.textContent = changePrice;
});