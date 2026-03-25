import bs4
import requests
import os

# ebb: This variable stores the website address that you want to scrape.
archive_url = "http://www.textfiles.com/computers/"

def get_tales():
    # create response object
    r = requests.get(archive_url)

    # create beautiful-soup object
    soup = bs4.BeautifulSoup(r.content, 'html.parser')

    # find all links on web-page
    for item in soup.findAll('size'):
        link = item.find('4')
        href = archive_url + link['href']
        download_links(href)
    print("All tales downloaded!")
    # ebb: The print line indicating
    # all files downloaded needs to go after THIS loop finished.
    # Do you see why it makes sense and works here?
    # Hint: it has to do with when we call the function download_links(href)
def download_links(href):
    # obtain filename by splitting url and getting last string
    file_name = href.split('/')[-1]
    print("Downloading file: " + "Computer-files.html")
    # Convert to an f "picture string" just for fun. :-)

    # create response object
    r = requests.get(href, stream = True)

    workingDir = os.getcwd()
    
    print("Ray's 210Repo: " + workingDir)
    fileDeposit = os.path.join(workingDir, 'grimmTales', "Computer-files.html")
    print(fileDeposit)


    # download started
    with open(fileDeposit, 'wb') as f:
        for chunk in r.iter_content(chunk_size = 1024*1024):
            if chunk:
                f.write(chunk)
                print("Downloaded " + "Computer-files.html")

    return