const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/connection');

class Color_Artist extends Model {}

Color_Artist.init(
    {
        id:
        {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        color_artists_first_name:
        {
            type: DataTypes.STRING(50),
            allowNull: false
        },
        color_artists_last_name:
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
        modelName: 'color_artists'      
    }   
);

module.exports = Color_Artist;
