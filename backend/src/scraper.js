const axios = require('axios');
const fs = require('fs').promises;
const path = require('path');

const BASE_URL = 'https://musclewiki.com/newapi/exercise/exercises/';
const EXERCISES_FILE = path.join(__dirname, '../../data/exercises.json');

// Function to introduce delay between requests
function delay(ms) {
    return new Promise((resolve) => {
        setTimeout(resolve, ms);
    });
}

async function fetchExerciseData(url) {
    try {
        console.log(`Fetching URL: ${url}`);
        const response = await axios.get(url, {
            headers: {
                accept: '*/*',
                'accept-language': 'en-us',
                'cache-control': 'no-cache',
                pragma: 'no-cache',
                'sec-ch-ua': '"Not A(Brand";v="8", "Chromium";v="132", "Google Chrome";v="132"',
                'sec-ch-ua-mobile': '?0',
                'sec-ch-ua-platform': '"macOS"',
                'sec-fetch-dest': 'empty',
                'sec-fetch-mode': 'cors',
                'sec-fetch-site': 'same-origin',
            },
        });
        console.log(`Successfully fetched URL: ${url}`);
        return response.data;
    } catch (error) {
        console.error(`Error fetching URL ${url}:`, error.message);
        return null;
    }
}

async function saveExercisesToFile(exercises) {
    try {
        // Create data directory if it doesn't exist
        await fs.mkdir(path.dirname(EXERCISES_FILE), { recursive: true });

        // Save to file
        await fs.writeFile(
            EXERCISES_FILE,
            JSON.stringify(exercises, null, 2)
        );
        console.log(`Successfully saved ${exercises.length} exercises to ${EXERCISES_FILE}`);
    } catch (error) {
        console.error('Error saving exercises to file:', error);
        throw error;
    }
}

async function getAllExercises() {
    const allExercises = [];
    let nextPage = BASE_URL;
    let pageCount = 1;

    while (nextPage) {
        console.log(`Fetching page ${pageCount}...`);
        const data = await fetchExerciseData(nextPage);

        if (!data || !data.results || data.results.length === 0) {
            break;
        }

        // Add exercises from this page
        allExercises.push(...data.results);
        console.log(`Found ${data.results.length} exercises on page ${pageCount}`);

        // Check if there's a next page
        nextPage = data.next;
        pageCount++;

        // Add a small delay between page requests
        if (nextPage) {
            await delay(1000);
        }
    }

    console.log(`Total exercises found across all pages: ${allExercises.length}`);
    return allExercises;
}

async function scrapeExercises() {
    try {
        console.log('Starting scraping process...');

        // Get all exercises from all pages
        const exercises = await getAllExercises();
        if (exercises.length === 0) {
            console.error('No exercises found');
            return [];
        }

        // Save exercises to file
        await saveExercisesToFile(exercises);

        console.log(`Successfully scraped ${exercises.length} exercises`);
        return exercises;
    } catch (error) {
        console.error('Error in scrapeExercises:', error);
        return [];
    }
}

// If this file is run directly (not imported as a module)
if (require.main === module) {
    scrapeExercises()
        .then(() => {
            console.log('Scraping completed successfully');
            process.exit(0);
        })
        .catch((error) => {
            console.error('Scraping failed:', error);
            process.exit(1);
        });
}

module.exports = {
    scrapeExercises
};