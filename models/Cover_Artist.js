const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/connection');

class Cover_Artist extends Model {}

Cover_Artist.init(
    {
        id:
        {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        cover_artists_first_name:
        {
            type: DataTypes.STRING(50),
            allowNull: false
        },
        cover_artists_last_name:
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
        modelName: 'cover_artists'      
    }   
);

module.exports = Cover_Artist;