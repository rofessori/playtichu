import React from 'react';
import Card from '@mui/material/Card';
import CardDimensions from './CardDimensions';
import cardBackImage from '../tichu/public/graphics/back.jpg'; // Ensure this path is correct

export default function CardBack({label}) {
  const cardBackStyle = {
    ...CardDimensions.reg,
    backgroundImage: `url(${cardBackImage})`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    display: 'flex',
    justifyContent: 'center',
    alignItems: 'center',
    position: 'relative'
  };

  const labelStyle = {
    fontSize: '24px', // Adjust size as needed
    fontWeight: 'bold',
    color: 'white',
    textShadow: '1px 1px 2px black', // Add some shadow for better visibility
    position: 'absolute',
    bottom: '10px',
    right: '10px'
  };

  return (
    <Card variant="elevation" elevation={2} style={cardBackStyle} className='pile'>
      <span className='card-back-label' style={labelStyle}>{label}</span>
    </Card>
  );
}
