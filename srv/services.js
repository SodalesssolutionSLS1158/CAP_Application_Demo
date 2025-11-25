const cds = require('@sap/cds');
const { CreateAttachment, beforeAttachment } = require("./Attachment/AttachmentHandler");
const { GetNortwinddata } = require('./Common/fetchdata.js')
const CryptoJS = require("crypto-js");

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
  this.on("getNortwindCategory", async (req) => {

    const categories = await GetNortwinddata();
    // console.log(categories)
    const html = `
      <!DOCTYPE html>
      <html lang="en">
      <head>
        <meta charset="utf-8">
        <title>Northwind Categories</title>
        <style>
          body { font-family: Arial, sans-serif; margin: 2rem; background: #fafafa; }
          table { border-collapse: collapse; width: 100%; }
          th, td { border: 1px solid #ddd; padding: 8px; }
          th { background-color: #0a6ed1; color: white; }
          img { height: 400px; border-radius: 4px; }
        </style>
      </head>
      <body>
        <h1>Northwind Categories</h1>
        <table>
          <thead>
            <tr>
              <th>ID</th><th>Category Name</th><th>Description</th>
            </tr>
          </thead>
          <tbody>
            ${categories.value.map(cat => {
      return `
                <tr>
                  <td>${cat.CategoryID}</td>
                  <td>${cat.CategoryName}</td>
                  <td>${cat.Description}</td>
                </tr>`
    }).join('')}
          </tbody>
        </table>
      </body>
      </html>
    `

    // Return HTML response
    req._.res.setHeader('Content-Type', 'text/html')
    req._.res.send(html)
  });
  this.on('capView', async (req) => {
    const name = req.data.name || 'World'

    // Build HTML response
    const html = `
      <!doctype html>
      <html lang="en">
        <head>
          <meta charset="utf-8">
          <title>CAP HTML View</title>
          <style>
            body { font-family: sans-serif; margin: 2rem; }
            h1 { color: #0a6ed1; }
          </style>
        </head>
        <body>
          <h1>Hello, ${name}!</h1>
          <p>This HTML is returned directly from a CAP function.</p>
        </body>
      </html>
    `
    // Send raw HTML response
    req._.res.setHeader('Content-Type', 'text/html')
    req._.res.send(html)
  })

  this.on("CryptoJS", (req) => {
    var ciphertext = req.data?.value || ""
    console.log('value is', ciphertext);
    // var data = [{ id: 1 }, { id: 2 }]
    // Encrypt
    // var ciphertext = CryptoJS.AES.encrypt(value, 'SourabhSabale').toString();
    // console.log(ciphertext)
    // Decrypt
    var bytes = CryptoJS.AES.decrypt(ciphertext, 'SourabhSabale');
    console.log(bytes)
    // var decryptedData = JSON.parse(bytes.toString(CryptoJS.enc.Utf8));
    var decryptedData = bytes.toString(CryptoJS.enc.Utf8);
    console.log(decryptedData)
    return `${decryptedData} ----this value encrypted then decrypted`;
  })

  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  this.on('getAttachmentDetails', async (req) => {

    const db = cds.db;

    const { date, insid } = req.data;
    if (date && date) {
      let query = `
               SELECT 
               ATTID, FILNM, FLTYP, EMPNM AS UPDBYNM, UPDDT, DESTX, DMSID, INSID
               FROM INS_T_ATTTB
               INNER JOIN INS_T_EMPTB
               ON INS_T_ATTTB.UPDBY = INS_T_EMPTB.EMPID
               ${date ? 'WHERE UPDDT = ?' : ''} ${insid ? 'AND INSID= ?' : ''}`;
      // const result = await db.run(query);
      const result = await db.run(query, [date, insid]);
      return result;
    } else {
      return 'Date and INSID is mandatory'
    }
  });

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