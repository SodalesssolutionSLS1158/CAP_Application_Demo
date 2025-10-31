const cds = require('@sap/cds');
const { CreateAttachment, beforeAttachment } = require("./Attachment/AttachmentHandler");

module.exports = cds.service.impl(async function () {
    const { GetAttachment } = this.entities
    // console.log('Attachments',db.entities);
    this.on("udEdZTYjwE", CreateAttachment);
    // this.before('READ', 'GetAttachment', beforeAttachment);
    this.on('GetData', async function (req) {
        // return " // 1. Connect to the database service"
        // const db = await cds.connect.to('db');
        // const { ATTACHMENT } = cds.entities('INS.T')


        // 2. Get the entity definition
        // const { ATTACHMENT } = db.entities;
        console.log(GetAttachment)
        // 3. Select all data from the entity using CQL
        const data = await SELECT.from(GetAttachment);
        console.log(data)
        // 4. Return the result
        return JSON.stringify(data);
    })
    this.after('each', GetAttachment, book => {
        console.log('hi')
        book.FILNM += `sdvsdv`
        return 'test'
    })
    // this.before('READ', 'GetAttachment', req => {
    //     // if (!req.user.is('Admin'))
    //          req.reject(403, 'Not authorized');
    // });

})

// class CatalogService extends cds.ApplicationService {
//   init() {

//     // const { Books } = cds.entities('sap.capire.bookshop')
//     const { GetAttachment } = this.entities

//     // Add some discount for overstocked books
//     this.after('each', GetAttachment, book => {
//         console.log('sdcjvsc')
//       book.FILNM += ` -- 11% discount!`
//     })

//     // Delegate requests to the underlying generic service
//     return super.init()
//   }
// }
// module.exports = CatalogService