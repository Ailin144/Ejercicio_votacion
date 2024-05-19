export class ApiService{

    constructor() { }

    async listCandidatos() {
        const response = await fetch(`./api/listCandidatos.php`, {
            method: "GET",
			headers: {
				"Content-Type": "application/json",
			}
        })
        return response.json()
    }
    
    async listRegions() {
        const response = await fetch(`./api/listRegions.php`, {
            method: "GET",
			headers: {
				"Content-Type": "application/json",
			}
        })
        return response.json()
    }

    async createVotacion(formulario) {
        const response = await fetch(`./api/createVotacion.php`, {
            method: "POST",
			headers: {
				"Content-Type": "application/json",
			},
			body: JSON.stringify(formulario),
        })
        return response.json()
    }
}