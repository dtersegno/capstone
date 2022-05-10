
# to do

- fix user data assignment to tweets by tweet id. There are way too many missing users!
- solve low-number tweets from May 3. There used to be a bunch! Why is this getting dumped?
- continue adding bools or classifications for tweet types.
    - by specific game (pokemon, catalan, french, wordle proper, framed, etc)
        - ~~is_poke~~
        - should this be a single string column for now, just to accommodate the large number of different games?
    - ~~by win/lose~~
- make tweet rate irregular time series of each type
    - legit wordle
    - poke
    - catalan
    - french
    - spanish
    - by demographic (people giving pronouns in bio, links to franchises)
- make irregular time series' regular by putting into `traces`
    - or see if `timemachines` or any of its sub-functions has a way around that.
- apply these time series' to basic pandas operations
    - autocorrelation
    - partial autocorrelation
    - fft?
- apply these time series' to timemachines functionality
    - fbprophet
    - greykite
    - other "heavy hitters"
- plot game use by country with animation


# General Assembly Capstone Project

## problem statement

- predict wordle user posts on twitter on a sub-hourly basis with xxx

## Data
Gathered Twitter data for the search '🟩 Wordle' For over the first few days of May '22.

## Model

Apply time series models to tweet rates given time of day.

- Group tweet rates by
    - location
        - make an estimate of server load
        - estimate server cost with load
    - demographic
        - user data is gathered, for each of the users posting.

