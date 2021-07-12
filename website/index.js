//grab DOM elements
const shopping_btn = document.getElementById('shopping_cart');
const add_btn = document.getElementsByClassName('add_btn');


let items = [];
for (let i = 0; i < add_btn.length; i++) {
  add_btn[i].addEventListener('click', (e) => {
    let itemName = e.target.parentElement.children[1].textContent;
    let itemPrice = e.target.parentElement.children[2].textContent;
    let itemObj = 
    {
      [itemName]: itemPrice
    }
    items.push(itemObj); 
    if(!localStorage) {
      return
    } else {
      localStorage.setItem('items', JSON.stringify(items));
    }

  }
  
  )}
  
shopping_btn.addEventListener('click', (e)=> {
  e.preventDefault()
  document.location.href="cart.html"
})

