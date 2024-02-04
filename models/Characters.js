const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/connection');

class Characters extends Model {}

Characters.init(
    {
        id:
        {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        character_name:
        {
            type: DataTypes.STRING(50),
            allowNull: false
        },
        alias_first_name:
        {
            type: DataTypes.STRING(50),
            allowNull: true
        },
        alias_last_name:
        {
            type: DataTypes.STRING(50),
            allowNull: true
        }
    },
    {
        sequelize,
        timestamps: false,
        freezeTableName: true,
        underscored: true,
        modelName: 'characters'
    }
);

module.exports = Characters;