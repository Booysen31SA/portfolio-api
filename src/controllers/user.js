const boom = require('@hapi/boom');
var bcrypt = require('bcryptjs');
const { v4: uuidv4 } = require('uuid');
var jwt = require('jsonwebtoken');

module.exports = {
    async userhealthcheck(request, reply) {
        var data = {
            message: true
        };
        return data;
    },

    async welcome(request, reply) {
        return 'Welcome your token has been accepted';
    },

    async registerUser(request, reply) {
        try {
            const db = request.server.app.db;

            // get user information
            const payload = request.payload;
            const userid = uuidv4();
            const email = payload.email;

            // validate user input
            // Joi validates it

            // check if user already exist
            // Validate if user exist in our database
            const userCheck = await db.portfolio.user.find({
                email: email
            });

            if(userCheck.length> 0){
                return boom.conflict(`There is already an account linked with this email: ${email}`)
            }

            // encrypt password
            const encryptpassword = await bcrypt.hash(payload.password, 10);

            // create token
            // user expiresIn: "2h", after testing
            const token = jwt.sign({
                user_id: userid, email
            },
            process.env.TOKEN_KEY,
            {
                expiresIn: "2h"
            });

            // create the user
            const user = await db.portfolio.user.insert({
                userid: userid,
                firstname: payload.firstname,
                surname: payload.surname,
                email: email,
                password: encryptpassword,
                token: token
            });
            
            return user;
            
        } catch (error) {
            return boom.conflict(error);
        }
    },

    async login(request, reply) {
        try {
            const db = request.server.app.db;

            // get user information
            const payload = request.payload;
            const userEmail = payload.email;

            // validate user input
            // Joi validates it

            const encryptpassword = await bcrypt.hash(payload.password, 10);

            let userCheck = await db.portfolio.user.findOne({
                email: userEmail
            });

            const comparepassword = await bcrypt.compare(payload.password, userCheck.password);

            if(!userCheck.length > 0 && comparepassword === false){
                return boom.notFound(`Invalid Credentials`);
            }

            // create token
            // user expiresIn: "2h", after testing
            userCheck.token = jwt.sign({
                user_id: userCheck.userid, userEmail
            },
            process.env.TOKEN_KEY,
            {
                expiresIn: "2h"
            });

            return userCheck;

            
        } catch (error) {
            return boom.conflict(error);
        }
    }
};