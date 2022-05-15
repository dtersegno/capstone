Predicting Wordle User Activity from Twitter
---

General Assembly DSIR 222 capstone project

---

This project seeks to predict the rates of Wordle-related tweets posted in early May, 2022, using a neural network trained on previous tweet rates as well as the tweets' contents.


# Introduction to Wordle

[Wordle](https://www.nytimes.com/games/wordle/index.html) is a new and popular word-guessing game created by Josh Wardle and owned by the NY Times. Players guess a daily 5-letter word in six tries. For each guess, the game reveals whether any of the letters in the guess are in the solution, and whether they are in the same location in the word. Currently, the game is entirely free to play.

The game owes its popularity partly to its simplicity, accessibility, and the drip-feed format of one-word-per-day. Perhaps most importantly, however, is its way of letting user easily share their outcomes without spoiling the answer. At the end of the game, it is easy to copy a simple and easy to read textual representation of their game, showing the number of guesses and the sequence of correct letters. Here is an example game, Wordle #329 from May 14, 2022:

![Wordle example](www.github.com/dtersegno/capstone/readme_pix/wordleExample.png)

This example's shareable text:
```
Wordle 329 4/6

🟨⬜⬜⬜🟨
⬜⬜⬜⬜🟨
🟨🟩🟨⬜⬜
🟩🟩🟩🟩🟩
```

There is no suggestion to share to a specific service (such as Twitter, Reddit, etc.) --- the user simply copies the text like the above to the social network of their choosing.

The game has spawned a large number of unofficial variants, the most popular of which feature a similar sharing mechanism. The relationship between these and Wordle proper is uncertain. It is possible they draw attention away from the NY Times version, but they also contribute to the activity of an enthusiast community. They also provide awareness of the original game to those who may otherwise not have been aware of its existence.

---

Problem statement and motivation
---

Predict the number of Wordle-related tweets, as well as those for popular Wordle-inspired games, on a minute time scale ten minutes in advance by examining tweets.

Although Wordle is not a bandwidth-intensive game, knowing the rate at which NYTimes servers will receive requests ahead of time will allow the organization to properly allocate resources in anticipation for both seasonal changes and unexpected spikes.


Data
---

Data were gathered using the Twitter API v2. 

Gathered Twitter data for the search '🟩 Wordle' For over the first few days of May '22. The inclusion of the green square forces the search to focus on tweets that share the results of Wordle games.

### processed data
The processed data fed into the models is a value for every minute during the period between April 29, 2022 19:46 UTC and May 5, 2022 21:59 UTC.

| name | type | description |
| ---- | ---  |  ---------- |
| is_wordle | float64 | Fraction of tweets within the minute referring to a game of Wordle proper, from the NY Times. One of two targets. |
| total_tweets | int64 | Number of total tweets during the minute. One of two targets. |
| hour | int64 | hour of day, UTC |
| minute | int64 | minute of the hour | 
| language_is_English | float64 | fraction of tweets identified as English by Twitter |
| language_is_Japanese | float64 | fraction of tweets identified as Japanese by Twitter |
| language_is_Spanish | float64 | fraction of tweets identified as Spanish by Twitter |
| language_is_Turkish | float64 | fraction of tweets identified as Turkish by Twitter |
| language_is_French | float64 | fraction of tweets identified as French by Twitter |
| language_is_Korean | float64 | fraction of tweets identified as Korean by Twitter |
| language_is_German | float64 | fraction of tweets identified as German by Twitter |
| language_is_Catalan | float64 | fraction of tweets identified as Catalan by Twitter |
| language_is_Russian | float64 | fraction of tweets identified as Russian by Twitter |
| language_is_Estonian | float64 | fraction of tweets identified as Estonian by Twitter |
| language_is_Thai | float64 | fraction of tweets identified as Thai by Twitter |
| language_is_Tagalog | float64 | fraction of tweets identified as Tagalog by Twitter |
| language_is_Dutch | float64 | fraction of tweets identified as Dutch by Twitter |
| language_is_Czech | float64 | fraction of tweets identified as Czech by Twitter |
| language_is_Portuguese | float64 | fraction of tweets identified as Portuguese by Twitter |
| language_is_Indonesian  | float64 | fraction of tweets identified as Indonesian by Twitter |
| language_is_Chinese  | float64 | fraction of tweets identified as Chinese by Twitter |
| language_is_Finnish   | float64 | fraction of tweets identified as Finnish by Twitter |
| language_is_Norwegian  | float64 | fraction of tweets identified as Norwegian by Twitter |
| language_is_Romanian  | float64 | fraction of tweets identified as Romanian by Twitter |
| language_is_Italian  | float64 | fraction of tweets identified as Italian by Twitter |
| language_is_Arabic | float64 | fraction of tweets identified as Arabic by Twitter |
| language_is_Danish  | float64 | fraction of tweets identified as Danish by Twitter |
| language_is_Welsh  | float64 | fraction of tweets identified as Welsh by Twitter |
| language_is_Swedish  | float64 | fraction of tweets identified as Swedish by Twitter |
| --- | --- | --- |
|game_from_hashtag_ポケモンWordle| float64 | fraction of tweets identified as Pokemon JP from hashtag |
|game_from_hashtag_Wordle|float64 | fraction of tweets identified as Wordle from hashtag |
|game_from_hashtag_wordle|float64 | fraction of tweets identified as wordle from hashtag |
|game_from_hashtag_WordleCAT|float64 |  fraction of tweets identified as Wordle Catalan from hashtag |
|game_from_hashtag_вордли|float64 | fraction of tweets identified as Wordle Russian from hashtag |
| game_from_hashtag_Heardle|float64 |  fraction of tweets identified as Heardle from hashtag
 |game_from_hashtag_워들|float64 |  fraction of tweets identified as Wordle Korean from hashtag |
 |game_from_hashtag_한글|float64 |  fraction of tweets identified as Wordle Korean from hashtag |
 |game_from_hashtag_Korean|float64 | fraction of tweets identified as Wordle Korean from hashtag |
 |game_from_hashtag_wordleTR|float64 |  fraction of tweets identified as Wordle Turkish from hashtag |
 |game_from_hashtag_AlWird|float64 | fraction of tweets identified as Wordle Arabic from hashtag |
 |game_from_hashtag_galego|float64 | fraction of tweets identified as Galician from hashtag |
 |game_from_hashtag_WordleGalego|float64 |  fraction of tweets identified as Galician from hashtag |
 |game_from_hashtag_DailyWordleClub|float64 | fraction of tweets associated with a Daily Wordle Club from hashtag |
 |game_from_hashtag_WordleEnglish|float64 | fraction of tweets identified as Wordle English from hashtag |
 |game_from_hashtag_WordleEN|float64 | fraction of tweets identified as Wordle English from hashtag |
 |game_from_hashtag_WordleEUS|float64 | fraction of tweets identified as Wordle Basque from hashtag |
 |game_from_hashtag_hadesjSlova|float64 |  fraction of tweets identified as Wordle Czech from hashtag |
 |game_from_hashtag_WORDLE_TAMIL|float64 | fraction of tweets identified as Wordle Tamil from hashtag |
 |game_from_hashtag_WizardingWordle|float64 |  fraction of tweets identified as Wizarding Wordle from hashtag |
 |game_from_hashtag_Enstarsdle|float64 |  fraction of tweets identified as Enstars Wordle from hashtag |
 |game_from_hashtag_WordleEspañol|float64 |  fraction of tweets identified as Spanish from hashtag |
 |game_from_hashtag_wordleES|float64 |  fraction of tweets identified as Spanish from hashtag |
 |game_from_hashtag_嘘wordle|float64 |  fraction of tweets identified as Japanese from hashtag |
 |game_from_hashtag_百人一首Wordle|float64 | fraction of tweets identified as Japanese from hashtag |
 |game_from_hashtag_Quordle|float64 |  fraction of tweets identified as Quordle from hashtag |
 |game_from_hashtag_ことのはたんご|float64 |  fraction of tweets identified as Kotonoha Wordle from hashtag |
 |game_from_hashtag_NYTimes|float64 | fraction of tweets identified as NYTimes Wordle from hashtag |
| --- | --- | --- |
|broad_location_is_USAE | float64 | fraction of tweets whose user reports from USA eastern time |
|broad_location_is_UK| float64 | fraction of tweets whose user reports from United Kingdom|
| broad_location_is_JPN| float64 | fraction of tweets whose user reports from Japan |
| broad_location_is_ES| float64 | fraction of tweets whose user reports from Spain |
| broad_location_is_USAC| float64 | fraction of tweets whose user reports from USA central time |
|broad_location_is_USA| float64 | fraction of tweets whose user reports from USA |
| broad_location_is_USAW| float64 | fraction of tweets whose user reports from USA western time |
| broad_location_is_IN| float64 | fraction of tweets whose user reports from India |
| broad_location_is_ASTL| float64 | fraction of tweets whose user reports from Australia|
| broad_location_is_CAE| float64 | fraction of tweets whose user reports from Canada eastern time |
| broad_location_is_AR| float64 | fraction of tweets whose user reports from Argentina|
| broad_location_is_USAM| float64 | fraction of tweets whose user reports from USA mountain time |
| broad_location_is_IE| float64 | fraction of tweets whose user reports from Ireland |
| broad_location_is_TK| float64 | fraction of tweets whose user reports from Turkey|
| broad_location_is_CA| float64 | fraction of tweets whose user reports from Catalonia |
| broad_location_is_MX| float64 | fraction of tweets whose user reports from Mexico |
| broad_location_is_PH| float64 | fraction of tweets whose user reports from The Phillipines |
| broad_location_is_NZ| float64 | fraction of tweets whose user reports from New Zealand |
| broad_location_is_CL| float64 | fraction of tweets whose user reports from Chile |
| broad_location_is_SA| float64 | fraction of tweets whose user reports from South Africa |
| broad_location_is_EUR| float64 | fraction of tweets whose user reports from Europe |
| broad_location_is_CAW| float64 | fraction of tweets whose user reports from Canada western time |
| broad_location_is_MY| float64 | fraction of tweets whose user reports from Malaysia |
| broad_location_is_CAM| float64 | fraction of tweets whose user reports from Canada mountain time |
| broad_location_is_CO| float64 | fraction of tweets whose user reports from Colombia |

---
Models
---


---
Wordle Variants
---

The following is a list of the most popular games mentioned in the set of tweets.

- Multi-Wordle
    - Dordle (two simultaneous games)
    - Quordle (four games)
    - Octordle (eight games)
    - Duotrigordle (thirty-two games)
- Popular culture
    - Heardle (Guess pop song from clips)
    - Framed (Guess Hollywood film from stills)
    - WizardingWordle ('Harry Potter' themed)
- Foreign language
    - ポケモンWordle ('Pokemon' themed, Japanese)
    - WordleCAT (Catalan)
    - вордли (Russian)
    - 워들/한글 (Korean)
    - wordleTR (Turkish)
    - AlWird (Arabic)
    - WordleGalego (Galacian)
    - WordleEUS (Basque)
    - hadesjSlova (Czech)
    - WORDLE_TAMIL (Tamil)
    - Enstarsdle ('Enstars' themed, Japanese)
    - WordleEspañol/wordleES (Spanish)
    - 嘘wordle/百人一首Wordle (Japanese)
    - ことのはたんご/kotonoha-tango (Japanese)