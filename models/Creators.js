const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/connection');

class Creators extends Model {}

Creators.init(
    {
        id:
        {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        creator_first_name:
        {
            type: DataTypes.STRING(50),
            allowNull: false
        },
        creator_last_name: 
        {
            type: DataTypes.STRING(50),
            allowNull: false
        }
    },
    {
        sequelize,
        timestamps: false,
        freezeTableName: true,
        underscored: true,
        modelName: 'creators'
    }
);

module.exports = Creators;