import { checkDevices } from '../components/check_devices';

const openModal = () => {

  // check type of device
  const is_mobile = checkDevices();
  console.log(is_mobile);
  // Get the modal
  const modal = document.getElementById('myModal');
  // Get the buttons that open the modal
  const btn_one     = document.getElementById("myBtn-one");
  const btn_two     = document.getElementById("myBtn-two");
  const btn_three   = document.getElementById("myBtn-three");
  // Get the <span> element that closes the modal
  const span = document.getElementsByClassName("close")[0];
  // When the user clicks the button, open the modal
  btn_one.onclick = function() {
    modal.style.display = "block";
  }
  btn_two.onclick = function() {
    modal.style.display = "block";
  }
  btn_three.onclick = function() {
    modal.style.display = "block";
  }

  // When the user clicks on <span> (x), close the modal
  span.onclick = function() {
    modal.style.display = "none";
  }

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
}

export { openModal };
