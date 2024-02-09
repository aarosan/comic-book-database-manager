const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/connection');

class Letterer extends Model {}

Letterer.init(
    {
        id:
        {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        letterer_first_name:
        {
            type: DataTypes.STRING(50),
            allowNull: false
        },
        letterer_last_name:
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
        modelName: 'letterer'
    }
);


module.exports = Letterer;