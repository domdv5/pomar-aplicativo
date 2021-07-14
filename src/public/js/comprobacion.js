const selector = document.getElementById('ident')
const boton = document.getElementById('boton')

const valor = () => {
    const value = selector.value
    console.log(value);
}

boton.addEventListener('keyup', valor)