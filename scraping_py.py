import requests
from bs4 import BeautifulSoup
import io

def printProgressBar (iteration, total, prefix = '', suffix = '', decimals = 1, length = 100, fill = '█', printEnd = "\r"):
    """
    Call in a loop to create terminal progress bar
    @params:
        iteration   - Required  : current iteration (Int)
        total       - Required  : total iterations (Int)
        prefix      - Optional  : prefix string (Str)
        suffix      - Optional  : suffix string (Str)
        decimals    - Optional  : positive number of decimals in percent complete (Int)
        length      - Optional  : character length of bar (Int)
        fill        - Optional  : bar fill character (Str)
        printEnd    - Optional  : end character (e.g. "\r", "\r\n") (Str)
    """
    percent = ("{0:." + str(decimals) + "f}").format(100 * (iteration / float(total)))
    filledLength = int(length * iteration // total)
    bar = fill * filledLength + '-' * (length - filledLength)
    print(f'\r{prefix} |{bar}| {percent}% {suffix}', end = printEnd)
    # Print New Line on Complete
    if iteration == total: 
        print()
        




def get_url_to_download(list_of_mid, url_to_scrap):
    """"
    This function is going to get the url to download the midi file
    
    returns:
        None
    """
    read = requests.get(url_to_scrap)
    html_content = read.content
    soup = BeautifulSoup(html_content, "html.parser")

    l = soup.find_all('a')

    iter = 0

    for link in l:
        if '.mid' in link.get('href') :
            list_of_mid.append(link.get('href'))
            
        iter += 1
            
    pass

def download_mid(mid_path):
    """
    It will download the midi file

    Returns:
        string: the name of the file downloaded
    """
    url = "https://vgmusic.com/"
    mid_link = requests.get(url + mid_path)
    file_name = mid_path[11:]
    #print(url + mid_path)
    #print(mid_link.content)
    open('data/raw/'+file_name, 'wb').write(mid_link.content)
    
    return file_name

if __name__ == "__main__":
    # the list of pages to visit
    list_of_urls = ['https://www.vgmusic.com/new-files/index.php?page=' + str(i) +'&s1=date&sd1=1' for i in range(1,50)]
    print(list_of_urls)
    list_of_mid = []

    iter = 0

    # get the different urls to download
    for url in list_of_urls:
        n_str = str('Complete - Scraping '+url)
        print(n_str)
        printProgressBar(iter+1, len(list_of_urls), prefix='Progress:', suffix=n_str, length = 50)
        get_url_to_download(list_of_mid, url)
        
        iter+=1


    print("Number of mid to download : " + str(len(list_of_mid)))
    # download the midi files from these urls
    print("Downloading the midi files")
    for i in range(len(list_of_mid)) :
        
        
        #print('|'+'#'*int(i/len(list_of_mid)*100)+ ' ' * int((1-i/len(list_of_mid))*100) + '|' + str(i/len(list_of_mid)*100) + '%')
        file_name = download_mid(list_of_mid[i])
        printProgressBar(i+1, len(list_of_mid), prefix = 'Progress:', suffix = 'Complete - ' + file_name, length = 50)
