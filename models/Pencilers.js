const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/connection');

class Pencilers extends Model {}

Pencilers.init(
    {
        id:
        {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        pencilers_first_name:
        {
            type: DataTypes.STRING(50),
            allowNull: false
        },
        pencilers_last_name:
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
        modelName: 'pencilers'      
    }   
);

module.exports = Pencilers;