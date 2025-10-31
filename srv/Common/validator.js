
 function validatePayloadValue(value) {
        if (value !== undefined && value !== null && value !== '') {
            return value;
        } else {
            return null;
        }
    }
module.exports = {
   validatePayloadValue
};