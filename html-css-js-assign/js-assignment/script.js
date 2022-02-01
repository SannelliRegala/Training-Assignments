function confirmOrder(){
    if(document.getElementById('product').value != ""){
        let conf = confirm("Are you sure you want to place an order?");
        if(conf){
            alert("You placed an order!");
        } else{
            alert("You didn't order.");
        }        
    } else{
        alert("Please pick a product.");
    }
}

function changePrice(){
    var price = document.getElementById('price');
    var selectedProduct = document.getElementById('product').value;
    if(selectedProduct == "Laptop"){
        price.value = 30000;
    }
    else if(selectedProduct == "Microphone"){
        price.value = 1000;
    }
    else if(selectedProduct == "Headset"){
        price.value = 500;
    }
}

function calculatePrice(){
    if(document.getElementById('product').value != ""){
        var productPrice = document.getElementById('price').value;
        var discount = getDiscount();
        var finalPrice = 0;
        finalPrice =  productPrice - (productPrice * discount);
        document.getElementById('disc_price').value =finalPrice;
    }
}

function getDiscount(){
    //if 20%disc is checked? etc etc
    return document.querySelector('input[name="discount"]:checked').value;
}

