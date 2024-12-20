const price = () => {
  const priceInput = document.getElementById('item-price');
  if (!priceInput){ return false;}
  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value;
    const addTaxDom = document.getElementById('add-tax-price');
    addTaxDom.innerHTML = Math.floor(priceInput.value * 0.10);
    const addProfitDom = document.getElementById('profit');
    addProfitDom.innerHTML = Math.floor(priceInput.value - addTaxDom.innerHTML);
  });
};

window.addEventListener("turbo:load", price);
window.addEventListener("turbo:render", price);