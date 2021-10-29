window.addEventListener('load', () => {

  const priceInput = document.getElementById("item-price");

  priceInput.addEventListener("input", () => {
    let tax = document.getElementById("add-tax-price");
    tax.innerHTML = Math.round(priceInput.value * 0.1);
    let profit = document.getElementById("profit");
    profit.innerHTML = Math.round(priceInput.value * 0.9);
  })

});
