# my-scripts

A git repository created at the root (/) of my computer, with a .gitignore whitelisting only files with scripts and settings that don't contain personal information.

## Scripts

### 🪝 Webhooks

I wanted to be able to say commands to the Google Assistant on my phone, and interact with my computer through that. The steps I took to do that were the following ([source](https://www.reddit.com/r/ifttt/comments/adbc9z/how_to_issue_commands_to_your_computer_with/)):

- Use IFTTT integrated with Google Assistant to make a POST request to the computer every time I tell the assistant a specific command.  
- Since my public IP is dynamic, I use duckdns to host a website that will listen to that POST request then forward it to my computer's IP address.
    - To make sure my IP address is updated, I have a crontab job on my computer that updates the forwarding address on duckdns every 5 minutes.
- Port-forward every request from a custom port of your router to your computer, which should have a static private IP.
- Set up a webhook listener that starts on startup, and is managed by supervisor while the computer is online.
- Map webhook requests to the desired scripts.

### 📸 Screenshots

Sometimes I had the problem of not knowing how I had spent my time during a day or even week, so I created this to help me remember. The idea is very simple, a crontab job that takes a screenshot of my screen every 20 min, and saves it inside a folder named with the current date. On startup I upload to a website called Notion the current date, so I can keep track of the days I have screenshots and uploaded them there later.

### ⛔ Unusable computer

I really dislike to forget the time, and have to cook dinner too late at night. A time that works for me is at around 10h30 PM, so I created a script with the intention of making it easier for me to cook at that time than to keep using the computer. The script executes every 30 sec between 10h30 PM and 11h00 PM, minimizing all the windows, and disabling Wi-Fi. If I'm busy and really need to use the computer during that time, it can be turned off.



