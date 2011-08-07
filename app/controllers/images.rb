Base.controllers :images do
  IMAGES = {
    "jack" => [
      "http://cl.ly/0v3W451W0H1c2c3M1B1S/121_24jack_bauer1.jpeg",
      "http://geekgirlonthestreet.files.wordpress.com/2010/02/jack-bauer-2.jpg",
      "http://www.dizidizi.net/wp-content/uploads/2009/04/jack_bauer.jpg",
      "http://kkjames.files.wordpress.com/2008/08/jack-bauer.jpg",
      "http://geekgirlonthestreet.files.wordpress.com/2010/02/jack-bauer.jpg"
    ],
    "awesome" => [
      "http://fc02.deviantart.net/fs48/f/2009/194/2/3/Mr__Awesome_face_lol_XD__D_by_Cookietotheminimum.png",
      "http://fc09.deviantart.net/fs26/f/2008/183/1/e/Awesome_Overload_by_Mr_Stamp.gif",
      "http://fc04.deviantart.net/fs37/f/2008/244/1/5/Awesome_by_Styyn.jpg",
      "http://fc02.deviantart.net/fs28/f/2008/088/6/c/Awesome_by_Foxxie_Chan.png",
      "http://fc03.deviantart.net/fs37/f/2008/285/6/a/Picard__being_awesome__by_0x70616E6461.gif",
      "http://fc07.deviantart.net/fs70/i/2010/139/b/1/Release_the_Awesome_by_Complimentoverload.jpg",
      "http://4.bp.blogspot.com/_qpxM4N6J0LQ/TFre1GeTAvI/AAAAAAAAAXA/eDOq6XiuUbM/s1600/awesome.jpg",
      "http://www.21stcenturyabe.org/wp-content/uploads/2009/03/lincoln_awesome.jpg",
      "http://www.teamawesome.net/awesome.jpg",
      "http://newsimg.ngfiles.com/97000/97703_He_is_THAT_awesome.jpg",
      "http://farm1.static.flickr.com/39/91500993_f01ca66390.jpg",
      "http://jessenoller.com/wp-content/uploads/2010/01/holy-shit-awesome-2.jpg",
      "http://www.whoframedruelfox.com/wfrf/wp-content/uploads/2010/11/Mr__Awesome_by_Known_Prime_by_treehousesociety.jpg",
      "http://wuerzburg90210.files.wordpress.com/2008/10/awesomeness_by_ertunc1.jpg",
      "http://djbogtrotter.co.uk/comics/2009-06-12-Awesome.png",
      "http://cache.gawkerassets.com/assets/images/2010/10/custom_1286555355463_self-esteem-is-awesome.jpg",
      "http://4.bp.blogspot.com/_j6sck65rEmk/SmDeM1vWm_I/AAAAAAAAA5M/1ZnzExiquaU/s320/barney+awesome.jpg",
      "http://www.maniacworld.com/most-awesome-robot.jpg",
      "http://www.bennadel.com/resources/uploads/coldfusion_9_its_like_awesome_to_the_power_of_four.jpg",
      "http://alfredhitzkopf.al.funpic.de/sonstiges/awesomeness.jpg",
      "http://omgunmen.de/wp-content/uploads/2010/07/how-to-be-awesome.jpg",
      "http://knowyourmeme.com/i/288/original/Fucking_awesome_sparta.jpg",
      "http://www.comixconnection.com/uploaded_images/Awesome[1]-775337.jpg",
    ],
    "nice" => [
      "http://4.bp.blogspot.com/_P9iTB2mmEPQ/S7r4ajqlm_I/AAAAAAAAAtQ/XVWXpjESJn0/s320/borat-very-nice.jpg"
    ],
    "double_facepalm" => [
      "http://cl.ly/0u30281g2Y2n0p3D0y2x/Double-Facepalm.jpeg"
    ],
    "facepalm" => [
      "http://cl.ly/2j1Q2z0k113E2A0P3W0t/facepalm.jpeg"
    ],
    "mankini" => [
      "http://monsterstuff.co.uk/images/3169_image3_mankini.jpg"
    ],
    "omg" => [
      "http://img.skitch.com/20101208-1nrdirdy75pfg1p37uqhikm1j9.jpg"
    ]
  }
  
  post :show, :with => :id do
    images = IMAGES[params[:id]]
    images.sample if images
  end

  
end