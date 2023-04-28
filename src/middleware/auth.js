const jwt = require("jsonwebtoken");
const boom = require('@hapi/boom');

const config = process.env;

const verifyToken = (req, res, next) => {
    const request = res.request;
    const token = request.headers["x-access-token"] ? request.headers["x-access-token"]: null;

        if (!token) {
            return boom.forbidden("A token is required for authentication");
        }

        try{
            const decoded = jwt.verify(token, config.TOKEN_KEY, null, function(error, decoded) {
                if(error){
                    throw new Error(error);
                }
            });
            req.user = decoded;
        }catch (err) {
            return boom.unauthorized(err.message);
        }
        return true;
}

module.exports = verifyToken;