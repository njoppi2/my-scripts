# myScripts

A git repository created at the root (/) of my computer, with a .gitignore whitelisting only files with scripts and settings that don't contain personal information.

## Scripts

### webhooks

I wanted to be able to say commands to the google assistant on my phone, and interact with my computer through that. The steps I took to do that were the following ([source](https://www.reddit.com/r/ifttt/comments/adbc9z/how_to_issue_commands_to_your_computer_with/)):

- Use IFTTT integrated with google assistant to make a POST request to the computer every time I tell the assistant a specific command.  
- Since my public ip is dynamic, I use duckdns to host a website that will listen to that POST request then foward it to my computer's ip address.
    - To make sure my ip address is updated, I have a crontab job on my computer that updates the fowarding address on duckdns every 5 minutes.
- Portfoward every request from a custom port of your router to your computer, which should have a static private ip.
- Set up a webhook listener that starts on startup, and is managed by supervisor while the computer is online.
- Map webhook requests to the desired scripts.

### screenshots

Sometimes I had the problem of not knowing how I had spent my time during a day or even week, so I created this to help me remember. The idea is very simple, a crontab job that takes a screenshot of my screen every 20m, and saves it inside a folder named with the current date. On startup I upload to a website called Notion the current date, so I can keep track of the days I have screenshots and uploaded them there later.

### unusable computer

I really dislike to forget the time, and have to cook dinner too late at night. A time that works for me is at around 10h30 PM, so I created a script with the intention of making it easier for me to cook at that time than to keep using the computer. The script executes every 30s between 10h30 PM and 11h00 PM, minimizing all the windows, and disabling wi-fi. If I'm busy and really need to use the computer during that time, it can turned off.



