const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/connection');

class Editor_In_Chief extends Model {}

Editor_In_Chief.init(
    {
        id:
        {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        editor_in_chief_first_name:
        {
            type: DataTypes.STRING(50),
            allowNull: false
        },
        editor_in_chief_last_name:
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
        modelName: 'editor_in_chief'
    }
);


module.exports = Editor_In_Chief;