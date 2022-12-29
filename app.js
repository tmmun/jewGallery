const imgIco = document.querySelector('#category')

let saveImageLokal = []

if (localStorage.getItem('save') != null) {
  saveImageLokal = localStorage.getItem('save').split(' ');
  document.getElementById('text_coutn').textContent = saveImageLokal.length

  for (let i = 0; i < saveImageLokal.length; i += 1) {
    const section = document.getElementsByClassName('section'); // создает элемент section
    const child = document.createElement('img');
    child.className = 'section_item item2';
    child.setAttribute('src', saveImageLokal[i])
    section[0].appendChild(child);
    document.getElementById('text_coutn').textContent = saveImageLokal.length
  }

}

var sectionCount = 0;
var sectionSave;

var imgCount = 0;
var imgSave;

var infoCount = 0;
var infoSave;

var contCount = 0;
var contSave;

var imageCount = 0;

var categoryCreate;
var categoryCreateCo = 0;

function PhotoSlider() { //генерируем окна с фото

  $.ajax({
    type: 'POST',
    url: 'show.php',
    data: {},
    success: function (data) {
      var a = data.split(' ');

      let arrLen = a.length - 1 //длинна масива

      let i = 0;
      while (i < arrLen / 2) { //генерируем окна

        sectionCount++
        sectionCount = String(sectionCount)

        categoryCreate = JSON.parse(a[categoryCreateCo]).category
        categoryCreateCo++
        categoryCreateCo++

        const category = document.getElementById(categoryCreate); // создает элемент section
        const jal_base = document.createElement('div');
        contCount = String(contCount)
        contSave = 'cont' + contCount
        jal_base.className = contSave;
        jal_base.id = "contId"
        contCount = Number(contCount)
        contCount++
        category.appendChild(jal_base);

        const boxes = document.getElementsByClassName(contSave);
        const child = document.createElement('div');
        child.setAttribute('onclick', "ccc()")
        sectionSave = 'section' + sectionCount
        child.className = sectionSave;
        child.id = 'sel'
        child.style = "display: flex; justify-content: space-between;overflow-x: auto;width: 332px;height: 350.33px;scroll-snap-type: x mandatory;"
        boxes[0].appendChild(child);

        const section = document.getElementsByClassName(sectionSave);
        const info = document.createElement('div'); // создает элемент info
        imgCount = String(imgCount)
        info.className = 'info';
        info.id = 'inf' + imgCount

        if (localStorage.getItem('save') != null) {
          let result = localStorage.getItem('save').match(JSON.parse(a[imageCount]).urll);
          if (result != null) {
            info.style = "background: url(images/info2.svg);";
          }
        }

        info.setAttribute('onclick', "GetIdImg(" + imgCount + ")")
        section[0].appendChild(info);

        const square = document.createElement('div'); // создает элемент img
        square.className = 'square';
        section[0].appendChild(square);

        const childimg1 = document.createElement('img'); // создает элемент img
        childimg1.className = 'section_item item1';
        imgSave = 'img_linc' + imgCount
        childimg1.id = imgSave
        imgCount = Number(imgCount)
        imgCount++
        childimg1.setAttribute('src', JSON.parse(a[imageCount]).urll)
        section[0].appendChild(childimg1);
        imageCount++

        const childimg2 = document.createElement('img'); // создает элемент img2
        childimg2.className = 'section_item item2';
        childimg2.setAttribute('src', JSON.parse(a[imageCount]).urll)
        section[0].appendChild(childimg2);
        imageCount++
        i++;
      }

    }
  })

}

PhotoSlider()

var category = 1;
var set = document.getElementById('set');
var chain = document.getElementById('chain');
var bracelets = document.getElementById('bracelets');
var names = document.getElementById('name');
var other = document.getElementById('other');

function showHide() { //категории

  if (category >= 6) {
    category = 0;
  }

  if (category == 0) {

    set.style.display = "block";
    chain.style.display = "block";
    bracelets.style.display = "block";
    names.style.display = "block";
    other.style.display = "block";
    const imageUrl = "images/logo.svg";
    imgIco.setAttribute('src', imageUrl)
  }

  if (category == 1) {

    set.style.display = "block";
    chain.style.display = "none";
    bracelets.style.display = "none";
    names.style.display = "none";
    other.style.display = "none";
    const imageUrl = "images/logo1.svg";
    imgIco.setAttribute('src', imageUrl)
  }

  if (category == 2) {

    set.style.display = "none";
    chain.style.display = "block";
    bracelets.style.display = "none";
    names.style.display = "none";
    other.style.display = "none";
    const imageUrl = "images/logo2.svg";
    imgIco.setAttribute('src', imageUrl)
  }
  if (category == 3) {

    set.style.display = "none";
    chain.style.display = "none";
    bracelets.style.display = "block";
    names.style.display = "none";
    other.style.display = "none";
    const imageUrl = "images/logo3.svg";
    imgIco.setAttribute('src', imageUrl)
  }
  if (category == 4) {

    set.style.display = "none";
    chain.style.display = "none";
    bracelets.style.display = "none";
    names.style.display = "block";
    other.style.display = "none";
    const imageUrl = "images/logo4.svg";
    imgIco.setAttribute('src', imageUrl)
  }
  if (category == 5) {

    set.style.display = "none";
    chain.style.display = "none";
    bracelets.style.display = "none";
    names.style.display = "none";
    other.style.display = "block";
    const imageUrl = "images/logo5.svg";
    imgIco.setAttribute('src', imageUrl)
  }

  category++

  //var obj = document.getElementById(element_id); 
  //obj.style.display = "block"; 
}


function GetIdImg(num) {

  document.getElementById('text_coutn').textContent = saveImageLokal.length

  $('#inf' + num).css('background', 'url(images/info2.svg)');

  const c = document.getElementById("img_linc" + num); // берем картинку по id
  const d = c.src; // берем ее src

  if (localStorage.getItem('save') != null) {

    let result = localStorage.getItem('save').match(d);

    if (result == null) {
      saveImageLokal.push(d)
      let lokSave = localStorage.getItem('save')
      localStorage.setItem('save', lokSave + ' ' + d);

      const section = document.getElementsByClassName('section'); // создает элемент section
      const child = document.createElement('img');
      child.className = 'section_item item2';
      child.setAttribute('src', d)
      section[0].appendChild(child);
    }
    else {
    }

  }
  else {
    saveImageLokal.push(d)
    localStorage.setItem('save', d);

    const section = document.getElementsByClassName('section'); // создает элемент section
    const child = document.createElement('img');
    child.className = 'section_item item2';
    child.setAttribute('src', d)
    section[0].appendChild(child);
  }

}

function ccc(){
  $( ".square" ).animate({ "margin": "269px 20px","opacity": "1%" }, "slow" );
}
