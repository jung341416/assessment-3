const input_name = document.getElementsByClassName('input_name');
const input_price = document.getElementsByClassName('input_price');
const cart_row = document.getElementById('container');
const item_data = JSON.parse(localStorage.getItem('items'));
console.log(item_data);
const item_name = document.getElementsByClassName('item_name');
const item_price = document.getElementsByClassName('item_price');

window.addEventListener('load', ()=> {
  for (let i = 0; i < item_data.length; i++) {
    let currentObj = item_data[i];
    for (let key in currentObj) {
      let itemName = key;
      let itemPrice = currentObj[key];
      let elem = document.createElement('div');
      elem.className = 'input';
      elem.innerHTML = itemName + '-------------------------------------' + itemPrice;
      cart_row.appendChild(elem);
  
    }
  }
})

