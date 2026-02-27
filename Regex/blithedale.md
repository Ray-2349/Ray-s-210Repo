# Title

I used ^([IVX]+)\.\s+([A-Z][A-Z\s]+)$ to find all the chapter titles and used
"<title>$2</title>" to wrap them up. 
I used "(.+?)" to find all the quotes in the txt and used <quote>$1</quote> to wrap it.
I used ([^\n]+)(?:\r?\n){2} to find the paragraphs and used <p>$1</p>\n to wrap them.

