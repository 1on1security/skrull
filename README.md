## Skrull Contents
<img style="float: right;" src="krull.png">

**SKRULL**

I honestly don't know when and where the term "skrull" entered my brain. I don't think the Marvel Cinematic Universe is nearly as responsible as the movie [Krull](https://www.imdb.com/title/tt0085811/?ref_=ext_shr_lnk) back in the day. Krull is a 1983 science fantasy swashbuckler film directed by Peter Yates and written by Stanford Sherman. It follows Prince Colwyn and a fellowship of companions who set out to rescue his bride, Princess Lyssa, from a fortress of alien invaders who have arrived on their home planet. [wikipedia](https://en.wikipedia.org/wiki/Krull_(film))


Necessity being the mother of invention, I needed a tool that could query some of my favorite informational sources to garner a **well-rounded report** for a given IP address.  I'm making use of a handful of platorms to accomplish this, including:

- <https://maltiverse.com/>
- <https://www.abuseipdb.com/>
- <https://www.criminalip.io/>
- <https://ipinfo.io/>
- <https://www.virustotal.com/>
- <https://shodan.io/>

---

For the most part I've tried to make this as simple as:

1. Clone the repo:
    - mkdir skrull && cd skrull
    - git clone https://github.com/1on1security/skrull.git

2. Sign up for an API key at each of the services.
    - You'll need to visit each of the services above and sign up for an API key.

3. Store those keys in the appropriate file.
    - The default anticipated location is **~/KEYS/auth.txt** and can be changed in the vars file.

>    The format of this file is (**no quotes!**):<br>
    abuse_key=0xxxx<br>
    criminal_ip_key=0xxxx<br>
    ipinfo_key=0xxxx<br>
    maltiverse_key=0xxxx<br>
    virus_total_key=0xxxx
4. Install and initialize shodan
    - pip install shodan
    - pip init [*Your api key here*]

## Usage: skrull.bash [*ipaddress*]

[Sample Report CLI](sample_report.md)

[Sample Report HTML](skrull.mp4)

## What's here:
```
├── abuseipdb.bash          - Bash: Abuseip script
├── criminalIpReport.py     - Python: CriminalIP Host Report
├── criminalMalReport.py    - Python: CriminalIP Malware Report for IP
├── ipinfo.bash             - Bash: Host Report
├── maltiverse.bash         - Bash: Maltiverse report for a given IP
├── README.md
├── shodan                  - Python: Shodan client
├── skrull.bash             - Bash: **"The Sauce"** combining all reports
├── vars                    - Bash: Variables referenced by scripts in project
└── vt                      - vt: ELF 64-bit LSB executable, x86-64
```
