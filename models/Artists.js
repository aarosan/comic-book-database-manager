const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/connection');

class Artists extends Model {}

Artists.init(
    {
        id:
        {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        artist_first_name:
        {
            type: DataTypes.STRING(50),
            allowNull: false
        },
        artist_last_name:
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
        modelName: 'artists'      
    }   
);

module.exports = Artists;