//@ts-check
'use strict';
const Joi = require('@hapi/joi');
const userController = require('../controllers/user.js');
const verifyToken = require('../middleware/auth.js');
const { _assign } = require('@hapi/joi/lib/base.js');

exports.UserPlugin = {
    name: 'User',
    version: '1.0.0',
    register: async function (server, options){

        server.route({
            path: '/welcome',
            method: 'GET',
            options: {
                pre: [
                    {method: verifyToken, assign: 'verifyToken'}
                ],
                handler: userController.welcome,
                description: 'Welcome',
                notes: 'Welcome',
                tags: ['api', 'Welcome'],
                plugins: {
                    'hapi-swagger': {
                        payloadType: 'form'
                    }
                },
                validate: {
                    headers: Joi.object({
                        'x-access-token': Joi.string()
                    }).options({ allowUnknown: true }),
                    failAction: async (request, h, err) => {
                        request.log('error', err);
                        return err;
                    }
                }
            }
        });

        server.route({
            path: '/register',
            method: 'POST',
            options: {
                handler: userController.registerUser,
                description: 'Register a user',
                notes: 'Register a user',
                tags: ['api', 'User'],
                plugins: {
                    'hapi-swagger': {
                        payloadType: 'form'
                    }
                },
                validate: {
                    payload: Joi.object({
                        firstname: Joi.string().required(),
                        surname: Joi.string().required(),
                        email: Joi.string().required(),
                        password: Joi.string().required(),
                    }),
                    failAction: async (request, h, err) => {
                        request.log('error', err);
                        return err;
                    }
                }
            }
        });

        server.route({
            path: '/login',
            method: 'POST',
            options: {
                handler: userController.login,
                description: 'Login a user',
                notes: 'Login a user',
                tags: ['api', 'User'],
                plugins: {
                    'hapi-swagger': {
                        payloadType: 'form'
                    }
                },
                validate: {
                    payload: Joi.object({
                        email: Joi.string().required(),
                        password: Joi.string().required(),
                    }),
                    failAction: async (request, h, err) => {
                        request.log('error', err);
                        return err;
                    }
                }
            }
        });
    }
}