import csv
import sys

class PlexSubtitle():
    def __init__(self, fh: None) -> None:
        self.input = open(fh, mode='r', encoding='utf8')
        self.output = open('output.csv', mode='w', newline='\n')
        #self.plex_csv = csv.reader(self.fh, delimiter='|', quotechar='"')
        self.plex_csv = csv.DictReader(self.input, delimiter='|', quotechar='"')
        
        self.output.write('\"Title\"|\"Original Title\"|\"IMDB Link\"')
        for row in self.plex_csv:
            try:
                if "nor" in row['Subtitle Stream Language Code']:
                    self.output.write(f"""\"{row['Title']}\"|\"{row['Original Title']}\"|\"{row['IMDB Link']}\"\n""")
            except UnicodeEncodeError as e:
                print(f'{row["Title"]} ENCODE {e}')
            except UnicodeDecodeError as e:
                print(f'DECODE {e}')


if __name__ == '__main__':
    if len(sys.argv) > 1:
        foo = PlexSubtitle(sys.argv[1])
