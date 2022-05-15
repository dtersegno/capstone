Predicting Wordle User Activity from Twitter
---

General Assembly DSIR 222 capstone project

---

This project seeks to predict the rates of Wordle-related tweets posted in early May, 2022, using a neural network trained on previous tweet rates as well as their contents.


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

# Problem statement and motivation

Predict the number of Wordle-related tweets, as well as those for popular Wordle-inspired games, on a minute time scale ten minutes in advance by examining tweets.

Although Wordle is not a bandwidth-intensive game, anticipating the rate at which NYTimes servers will receive requests ahead of time 

## Data



Data was gathered using the Twitter API v2. Tweet rates for two windows of time, each up to 20 minutes long, and the frequencies of certain key words, languages, and user location, were fed into over 2000 neural networks 

Gathered Twitter data for the search '🟩 Wordle' For over the first few days of May '22. The inclusion of the green square forces the search to focus on tweets that share the results of Wordle games.


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