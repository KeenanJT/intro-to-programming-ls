# What is a file?

# File - represents digital information that exists on durable storage.

######################################################################################################################################


# Creating a file

# METHOD - File.new("name_of_file.extension", "file permission")
# EXAMPLE:
my_file = File.new("simple_file.txt", "w+")
=> #<File:simple_file.txt>
# Created a new file with a name and mode of read and write access.
my_file.close
# Closes the file. We always close files. Otherwise it'll take up space in memory.

######################################################################################################################################


# Opening Files

# METHOD - File.open("file_name.ext", "mode")
# Modes:
# r: read-only (starts at beginning of file)
# w: write-only (if file exists, overwrites everything in the file)
# w+: read and write (if file exists, overwrites everything in file)
# a+: read-write (if file exists, starts at end of file. Otherwise creates a new file). Best for updated a file

# Open File For Reading

# METHOD - File.read("filename") - Spits out enitre contents of the file
# METHOD - File.readlines("filename") - Reads the entire file based on individual lines and returns those lines in an array.

# Open File For Writing

# write vs puts vs <<
# Both adds substance to a file, except puts adds a line break.

# write
File.open("simple_file.txt", "w") { |file| file.write("adding first line of text")}
# Opened the file with a w(write-only) option and invoke a block that writes the content. Blocks close files automagically.

File.read("simple_file.txt") # to see the changes

# puts
sample = File.open("simple_file.txt", "w+")
#<File:simple_file.txt>
sample.puts("another example of writing to a file.")
sample.close
File.read("simple_file.txt")
"another example of writing to a file. \n"

# << 
File.open("simple_file.txt", "a+") do |file|
  file << "Here we are with a new line of text"
end
#<File:simple_file.txt (closed)>
File.readlines("simple_file").each do |line|
  puts line
end
# prints below
another example of writing to a file.
Here we are with a new line of text
# returns below
 => ["another example of writing to a file.\n", "Here we are with a new line of text"]

######################################################################################################################################


# Delete A File
# METHOD - File.delete("file_name.ext") - get rid of a file, forever.
File.delete("simple_file.txt")
=> 1

######################################################################################################################################


# Exercise 1 - take one file's contents as input and create a new transformed file as a result:
simple = File.read("simple_file.txt")
original = File.new("original_file.txt", "w+")
File.open(original, "a") do |file|
  file.puts simple
end

File.read(original)
=> "another example of writing to a file.\nHere we are with a new line of textWriting to files in Ruby is simple.\n"

######################################################################################################################################


# Overview of File Classes

# Files rule everything
# Right stuff being in the right kind of files in the right place
# Right stuff -> file name, content
# Ring kind -> file extension or format
# Right place -> located in a recognizable directory structure or path

# File class is a subclass of IO
# IO is responsible for representing bidirectional streams: STDOUT (standard output), STDIN (standard input), STDERR (standard error).

# When we talk about files, we are always referring to them in the context of their place in the file structure.

# Dir - shares some of File's methods, but isn't an IO stream. It's an interface for manipulating directories and their contents.

# Pathname - exposes all of the methods of File and Dir. The advantage to using Pathname is you can declare an instance of it and access the class methods of File and Dir on the instance object.
# EXAMPLE:
require 'Pathname'

f = File.new("simple_file.txt", "r")
pn = Pathname.new(f)
pn.extname # you can call the File class method when it's a pathname
=> ".txt"
# OR
File.extname("simple_file.txt")
=> ".txt" 

# In the example above we create a file instance, and then use an instance of Pathname to find the extension. We see this is equal to calling the File::extname method.

######################################################################################################################################


# Exercise 2

# Lets look at the current directory and report the files that have .txt extensions
d = Dir.new(".")
while file = d.read do
  puts "#{file} has extension .txt" if File.extname(file) == ".txt"
end
simple_file.txt has extension .txt
original_file.txt has extension .txt
=> nil

# We can also do this using the Pathname class. We have to require 'pathname' before using it. Here's an example

