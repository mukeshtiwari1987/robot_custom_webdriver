### Install the necessary python libraries using the below command
```
pip install -r requirements.txt
```

### Configure ChromeDriver Path
* Download the ChromeDriver for your Chrome Browser from here https://googlechromelabs.github.io/chrome-for-testing/#stable
* Configure the value of variable ```${CHROMEDRIVER_PATH}``` as per your machine

### To read more about how to create custom Selenium Libraries visit the below website
* [StackOverflow](https://stackoverflow.com/questions/23703870/pass-existing-webdriver-object-to-custom-python-library-for-robot-framework)
* [RobotFrameworkUserGuide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#getting-active-library-instance-from-robot-framework)

### How to run the tests?
* Run tests without POM architecture
```
robot -d ./Results Test-Suites-Web/Login_Without_POM.robot
```

* Run tests with POM architecture
```
robot -d ./Results Test-Suites-Web/Login_With_POM.robot
```

* In the results you will notice the Keyword <em>Title Should Start With</em> which is a custom keyword imported from CustomSeleniumLibrary.py
