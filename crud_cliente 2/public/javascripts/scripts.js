

window.onload = () => {
	const mostrarContenido = async () => {
		
		let contenido = document.getElementById("contenido");
	    let respuesta = await fetch("http://localhost:3001/api/comics");
	    let datos = await respuesta.json();

	     contenido.innerHTML = "";

	for (let comic of datos) {
		let plantilla = `
		    <div id="carta">
                <h2>${comic.nombre}</h2>
                <p>${comic.tipo}</p>
                <p>${comic.estado}</p>
                
            </div>   
            `
		contenido.innerHTML += plantilla;
	}
			
		
	}
	mostrarContenido();
};
