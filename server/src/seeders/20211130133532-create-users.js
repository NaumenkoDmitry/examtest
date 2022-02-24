'use strict';
const bcrypt = require('bcrypt');
const {
  SALT_ROUNDS,
  ROLES: { CUSTOMER, CREATOR, MODERATOR },
} = require('../constants');

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.bulkInsert('Users', [
      {
        firstName: 'Buyer',
        lastName: 'Buyerovich',
        displayName: 'buyer',
        passwordHash: await bcrypt.hashSync('1234Test', SALT_ROUNDS),
        email: 'buyer@test.test',
        role: CUSTOMER,
      },
      {
        firstName: 'Creator',
        lastName: 'Creatorovich',
        displayName: 'creator',
        passwordHash: await bcrypt.hashSync('1234Test', SALT_ROUNDS),
        email: 'creator@test.test',
        role: CREATOR,
      },
      {
        firstName: 'Moderator',
        lastName: 'Moderatovich',
        displayName: 'moderator',
        passwordHash: await bcrypt.hashSync('1234Test', SALT_ROUNDS),
        email: 'moderator@test.test',
        role: MODERATOR,
      },
    ],{});
  }
};