# README

##Hot Reads

This application tracks the 'hottest' links from the application [URL-Lock-box](https://stover-m4-final.herokuapp.com/)
This project was built using:

`Ruby 2.3.0`
`Rails 5.0.0.1`

Production Site: https://stover-hotreads.herokuapp.com/

UL-Lock Box repo: https://github.com/stovermc/m4-final-starter

URL-Lock Box Produciton Site: https://stover-hotreads.herokuapp.com/

### Setup
1. clone this repo
2. bundle
3. From the command line run:
  * `rake db:setup`
  * `rspec`

### API
This application has 1 enpoint.

POST `api/v1/links` this creates a new Hot-Read if this the url doesnt already exist in the database. If it already exists, a count of one is added to it. 
