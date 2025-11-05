const axios =  require('axios');
async function GetNortwinddata(params) {
    return new Promise((res, rej) => {
        axios.get("https://services.odata.org/northwind/northwind.svc/Categories?$format=json")
            .then(response => {
                res(response.data); // Data returned from the server
            })
            .catch(error => {
                rej("Error fetching data:", error);
            });
    })
};
module.exports = {GetNortwinddata};