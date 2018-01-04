# Tweets-to-Captioned-Images
Script to turn your tweets onto existing images.

Background: Had roughly 2000 or so poetry tweets that I wanted to put onto moody glow-art images in a nice typography fashion.

# Steps:
1.  Download your tweets into a CSV from your Twitter Profile (via the Settings Menu)
2.  Copy your tweets into a txt file, and clean up @replies with regex.
3.  Place a \ in front of all spaces and punctuation marks.  (Easily done via Atom's replace tool i.e. Replace " " with "\ ")
4.  Make sure you have enough images as you have tweets
              
      - Make sure they are named via number and all the same format. Helpful programs are [Bulk Rename Utility](http://www.bulkrenameutility.co.uk/Main_Intro.php) and [Bulk Image Converter](https://sourceforge.net/projects/bulkimageconver/)
              
      - Effect is better if all images used are in landscape orientation.  [I wrote a script for this](https://github.com/malbolge/Bulk-Photo-Orientation-Removal)
              
      - Nice to make sure you have no image duplicates.  I used [Similarity](http://www.similarityapp.com/) for this.
    
5.  Run script.  Dependencies are bash and ImageMagick

(If you want to make new images and not caption existing ones, look at the documentation for ImageMagick and it would be a few adjustments in the script.)
