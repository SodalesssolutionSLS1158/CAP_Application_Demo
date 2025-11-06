const cds = require('@sap/cds');
const { validatePayloadValue } = require('../Common/validator.js')

async function CreateAttachment(res) {
    try {
        const oResData = JSON.parse(res.data.oPayload);
        console.log(oResData);

        const params = [
            validatePayloadValue(oResData.ATTID),
            validatePayloadValue(oResData.FILNM),
            validatePayloadValue(oResData.FLTYP),
            validatePayloadValue(oResData.UPDBY),
            // "2025-11-06",
            validatePayloadValue(oResData.DESTX),
            validatePayloadValue(oResData.DMSID),
            // 0 // OUT parameter placeholder
        ];
        console.log(params);
        const result = await cds.run(
            `CALL prCreateAttachment(?,?,?,?,?,?,?)`,
            params
        );

        // HANA returns OUT parameters in an array of objects
        const newId = result?.ATTIDD;
        if (newId === 0) {
            return 'Invalid ATTID ' + oResData.ATTID
        }
        if (oResData.ATTID !== 0) return 'Attachment Updated Successfully'
        return `Attachment Created Successfully. New ID: ${newId}`;
    } catch (error) {
        console.error(error);
        throw new Error("Error in Create Attachment " + error);
    }
}
async function beforeAttachment(res) {
    return 'beforeAttachment Trigger'
}
module.exports = {
    CreateAttachment,
    beforeAttachment
}