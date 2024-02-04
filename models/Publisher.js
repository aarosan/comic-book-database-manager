const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/connection');

class Publisher extends Model {}

Publisher.init(
    {
        id:
        {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        publisher_name: {
            type: DataTypes.STRING(50),
            allowNull: false
        }
    },
    {
        sequelize,
        timestamps: false,
        freezeTableName: true,
        underscored: true,
        modelName: 'publisher'
    }
);

module.exports = Publisher;