//grab DOM elements
const shopping_btn = document.getElementById('shopping_cart');
const add_btn = document.getElementsByClassName('add_btn');
const parentTable = document.getElementsByClassName('table');
const input_name = document.getElementsByClassName('input_name');
const input_price = document.getElementsByClassName('input_price');
//when buttons clicked set the item and price it to local storage
let items = [];
for (let i = 0; i < add_btn.length; i++) {
  add_btn[i].addEventListener('click', (e) => {
    let itemName = e.target.parentElement.children[1].textContent;
    let itemPrice = e.target.parentElement.children[2].textContent.replace('$','');
    if(Storage) {
      let item = {
        id: i+1,
        name: itemName,
        price: itemPrice,
      }
    items.push(item);
    localStorage.setItem('items', JSON.stringify(items));
    }
    let data = JSON.parse(localStorage.getItem('items'));
    let name = data[i].name;
    let price = data[i].price;
    console.log(name, price)
    input_name.textContent = name;
    input_price.textContent = price;
  

  }
  
  )}
  
// when shoppingcart is clicked add a href which will locate to new page
  //display the stored values from localstorage on new page
  shopping_btn.addEventListener('click', (e) => {
    e.preventDefault();
    window.location.href='newpage.html'
  })
