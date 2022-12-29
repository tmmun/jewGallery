const imgIco = document.querySelector('#img_serch')

var metalJewCount = 1;
var metalJew = '';

function SerchMetalImg() {
  if (metalJewCount == 1) {
    document.getElementById('metal_jew').textContent = 'золото'
    metalJew = 'gold'
  }
  if (metalJewCount == 2) {
    document.getElementById('metal_jew').textContent = 'серебро'
    metalJew = 'silver'
  }
  if (metalJewCount > 2) {
    document.getElementById('metal_jew').textContent = 'золото'
    metalJew = 'gold'
    metalJewCount = 1
  }
  metalJewCount++

}


var typeJewCount = 1;
var typeJew = '';

function SerchTupeImg() {
  if (typeJewCount == 1) {
    document.getElementById('type_jew').textContent = 'цепочки'
    typeJew = 'chain'
  }
  if (typeJewCount == 2) {
    document.getElementById('type_jew').textContent = 'браслеты'
    typeJew = 'bracelets'
  }
  if (typeJewCount == 3) {
    document.getElementById('type_jew').textContent = 'комплекты'
    typeJew = 'set'
  }
  if (typeJewCount > 3) {
    document.getElementById('type_jew').textContent = 'цепочки'
    typeJew = 'chain'
    typeJewCount = 1
  }

  typeJewCount++
}

var gemJewCount = 1;
var gemJew = '';

function SerchGemImg() {
  if (gemJewCount == 1) {
    document.getElementById('gem_jew').textContent = '< цирконий >'
    gemJew = 'zirconia'
  }
  if (gemJewCount == 2) {
    document.getElementById('gem_jew').textContent = '< жемчуг >'
    gemJew = 'pearl'
  }
  if (gemJewCount == 3) {
    document.getElementById('gem_jew').textContent = '< бирюза >'
    gemJew = 'turquoise'
  }
  if (gemJewCount > 3) {
    document.getElementById('gem_jew').textContent = '< без камня >'
    gemJew = 'nogem'
    gemJewCount = 0
  }

  gemJewCount++
}

$(document).ready(function () { // шаблон
  $('div.serch_but').on('click', function () { })
});

function SerchJew() {

  let list = document.querySelectorAll(".item2");

  if (list != null) {

    for (let val of list) {
      $(document).ready(function () {
        $(".item2").remove();
      });
    }

  }

  var weightId = document.getElementById('weight').value;

  $.ajax({
    type: 'POST',
    url: 'serch.php',
    data: {},
    success: function (data) {
      var a = data.split(' ');
      for (let i = 0; i < a.length - 1; i += 1) {
        let weight = Number(JSON.parse(a[i]).weightt)

        if (document.getElementById("weight").value != '') {
          if (weightId >= weight) { // сопостовляем вес изделия

            if ( metalJew != '' && metalJew == JSON.parse(a[i]).metal) {

              if ( typeJew != '' && typeJew == JSON.parse(a[i]).category) {

                if ( gemJew != '' && gemJew == JSON.parse(a[i]).gems) {

                  //var element = document.getElementById('img_create');
                  //var p = document.createElement('img');
                  //p.id = 'img_serch'
                  //p.src = JSON.parse(a[i]).urll
                  //element.appendChild(p);
                  let list = document.querySelectorAll(".item2");
                  document.getElementById('text_coutn').textContent = list.length + 1
                  const section = document.getElementsByClassName('section');
                  const childimg2 = document.createElement('img'); // создает элемент img2
                  childimg2.className = 'section_item item2';
                  childimg2.setAttribute('src', JSON.parse(a[i]).urll);
                  section[0].appendChild(childimg2);

                }
              }
            }
          }
        }


      }

    }
  })
}

function DeliteItem() {
  let list = document.querySelectorAll(".item2");
  for (let val of list) {

    $(document).ready(function () {
      $(".item2").remove();
    });
  }

  $(document).ready(function () {
    $('#ggg').click(function () {
      $(".item2").remove();
    })
  });
}