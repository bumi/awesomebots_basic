Base.controllers :wikilinks do

  # Wikipedia languages by size copied from:
  # http://svn.wikimedia.org/viewvc/pywikipedia/trunk/pywikipedia/families/wikipedia_family.py?view=co&revision=9442&content-type=text%2Fplain 
  WIKIPEDIA_LANGUAGES = [
              'en', 'de', 'fr', 'it', 'pl', 'es', 'ja', 'ru', 'nl', 'pt', 'sv',
              'zh', 'ca', 'no', 'uk', 'fi', 'vi', 'cs', 'hu', 'tr', 'ko', 'id',
              'ro', 'fa', 'ar', 'da', 'eo', 'sr', 'lt', 'sk', 'he', 'ms', 'bg',
              'sl', 'vo', 'eu', 'war', 'hr', 'hi', 'et', 'az', 'gl', 'kk',
              'simple', 'nn', 'new', 'th', 'el', 'roa-rup', 'la', 'tl', 'ht',
              'ka', 'te', 'mk', 'sh', 'ceb', 'pms', 'be-x-old', 'br', 'lv', 'jv',
              'ta', 'mr', 'cy', 'sq', 'lb', 'is', 'bs', 'be', 'oc', 'yo', 'an',
              'bpy', 'mg', 'bn', 'io', 'sw', 'fy', 'lmo', 'gu', 'pnb', 'ml', 'af',
              'nds', 'scn', 'ur', 'qu', 'ku', 'zh-yue', 'ne', 'ast', 'su', 'hy',
              'nap', 'ga', 'bat-smg', 'cv', 'wa', 'diq', 'tt', 'am', 'kn', 'als',
              'tg', 'bug', 'zh-min-nan', 'vec', 'roa-tara', 'yi', 'gd', 'os',
              'arz', 'uz', 'sah', 'pam', 'sco', 'mi', 'hsb', 'nah', 'li', 'my',
              'mn', 'co', 'gan', 'glk', 'ia', 'hif', 'bcl', 'sa', 'fo', 'mrj',
              'si', 'fiu-vro', 'ckb', 'nds-nl', 'bar', 'vls', 'tk', 'gv', 'ilo',
              'se', 'map-bms', 'dv', 'nrm', 'pag', 'rm', 'mzn', 'bo', 'udm',
              'fur', 'ps', 'wuu', 'km', 'ug', 'csb', 'mt', 'lij', 'koi', 'pi',
              'bh', 'ang', 'kv', 'sc', 'lad', 'nov', 'zh-classical', 'mhr',
              'cbk-zam', 'ksh', 'rue', 'so', 'kw', 'frp', 'nv', 'hak', 'pa',
              'szl', 'ext', 'stq', 'xal', 'ie', 'rw', 'haw', 'ln', 'pdc', 'pcd',
              'krc', 'to', 'ky', 'crh', 'ace', 'myv', 'eml', 'or', 'ba', 'gn',
              'ce', 'ay', 'arc', 'kl', 'frr', 'pap', 'bjn', 'pfl', 'jbo', 'wo',
              'lbe', 'tpi', 'mdf', 'kab', 'gag', 'ty', 'srn', 'zea', 'dsb', 'lo',
              'xmf', 'ab', 'av', 'ig', 'na', 'tet', 'kg', 'mwl', 'kaa', 'rmy',
              'ltg', 'as', 'cu', 'kbd', 'sm', 'sd', 'bm', 'bi', 'ik', 'ss', 'iu',
              'pih', 'ks', 'pnt', 'cdo', 'chr', 'ee', 'za', 'got', 'ha', 'ti',
              'bxr', 'om', 'zu', 'sn', 've', 'ts', 'rn', 'sg', 'cr', 'dz', 'tum',
              'lg', 'ch', 'fj', 'ny', 'xh', 'st', 'ff', 'tn', 'chy', 'ki', 'ak',
              'tw']
  
  # Interwiki links based more or less on the public interwiki map from MeatballWiki
  # Default interwiki prefixes...
  # Sourced from: http://svn.wikimedia.org/viewvc/mediawiki/trunk/phase3/maintenance/interwiki.list?revision=68457&view=co
  INTERWIKI_LINKS = {"acronym" => "http://www.acronymfinder.com/af-query.asp?String=exact&Acronym=$1",
  "advogato" => "http://www.advogato.org/$1",
  "annotationwiki" => "http://www.seedwiki.com/page.cfm?wikiid=368&doc=$1",
  "arxiv" => "http://www.arxiv.org/abs/$1",
  "c2find" => "http://c2.com/cgi/wiki?FindPage&value=$1",
  "cache" => "http://www.google.com/search?q=cache:$1",
  "commons" => "http://commons.wikimedia.org/wiki/$1",
  "corpknowpedia" => "http://corpknowpedia.org/wiki/index.php/$1",
  "dictionary" => "http://www.dict.org/bin/Dict?Database=*&Form=Dict1&Strategy=*&Query=$1",
  "disinfopedia" => "http://www.disinfopedia.org/wiki.phtml?title=$1",
  "docbook" => "http://wiki.docbook.org/topic/$1",
  "doi" => "http://dx.doi.org/$1",
  "drumcorpswiki" => "http://www.drumcorpswiki.com/index.php/$1",
  "dwjwiki" => "http://www.suberic.net/cgi-bin/dwj/wiki.cgi?$1",
  "emacswiki" => "http://www.emacswiki.org/cgi-bin/wiki.pl?$1",
  "elibre" => "http://enciclopedia.us.es/index.php/$1",
  "foldoc" => "http://foldoc.org/?$1",
  "foxwiki" => "http://fox.wikis.com/wc.dll?Wiki~$1",
  "freebsdman" => "http://www.FreeBSD.org/cgi/man.cgi?apropos=1&query=$1",
  "gej" => "http://www.esperanto.de/cgi-bin/aktivikio/wiki.pl?$1",
  "gentoo-wiki" => "http://gentoo-wiki.com/$1",
  "google" => "http://www.google.com/search?q=$1",
  "googlegroups" => "http://groups.google.com/groups?q=$1",
  "hammondwiki" => "http://www.dairiki.org/HammondWiki/$1",
  "hewikisource" => "http://he.wikisource.org/wiki/$1",
  "hrwiki" => "http://www.hrwiki.org/index.php/$1",
  "imdb" => "http://us.imdb.com/Title?$1",
  "jargonfile" => "http://sunir.org/apps/meta.pl?wiki=JargonFile&redirect=$1",
  "jspwiki" => "http://www.jspwiki.org/wiki/$1",
  "keiki" => "http://kei.ki/en/$1",
  "kmwiki" => "http://kmwiki.wikispaces.com/$1",
  "linuxwiki" => "http://linuxwiki.de/$1",
  "lojban" => "http://www.lojban.org/tiki/tiki-index.php?page=$1",
  "lqwiki" => "http://wiki.linuxquestions.org/wiki/$1",
  "lugkr" => "http://lug-kr.sourceforge.net/cgi-bin/lugwiki.pl?$1",
  "mathsongswiki" => "http://SeedWiki.com/page.cfm?wikiid=237&doc=$1",
  "meatball" => "http://www.usemod.com/cgi-bin/mb.pl?$1",
  "mediazilla" => "https://bugzilla.wikimedia.org/$1",
  "mediawikiwiki" => "http://www.mediawiki.org/wiki/$1",
  "memoryalpha" => "http://www.memory-alpha.org/en/index.php/$1",
  "metawiki" => "http://sunir.org/apps/meta.pl?$1",
  "metawikipedia" => "http://meta.wikimedia.org/wiki/$1",
  "moinmoin" => "http://purl.net/wiki/moin/$1",
  "mozillawiki" => "http://wiki.mozilla.org/index.php/$1",
  "mw" => "http://www.mediawiki.org/wiki/$1",
  "oeis" => "http://www.research.att.com/cgi-bin/access.cgi/as/njas/sequences/eisA.cgi?Anum=$1",
  "openfacts" => "http://openfacts.berlios.de/index.phtml?title=$1",
  "openwiki" => "http://openwiki.com/?$1",
  "pmeg" => "http://www.bertilow.com/pmeg/$1.php",
  "ppr" => "http://c2.com/cgi/wiki?$1",
  "pythoninfo" => "http://wiki.python.org/moin/$1",
  "rfc" => "http://www.rfc-editor.org/rfc/rfc$1.txt",
  "s23wiki" => "http://is-root.de/wiki/index.php/$1",
  "seattlewiki" => "http://seattle.wikia.com/wiki/$1",
  "seattlewireless" => "http://seattlewireless.net/?$1",
  "senseislibrary" => "http://senseis.xmp.net/?$1",
  "sourceforge" => "http://sourceforge.net/$1",
  "squeak" => "http://wiki.squeak.org/squeak/$1",
  "susning" => "http://www.susning.nu/$1",
  "svgwiki" => "http://wiki.svg.org/$1",
  "tavi" => "http://tavi.sourceforge.net/$1",
  "tejo" => "http://www.tejo.org/vikio/$1",
  "tmbw" => "http://www.tmbw.net/wiki/$1",
  "tmnet" => "http://www.technomanifestos.net/?$1",
  "tmwiki" => "http://www.EasyTopicMaps.com/?page=$1",
  "theopedia" => "http://www.theopedia.com/$1",
  "twiki" => "http://twiki.org/cgi-bin/view/$1",
  "uea" => "http://www.tejo.org/uea/$1",
  "unreal" => "http://wiki.beyondunreal.com/wiki/$1",
  "usemod" => "http://www.usemod.com/cgi-bin/wiki.pl?$1",
  "vinismo" => "http://vinismo.com/en/$1",
  "webseitzwiki" => "http://webseitz.fluxent.com/wiki/$1",
  "why" => "http://clublet.com/c/c/why?$1",
  "wiki" => "http://c2.com/cgi/wiki?$1",
  "wikia" => "http://www.wikia.com/wiki/$1",
  "wikibooks" => "http://en.wikibooks.org/wiki/$1",
  "wikicities" => "http://www.wikia.com/wiki/$1",
  "wikif1" => "http://www.wikif1.org/$1",
  "wikihow" => "http://www.wikihow.com/$1",
  "wikinfo" => "http://www.wikinfo.org/index.php/$1",
  "wikimedia" => "http://wikimediafoundation.org/wiki/$1",
  "wikinews" => "http://en.wikinews.org/wiki/$1",
  "wikiquote" => "http://en.wikiquote.org/wiki/$1",
  "wikipedia" => "http://en.wikipedia.org/wiki/$1",
  "wikisource" => "http://wikisource.org/wiki/$1",
  "wikispecies" => "http://species.wikimedia.org/wiki/$1",
  "wikitravel" => "http://wikitravel.org/en/$1",
  "wikiversity" => "http://en.wikiversity.org/wiki/$1",
  "wikt" => "http://en.wiktionary.org/wiki/$1",
  "wiktionary" => "http://en.wiktionary.org/wiki/$1",
  "wlug" => "http://www.wlug.org.nz/$1",
  "zwiki" => "http://zwiki.org/$1",
  "zzz wiki" => "http://wiki.zzz.ee/index.php/$1"}

  before do 
    @message = AwesomeBotMessage.new(request.body)
    @interwiki ||= begin
      langs = {}
      WIKIPEDIA_LANGUAGES.each do |wikipedia_lang|
        langs[wikipedia_lang] = "http://#{wikipedia_lang}.wikipedia.org/wiki/$1"
      end
      INTERWIKI_LINKS.merge(langs)
    end.freeze
  end
  
  # regex: /\[\[([ %!\"$&'()*,\-.\/0-9:;=?@A-Z\\^_\`a-z~\u0080-\uFFFF]+)(\||\]\])/
  # we do another regexp parse inside anyway, above one is only to exclude messages ending with "#"
  post :links do
    wikilinks = @message.body.scan(/\[\[([ %!\"$&'()*,\-.\/0-9:;=?@A-Z\\^_\`a-z~\u0080-\uFFFF]+)(\||\]\])/u)

    reallinks = []
    wikilinks.each do |wikilink|
      link_to_parse = wikilink.first.dup.gsub(' ','_') # has the match
      interwiki = /^(.+):/.match(link_to_parse)
      if interwiki && @interwiki.keys.include?(interwiki[1])
        parsed_url = URI.encode_www_form_component(link_to_parse.gsub(/^#{interwiki[1]}:/, ''))
        reallinks << @interwiki[interwiki[1]].dup.gsub('$1', parsed_url)
      else
        parsed_url = URI.encode_www_form_component(link_to_parse)
        reallinks << @interwiki['en'].dup.gsub('$1', parsed_url)
      end
    end
    {:type => "PasteMessage", :body => reallinks.join(" ")}.to_json
  end

  
end