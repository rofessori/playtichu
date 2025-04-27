import React, { useCallback } from 'react';
import Card from '@mui/material/Card';
import decodeCard from './DecodeCard.js'; // Import the decodeCard function
import CardDimensions from './CardDimensions';

export default function FaceCard({ card, dragging, small, selected, toggleSelect }) {
    const getStyles = useCallback(() => {
        const h = small ? { ...CardDimensions.small } : { ...CardDimensions.reg };
        return h;
    }, [small]);

    const handleClick = useCallback(() => {
        if (toggleSelect) {
            toggleSelect(card);
        }
    }, [card, toggleSelect]);

    const { suit, rank, color_style } = decodeCard(card); // Use the decodeCard function
    return (
        <Card
            variant="elevation"
            className={`tichu-card ${selected ? 'selected' : ''}`}
            elevation={dragging || selected ? 7 : 2}
            style={getStyles()}
            onClick={handleClick}
        >
            <div className={`${color_style} card-rank ${small ? 'card-small' : ''}`}>{rank}</div>
            <div className={`${color_style} card-suit ${small ? 'card-small' : ''}`}>{suit}</div>
        </Card>
    );
}