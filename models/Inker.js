const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/connection');

class Inker extends Model {}

Inker.init(
    {
        id:
        {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        inker_first_name:
        {
            type: DataTypes.STRING(50),
            allowNull: false
        },
        inker_last_name:
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
        modelName: 'inker'
    }
);


module.exports = Inker;