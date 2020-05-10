1. flow
2. classes
    2a. class relationships

Flow
- Hiker (user) starts the app
- Park ranger (CLI) greets the hiker and asks if they are interested in hiking in the Hudson Valley (y/n)
- hiker selects yes or no
    - If hiker selects 'no,' exit the app
    - If hiker selects 'yes,' the park ranger asks which side (east or west) of the Hudson River the hiker would like to hike on
- hiker selects east or west
    - If hiker selects east, the scout (scraper) returns a numbered list of hikes east of river (by scraping https://hikethehudsonvalley.com/the-hikes/)
        - The park ranger asks the hiker to select one for more information
    - If hiker selects west, the scout returns a numbered list of hikes west of river (by scraping https://hikethehudsonvalley.com/the-hikes/)
        - The park ranger asks the hiker to select one for more information
- Hiker inputs a number that corresponds to the desired hike
- Scout (Scaper) scrapes the relevant, specific hike URL from the website (e.g. https://hikethehudsonvalley.com/hikes/anthonys-nose/) and returns data on three attributes:
    - scenery: e.g. "4 out of 5"
    - difficulty: e.g. "6 out of 10"
    - distance: e.g. "2.6 miles, Up-and-Back"
- Park ranger asks 'Would you like to learn about more hiking spots?' (y/n)
    - If hiker selects 'yes,' return to prompt about east/west of the Hudson River
    - If hiker selects 'no,' Park Ranger thanks the user for looking into the Hudson Valley's hiking spots, briefly reminds them to practice conservation/wildlife protection, and wishes them a pleasant day. EXIT APP

Classes (a blueprint, or a factory)
- Hike (responsibility is to know about the hikes and to store them)
- CLI
- Scraper 