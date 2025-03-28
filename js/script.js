let cart = {};

function updateQuantity(id, change) {
  if (!cart[id]) cart[id] = { quantity: 0 };
  cart[id].quantity += change;
  if (cart[id].quantity < 0) cart[id].quantity = 0;

  document.getElementById(`qty_${id}`).innerText = cart[id].quantity;
}
