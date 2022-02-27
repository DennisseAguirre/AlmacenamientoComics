



window.onload = () => {
	let boton = document.getElementById("crearComic")
	let url = 'http://localhost:3001/api/comics'
	let id = ""

	const cargarComics = () => {
		fetch('http://localhost:3001/api/comics')
			.then(texto => texto.json())
			.then(comics => {
				for (let comic of comics) {
					let plantilla = `
				<tr>
	                <td class="align-middle">
	                  <div class="custom-control custom-control-inline custom-checkbox custom-control-nameless m-0 align-top">
	                    <input type="checkbox" class="custom-control-input" id="item-1">
	                    <label class="custom-control-label" for="item-1"></label>
	                  </div>
	                </td>
	                <td class="text-nowrap align-middle">${comic.nombre}</td>
	                <td class="text-nowrap align-middle">${comic.tipo}</td>
	                <td class="text-nowrap align-middle">${comic.estado}</td>
	                <td class="text-center align-middle">
	                  <div class="btn-group align-top">
	                    <button class="btn btn-sm btn-outline-secondary badge" type="button" value="${comic.id}" data-toggle="modal" data-target="#user-form-modal">Edit</button>
	                    <button class="btn btn-sm btn-outline-secondary badge" type="button" value="${comic.id}"><i class="fa fa-trash"></i></button>
	                  </div>
	                </td>
	              </tr>
			`
					document.getElementById('comics').innerHTML += plantilla
				}

				let edits = document.querySelectorAll("tr button:first-child")
				for (let btn_edit of edits) {
					btn_edit.onclick = () => {
						for (let c of comics) {
							if (c.id == btn_edit.value) {
								document.querySelector("form input[name$='name']").value = c.nombre
								document.querySelector("form input[name$='type']").value = c.tipo
								document.querySelector("form input[name$='state']").value = c.estado
								id = c.id
							}

						}
					}
				}

				let deletes = document.querySelectorAll("tr button:last-child")
				for (let btn_delt of deletes) {
					btn_delt.onclick = () => {
						metodos(url + "/" + btn_delt.value, { method: "delete" })

					}
				}

				
			})
	}


	function metodos(url, config) {
		console.log(url)
		console.log(config)
		fetch(url,config)
		.then(res => res.json())
		.then(data => {alert(data.msg)
			window.location.reload()
		
		})
	}

	boton.onclick = () => {
		console.log("probando")
		var texto=document.getElementsByClassName("form-control")
		var e=document.getElementsByClassName("text-center align-middle").length+1
		
		let dic = {
			id:e,
			nombre: texto[0].value,
			tipo: texto[1].value,
			estado:texto[2].value
			
		}
		config = {
			method: "",
			headers: { "Content-Type": "application/json" },
			body: JSON.stringify(dic)

		}
		
		if (id == "") {
			config.method = "POST"
			metodos(url, config)
		}
		else {
			config.method = "put"
			metodos(url + '/' + id, config)
			id = ""
		}

	}

	cargarComics()
}




