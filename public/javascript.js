let arrbutton = document.getElementsByClassName('drgn');
for (i = 0; i < arrbutton.length; i++) {
    arrbutton[i].addEventListener('click', function (event) {
        ajax(event.target)
    })
}

function ajax(element) {
    // console.log(element.id)
    let btnId = element.id;
    let btnVal = element.value;
    let newUrl = '/';

    switch (btnVal) {
        case 'minus':
            newUrl += 'minus/';
            break;
        case 'plus':
            newUrl += 'drum/';
            break;
    }
    newUrl += btnId

    // console.log(newUrl)
    fetch(newUrl, {
        method: 'GET',
    }).then(function (response) {
        return response.json()
    }).then(function (data) {
        // let paraElement = document.getElementById('amount' + btnId)

        if (typeof data.products[btnId] == 'undefined') {
            document.getElementById('prodcard' + btnId).remove();
        } else {
            document.getElementById('amount' + btnId).innerHTML = data.products[btnId].amount;
        }
        document.getElementById('total').innerText = data.total

    })
}


