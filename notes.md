1. flow
2. classes
    2a. class relationships

Flow
- Hiker (user) starts the app
- Park ranger (CLI) greets the hiker and asks if they are interested in hiking in the Hudson Valley and nearby regions (y/n)
- hiker selects 'y' for yes or 'e' for exit
    - If hiker selects 'e,' exit the app
    - If hiker selects 'yes,' the park ranger has his scout (Scraper) gather data from TripAdvisor on the top 30 hikes in the Hudson Valley and nearby regions.
- Park ranger displays a numbered list of hikes and instructs the user to enter a number corresponding to one of the hikes to learn more about it, or enter 'e' to exit
    - If hiker enters a number, the hike name, location, number of reviews, and review excerpts will be displayed. Hiker can then go back to the list to select again, or choose 'e' to exit the program.
    - If hiker selects 'e,' Park Ranger thanks the user for visiting Hudson Valley Hikes, and the hiker exits the program.

Classes (a blueprint, or a factory)
- Hike (responsibility is to know about the hikes and to store them)
- CLI
- Scraper 