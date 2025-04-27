import React, { useEffect } from 'react'
import List from "@mui/material/List"
import ListItem from "@mui/material/ListItem"
import Link from '@mui/material/Link'
import Typography from "@mui/material/Typography"
import Divider from "@mui/material/Divider"
import FaceCard from "./FaceCard"

export default function History({data}) {
  function scrollHistory() {
    document.getElementById('history-list-end').scrollIntoView()
  }

  const lastId = data.length ? data[data.length - 1].id : -1
  useEffect(() => {
    // sometimes it just doesn't want to scroll far enough.
    // wondering if it's because we scroll before the history is fully rendered?
    setTimeout(scrollHistory, 100)
    setTimeout(scrollHistory, 1000)
  }, [lastId])

  return <div className="history-box">
    <List>
      {
        data.map((entry) => (
          <div key={entry.id}>
            <ListItem>
              <Typography>{ entry.error ? `⚠️ ${entry.error}` : entry.text }</Typography>
              { entry.link && <>&thinsp;<Link href={entry.link}>{entry.link}</Link></> }
                &ensp;
                { entry.cards &&
                  <span className={`history-cards-container from-${entry.pi}`}>
                    <span className='history-cards'>{ Array.from(entry.cards).map((card) =>
                      <FaceCard card={card} key={card} small={true}/>) }
                    </span>
                  </span> }
            </ListItem>
            <Divider/>
          </div>
        ))
      }
    </List>
    <div id='history-list-end'/>
  </div>
}