require 'pathname'
pn = Pathname.new(".")
pn.entries.each { |f| puts "#{f} has extension .txt" if f.extname == ".txt"}
simple_file.txt has extension .txt
original_file.txt has extension .txt
=> [#<Pathname:simple_file.txt>, #<Pathname:cultures.json>, #<Pathname:ruby_book>, #<Pathname:articles.xml>, #<Pathname:chair.rb>, #<Pathname:.git>, #<Pathname:original_file.txt>, #<Pathname:feedzilla.json>, #<Pathname:slashdot>, #<Pathname:articles.json>, #<Pathname:..>, #<Pathname:.>]

######################################################################################################################################


# Working with file formats - CSV, Excel, JSON, XML

# CSV and XLS/XLSX
# These are two formats that are typically used for importing and exporting tabular data commonly found in spreadsheet applications. XLS refers to Microsoft's Excel format. 
# CSV stands for Comma Separated Values. If CSV was an ice cream, it would be vanilla. Each data cell is separated by a comma or semicolon and each line is a row of tabular data.
# JSON EXAMPLE:
{
  "newspaper_name": "Cooking Today",
  "issue_date": "November 15th, 2014",
  "articles": [
    {
      "title": "Bacon Cooking",
      "link": "http://baconcooklove.com",
      "summary": "Just a few thousand ideas about bacon"
    },
    {
      "title": "Cooking with leftovers",
      "link": "http://love.com",
      "summary": "Just a few thousand ideas about tasting love twice"
    }
  ]
}

# JSON and XML/HTML
# For plain text, JSON and XML are data formats that let us describe the nested characteristics of data. JSON stands for JavaScript Object Notation
# XML stands for Extensible Markup Language. XML is a tool for defining domain specific schematics. If you are reading this book, then you have just experienced at least one XML example.
# XML EXAMPLE:
<newspaper>
  <name>Cooking Today</name>
  <issue_date>November 15th, 2014</issue_date>
  <articles>
    <article>
      <title>Bacon Cooking</title>
      <link>http://baconcooklove.com</link>
      <summary>Just a few thousand ideas about bacon</summary>
    </article>
    <article>
      <title>Cooking with leftovers</title>
      <link>http://love.com</link>
      <summary>Just a few thousand ideas about tasting love twice</summary>
    </article>
  </articles>
</newspaper>

######################################################################################################################################


# Exercise
# We will pull two files which contain articles originally gathered from feedzilla and slashdot. One in XML format. One in JSON. We will combine the two lists to a common format, sort them, and save them to CSV and XLS files.

# Download/Save the files to the directory:
wget -O feedzilla.json https://d186loudes4jlv.cloudfront.net/ruby/feedzilla.json
wget -O slashdot.xml https://d186loudes4jlv.cloudfront.net/ruby/slashdot.xml

# Take a look at the files:
cat feedzilla.json
cat slashdot.xml

# Require the libraries to deal with our mix of file types:
require 'json'
require 'nokogiri'
require 'axlsx'
require 'csv'

# Open up XML file, find the item elements, and parse them with Nokogiri
slashdot_articles = []
File.open("slashdot.xml", "r") do |f|
  doc = Nokogiri::XML(f)
  slashdot_articles = doc.css('item').map { |i|
    {
      title: i.at_css('title').content,
      link: i.at_css('link').content,
      summary: i.at_css('description').content
    }
  }
end

# slashdot_articles array should be populated with the articles from the slashdot XML RSS feed.
# We have an array of hashes with fields we want to export. We found all the articles with the doc.css('item') call and then chained it through the map block to pull out the fields we want to export. We are ready to do a similar maneuver on the feedzilla.json file.
feedzilla_articles =[]
File.open("feedzilla.json", "r") do |f|
  items = JSON.parse(f.read)
  feedzilla_articles= items['articles'].map { |a|
    {
      title: a['title'],
      link: a['url'],
      summary: a['summary']
    }
  }
end

sorted_articles =  (feedzilla_articles + slashdot_articles).sort_by {|a| a[:title]}
# As you can see, we pulled out the articles from the feedzilla json file just like we did to the slashdot xml feed. After that we sorted the combined results based on the title.

# Write two export files:
CSV.open("article.csv", "wb") do |csv|
  sorted_articles.each { |a| csv << [ a[:title], a[:link], a[:summary] ]  }
end

pkg = Axlsx::Package.new
pkg.workbook.add_worksheet(:name => "Articles") do |sheet|
 sorted_articles.each { |a| sheet.add_row [a[:title], a[:link], a[:summary]] }
end
pkg.serialize("articles.xlsx")

# There we have it. We selected data with two different formats, parsed the files and built a common format, sorted the data and then exported to CSV and XLS files.

# Open-Use-Close workflow






