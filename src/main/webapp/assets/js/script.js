// select all seats
const seats = document.querySelectorAll('.seat');

// select total seats and total price elements
const totalSeats = document.querySelector('.total-seats');
const totalPrice = document.querySelector('.total-price');

// initialize total number of seats and total price to 0
let numSeatsSelected = 0;
let totalSeatPrice = 0;

// add event listener to each seat
seats.forEach(seat => {
  seat.addEventListener('click', () => {
    // toggle the 'selected' class of the clicked seat
    seat.classList.toggle('selected');
    
    // get the price of the selected seat
    const seatPrice = parseInt(seat.dataset.price);
    
    // check if the seat is not sold
    if (!seat.classList.contains('sold')) {
      // update the total number of seats and total price
      if (seat.classList.contains('selected')) {
        numSeatsSelected++;
        totalSeatPrice += seatPrice;
      } else {
        numSeatsSelected--;
        totalSeatPrice -= seatPrice;
      }
    }
    
    // update the text of the total seats and total price elements
    totalSeats.textContent = numSeatsSelected;
    totalPrice.textContent = totalSeatPrice;
  });
});
