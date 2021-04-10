# Where is the food?

Where is the food? Is simple app for my bachelor thesis on University Pardubice in 2021.
Topic of thesis was multiplatform app that is using geosocial api. Aim of bachelor thesis was to analyze geosocial apis suiteble for usage in own app and then create multi platform app with this api.

## Info
This app show places nearby spcified location. You can filter result setting custom filter. When you click on map pin infobox with small info is shown. When you click on infobox you get to see food place detail. There you can find moore info about food place including opening hours and reviews.


## Tech stack
App is written in flutter and for state management is used BloC library.
As geosocial api i have chosen Yelp GraphQL just purely becouse i wanted to work with graphql.
Also google maps are used there with custom styles and custom pins that are different for each category of food place.
Filter is stored in Hive database. 

## UI
I focused on the UI of the app so it is not that feature rich. Even thought it ui is not best by any means I learned on this project core principles of UI design. You can find there custom toggleable buttons. Custom google map pins. Shimmer skeleton when detail of food place is being show. Hiding custom infobox when you click on google map pin.
