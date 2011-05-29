# PicturePresenter #

As part of my Euruko 2011 keynote, I wanted to share a lot of stories, but I couldn't decide which ones to choose; I decided to let the audience choose. This was inspired by seeing a [NeoFuturists](http://neofuturists.org/) show where the audience would call out numbers and the troupe would perform a skit that corresponded to the number.

I needed an interface that would show thumbnail previews of slides, overlayed with numbers. When the number is clicked, it fills the screen, and when clicked again, it returns as a thumbnail, but the number has disappeared.

I also wanted the images to be completely random, and so they are randomly sorted on each refresh.

It was also a handy way to experiment with the asset pipelining features of Rails 3.1 and coffeescript. Yay!

## Installation ##

    git clone git@github.com:paulca/neofuturists_presenter.git
    rails server

## Usage ##

Edit `app/assets/stylesheets/pictures.css.scss.erb` with your desired screen width and height and thumbnail width and height, eg:

    $screen_width: 1920px;
    $screen_height: 1080px;

    $thumb_width: 192px;
    $thumb_height: 180px;

Add your full screen slides to `app/assets/images/pictures` and thumbnails to `app/assets/images/thumbs` ... the filenames should be identical.

## Presenting ##

I used [Plainview](http://www.barbariangroup.com/software/plainview) for presenting the slides full screen.