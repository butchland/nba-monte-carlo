---
queries:
  - future_games: nfl/future_games.sql
  - past_games: nfl/past_games.sql
  - past_games_summary: nfl/past_games_summary.sql
  - past_games_summary_by_team: nfl/past_games_summary_by_team.sql
---

# Predictions

## Future Predictions

_Historically, NFL teams win 57.5% of their games at home, which explains why teams with lower elo ratings can be predicted to win._

<DataTable
    data={future_games}
    title='Predictions'
    rows=16
    rowShading="true" 
    rowLine="false"
    search="true">
    <Column id="visitor"/>
    <Column id="home"/>
    <Column id="home_win_pct1"/>
    <Column id="odds" align="right"/>
    <Column id="implied_line_num1" align="right"/>
</DataTable>

## Past Performance

<BigValue 
    data={past_games_summary} 
    value='total_games_played' 
/> 

<BigValue 
    data={past_games_summary} 
    value='correct_predictions' 
/> 

<BigValue 
    data={past_games_summary} 
    value='accuracy_pct1' 
/> 

<Accordion>
  <AccordionItem title="Detailed Results by Team">
    <DataTable
        data={past_games_summary_by_team}
        title='Prediction Accuracy by Team'
        rows=32
    />
  </AccordionItem>
</Accordion>
