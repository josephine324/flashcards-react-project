# Development Process Documentation

## Overview

This Flutter app provides an intuitive interface to explore information about countries from around the world. Users can browse a list of countries, search for specific ones, and view detailed information about each country.

## API Chosen and Its Purpose:

I chose the REST Countries API (https://restcountries.com/v3) for this project. This API provides comprehensive information about countries, including their names, flags, regions, population, and languages. The purpose of integrating this API was to enable dynamic data fetching and ensure that the app stays updated with the latest country information without hardcoding the data.
Key features of the API include:
* Fetching detailed country data (/all endpoint).
* Structured responses with nested fields for attributes like languages, regions, and flags.

## Screens Created and Their Functionalities:

1. Home screen
* Purpose: Acts as the landing page of the app with a welcoming design
* Features
  * Displays a globe-themed background image
  *  Encourages users to start exploring countries with a prominent "Start Exploring" button.
  *  Navigates to the CountryListScreen when the button is clicked.
2. Country List Screen
* Purpose: Displays a searchable list of countries fetched from the API.
* Features
  * Search Bar: Allows users to filter countries by name in real-time.
  * Dynamic List: Presents each country as a card with its flag, name, and region.
  * Navigation: Clicking on a country navigates to the CountryDetailsScreen with detailed information about the selected country.
3. Country Details screen
* Purpose: Provides detailed information about a selected country.
* Features
 * Displays the country's flag, name, region, subregion, population, and languages.
 * Uses a well-designed card layout to organize information neatly.
 * Handles cases where certain details (e.g., subregion) may be missing by showing "Unknown."

## Challenges Faced and how they were resolved:
1. Handling Nested API Data:
    Challenge: The API's data structure was deeply nested, which made accessing specific fields (like languages) slightly complex.
    Resolution: Used null-aware operators (?.) and spread operators (...) to safely access nested fields and handle cases where data might be unavailable.
2. Slow API response
    Challenge: Fetching a large amount of data caused delays during loading.
    Resolution: Added a CircularProgressIndicator in the CountryListScreen to indicate data loading status. This improved user experience by providing visual feedback.
3. Dynamic Search I mplementaion
    Challenge: Implementing a search functionality that works efficiently on a large dataset.
    Resolution: Used Dart's where method to filter the country list dynamically and updated the UI using setState.
4. Displaying Flag Names
    Challenge: Some flags failed to load due to incorrect image URL keys.
    Resolution: Verified the API's flag structure and used the correct index (flags[1]) to retrieve image URLs.
5. Theme and Navigation
    Challenge: Maintaining a consistent theme across screens and managing navigation with arguments.
 Resolution: Used MaterialApp's routes property for easy navigation and ensured consistent theming with ThemeData.






