console.log('Executing models/Generation.js');

const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/connection');

class Generation extends Model {}

Generation.init(
    {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        generation_name: {
            type: DataTypes.STRING(50),
            allowNull: false
        },
        year_start: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        year_end: {
            type: DataTypes.INTEGER,
            allowNull: false
        }
    },
    {
        sequelize,
        timestamps: false,
        freezeTableName: true,
        underscored: true, 
        modelName: 'generation'
    }
);

console.log('Generation model initialized successfully');

module.exports = Generation;