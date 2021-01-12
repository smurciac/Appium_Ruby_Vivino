# Vivino Automation Project

## Copyright (c) 2020 Automation Project
```
Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.
```

## Pre-Conditions
**.bash_profile:**

1. Open the `Terminal`
2. Create .bash_profile by typing -> `touch ~/.bash_profile`
3. Open .bash_profile by typing -> `open -e ~/.bash_profile`
4. Copy the variables for Android and Ruby
```
#Android for emulator
export ANDROID_HOME={PATH_TO}/Library/Android/sdk
export PATH=$PATH/:$ANDROID_HOME/platform-tools
export NODE_PATH=usr/local/bin/node

#Ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
```

**Install Android-SDk:**

1. To install Android-SDK go to -> `https://developer.android.com/studio/index.html`

**Install Appium:**

1. To install Appium go to -> `http://appium.io/`
2. Open Appium
3. Use host -> `127.0.0.1`
4. Use port -> `4723`
5. Open `Edit Configurations` and type
```
ANDROID_HOME = {PATH_TO}/Library/Android/sdk
JAVA_HOME = /Library/Java/JavaVirtualMachines/jdk-14.0.2.jdk/Contents/Home
```
6. Open Appium and add the following capabilities
```
{
  "app": "/Users/santiago.murcia/Documents/Appium_Ruby_Vivino/features/support/app-world-beta.apk",
  "platformName": "Android",
  "automationName": "Appium",
  "platformVersion": "10.0",
  "deviceName": "Samsung Galaxy S10"
}
```

**Install Genymotion:**

1. To install Genymotion go to -> `https://www.genymotion.com/download/`
2. Create a Desktop account -> `https://www.genymotion.com/account/create/`
3. An email will be sent to you, click on the validation link to activate your account.
4. Sign in with your credentials.
5. Activate your License -> `https://docs.genymotion.com/desktop/3.1/01_Get_started/013_License.html#registering-the-license-key`
6. Open Genymotion and add new devices as follow
```
Android Device -> Samsung Galaxy S10
Android Version -> 10.0
Android API -> 29
```

**Install Vivino APK:**

1. Go to `adb` location on Terminal, usually -> `{PATH_TO}/Library/Android/sdk/platform-tools`
2. Type on Terminal -> `./adb devices` & Verify the device is up
3. Type on Terminal -> `./adb install {PATH_TO}/features/support/app-world-beta.apk`

**Install Ruby:**

1. Run -> `touch ~/.gemrc`
2. Type -> `open -e ~/.gemrc`
```
:gemdir:
   - ~/.gem/ruby
install: -n /usr/local/bin
```
3. Type -> `gem install bundler`

## Repo

**Link to Repo:** https://github.com/smurciac/Appium_Ruby_Vivino

1. `git@github.com:smurciac/Appium_Ruby_Vivino.git`

## Install Gemfile

On `Terminal`, change path to the project's path

1. (Optional) Delete the file `Gemfile.lock`
2. To install all dependencies run -> `bundle install`

## Executing Automated Tests

Once all the dependencies are installed, go to the root's project:

1. Run -> `cucumber -p help` and you should get:
```
Could not find profile: 'help'

Defined profiles in cucumber.yml:
  * e2e
  * getStarted
  * home
  * iHaveAnAccount
  * seeHowItWork
  * tryUsOut                      
```
4. To run a test try -> `cucumber -p e2e`
5. To generate report, type on any browser -> `{PATH_TO}/Appium_Ruby_Vivino/report.html`

## Project's Structure
```
.
├── Gemfile
├── Gemfile.lock
├── README.md
├── cucumber.yml
├── features
│   ├── get_started.feature
│   ├── home.feature
│   ├── i_have_an_account.feature
│   ├── see_how_it_work.feature
│   ├── step_definitions
│   │   ├── given_steps.rb
│   │   ├── pages
│   │   │   ├── get_started.rb
│   │   │   ├── home.rb
│   │   │   ├── i_have_an_account.rb
│   │   │   ├── see_how_it_work.rb
│   │   │   └── try_us_out.rb
│   │   ├── then_steps.rb
│   │   ├── utils
│   │   │   └── utils.rb
│   │   └── when_steps.rb
│   ├── support
│   │   ├── 2021-01-12-_11.54.01.png
│   │   ├── 2021-01-12-_11.56.30.png
│   │   ├── app-world-beta.apk
│   │   ├── env.rb
│   │   └── hooks.rb
│   └── try_us_out.feature
└── report.html
```

## Visual Studio Code Ruler
For this project, we use 120 line lenght, add this code to `setting.json`
```
"editor.rulers": [120],
    "workbench.colorCustomizations": {
        "editorRuler.foreground": "#ff4081"
    },
```

## Visual Studio Cucumber Step Helper
For this project, we use this extension to map the steps definitions
You should create the file settings.json into .vscode folder and add the next config:
```
{
  "cucumberautocomplete.steps": [
    "features/step_definitions/*.rb"
  ],
  "cucumberautocomplete.strictGherkinCompletion": true
}
```

## Visual Studio Extensions

1. Cucumber (Gherkin) Full Support
2. Prettier - Code formatter
3. GitLens — Git supercharged