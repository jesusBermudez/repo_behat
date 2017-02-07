# repo_behat
It is a repository to learn how to use Behat and its dependencies.

## Dependencies
Install behat:
```
    composer require behat/behat 3.2.0
```

## Execute behat 1rst time
```
    vendor/bin/behat --init
    
```
##Running webdriver tests
Download webdriver:

https://selenium-release.storage.googleapis.com/2.53/selenium-server-standalone-2.53.1.jar

1. Download chrome driver:
https://sites.google.com/a/chromium.org/chromedriver/

2. Run webdriver:
```
java -jar selenium-server-standalone-2.53.1.jar
```

3. Run chrome driver:
```
./chromedriver
```

4. Enjoy your tests.