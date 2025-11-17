const images = document.querySelectorAll('.img');
let index = 0;

function showImage() {
  images.forEach(img => img.style.opacity = 0);
  images[index].style.opacity = 1;
}

document.getElementById('next').onclick = function () {
  index = (index + 1) % images.length;
  showImage();
};

document.getElementById('prev').onclick = function () {
  index = (index - 1 + images.length) % images.length;
  showImage();
};
