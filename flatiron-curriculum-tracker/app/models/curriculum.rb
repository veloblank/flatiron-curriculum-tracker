require 'pry'

class Curriculum
  attr_accessor :units, :modules

  def initialize
    @units = []
    @modules = []
  end

  def unit_builder
    units = parser.flatten[1]
    units.each do |u|
      unit_name = u[:title]
      complete = u[:complete]
      slug = u[:slug]
      @units.push({name: unit_name, completed: complete, slug: slug})
    end
    self
  end



  def parser

this_hash = {

  "topics":[{

    "units":[{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533392180.93665","viewed":true,"github_repo_name":"learn-co-curriculum/welcome-to-learn-verified","content_type":"Readme",
					"id":43464,"slug":"welcome-to-learn-verified",
						"title":"Welcome to Learn Verified","visible":true}],
					"id":43463,"slug":"welcome",
						"title":"Welcome","completed_all":true,"started_any":true,"visible":true}],
					"id":43462,"slug":"welcome",
						"title":"Welcome","completed_all":true,"started_any":true,"visible":true},{

    "units":[{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601154.19214","viewed":true,"github_repo_name":"learn-co-curriculum/intro-to-tic-tac-toe-rb","content_type":"Readme",
					"id":43467,"slug":"intro-to-tic-tac-toe",
						"title":"Intro to Tic Tac Toe ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601154.2292","viewed":true,"github_repo_name":"learn-co-curriculum/matz-readme","content_type":"Readme",
					"id":43468,"slug":"minswan-yukihuro-matsumoto",
						"title":"MINSWAN- Yukihuro Matsumoto","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601154.44691","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-lecture-intro-what-is-a-program","content_type":"Readme",
					"id":43469,"slug":"what-is-a-program",
						"title":"What is a Program? ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601154.97607","viewed":true,"github_repo_name":"learn-co-curriculum/hello-world-ruby","content_type":"Lab",
					"id":43470,"slug":"hello-world",
						"title":"Hello World ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601155.13052","viewed":true,"github_repo_name":"learn-co-curriculum/ttt-1-welcome-rb","content_type":"Lab",
					"id":43471,"slug":"welcome-to-tic-tac-toe",
						"title":"Welcome to Tic Tac Toe ","visible":true}],
					"id":43466,"slug":"intro-to-programming",
						"title":"Intro to Programming ","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601155.65325","viewed":true,"github_repo_name":"learn-co-curriculum/irb-readme","content_type":"Readme",
					"id":43473,"slug":"intro-to-irb",
						"title":"Intro to IRB","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601155.6864","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-lecture-reading-error-messages","content_type":"Lab",
					"id":43474,"slug":"reading-error-messages",
						"title":"Reading Error Messages","visible":true}],
					"id":43472,"slug":"debugging",
						"title":"Debugging ","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601175.7451","viewed":true,"github_repo_name":"learn-co-curriculum/variable-readme","content_type":"Readme",
					"id":43476,"slug":"about-variable-assignment",
						"title":"About Variable Assignment ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601175.76525","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-variable-assignment","content_type":"Lab",
					"id":43477,"slug":"variable-assignment-lab",
						"title":"Variable Assignment Lab ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601176.00107","viewed":true,"github_repo_name":"learn-co-curriculum/data-types-readme","content_type":"Readme",
					"id":43478,"slug":"ruby-data-types",
						"title":"Ruby Data Types","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601203.17111","viewed":true,"github_repo_name":"learn-co-curriculum/array-readme-qualifying","content_type":"Readme",
					"id":43479,"slug":"array-basics",
						"title":"Array Basics ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601203.26825","viewed":true,"github_repo_name":"learn-co-curriculum/ttt-2-board-rb","content_type":"Lab",
					"id":43480,"slug":"tic-tac-toe-board",
						"title":"Tic Tac Toe Board","visible":true}],
					"id":43475,"slug":"variables",
						"title":"Variables","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601203.75187","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-methods-readme","content_type":"Readme",
					"id":43482,"slug":"intro-to-methods",
						"title":"Intro to Methods","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601203.86739","viewed":true,"github_repo_name":"learn-co-curriculum/interpolation-readme","content_type":"Readme",
					"id":43483,"slug":"string-interpolation",
						"title":"String Interpolation ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601204.14071","viewed":true,"github_repo_name":"learn-co-curriculum/puts-print-and-return-readme","content_type":"Readme",
					"id":43484,"slug":"puts-and-return",
						"title":"Puts and Return ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601204.14924","viewed":true,"github_repo_name":"learn-co-curriculum/ttt-3-display_board-example","content_type":"Lab",
					"id":43485,"slug":"display-tic-tac-toe-board-example",
						"title":"Display Tic Tac Toe Board Example ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601207.41456","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-arguments-readme","content_type":"Readme",
					"id":43486,"slug":"methods-and-arguments",
						"title":"Methods and Arguments","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601261.98025","viewed":true,"github_repo_name":"learn-co-curriculum/intro-to-tdd-rspec-and-learn","content_type":"Lab",
					"id":43487,"slug":"tdd-rspec-and-learn",
						"title":"TDD, Rspec, and Learn ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601262.67877","viewed":true,"github_repo_name":"learn-co-curriculum/methods-default-arguments","content_type":"Readme",
					"id":43488,"slug":"default-arguments",
						"title":"Default Arguments","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601263.42593","viewed":true,"github_repo_name":"learn-co-curriculum/say-hello-ruby","content_type":"Lab",
					"id":43489,"slug":"say-hello",
						"title":"Say Hello ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601263.76329","viewed":true,"github_repo_name":"learn-co-curriculum/interpolation-super-power","content_type":"Lab",
					"id":43490,"slug":"interpolation-super-power",
						"title":"Interpolation Super Power","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601290.23922","viewed":true,"github_repo_name":"learn-co-curriculum/ttt-4-display-board-rb","content_type":"Lab",
					"id":43491,"slug":"display-tic-tac-toe-board",
						"title":"Display Tic Tac Toe Board","visible":true}],
					"id":43481,"slug":"methods",
						"title":"Methods","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601291.74428","viewed":true,"github_repo_name":"learn-co-curriculum/intro-to-cli-applications","content_type":"Readme",
					"id":43493,"slug":"intro-to-cli-applications",
						"title":"Intro to CLI Applications","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601292.80033","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-cli-applications-readme","content_type":"Readme",
					"id":43494,"slug":"cli-applications-in-ruby",
						"title":"CLI Applications in Ruby","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601356.50474","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-gets-input","content_type":"Lab",
					"id":43495,"slug":"gets-cli-input",
						"title":"gets CLI Input","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601398.43409","viewed":true,"github_repo_name":"learn-co-curriculum/greeting-cli","content_type":"Lab",
					"id":43496,"slug":"greeting-cli-lab",
						"title":"Greeting CLI Lab ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601399.29427","viewed":true,"github_repo_name":"learn-co-curriculum/ttt-5-move-rb","content_type":"Lab",
					"id":43497,"slug":"tic-tac-toe-move",
						"title":"Tic Tac Toe Move","visible":true}],
					"id":43492,"slug":"command-line-applications",
						"title":"Command Line Applications","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601399.99353","viewed":true,"github_repo_name":"learn-co-curriculum/truthiness-in-ruby-readme","content_type":"Readme",
					"id":43499,"slug":"truthiness",
						"title":"Truthiness ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601407.28455","viewed":true,"github_repo_name":"learn-co-curriculum/booleans-ruby-readme","content_type":"Readme",
					"id":43500,"slug":"booleans",
						"title":"Booleans ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601407.83473","viewed":true,"github_repo_name":"learn-co-curriculum/conditional-readme","content_type":"Readme",
					"id":43501,"slug":"about-ruby-conditionals",
						"title":"About Ruby Conditionals","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601409.70468","viewed":true,"github_repo_name":"learn-co-curriculum/rspec-fizzbuzz","content_type":"Lab",
					"id":43502,"slug":"rspec-fizzbuzz",
						"title":"Rspec Fizzbuzz","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601410.21047","viewed":true,"github_repo_name":"learn-co-curriculum/ttt-6-position-taken-rb","content_type":"Lab",
					"id":43503,"slug":"tic-tac-toe-position-taken",
						"title":"Tic Tac Toe Position Taken ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601410.40563","viewed":true,"github_repo_name":"learn-co-curriculum/ttt-7-valid-move","content_type":"Lab",
					"id":43504,"slug":"valid-tic-tac-toe-move",
						"title":"Valid Tic Tac Toe Move","visible":true}],
					"id":43498,"slug":"logic-and-conditions",
						"title":"Logic and Conditions ","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601410.86407","viewed":true,"github_repo_name":"learn-co-curriculum/looping-introduction","content_type":"Readme",
					"id":43506,"slug":"intro-to-loops",
						"title":"Intro to Loops","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601411.02865","viewed":true,"github_repo_name":"learn-co-curriculum/looping-readme","content_type":"Readme",
					"id":43507,"slug":"loops",
						"title":"Loops","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601411.61777","viewed":true,"github_repo_name":"learn-co-curriculum/while-and-until-looping-readme","content_type":"Readme",
					"id":43508,"slug":"while-and-until-loops",
						"title":"While and Until Loops","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601412.33257","viewed":true,"github_repo_name":"learn-co-curriculum/looping-while-until","content_type":"Lab",
					"id":43509,"slug":"while-and-until-loops-lab",
						"title":"While and Until Loops Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601483.18935","viewed":true,"github_repo_name":"learn-co-curriculum/ttt-8-turn","content_type":"Lab",
					"id":43510,"slug":"tic-tac-toe-turn",
						"title":"Tic Tac Toe Turn ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601540.56268","viewed":true,"github_repo_name":"learn-co-curriculum/ttt-9-play-loop","content_type":"Lab",
					"id":43511,"slug":"tic-tac-toe-play-loop",
						"title":"Tic Tac Toe Play Loop ","visible":true}],
					"id":43505,"slug":"loops",
						"title":"Loops","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601593.62622","viewed":true,"github_repo_name":"learn-co-curriculum/iterators-and-abstraction-ruby","content_type":"Readme",
					"id":43513,"slug":"iteration-and-abstraction",
						"title":"Iteration and Abstraction","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601594.29046","viewed":true,"github_repo_name":"learn-co-curriculum/intro-to-ruby-iterators","content_type":"Readme",
					"id":43514,"slug":"intro-to-ruby-iterators",
						"title":"Intro to Ruby Iterators","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601594.46831","viewed":true,"github_repo_name":"learn-co-curriculum/ttt-10-current-player","content_type":"Lab",
					"id":43515,"slug":"tic-tac-toe-current-player",
						"title":"Tic Tac Toe Current Player","visible":true}],
					"id":43512,"slug":"iteration",
						"title":"Iteration","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601597.29848","viewed":true,"github_repo_name":"learn-co-curriculum/nested-arrays-ruby","content_type":"Readme",
					"id":43517,"slug":"nested-arrays",
						"title":"Nested Arrays","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601599.59878","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-boolean-enumerables","content_type":"Readme",
					"id":43518,"slug":"boolean-enumerables",
						"title":"Boolean Enumerables","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601600.36664","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-search-enumerators","content_type":"Readme",
					"id":43519,"slug":"search-enumerables",
						"title":"Search Enumerables","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602444.47228","viewed":true,"github_repo_name":"learn-co-curriculum/ttt-game-status","content_type":"Lab",
					"id":43520,"slug":"tic-tac-toe-game-status",
						"title":"Tic Tac Toe Game Status","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602527.45401","viewed":true,"github_repo_name":"learn-co-curriculum/tic-tac-toe-rb","content_type":"Lab",
					"id":43521,"slug":"tic-tac-toe-in-ruby",
						"title":"Tic Tac Toe in Ruby","visible":true}],
					"id":43516,"slug":"ruby-tic-tac-toe",
						"title":"Ruby Tic Tac Toe","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533602468.50352","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-intro-to-oo","content_type":"Readme",
					"id":43523,"slug":"intro-to-object-orientation",
						"title":"Intro to Object Orientation","visible":true}],
					"id":43522,"slug":"intro-to-oo",
						"title":"Intro to OO","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533602489.42091","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-intro-to-classes-and-instances","content_type":"Readme",
					"id":43525,"slug":"classes-and-instances",
						"title":"Classes and Instances","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602489.45376","viewed":true,"github_repo_name":"learn-co-curriculum/classes-and-instances-lab-ruby","content_type":"Lab",
					"id":43526,"slug":"classes-and-instances-lab",
						"title":"Classes and Instances Lab","visible":true}],
					"id":43524,"slug":"classes-and-instances",
						"title":"Classes and Instances","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533602489.68019","viewed":true,"github_repo_name":"learn-co-curriculum/instance-methods-readme-ruby","content_type":"Readme",
					"id":43528,"slug":"instance-methods",
						"title":"Instance Methods","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602489.71097","viewed":true,"github_repo_name":"learn-co-curriculum/instance-methods-lab-ruby","content_type":"Lab",
					"id":43529,"slug":"instance-methods-lab",
						"title":"Instance Methods Lab","visible":true}],
					"id":43527,"slug":"instance-methods",
						"title":"Instance Methods","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533602490.17336","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-instance-variables","content_type":"Readme",
					"id":43531,"slug":"instance-variables",
						"title":"Instance Variables","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602490.49378","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-object-attrs-readme","content_type":"Readme",
					"id":43532,"slug":"object-attributes-readme",
						"title":"Object Attributes Readme","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602521.67642","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-object-attributes-lab","content_type":"Lab",
					"id":43533,"slug":"object-attributes-lab",
						"title":"Object Attributes Lab","visible":true}],
					"id":43530,"slug":"object-properties",
						"title":"Object Properties","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533602525.59539","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-initialization","content_type":"Readme",
					"id":43535,"slug":"object-initialization",
						"title":"Object Initialization","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602525.63646","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-object-initialize-lab","content_type":"Lab",
					"id":43536,"slug":"object-initialize-lab",
						"title":"Object Initialize Lab","visible":true}],
					"id":43534,"slug":"object-lifecycles",
						"title":"Object Lifecycles","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533602526.59242","viewed":true,"github_repo_name":"learn-co-curriculum/oo-barking-dog","content_type":"Lab",
					"id":43538,"slug":"oo-barking-dog",
						"title":"OO Barking Dog","visible":true}],
					"id":43537,"slug":"object-models",
						"title":"Object Models","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533602527.34873","viewed":true,"github_repo_name":"learn-co-curriculum/procedural-vs-oo-ruby","content_type":"Readme",
					"id":43540,"slug":"procedural-vs-object-oriented-ruby",
						"title":"Procedural vs Object Oriented Ruby","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602531.78344","viewed":true,"github_repo_name":"learn-co-curriculum/oo-tic-tac-toe","content_type":"Lab",
					"id":43541,"slug":"oo-tic-tac-toe",
						"title":"OO Tic Tac Toe","visible":true}],
					"id":43539,"slug":"oo-tic-tac-toe",
						"title":"OO Tic Tac Toe","completed_all":true,"started_any":true,"visible":true}],
					"id":43465,"slug":"intro-to-ruby-development",
						"title":"Intro to Ruby Development","completed_all":true,"started_any":true,"visible":true},{

    "units":[{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601601.17565","viewed":true,"github_repo_name":"learn-co-curriculum/git-version-control-101","content_type":"Readme",
					"id":43544,"slug":"intro-to-version-control",
						"title":"Intro to Version Control","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601811.12733","viewed":true,"github_repo_name":"learn-co-curriculum/git-basics-readme","content_type":"Readme",
					"id":43545,"slug":"git-repository-basics",
						"title":"Git Repository Basics","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601811.14556","viewed":true,"github_repo_name":"learn-co-curriculum/git-basics-quiz","content_type":"Readme",
					"id":43546,"slug":"git-repository-basics-quiz",
						"title":"Git Repository Basics Quiz","visible":true}],
					"id":43543,"slug":"git",
						"title":"Git","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601811.28225","viewed":true,"github_repo_name":"learn-co-curriculum/forks-and-clones-readme","content_type":"Readme",
					"id":43548,"slug":"git-forks-and-clones",
						"title":"Git Forks and Clones","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601811.22686","viewed":true,"github_repo_name":"learn-co-curriculum/git-remotes-with-github-readme","content_type":"Readme",
					"id":43549,"slug":"git-remotes-and-github",
						"title":"Git Remotes and Github","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601811.26102","viewed":true,"github_repo_name":"learn-co-curriculum/git-remote-code-along","content_type":"Readme",
					"id":43550,"slug":"git-remotes-and-github-codealong",
						"title":"Git Remotes and Github Codealong","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533624064.3955","viewed":true,"github_repo_name":"learn-co-curriculum/careers-online-presence-github","content_type":"Readme",
					"id":43551,"slug":"thinking-ahead-github-as-career-differentiator",
						"title":"Thinking Ahead: GitHub as Career Differentiator","visible":true}],
					"id":43547,"slug":"github",
						"title":"Github","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601811.34216","viewed":true,"github_repo_name":"learn-co-curriculum/github-pull-request-basics","content_type":"Readme",
					"id":43553,"slug":"github-pull-requests",
						"title":"Github Pull Requests","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601811.32518","viewed":true,"github_repo_name":"learn-co-curriculum/git-collaboration-readme","content_type":"Readme",
					"id":43554,"slug":"git-collaboration",
						"title":"Git Collaboration","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601811.33455","viewed":true,"github_repo_name":"learn-co-curriculum/git-collaboration-quiz","content_type":"Readme",
					"id":43555,"slug":"git-collaboration-quiz",
						"title":"Git Collaboration Quiz","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601811.37091","viewed":true,"github_repo_name":"learn-co-curriculum/git-github-learn-quiz","content_type":"Readme",
					"id":43556,"slug":"git-basics-quiz",
						"title":"Git Basics Quiz","visible":true}],
					"id":43552,"slug":"collaboration",
						"title":"Collaboration","completed_all":true,"started_any":true,"visible":true}],
					"id":43542,"slug":"git-and-github",
						"title":"Git and GitHub","completed_all":true,"started_any":true,"visible":true},{

    "units":[{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533624064.50328","viewed":true,"github_repo_name":"learn-co-curriculum/transitioning-from-ruby-to-html","content_type":"Readme",
					"id":43559,"slug":"transitioning-from-ruby-to-html",
						"title":"Transitioning From Ruby To HTML","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533624064.99226","viewed":true,"github_repo_name":"learn-co-curriculum/a-quick-tour-of-the-web","content_type":"Readme",
					"id":43560,"slug":"a-quick-tour-of-the-web",
						"title":"A Quick Tour of The Web","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533624065.02115","viewed":true,"github_repo_name":"learn-co-curriculum/the-web-is-made-of-strings","content_type":"Readme",
					"id":43561,"slug":"text-to-the-infinity-and-beyond",
						"title":"Text to the infinity and beyond","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533624065.29203","viewed":true,"github_repo_name":"learn-co-curriculum/what-makes-the-web-possible","content_type":"Readme",
					"id":43562,"slug":"what-makes-the-web-possible",
						"title":"What Makes The Web Possible","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533624066.217","viewed":true,"github_repo_name":"learn-co-curriculum/a-peek-behind-the-link","content_type":"Readme",
					"id":43563,"slug":"a-peek-behind-the-link-the-web-s-superpower",
						"title":"A peek behind the \"link\", the web's superpower","visible":true}],
					"id":43558,"slug":"introduction-to-the-web-and-html",
						"title":"Introduction to the Web and HTML","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533624066.93353","viewed":true,"github_repo_name":"learn-co-curriculum/html-introduction","content_type":"Readme",
					"id":43565,"slug":"html-basics",
						"title":"HTML Basics","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533624067.03967","viewed":true,"github_repo_name":"learn-co-curriculum/first-html-tag-lab","content_type":"Lab",
					"id":43566,"slug":"your-first-html-tag",
						"title":"Your First HTML Tag","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533624067.11917","viewed":true,"github_repo_name":"learn-co-curriculum/well-formed-html-document-lab","content_type":"Lab",
					"id":43567,"slug":"well-formed-html-document-lab",
						"title":"Well-Formed HTML Document Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533624067.28081","viewed":true,"github_repo_name":"learn-co-curriculum/nested-tags-and-attributes","content_type":"Readme",
					"id":43568,"slug":"nested-tags-and-attributes",
						"title":"Nested Tags And Attributes","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533624094.00921","viewed":true,"github_repo_name":"learn-co-curriculum/a-tag-with-href-attributes-lab","content_type":"Lab",
					"id":43569,"slug":"create-an-a-tag-with-an-href-attribute",
						"title":"Create an \u003ca\u003e Tag with an href Attribute","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533624094.93213","viewed":true,"github_repo_name":"learn-co-curriculum/html-elements","content_type":"Readme",
					"id":43570,"slug":"html-elements-types-overview",
						"title":"HTML elements types overview","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533624095.33258","viewed":true,"github_repo_name":"learn-co-curriculum/researching-HTML-elements","content_type":"Readme",
					"id":43571,"slug":"researching-html-elements",
						"title":"Researching Html Elements","visible":true}],
					"id":43564,"slug":"html-basics",
						"title":"HTML Basics","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533624095.05572","viewed":true,"github_repo_name":"learn-co-curriculum/separation-of-content-and-presentation","content_type":"Readme",
					"id":43573,"slug":"separation-of-content-and-presentation",
						"title":"Separation of Content and Presentation","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533624095.34831","viewed":true,"github_repo_name":"learn-co-curriculum/introduction-to-css","content_type":"Readme",
					"id":43574,"slug":"introducton-to-css",
						"title":"Introducton to CSS","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533624095.29098","viewed":true,"github_repo_name":"learn-co-curriculum/introduction-to-css-code-along","content_type":"Readme",
					"id":43575,"slug":"introduction-to-css-code-along",
						"title":"Introduction to CSS Code Along","visible":true}],
					"id":43572,"slug":"introduction-to-css",
						"title":"Introduction to CSS","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533624095.30677","viewed":true,"github_repo_name":"learn-co-curriculum/transitioning-back-to-ruby","content_type":"Readme",
					"id":43577,"slug":"transitioning-back-to-ruby",
						"title":"Transitioning Back To Ruby","visible":true}],
					"id":43576,"slug":"transitioning-back-to-ruby",
						"title":"Transitioning Back to Ruby","completed_all":true,"started_any":true,"visible":true}],
					"id":43557,"slug":"html-and-css-introduction",
						"title":"HTML and CSS Introduction","completed_all":true,"started_any":true,"visible":true},{

    "units":[{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533602738.44367","viewed":true,"github_repo_name":"learn-co-curriculum/regex-what-is-a-pattern","content_type":"Readme",
					"id":43580,"slug":"what-s-a-pattern",
						"title":"What's a Pattern","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602739.10122","viewed":true,"github_repo_name":"learn-co-curriculum/regex-basics-readme","content_type":"Readme",
					"id":43581,"slug":"regex-basics",
						"title":"Regex Basics","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602739.69794","viewed":true,"github_repo_name":"learn-co-curriculum/regex-match-scan-grep-methods-readme","content_type":"Readme",
					"id":43582,"slug":"ruby-methods-with-regex",
						"title":"Ruby Methods with Regex","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602739.73111","viewed":true,"github_repo_name":"learn-co-curriculum/regex-lab","content_type":"Lab",
					"id":43583,"slug":"regex-lab",
						"title":"Regex Lab","visible":true}],
					"id":43579,"slug":"regex",
						"title":"Regex","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601175.7451","viewed":true,"github_repo_name":"learn-co-curriculum/variable-readme","content_type":"Readme",
					"id":43585,"slug":"about-variable-assignment",
						"title":"About Variable Assignment","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601175.76525","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-variable-assignment","content_type":"Lab",
					"id":43586,"slug":"variable-assignment-lab",
						"title":"Variable Assignment Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601203.86739","viewed":true,"github_repo_name":"learn-co-curriculum/interpolation-readme","content_type":"Readme",
					"id":43587,"slug":"string-interpolation",
						"title":"String Interpolation","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601203.75187","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-methods-readme","content_type":"Readme",
					"id":43588,"slug":"defining-methods",
						"title":"Defining Methods","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601207.41456","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-arguments-readme","content_type":"Readme",
					"id":43589,"slug":"methods-and-arguments",
						"title":"Methods and Arguments","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602341.34418","viewed":true,"github_repo_name":"learn-co-curriculum/method-arguments-lab","content_type":"Lab",
					"id":43590,"slug":"methods-and-arguments-lab",
						"title":"Methods and Arguments Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601262.67877","viewed":true,"github_repo_name":"learn-co-curriculum/methods-default-arguments","content_type":"Readme",
					"id":43591,"slug":"methods-and-default-arguments",
						"title":"Methods and Default Arguments","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601263.42593","viewed":true,"github_repo_name":"learn-co-curriculum/say-hello-ruby","content_type":"Lab",
					"id":43592,"slug":"methods-and-default-arguments-lab",
						"title":"Methods and Default Arguments Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601204.14071","viewed":true,"github_repo_name":"learn-co-curriculum/puts-print-and-return-readme","content_type":"Readme",
					"id":43593,"slug":"return-values",
						"title":"Return Values","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602341.7143","viewed":true,"github_repo_name":"learn-co-curriculum/parrot-ruby","content_type":"Lab",
					"id":43594,"slug":"return-values-lab",
						"title":"Return Values Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602342.25567","viewed":true,"github_repo_name":"learn-co-curriculum/debugging-with-pry","content_type":"Lab",
					"id":43595,"slug":"debugging-with-pry",
						"title":"Debugging with Pry","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602342.88514","viewed":true,"github_repo_name":"learn-co-curriculum/method-scope","content_type":"Readme",
					"id":43596,"slug":"method-scope",
						"title":"Method Scope","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602342.94396","viewed":true,"github_repo_name":"learn-co-curriculum/method-scope-lab","content_type":"Lab",
					"id":43597,"slug":"method-scope-lab",
						"title":"Method Scope Lab","visible":true}],
					"id":43584,"slug":"variables-and-methods",
						"title":"Variables and Methods","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601399.99353","viewed":true,"github_repo_name":"learn-co-curriculum/truthiness-in-ruby-readme","content_type":"Readme",
					"id":43599,"slug":"booleans-and-truthiness-in-ruby",
						"title":"Booleans and Truthiness in Ruby","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601407.28455","viewed":true,"github_repo_name":"learn-co-curriculum/booleans-ruby-readme","content_type":"Readme",
					"id":43600,"slug":"boolean-operators",
						"title":"Boolean Operators","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602399.70601","viewed":true,"github_repo_name":"learn-co-curriculum/truthiness-code-challenge","content_type":"Readme",
					"id":43601,"slug":"truthiness-code-challenge",
						"title":"Truthiness Code Challenge","visible":true}],
					"id":43598,"slug":"booleans",
						"title":"Booleans","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601407.83473","viewed":true,"github_repo_name":"learn-co-curriculum/conditional-readme","content_type":"Readme",
					"id":43603,"slug":"if-statements",
						"title":"If Statements","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602417.86882","viewed":true,"github_repo_name":"learn-co-curriculum/speaking-grandma","content_type":"Lab",
					"id":43604,"slug":"if-statements-lab",
						"title":"If Statements Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602444.57653","viewed":true,"github_repo_name":"learn-co-curriculum/operators","content_type":"Lab",
					"id":43605,"slug":"ternary-operators-and-statement-modifiers",
						"title":"Ternary Operators and Statement Modifiers","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602445.04052","viewed":true,"github_repo_name":"learn-co-curriculum/conditional-operators-quiz","content_type":"Readme",
					"id":43606,"slug":"if-statements-quiz",
						"title":"If Statements Quiz","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602445.50778","viewed":true,"github_repo_name":"learn-co-curriculum/case-statements-readme","content_type":"Readme",
					"id":43607,"slug":"case-statements",
						"title":"Case Statements","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602445.56073","viewed":true,"github_repo_name":"learn-co-curriculum/case-statements-quiz","content_type":"Readme",
					"id":43608,"slug":"case-statements-quiz",
						"title":"Case Statements Quiz","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602445.70652","viewed":true,"github_repo_name":"learn-co-curriculum/conditional-quiz-vowels","content_type":"Readme",
					"id":43609,"slug":"logic-and-conditionals-quiz",
						"title":"Logic and Conditionals Quiz","visible":true}],
					"id":43602,"slug":"logic-and-conditionals",
						"title":"Logic and Conditionals","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601410.86407","viewed":true,"github_repo_name":"learn-co-curriculum/looping-introduction","content_type":"Readme",
					"id":43611,"slug":"intro-to-loops",
						"title":"Intro to Loops","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601411.02865","viewed":true,"github_repo_name":"learn-co-curriculum/looping-readme","content_type":"Readme",
					"id":43612,"slug":"looping",
						"title":"Looping","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602581.17536","viewed":true,"github_repo_name":"learn-co-curriculum/looping-loop","content_type":"Lab",
					"id":43613,"slug":"looping-lab",
						"title":"Looping Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602581.45757","viewed":true,"github_repo_name":"learn-co-curriculum/looping-times","content_type":"Lab",
					"id":43614,"slug":"times",
						"title":"Times","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602581.59473","viewed":true,"github_repo_name":"learn-co-curriculum/looping-quiz","content_type":"Readme",
					"id":43615,"slug":"looping-quiz",
						"title":"Looping Quiz","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601411.61777","viewed":true,"github_repo_name":"learn-co-curriculum/while-and-until-looping-readme","content_type":"Readme",
					"id":43616,"slug":"while-and-until-loops",
						"title":"While and Until Loops","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601412.33257","viewed":true,"github_repo_name":"learn-co-curriculum/looping-while-until","content_type":"Lab",
					"id":43617,"slug":"while-and-until-loops-lab",
						"title":"While and Until Loops Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602584.14883","viewed":true,"github_repo_name":"learn-co-curriculum/countdown-to-midnight","content_type":"Lab",
					"id":43618,"slug":"countdown-to-midnight-lab",
						"title":"Countdown to Midnight Lab","visible":true}],
					"id":43610,"slug":"looping",
						"title":"Looping","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533602585.0542","viewed":true,"github_repo_name":"learn-co-curriculum/array-introduction","content_type":"Readme",
					"id":43620,"slug":"intro-to-arrays",
						"title":"Intro to Arrays","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602585.82255","viewed":true,"github_repo_name":"learn-co-curriculum/array-readme","content_type":"Readme",
					"id":43621,"slug":"using-arrays",
						"title":"Using Arrays","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602585.84024","viewed":true,"github_repo_name":"learn-co-curriculum/array-CRUD-lab","content_type":"Lab",
					"id":43622,"slug":"using-arrays-lab",
						"title":"Using Arrays Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602629.17071","viewed":true,"github_repo_name":"learn-co-curriculum/array-methods-readme","content_type":"Readme",
					"id":43623,"slug":"arrays-and-methods",
						"title":"Arrays and Methods","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602629.49114","viewed":true,"github_repo_name":"learn-co-curriculum/array-methods-lab","content_type":"Lab",
					"id":43624,"slug":"arrays-and-methods-lab",
						"title":"Arrays and Methods Lab","visible":true}],
					"id":43619,"slug":"arrays",
						"title":"Arrays","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601593.62622","viewed":true,"github_repo_name":"learn-co-curriculum/iterators-and-abstraction-ruby","content_type":"Readme",
					"id":43626,"slug":"iteration-and-abstraction",
						"title":"Iteration and Abstraction","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601594.29046","viewed":true,"github_repo_name":"learn-co-curriculum/intro-to-ruby-iterators","content_type":"Readme",
					"id":43627,"slug":"intro-to-ruby-iterators",
						"title":"Intro to Ruby Iterators","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602636.19991","viewed":true,"github_repo_name":"learn-co-curriculum/square_array","content_type":"Lab",
					"id":43628,"slug":"square-array-lab",
						"title":"Square Array Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602640.69404","viewed":true,"github_repo_name":"learn-co-curriculum/badges-and-schedules","content_type":"Lab",
					"id":43629,"slug":"badges-and-schedules-lab",
						"title":"Badges and Schedules Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602882.02326","viewed":true,"github_repo_name":"learn-co-curriculum/oxford-comma","content_type":"Lab",
					"id":43630,"slug":"oxford-comma-lab",
						"title":"Oxford Comma Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602866.45701","viewed":true,"github_repo_name":"learn-co-curriculum/deli-counter","content_type":"Lab",
					"id":43631,"slug":"deli-counter-lab",
						"title":"Deli Counter Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602886.04988","viewed":true,"github_repo_name":"learn-co-curriculum/each-vs-collect-readme","content_type":"Readme",
					"id":43632,"slug":"collect-and-return-values",
						"title":"Collect and Return Values","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602893.37186","viewed":true,"github_repo_name":"learn-co-curriculum/reverse-each-word","content_type":"Lab",
					"id":43633,"slug":"reverse-each-word-lab",
						"title":"Reverse Each Word Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602894.16498","viewed":true,"github_repo_name":"learn-co-curriculum/yield-and-blocks","content_type":"Lab",
					"id":43634,"slug":"yield-and-blocks",
						"title":"Yield and Blocks","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602970.04772","viewed":true,"github_repo_name":"learn-co-curriculum/my-each","content_type":"Lab",
					"id":43635,"slug":"each-lab",
						"title":"Each Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602971.47067","viewed":true,"github_repo_name":"learn-co-curriculum/yield-and-return-values","content_type":"Lab",
					"id":43636,"slug":"return-from-yield-statements",
						"title":"Return from Yield Statements","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603002.15967","viewed":true,"github_repo_name":"learn-co-curriculum/my-collect","content_type":"Lab",
					"id":43637,"slug":"collect-lab",
						"title":"Collect Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601599.59878","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-boolean-enumerables","content_type":"Readme",
					"id":43638,"slug":"boolean-enumerators",
						"title":"Boolean Enumerators","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601600.36664","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-search-enumerators","content_type":"Readme",
					"id":43639,"slug":"search-enumerators",
						"title":"Search Enumerators","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603064.54177","viewed":true,"github_repo_name":"learn-co-curriculum/my_all","content_type":"Lab",
					"id":43640,"slug":"my-all-lab",
						"title":"My All? Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603064.81531","viewed":true,"github_repo_name":"learn-co-curriculum/my_find_code_along","content_type":"Lab",
					"id":43641,"slug":"my-find-lab",
						"title":"My Find Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603065.01255","viewed":true,"github_repo_name":"learn-co-curriculum/cartoon-collections","content_type":"Lab",
					"id":43642,"slug":"cartoon-collections-lab",
						"title":"Cartoon Collections Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603069.83412","viewed":true,"github_repo_name":"learn-co-curriculum/enumerator-coding-challenge","content_type":"Readme",
					"id":43643,"slug":"enumerators-code-challenge",
						"title":"Enumerators Code Challenge","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603070.64534","viewed":true,"github_repo_name":"learn-co-curriculum/prime-ruby","content_type":"Lab",
					"id":43644,"slug":"prime-lab",
						"title":"Prime? Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603086.58636","viewed":true,"github_repo_name":"learn-co-curriculum/sorting-readme","content_type":"Readme",
					"id":43645,"slug":"sorting",
						"title":"Sorting ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603086.60408","viewed":true,"github_repo_name":"learn-co-curriculum/collections_practice","content_type":"Lab",
					"id":43646,"slug":"sorting-lab",
						"title":"Sorting Lab","visible":true}],
					"id":43625,"slug":"iteration",
						"title":"Iteration","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533603101.26048","viewed":true,"github_repo_name":"learn-co-curriculum/hash-overview-readme","content_type":"Readme",
					"id":43648,"slug":"introduction-to-hashes",
						"title":"Introduction to Hashes","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603101.63957","viewed":true,"github_repo_name":"learn-co-curriculum/my-first-hash","content_type":"Lab",
					"id":43649,"slug":"using-hashes",
						"title":"Using Hashes","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603102.02377","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-symbols","content_type":"Readme",
					"id":43650,"slug":"symbols",
						"title":"Symbols","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603102.08551","viewed":true,"github_repo_name":"learn-co-curriculum/hash-iteration","content_type":"Lab",
					"id":43651,"slug":"hash-iteration-with-each",
						"title":"Hash Iteration with Each","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603105.03874","viewed":true,"github_repo_name":"learn-co-curriculum/hash-iteration-collect","content_type":"Readme",
					"id":43652,"slug":"hash-iteration-with-collect",
						"title":"Hash Iteration with Collect","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603105.08128","viewed":true,"github_repo_name":"learn-co-curriculum/key-for-min-value","content_type":"Lab",
					"id":43653,"slug":"hash-iteration-lab",
						"title":"Hash Iteration Lab","visible":true}],
					"id":43647,"slug":"hashes",
						"title":"Hashes","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533603106.10577","viewed":true,"github_repo_name":"learn-co-curriculum/nested-hashes-intro","content_type":"Readme",
					"id":43655,"slug":"intro-to-nested-hashes",
						"title":"Intro to Nested Hashes","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603106.23522","viewed":true,"github_repo_name":"learn-co-curriculum/building-nested-hash-readme","content_type":"Readme",
					"id":43656,"slug":"building-nested-hashes",
						"title":"Building Nested Hashes","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603280.71247","viewed":true,"github_repo_name":"learn-co-curriculum/building-nested-hashes","content_type":"Lab",
					"id":43657,"slug":"building-nested-hashes-lab",
						"title":"Building Nested Hashes Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603281.3462","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-intro-to-hashes-lab","content_type":"Lab",
					"id":43658,"slug":"nested-hashes-lab",
						"title":"Nested Hashes Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604408.84551","viewed":true,"github_repo_name":"learn-co-curriculum/simple-nesting","content_type":"Lab",
					"id":43659,"slug":"multitype-collections-lab",
						"title":"Multitype Collections Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604531.72607","viewed":true,"github_repo_name":"learn-co-curriculum/nested-hash-iteration","content_type":"Readme",
					"id":43660,"slug":"nested-hash-iteration",
						"title":"Nested Hash Iteration","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604534.47949","viewed":true,"github_repo_name":"learn-co-curriculum/nested-hash-iteration-code-along","content_type":"Lab",
					"id":43661,"slug":"iterating-over-nested-hashes-codealong",
						"title":"Iterating over Nested Hashes Codealong","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604535.57725","viewed":true,"github_repo_name":"learn-co-curriculum/other-hash-methods-code-along","content_type":"Lab",
					"id":43662,"slug":"other-hashes-codealong",
						"title":"Other Hashes Codealong","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604536.00625","viewed":true,"github_repo_name":"learn-co-curriculum/apples-and-holidays","content_type":"Lab",
					"id":43663,"slug":"hashes-manipulation-lab",
						"title":"Hashes Manipulation Lab","visible":true}],
					"id":43654,"slug":"data-structures",
						"title":"Data Structures","completed_all":true,"started_any":true,"visible":true}],
					"id":43578,"slug":"procedural-ruby",
						"title":"Procedural Ruby","completed_all":true,"started_any":true,"visible":true},{

    "units":[{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533602468.50352","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-intro-to-oo","content_type":"Readme",
					"id":43666,"slug":"intro-to-object-orientation",
						"title":"Intro to Object Orientation","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603583.5298","viewed":true,"github_repo_name":"learn-co-curriculum/oo-ruby-video-object-orientation-overview","content_type":"Readme",
					"id":43667,"slug":"oo-ruby-video-object-orientation-overview",
						"title":"OO Ruby Video: Object Orientation Overview","visible":true}],
					"id":43665,"slug":"intro-to-object-orientation",
						"title":"Intro to Object Orientation","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533602489.42091","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-intro-to-classes-and-instances","content_type":"Readme",
					"id":43669,"slug":"intro-to-classes-and-instances",
						"title":"Intro to Classes and Instances","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602489.45376","viewed":true,"github_repo_name":"learn-co-curriculum/classes-and-instances-lab-ruby","content_type":"Lab",
					"id":43670,"slug":"classes-and-instances-lab",
						"title":"Classes and Instances Lab","visible":true}],
					"id":43668,"slug":"classes-and-instances",
						"title":"Classes and Instances","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533602489.68019","viewed":true,"github_repo_name":"learn-co-curriculum/instance-methods-readme-ruby","content_type":"Readme",
					"id":43672,"slug":"instance-methods",
						"title":"Instance Methods","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602489.71097","viewed":true,"github_repo_name":"learn-co-curriculum/instance-methods-lab-ruby","content_type":"Lab",
					"id":43673,"slug":"instance-methods-lab",
						"title":"Instance Methods Lab","visible":true}],
					"id":43671,"slug":"instance-methods",
						"title":"Instance Methods","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533603583.64654","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-instance-variables-lab","content_type":"Lab",
					"id":43675,"slug":"instance-variables",
						"title":"Instance Variables","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602490.49378","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-object-attrs-readme","content_type":"Readme",
					"id":43676,"slug":"object-attributes",
						"title":"Object Attributes","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602521.67642","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-object-attributes-lab","content_type":"Lab",
					"id":43677,"slug":"object-attributes-lab",
						"title":"Object Attributes Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603637.01519","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-oo-macros-readme","content_type":"Readme",
					"id":43678,"slug":"object-accessors",
						"title":"Object Accessors","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603657.63964","viewed":true,"github_repo_name":"learn-co-curriculum/oo-meowing-cat","content_type":"Lab",
					"id":43679,"slug":"meowing-cat",
						"title":"Meowing Cat","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603773.00671","viewed":true,"github_repo_name":"learn-co-curriculum/oo-ruby-video-review-object-properties","content_type":"Readme",
					"id":43680,"slug":"video-review-object-properties",
						"title":"Video Review: Object Properties","visible":true}],
					"id":43674,"slug":"object-properties",
						"title":"Object Properties","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533602525.59539","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-initialization","content_type":"Readme",
					"id":43682,"slug":"object-initialization",
						"title":"Object Initialization","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602525.63646","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-object-initialize-lab","content_type":"Lab",
					"id":43683,"slug":"object-initialization-lab",
						"title":"Object Initialization Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603773.0399","viewed":true,"github_repo_name":"learn-co-curriculum/oo-basics","content_type":"Lab",
					"id":43684,"slug":"oo-basics",
						"title":"OO Basics","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603805.32861","viewed":true,"github_repo_name":"learn-co-curriculum/oo-basics-with-class-constants","content_type":"Lab",
					"id":43685,"slug":"oo-basics-with-class-constants",
						"title":"OO Basics with Class Constants","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603809.20585","viewed":true,"github_repo_name":"learn-co-curriculum/school-domain","content_type":"Lab",
					"id":43686,"slug":"oo-school-domain",
						"title":"OO School Domain","visible":true}],
					"id":43681,"slug":"object-lifecycle",
						"title":"Object Lifecycle","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533604745.82811","viewed":true,"github_repo_name":"learn-co-curriculum/intro-to-object-orientation-ruby","content_type":"Readme",
					"id":43688,"slug":"intro-to-object-orientation-ruby",
						"title":"Intro to Object Orientation - Ruby","visible":true}],
					"id":43687,"slug":"object-orientation-review",
						"title":"Object Orientation Review","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533604687.17842","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-self-readme","content_type":"Readme",
					"id":43690,"slug":"self",
						"title":"Self","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604749.83274","viewed":true,"github_repo_name":"learn-co-curriculum/oo-counting-sentences","content_type":"Lab",
					"id":43691,"slug":"oo-counting-sentences",
						"title":"OO Counting Sentences","visible":true}],
					"id":43689,"slug":"object-s-self",
						"title":"Object's Self","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533604699.6358","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-class-variables-and-class-methods-readme","content_type":"Readme",
					"id":43693,"slug":"class-variables-and-methods",
						"title":"Class Variables and Methods","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604699.65599","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-class-variables-and-class-methods-lab","content_type":"Lab",
					"id":43694,"slug":"class-variables-and-methods-lab",
						"title":"Class Variables and Methods Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604751.89283","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-public-private-methods-readme","content_type":"Readme",
					"id":43695,"slug":"private-methods",
						"title":"Private Methods","visible":true}],
					"id":43692,"slug":"class-variables-and-methods",
						"title":"Class Variables and Methods","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533604687.16211","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-remembering-objects-readme","content_type":"Readme",
					"id":43697,"slug":"remembering-objects",
						"title":"Remembering Objects","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604815.55937","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-puppy","content_type":"Lab",
					"id":43698,"slug":"puppy-lab",
						"title":"Puppy Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604860.14703","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-advanced-class-methods-readme","content_type":"Readme",
					"id":43699,"slug":"advanced-class-methods",
						"title":"Advanced Class Methods","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604860.41607","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-advanced-class-methods-lab","content_type":"Lab",
					"id":43700,"slug":"advanced-class-methods-lab",
						"title":"Advanced Class Methods Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604779.62581","viewed":true,"github_repo_name":"learn-co-curriculum/oo-ruby-video-review-object-models","content_type":"Readme",
					"id":43701,"slug":"video-review-object-models",
						"title":"Video Review: Object Models","visible":true}],
					"id":43696,"slug":"object-models",
						"title":"Object Models","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533605009.18447","viewed":true,"github_repo_name":"learn-co-curriculum/oo-email-parser","content_type":"Lab",
					"id":43703,"slug":"oo-email-parser",
						"title":"OO Email Parser","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605009.90764","viewed":true,"github_repo_name":"learn-co-curriculum/anagram-detector","content_type":"Lab",
					"id":43704,"slug":"oo-anagram-detector",
						"title":"OO Anagram Detector","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605019.78257","viewed":true,"github_repo_name":"learn-co-curriculum/oo-cash-register","content_type":"Lab",
					"id":43705,"slug":"oo-cash-register",
						"title":"OO Cash Register","visible":true}],
					"id":43702,"slug":"object-labs",
						"title":"Object Labs","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533604722.16783","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-intro-to-object-relationships-with-belongs-to","content_type":"Readme",
					"id":43707,"slug":"intro-to-object-relationships",
						"title":"Intro to Object Relationships","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605257.31807","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-objects-belong-to-lab","content_type":"Lab",
					"id":43708,"slug":"belongs-to-object-lab",
						"title":"Belongs to Object Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605032.43251","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-objects-has-many-readme","content_type":"Readme",
					"id":43709,"slug":"has-many-object",
						"title":"Has Many Object","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605288.43974","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-objects-has-many-lab","content_type":"Lab",
					"id":43710,"slug":"has-many-object-lab",
						"title":"Has Many Object Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604896.41358","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-collaborating-objects-readme","content_type":"Readme",
					"id":43711,"slug":"collaborating-objects",
						"title":"Collaborating Objects","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605173.49889","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-collaborating-objects-lab","content_type":"Lab",
					"id":43712,"slug":"collaborating-objects-lab",
						"title":"Collaborating Objects Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605362.85609","viewed":true,"github_repo_name":"learn-co-curriculum/collaborating-objects-review","content_type":"Readme",
					"id":43713,"slug":"collaborating-objects-review",
						"title":"Collaborating Objects Review","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605303.55287","viewed":true,"github_repo_name":"learn-co-curriculum/oo-my-pets","content_type":"Lab",
					"id":43714,"slug":"oo-my-pets",
						"title":"OO My Pets","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605307.96066","viewed":true,"github_repo_name":"learn-co-curriculum/oo-kickstarter","content_type":"Lab",
					"id":43715,"slug":"oo-kickstarter",
						"title":"OO Kickstarter","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605320.91964","viewed":true,"github_repo_name":"learn-co-curriculum/oo-banking","content_type":"Lab",
					"id":43716,"slug":"oo-banking",
						"title":"OO Banking","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605369.81834","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-objects-has-many-through-readme","content_type":"Readme",
					"id":43717,"slug":"has-many-objects-through",
						"title":"Has Many Objects Through","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605369.84174","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-objects-has-many-through-lab","content_type":"Lab",
					"id":43718,"slug":"has-many-objects-through-lab",
						"title":"Has Many Objects Through Lab","visible":true}],
					"id":43706,"slug":"object-relationships",
						"title":"Object Relationships","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533604686.32417","viewed":true,"github_repo_name":"learn-co-curriculum/oo-inheritance-code-along","content_type":"Lab",
					"id":43720,"slug":"intro-to-inheritance",
						"title":"Intro to Inheritance","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604686.42724","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-inheritance-lab","content_type":"Lab",
					"id":43721,"slug":"intro-to-inheritance-lab",
						"title":"Intro to Inheritance Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604896.57356","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-super-inheritance-","content_type":"Readme",
					"id":43722,"slug":"super",
						"title":"Super","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605352.94635","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-super-inheritance-lab","content_type":"Lab",
					"id":43723,"slug":"super-lab",
						"title":"Super Lab ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605339.52058","viewed":true,"github_repo_name":"learn-co-curriculum/modules-reading","content_type":"Lab",
					"id":43724,"slug":"intro-to-modules",
						"title":"Intro to Modules","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605343.22507","viewed":true,"github_repo_name":"learn-co-curriculum/artist-song-modules","content_type":"Lab",
					"id":43725,"slug":"intro-to-modules-lab",
						"title":"Intro to Modules Lab","visible":true}],
					"id":43719,"slug":"object-architecture",
						"title":"Object Architecture","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533604687.11137","viewed":true,"github_repo_name":"learn-co-curriculum/keyword-args-mass-assignment","content_type":"Readme",
					"id":43727,"slug":"mass-assignment",
						"title":"Mass Assignment","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605225.84579","viewed":true,"github_repo_name":"learn-co-curriculum/mass-assignment-metaprogramming","content_type":"Readme",
					"id":43728,"slug":"mass-assignment-and-metaprogramming",
						"title":"Mass Assignment and Metaprogramming","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605226.62368","viewed":true,"github_repo_name":"learn-co-curriculum/mass-assignment","content_type":"Lab",
					"id":43729,"slug":"mass-assignment-lab",
						"title":"Mass Assignment Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605459.49208","viewed":true,"github_repo_name":"learn-co-curriculum/oo-custom-errors","content_type":"Readme",
					"id":43730,"slug":"custom-errors",
						"title":"Custom Errors","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605382.46991","viewed":true,"github_repo_name":"learn-co-curriculum/triangle-classification","content_type":"Lab",
					"id":43731,"slug":"oo-triangle",
						"title":"OO Triangle","visible":true}],
					"id":43726,"slug":"metaprogramming",
						"title":"Metaprogramming","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533605230.38398","viewed":true,"github_repo_name":"learn-co-curriculum/using-bundler","content_type":"Lab",
					"id":43733,"slug":"gems-and-bundler",
						"title":"Gems and Bundler","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605338.00639","viewed":true,"github_repo_name":"learn-co-curriculum/scraping-reading","content_type":"Readme",
					"id":43734,"slug":"scraping",
						"title":"Scraping","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605338.0584","viewed":true,"github_repo_name":"learn-co-curriculum/scraping-flatiron-code-along","content_type":"Lab",
					"id":43735,"slug":"scraping-lab",
						"title":"Scraping Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605473.32014","viewed":true,"github_repo_name":"learn-co-curriculum/scraping-kickstarter","content_type":"Lab",
					"id":43736,"slug":"kickstarter-scraping-lab",
						"title":"Kickstarter Scraping Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605233.61269","viewed":true,"github_repo_name":"learn-co-curriculum/oo-ruby-video-review-object-orientation-and-scraping","content_type":"Readme",
					"id":43737,"slug":"video-review-object-orientation-and-scraping",
						"title":"Video Review: Object Orientation and Scraping","visible":true}],
					"id":43732,"slug":"scraping",
						"title":"Scraping","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533604905.81942","viewed":true,"github_repo_name":"learn-co-curriculum/oo-ruby-object-orientation-video-review","content_type":"Readme",
					"id":43739,"slug":"oo-ruby-object-orientation-video-review",
						"title":"OO Ruby Object Orientation Video Review","visible":true}],
					"id":43738,"slug":"video-reviews-of-oo-ruby",
						"title":"Video Reviews of OO Ruby","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533605485.36823","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-music-library-cli","content_type":"Lab",
					"id":43741,"slug":"music-library-cli",
						"title":"Music Library CLI","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605498.88337","viewed":true,"github_repo_name":"learn-co-curriculum/oo-ruby-video-review-music-library-cli","content_type":"Readme",
					"id":43742,"slug":"video-review-music-library-cli",
						"title":"Video Review: Music Library CLI","visible":true},{
"complete":false,"started_at":nil,"updated_at":"1533605551.46299","viewed":true,"github_repo_name":"learn-co-curriculum/ttt-with-ai-project","content_type":"Project",
					"id":43743,"slug":"tic-tac-toe-with-ai",
						"title":"Tic-Tac-Toe with AI","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605597.41126","viewed":true,"github_repo_name":"learn-co-curriculum/oo-student-scraper","content_type":"Lab",
					"id":43744,"slug":"student-scraper",
						"title":"Student Scraper","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605596.90198","viewed":true,"github_repo_name":"learn-co-curriculum/cli-data-gem-assessment","content_type":"Lab",
					"id":43745,"slug":"cli-data-gem-project",
						"title":"CLI Data Gem Project","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605560.78935","viewed":true,"github_repo_name":"learn-co-curriculum/oo-cli-data-gem-walkthrough","content_type":"Readme",
					"id":43746,"slug":"cli-data-gem-walkthrough",
						"title":"CLI Data Gem Walkthrough","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605596.21239","viewed":true,"github_repo_name":"learn-co-curriculum/oo-ruby-cli-data-gem-walkthrough-creating-a-cli-scraper-gem","content_type":"Readme",
					"id":43747,"slug":"cli-data-gem-walkthrough-creating-a-cli-scraper-gem",
						"title":"CLI Data Gem Walkthrough: Creating a CLI Scraper Gem","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605583.36203","viewed":true,"github_repo_name":"learn-co-curriculum/oo-ruby-refactoring-cli-gem","content_type":"Readme",
					"id":43748,"slug":"common-anti-patterns-in-cli-data-gem",
						"title":"Common Anti-Patterns in CLI Data Gem","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605650.91917","viewed":true,"github_repo_name":"learn-co-curriculum/refactoring-cli-gem","content_type":"Readme",
					"id":43749,"slug":"student-example-1-refactoring-cli-gem",
						"title":"Student Example 1: Refactoring CLI Gem","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605650.63743","viewed":true,"github_repo_name":"learn-co-curriculum/oo-ruby-refactoring-cli-gem-2","content_type":"Readme",
					"id":43750,"slug":"student-example-2-refactoring-cli-gem",
						"title":"Student Example 2: Refactoring CLI Gem ","visible":true}],
					"id":43740,"slug":"final-projects",
						"title":"Final Projects","completed_all":false,"started_any":true,"visible":true}],
					"id":43664,"slug":"object-oriented-ruby",
						"title":"Object Oriented Ruby","completed_all":false,"started_any":true,"visible":true},{

    "units":[{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533604576.46821","viewed":true,"github_repo_name":"learn-co-curriculum/sql-topic-introduction","content_type":"Readme",
					"id":43753,"slug":"what-is-sql",
						"title":"What is SQL ","visible":true}],
					"id":43752,"slug":"topic-introduction",
						"title":"Topic Introduction","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533604576.63681","viewed":true,"github_repo_name":"learn-co-curriculum/sql-intro-and-installation-readme","content_type":"Readme",
					"id":43755,"slug":"sql-intro-and-installation",
						"title":"SQL Intro and Installation","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605033.36992","viewed":true,"github_repo_name":"learn-co-curriculum/sql-database-basics-readme","content_type":"Readme",
					"id":43756,"slug":"sql-database-basics",
						"title":"SQL Database Basics","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605033.60788","viewed":true,"github_repo_name":"learn-co-curriculum/sql-databases-and-text-editors-readme","content_type":"Readme",
					"id":43757,"slug":"sql-databases-and-text-editors",
						"title":"SQL Databases and Text Editors","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605033.66692","viewed":true,"github_repo_name":"learn-co-curriculum/sql-sqlite-data-types-readme","content_type":"Readme",
					"id":43758,"slug":"sql-data-types",
						"title":"SQL Data Types","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605065.96972","viewed":true,"github_repo_name":"learn-co-curriculum/sql-insert-select-update-code-along","content_type":"Readme",
					"id":43759,"slug":"sql-inserting-updating-and-selecting",
						"title":"SQL Inserting, Updating, and Selecting","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605080.21815","viewed":true,"github_repo_name":"learn-co-curriculum/sql-queries-basic-readme","content_type":"Readme",
					"id":43760,"slug":"basic-sql-queries",
						"title":"Basic SQL Queries","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605084.17761","viewed":true,"github_repo_name":"learn-co-curriculum/sql-aggregate-functions-readme","content_type":"Readme",
					"id":43761,"slug":"sql-aggregate-functions",
						"title":"SQL Aggregate Functions","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605084.22023","viewed":true,"github_repo_name":"learn-co-curriculum/sql-aggregate-functions-lab","content_type":"Lab",
					"id":43762,"slug":"sql-aggregate-functions-lab",
						"title":"SQL Aggregate Functions Lab ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605086.70635","viewed":true,"github_repo_name":"learn-co-curriculum/SQL-bear-organizer-lab","content_type":"Lab",
					"id":43763,"slug":"sql-bear-organizer-lab",
						"title":"SQL Bear Organizer Lab","visible":true}],
					"id":43754,"slug":"getting-started",
						"title":"Getting Started","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533605116.1467","viewed":true,"github_repo_name":"learn-co-curriculum/sql-relational-databases-readme","content_type":"Readme",
					"id":43765,"slug":"edgar-codd-and-table-relations",
						"title":"Edgar Codd and Table Relations","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605118.22675","viewed":true,"github_repo_name":"learn-co-curriculum/sql-table-relations-readme","content_type":"Readme",
					"id":43766,"slug":"table-relations",
						"title":"Table Relations","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605133.32194","viewed":true,"github_repo_name":"learn-co-curriculum/sql-joins-readme","content_type":"Readme",
					"id":43767,"slug":"sql-joins",
						"title":"SQL JOINS","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605154.11063","viewed":true,"github_repo_name":"learn-co-curriculum/sql-complex-joins-readme","content_type":"Readme",
					"id":43768,"slug":"sql-complex-joins",
						"title":"SQL Complex Joins","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605156.61857","viewed":true,"github_repo_name":"learn-co-curriculum/sql-join-tables-readme","content_type":"Readme",
					"id":43769,"slug":"sql-join-tables",
						"title":"SQL Join Tables","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605158.85049","viewed":true,"github_repo_name":"learn-co-curriculum/sql-grouping-and-sorting-readme","content_type":"Readme",
					"id":43770,"slug":"grouping-and-sorting-data",
						"title":"Grouping and Sorting Data","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605147.69326","viewed":true,"github_repo_name":"learn-co-curriculum/sql-joins-review-lectures","content_type":"Readme",
					"id":43771,"slug":"sql-joins-review-lectures",
						"title":"SQL Joins Review Lectures","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605158.884","viewed":true,"github_repo_name":"learn-co-curriculum/sql-crowdfunding-lab","content_type":"Lab",
					"id":43772,"slug":"sql-crowdfunding-lab",
						"title":"SQL Crowdfunding Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605168.95985","viewed":true,"github_repo_name":"learn-co-curriculum/sql-library-lab","content_type":"Lab",
					"id":43773,"slug":"sql-library-lab",
						"title":"SQL Library Lab","visible":true}],
					"id":43764,"slug":"table-relations",
						"title":"Table Relations","completed_all":true,"started_any":true,"visible":true}],
					"id":43751,"slug":"sql-structured-query-language",
						"title":"SQL (Structured Query Language)","completed_all":true,"started_any":true,"visible":true},{

    "units":[{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533604904.72016","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-orm","content_type":"Readme",
					"id":43776,"slug":"why-an-orm-is-useful",
						"title":"Why an ORM is Useful","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608125.41908","viewed":true,"github_repo_name":"learn-co-curriculum/pokemon-scraper","content_type":"Lab",
					"id":43777,"slug":"pokemon-scraper-lab",
						"title":"Pokemon Scraper Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605559.06703","viewed":true,"github_repo_name":"learn-co-curriculum/orm-mapping-to-tables","content_type":"Readme",
					"id":43778,"slug":"mapping-ruby-classes-to-database-tables",
						"title":"Mapping Ruby Classes to Database Tables","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608126.7577","viewed":true,"github_repo_name":"learn-co-curriculum/orm-mapping-to-table-lab","content_type":"Lab",
					"id":43779,"slug":"mapping-classes-to-tables-lab",
						"title":"Mapping Classes to Tables Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608159.56138","viewed":true,"github_repo_name":"learn-co-curriculum/orm-mapping-db-to-ruby-object","content_type":"Readme",
					"id":43780,"slug":"mapping-database-tables-to-ruby-objects",
						"title":"Mapping Database Tables to Ruby Objects","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608159.65224","viewed":true,"github_repo_name":"learn-co-curriculum/orm-mapping-db-to-ruby-object-lab","content_type":"Lab",
					"id":43781,"slug":"mapping-database-rows-to-objects-lab",
						"title":"Mapping Database Rows to Objects Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608178.0613","viewed":true,"github_repo_name":"learn-co-curriculum/orm-updating-records","content_type":"Readme",
					"id":43782,"slug":"updating-records-in-an-orm",
						"title":"Updating Records in an ORM","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608274.88518","viewed":true,"github_repo_name":"learn-co-curriculum/orm-update-lab","content_type":"Lab",
					"id":43783,"slug":"updating-records-in-an-orm-lab",
						"title":"Updating Records in an ORM Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608284.10236","viewed":true,"github_repo_name":"learn-co-curriculum/orm-find-or-create-by","content_type":"Readme",
					"id":43784,"slug":"preventing-record-duplication",
						"title":"Preventing Record Duplication","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608416.19853","viewed":true,"github_repo_name":"learn-co-curriculum/bringing-it-all-together","content_type":"Lab",
					"id":43785,"slug":"orms-lab-bringing-it-all-together",
						"title":"ORMs Lab: Bringing It All Together","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608444.36801","viewed":true,"github_repo_name":"learn-co-curriculum/dynamic-orms-readme","content_type":"Lab",
					"id":43786,"slug":"dynamic-orms",
						"title":"Dynamic ORMs","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608445.20797","viewed":true,"github_repo_name":"learn-co-curriculum/dynamic-orm-inheritance","content_type":"Lab",
					"id":43787,"slug":"dynamic-orms-with-inheritance",
						"title":"Dynamic ORMs with Inheritance","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608182.93564","viewed":true,"github_repo_name":"learn-co-curriculum/orm-video-review-orms-and-sql-joins","content_type":"Readme",
					"id":43788,"slug":"video-review-orms-and-sql-joins",
						"title":"Video Review: ORMs and SQL Joins","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608445.42021","viewed":true,"github_repo_name":"learn-co-curriculum/dynamic-orm-lab","content_type":"Lab",
					"id":43789,"slug":"dynamic-orm-lab",
						"title":"Dynamic ORM Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608286.72536","viewed":true,"github_repo_name":"learn-co-curriculum/orm-video-review-building-a-metaprogrammed-abstract-orm","content_type":"Readme",
					"id":43790,"slug":"video-review-building-a-metaprogrammed-abstract-orm",
						"title":"Video Review: Building a Metaprogrammed Abstract ORM","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608293.21319","viewed":true,"github_repo_name":"learn-co-curriculum/orm-video-review-codealong-building-a-room-scraper-and-orm","content_type":"Readme",
					"id":43791,"slug":"video-review-codealong-building-a-room-scraper-and-orm",
						"title":"Video Review: Codealong- Building a Room Scraper and ORM","visible":true}],
					"id":43775,"slug":"orms",
						"title":"ORMs","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533608296.30526","viewed":true,"github_repo_name":"learn-co-curriculum/active-record-mechanics-crud","content_type":"Readme",
					"id":43793,"slug":"activerecord-mechanics",
						"title":"ActiveRecord Mechanics","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608296.35576","viewed":true,"github_repo_name":"learn-co-curriculum/translating-orm-to-ar","content_type":"Lab",
					"id":43794,"slug":"translating-from-orm-to-activerecord",
						"title":"Translating from ORM to ActiveRecord","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608296.67263","viewed":true,"github_repo_name":"learn-co-curriculum/intro-to-rake","content_type":"Lab",
					"id":43795,"slug":"intro-to-rake",
						"title":"Intro to Rake","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608350.58485","viewed":true,"github_repo_name":"learn-co-curriculum/mechanics-of-migrations","content_type":"Lab",
					"id":43796,"slug":"mechanics-of-migrations",
						"title":"Mechanics of Migrations","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608350.60281","viewed":true,"github_repo_name":"learn-co-curriculum/writing-migrations","content_type":"Lab",
					"id":43797,"slug":"writing-our-own-migrations",
						"title":"Writing Our Own Migrations","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608352.24955","viewed":true,"github_repo_name":"learn-co-curriculum/activerecord-costume-store-todo","content_type":"Lab",
					"id":43798,"slug":"migrations-and-active-record-lab",
						"title":"Migrations and Active Record Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608354.31535","viewed":true,"github_repo_name":"learn-co-curriculum/activerecord-crud","content_type":"Lab",
					"id":43799,"slug":"activerecord-crud-lab",
						"title":"ActiveRecord CRUD Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608510.21535","viewed":true,"github_repo_name":"learn-co-curriculum/activerecord-tvshow","content_type":"Lab",
					"id":43800,"slug":"advanced-finding-lab",
						"title":"Advanced Finding Lab","visible":true}],
					"id":43792,"slug":"activerecord",
						"title":"ActiveRecord","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533608461.35988","viewed":true,"github_repo_name":"learn-co-curriculum/activerecord-associations-intro","content_type":"Lab",
					"id":43802,"slug":"activerecord-associations",
						"title":"ActiveRecord Associations","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608461.76222","viewed":true,"github_repo_name":"learn-co-curriculum/Active-Record-Association-Methods","content_type":"Lab",
					"id":43803,"slug":"activerecord-associations-lab",
						"title":"ActiveRecord Associations Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608462.02191","viewed":true,"github_repo_name":"learn-co-curriculum/activerecord-tvland","content_type":"Lab",
					"id":43804,"slug":"activerecord-associations-lab-ii",
						"title":"ActiveRecord Associations Lab II ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608464.29905","viewed":true,"github_repo_name":"learn-co-curriculum/activerecord-associations-video-review","content_type":"Readme",
					"id":43805,"slug":"activerecord-associations-video-review",
						"title":"ActiveRecord Associations Video Review","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608478.81906","viewed":true,"github_repo_name":"learn-co-curriculum/activerecord-associations-video-review-ii","content_type":"Readme",
					"id":43806,"slug":"activerecord-associations-video-review-ii",
						"title":"ActiveRecord Associations Video Review II","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608482.52542","viewed":true,"github_repo_name":"learn-co-curriculum/activerecord-associations-video-review-aliasing-activerecord-associations","content_type":"Readme",
					"id":43807,"slug":"video-review-aliasing-activerecord-associations",
						"title":"Video Review: Aliasing ActiveRecord Associations","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608482.36662","viewed":true,"github_repo_name":"learn-co-curriculum/activerecord-associations-video-review-blog-cli-with-activerecord-and-associations","content_type":"Readme",
					"id":43808,"slug":"video-review-blog-cli-with-activerecord-and-associations",
						"title":"Video Review: Blog CLI with ActiveRecord and Associations","visible":true}],
					"id":43801,"slug":"associations",
						"title":"Associations","completed_all":true,"started_any":true,"visible":true}],
					"id":43774,"slug":"orms-and-activerecord",
						"title":"ORMs and ActiveRecord","completed_all":true,"started_any":true,"visible":true},{

    "units":[{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533604957.46825","viewed":true,"github_repo_name":"learn-co-curriculum/how-the-web-works-readme","content_type":"Readme",
					"id":43811,"slug":"how-the-internet-works",
						"title":"How the Internet Works","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604957.50825","viewed":true,"github_repo_name":"learn-co-curriculum/why-layers-of-abstraction","content_type":"Readme",
					"id":43812,"slug":"increasing-layers-of-abstraction",
						"title":"Increasing Layers of Abstraction","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608498.01799","viewed":true,"github_repo_name":"learn-co-curriculum/rack-intro","content_type":"Lab",
					"id":43813,"slug":"inspecting-the-web-with-rack",
						"title":"Inspecting the Web with Rack","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608498.0802","viewed":true,"github_repo_name":"learn-co-curriculum/rack-dynamic-web-apps","content_type":"Lab",
					"id":43814,"slug":"dynamic-web-apps-with-rack",
						"title":"Dynamic Web Apps with Rack ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608508.49536","viewed":true,"github_repo_name":"learn-co-curriculum/rack-responses-lab","content_type":"Lab",
					"id":43815,"slug":"rack-responses-lab",
						"title":"Rack Responses Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608509.8988","viewed":true,"github_repo_name":"learn-co-curriculum/rack-http-request-readme","content_type":"Readme",
					"id":43816,"slug":"the-http-request",
						"title":"The HTTP Request","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608563.36399","viewed":true,"github_repo_name":"learn-co-curriculum/rack-get-params-lab","content_type":"Lab",
					"id":43817,"slug":"rack-routes-and-get-params-lab",
						"title":"Rack Routes and GET Params Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608566.08601","viewed":true,"github_repo_name":"learn-co-curriculum/rack-dynamic-paths-readme","content_type":"Readme",
					"id":43818,"slug":"dynamic-url-routes",
						"title":"Dynamic URL Routes","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608517.17405","viewed":true,"github_repo_name":"learn-co-curriculum/rack-status-codes-readme","content_type":"Readme",
					"id":43819,"slug":"http-status-codes",
						"title":"HTTP Status Codes","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608566.41604","viewed":true,"github_repo_name":"learn-co-curriculum/rack-dynamic-routes-lab","content_type":"Lab",
					"id":43820,"slug":"dynamic-urls-and-status-codes-lab",
						"title":"Dynamic URLs and Status Codes Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608365.34728","viewed":true,"github_repo_name":"learn-co-curriculum/rack-video-review-how-the-web-works-pt-1","content_type":"Readme",
					"id":43821,"slug":"video-review-how-the-web-works-pt-1",
						"title":"Video Review: How The Web Works, Pt 1","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608524.25495","viewed":true,"github_repo_name":"learn-co-curriculum/rack-video-review-how-the-web-works-pt-2","content_type":"Readme",
					"id":43822,"slug":"video-review-how-the-web-works-pt-2",
						"title":"Video Review: How the Web Works, Pt 2","visible":true}],
					"id":43810,"slug":"rack-and-the-internet",
						"title":"Rack and the Internet","completed_all":true,"started_any":true,"visible":true}],
					"id":43809,"slug":"rack",
						"title":"Rack","completed_all":true,"started_any":true,"visible":true},{

    "units":[{
      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601728.38159","viewed":true,"github_repo_name":"learn-co-curriculum/how-the-web-works","content_type":"Readme",
					"id":43825,"slug":"how-the-web-works",
						"title":"How the Web Works","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601728.53314","viewed":true,"github_repo_name":"learn-co-curriculum/site-planning","content_type":"Readme",
					"id":43826,"slug":"site-planning",
						"title":"Site Planning","visible":true}],
					"id":43824,"slug":"web-fundamentals",
						"title":"Web Fundamentals","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533601729.44585","viewed":true,"github_repo_name":"learn-co-curriculum/html-fundamentals","content_type":"Readme",
					"id":43828,"slug":"html-fundamentals",
						"title":"HTML Fundamentals","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601788.33976","viewed":true,"github_repo_name":"learn-co-curriculum/setting-up-a-new-site","content_type":"Readme",
					"id":43829,"slug":"setting-up-a-new-site",
						"title":"Setting Up a New Site","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601809.87984","viewed":true,"github_repo_name":"learn-co-curriculum/document-structure","content_type":"Readme",
					"id":43830,"slug":"document-structure",
						"title":"Document Structure","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601810.06576","viewed":true,"github_repo_name":"learn-co-curriculum/text-formatting","content_type":"Readme",
					"id":43831,"slug":"text-formatting",
						"title":"Text Formatting","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601810.10003","viewed":true,"github_repo_name":"learn-co-curriculum/html-lists","content_type":"Lab",
					"id":43832,"slug":"html-lists",
						"title":"HTML Lists","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601810.22109","viewed":true,"github_repo_name":"learn-co-curriculum/html-tables","content_type":"Readme",
					"id":43833,"slug":"html-tables",
						"title":"HTML Tables","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601837.33157","viewed":true,"github_repo_name":"learn-co-curriculum/html-images","content_type":"Readme",
					"id":43834,"slug":"html-images",
						"title":"HTML Images","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601837.36522","viewed":true,"github_repo_name":"learn-co-curriculum/html-links","content_type":"Readme",
					"id":43835,"slug":"html-links",
						"title":"HTML Links","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601837.46285","viewed":true,"github_repo_name":"learn-co-curriculum/html-backing-up-changes","content_type":"Readme",
					"id":43836,"slug":"html-backing-up-changes",
						"title":"HTML Backing Up Changes","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601837.56771","viewed":true,"github_repo_name":"learn-co-curriculum/html-validation","content_type":"Readme",
					"id":43837,"slug":"html-validation",
						"title":"HTML Validation","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601837.59776","viewed":true,"github_repo_name":"learn-co-curriculum/quiz-html-fundamentals","content_type":"Readme",
					"id":43838,"slug":"html-fundamentals-quiz",
						"title":"HTML Fundamentals Quiz","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601837.93361","viewed":true,"github_repo_name":"learn-co-curriculum/dev-tools-super-power","content_type":"Readme",
					"id":43839,"slug":"dev-tools-super-power",
						"title":"Dev Tools Super Power","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601837.94407","viewed":true,"github_repo_name":"learn-co-curriculum/html-album-cover","content_type":"Lab",
					"id":43840,"slug":"html-album-cover",
						"title":"HTML Album Cover","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533601838.12269","viewed":true,"github_repo_name":"learn-co-curriculum/riyadh-blog","content_type":"Lab",
					"id":43841,"slug":"html-riyadh-blog",
						"title":"HTML Riyadh Blog","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602012.00319","viewed":true,"github_repo_name":"learn-co-curriculum/html-issue-bot-9000","content_type":"Lab",
					"id":43842,"slug":"html-issue-bot-9000",
						"title":"HTML Issue Bot 9000","visible":true}],
					"id":43827,"slug":"html-fundamentals",
						"title":"HTML Fundamentals","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533602012.12216","viewed":true,"github_repo_name":"learn-co-curriculum/site-publishing-to-ftp","content_type":"Readme",
					"id":43844,"slug":"site-publishing-to-ftp",
						"title":"Site Publishing to FTP","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602012.16331","viewed":true,"github_repo_name":"learn-co-curriculum/site-publishing-to-github-pages","content_type":"Readme",
					"id":43845,"slug":"site-publishing-to-github-pages",
						"title":"Site Publishing to Github Pages","visible":true}],
					"id":43843,"slug":"site-publishing",
						"title":"Site Publishing","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533602012.23183","viewed":true,"github_repo_name":"learn-co-curriculum/HTML-Forms-and-iFrames","content_type":"Readme",
					"id":43847,"slug":"html-forms-and-iframes",
						"title":"HTML Forms and iFrames","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602023.592","viewed":true,"github_repo_name":"learn-co-curriculum/html-map-contact-form-code-along","content_type":"Lab",
					"id":43848,"slug":"html-map-contact-form-code-along",
						"title":"HTML Map Contact Form Code Along","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602024.24272","viewed":true,"github_repo_name":"learn-co-curriculum/HTML5-Media","content_type":"Readme",
					"id":43849,"slug":"html5-media",
						"title":"HTML5 Media ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602038.95071","viewed":true,"github_repo_name":"learn-co-curriculum/html5-video-embed-code-along","content_type":"Lab",
					"id":43850,"slug":"html5-video-embed-codealong",
						"title":"HTML5 Video Embed Codealong","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602039.84693","viewed":true,"github_repo_name":"learn-co-curriculum/HTML5-Semantic-Elements","content_type":"Readme",
					"id":43851,"slug":"html5-semantic-elements",
						"title":"HTML5 Semantic Elements","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602157.60909","viewed":true,"github_repo_name":"learn-co-curriculum/html5-semantic-containers-code-along","content_type":"Lab",
					"id":43852,"slug":"html5-semantic-elements-code-along",
						"title":"HTML5 Semantic Elements Code Along","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533602159.18258","viewed":true,"github_repo_name":"learn-co-curriculum/quiz-html5","content_type":"Readme",
					"id":43853,"slug":"html5-quiz",
						"title":"HTML5 Quiz","visible":true}],
					"id":43846,"slug":"html5",
						"title":"HTML5","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533602162.09143","viewed":true,"github_repo_name":"learn-co-curriculum/CSS-Fundamentals","content_type":"Readme",
					"id":43855,"slug":"css-fundamentals",
						"title":"CSS Fundamentals","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603281.37241","viewed":true,"github_repo_name":"learn-co-curriculum/CSS-Styling","content_type":"Lab",
					"id":43856,"slug":"css-styling-code-along",
						"title":"CSS Styling Code-Along","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603282.85403","viewed":true,"github_repo_name":"learn-co-curriculum/quiz-css-fundamentals","content_type":"Readme",
					"id":43857,"slug":"css-fundamentals-quiz",
						"title":"CSS Fundamentals Quiz","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604449.41719","viewed":true,"github_repo_name":"learn-co-curriculum/my-little-rainbow","content_type":"Readme",
					"id":43858,"slug":"my-little-rainbow",
						"title":"My Little Rainbow","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604449.83987","viewed":true,"github_repo_name":"learn-co-curriculum/css-kitten-wheelbarrow","content_type":"Lab",
					"id":43859,"slug":"css-kitten-wheelbarrow",
						"title":"CSS Kitten Wheelbarrow","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604573.6937","viewed":true,"github_repo_name":"learn-co-curriculum/css-graffiti-override","content_type":"Lab",
					"id":43860,"slug":"css-graffiti-override",
						"title":"CSS Graffiti Override","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604575.60891","viewed":true,"github_repo_name":"learn-co-curriculum/css-issue-bot-9000","content_type":"Lab",
					"id":43861,"slug":"css-issue-bot-9000",
						"title":"CSS Issue Bot 9000","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604575.95257","viewed":true,"github_repo_name":"learn-co-curriculum/learn-deploy-on-day-one","content_type":"Lab",
					"id":43862,"slug":"deploy-your-profile-page",
						"title":"Deploy Your Profile Page","visible":true}],
					"id":43854,"slug":"css",
						"title":"CSS","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533603824.50968","viewed":true,"github_repo_name":"learn-co-curriculum/Box-Model","content_type":"Readme",
					"id":43864,"slug":"box-model",
						"title":"Box Model","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603824.80924","viewed":true,"github_repo_name":"learn-co-curriculum/layout-types","content_type":"Readme",
					"id":43865,"slug":"layout-types",
						"title":"Layout Types","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603959.31209","viewed":true,"github_repo_name":"learn-co-curriculum/overflow","content_type":"Readme",
					"id":43866,"slug":"overflow",
						"title":"Overflow","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603959.47871","viewed":true,"github_repo_name":"learn-co-curriculum/fluid-height","content_type":"Readme",
					"id":43867,"slug":"fluid-height",
						"title":"Fluid Height","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603960.07521","viewed":true,"github_repo_name":"learn-co-curriculum/display","content_type":"Readme",
					"id":43868,"slug":"display",
						"title":"Display","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603971.93353","viewed":true,"github_repo_name":"learn-co-curriculum/float","content_type":"Readme",
					"id":43869,"slug":"float",
						"title":"Float","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533603972.2536","viewed":true,"github_repo_name":"learn-co-curriculum/clearfix","content_type":"Readme",
					"id":43870,"slug":"clearfix",
						"title":"Clearfix","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604330.97035","viewed":true,"github_repo_name":"learn-co-curriculum/centering","content_type":"Readme",
					"id":43871,"slug":"centering",
						"title":"Centering","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604343.77381","viewed":true,"github_repo_name":"learn-co-curriculum/column-structure","content_type":"Readme",
					"id":43872,"slug":"column-structure",
						"title":"Column Structure","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604353.78618","viewed":true,"github_repo_name":"learn-co-curriculum/positioning","content_type":"Readme",
					"id":43873,"slug":"positioning",
						"title":"Positioning","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604402.93301","viewed":true,"github_repo_name":"learn-co-curriculum/z-index","content_type":"Readme",
					"id":43874,"slug":"z-index",
						"title":"Z Index","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604632.63881","viewed":true,"github_repo_name":"learn-co-curriculum/Codealong-Creating-Columns","content_type":"Lab",
					"id":43875,"slug":"codealong-creating-columns",
						"title":"Codealong Creating Columns","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604687.40826","viewed":true,"github_repo_name":"learn-co-curriculum/quiz-css-layout","content_type":"Readme",
					"id":43876,"slug":"css-layout-quiz",
						"title":"CSS Layout Quiz","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604717.99667","viewed":true,"github_repo_name":"learn-co-curriculum/fe-zetsy","content_type":"Lab",
					"id":43877,"slug":"zetsy",
						"title":"Zetsy","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604899.7046","viewed":true,"github_repo_name":"learn-co-curriculum/hs-zhw-shoes-layout","content_type":"Lab",
					"id":43878,"slug":"zhw-shoes-layout",
						"title":"ZHW Shoes Layout","visible":true}],
					"id":43863,"slug":"page-layout",
						"title":"Page Layout","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533604718.12768","viewed":true,"github_repo_name":"learn-co-curriculum/box-style-codealong","content_type":"Lab",
					"id":43880,"slug":"box-style-codealong",
						"title":"Box Style Codealong","visible":true}],
					"id":43879,"slug":"box-styles",
						"title":"Box Styles","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533604432.67822","viewed":true,"github_repo_name":"learn-co-curriculum/building-responsive-sites","content_type":"Readme",
					"id":43882,"slug":"building-responsive-sites",
						"title":"Building Responsive Sites","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604437.71632","viewed":true,"github_repo_name":"learn-co-curriculum/media-queries","content_type":"Readme",
					"id":43883,"slug":"media-queries",
						"title":"Media Queries","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604438.10276","viewed":true,"github_repo_name":"learn-co-curriculum/responsive-media","content_type":"Readme",
					"id":43884,"slug":"responsive-media",
						"title":"Responsive Media","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604607.73311","viewed":true,"github_repo_name":"learn-co-curriculum/responsive-type","content_type":"Readme",
					"id":43885,"slug":"responsive-type",
						"title":"Responsive Type","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604607.86424","viewed":true,"github_repo_name":"learn-co-curriculum/responsive-layout","content_type":"Readme",
					"id":43886,"slug":"responsive-layout",
						"title":"Responsive Layout","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604607.90156","viewed":true,"github_repo_name":"learn-co-curriculum/viewport","content_type":"Readme",
					"id":43887,"slug":"viewport",
						"title":"Viewport","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604607.97858","viewed":true,"github_repo_name":"learn-co-curriculum/fe-quiz-05","content_type":"Readme",
					"id":43888,"slug":"responsive-layout-quiz",
						"title":"Responsive Layout Quiz","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604939.06433","viewed":true,"github_repo_name":"learn-co-curriculum/adding-responsive-features","content_type":"Lab",
					"id":43889,"slug":"adding-responsive-features-codealong",
						"title":"Adding Responsive Features Codealong","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604935.4148","viewed":true,"github_repo_name":"learn-co-curriculum/animal-save","content_type":"Lab",
					"id":43890,"slug":"animal-save",
						"title":"Animal Save","visible":true}],
					"id":43881,"slug":"responsive-layout",
						"title":"Responsive Layout","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533604608.15832","viewed":true,"github_repo_name":"learn-co-curriculum/bootstrap-introduction","content_type":"Readme",
					"id":43892,"slug":"introduction-to-bootstrap",
						"title":"Introduction to Bootstrap","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604609.08537","viewed":true,"github_repo_name":"learn-co-curriculum/bootstrap-codealong","content_type":"Readme",
					"id":43893,"slug":"bootstrap-codealong",
						"title":"Bootstrap Codealong","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604609.33676","viewed":true,"github_repo_name":"learn-co-curriculum/bootstrap-grid-system","content_type":"Readme",
					"id":43894,"slug":"bootstrap-grid-system",
						"title":"Bootstrap Grid System","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604938.34344","viewed":true,"github_repo_name":"learn-co-curriculum/layouts-grids-code-along","content_type":"Lab",
					"id":43895,"slug":"layout-grids-codealong",
						"title":"Layout Grids Codealong","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533604610.00786","viewed":true,"github_repo_name":"learn-co-curriculum/bootstrap-navbar-code-along","content_type":"Lab",
					"id":43896,"slug":"bootstrap-navbar-codealong",
						"title":"Bootstrap Navbar Codealong","visible":true}],
					"id":43891,"slug":"bootstrap-framework",
						"title":"Bootstrap Framework","completed_all":true,"started_any":true,"visible":true}],
					"id":43823,"slug":"html-and-css-continued",
						"title":"HTML and CSS continued","completed_all":true,"started_any":true,"visible":true},{

    "units":[{
      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533608483.26328","viewed":true,"github_repo_name":"learn-co-curriculum/what-is-sinatra","content_type":"Readme",
					"id":43899,"slug":"what-is-sinatra",
						"title":"What is Sinatra?","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608484.97474","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-from-scratch-readme","content_type":"Readme",
					"id":43900,"slug":"sinatra-from-scratch",
						"title":"Sinatra from Scratch","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608497.09634","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-basics","content_type":"Readme",
					"id":43901,"slug":"sinatra-basics",
						"title":"Sinatra Basics","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608497.10476","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-shotgun-server","content_type":"Lab",
					"id":43902,"slug":"using-the-shotgun-development-server",
						"title":"Using the Shotgun Development Server","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608603.75526","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-hello-world-basics","content_type":"Lab",
					"id":43903,"slug":"sinatra-hello-world-lab",
						"title":"Sinatra \"Hello World\" Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608605.08521","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-routes-readme","content_type":"Readme",
					"id":43904,"slug":"sinatra-routes",
						"title":"Sinatra Routes","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608605.12572","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-basic-routes-lab","content_type":"Lab",
					"id":43905,"slug":"sinatra-basic-routes-lab",
						"title":"Sinatra Basic Routes Lab","visible":true}],
					"id":43898,"slug":"sinatra-basics",
						"title":"Sinatra Basics","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533608606.51648","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-intro-to-mvc","content_type":"Readme",
					"id":43907,"slug":"intro-to-mvc",
						"title":"Intro to MVC","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608607.18434","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-mvc-file-structure","content_type":"Lab",
					"id":43908,"slug":"sinatra-mvc-file-structure",
						"title":"Sinatra MVC File Structure","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608608.64543","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-views","content_type":"Lab",
					"id":43909,"slug":"sinatra-views",
						"title":"Sinatra Views","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608609.67394","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-basic-views-lab","content_type":"Lab",
					"id":43910,"slug":"sinatra-basic-views-lab",
						"title":"Sinatra Basic Views Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608655.17058","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-using-erb","content_type":"Readme",
					"id":43911,"slug":"using-erb",
						"title":"Using ERB","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608610.64824","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-views-lab","content_type":"Lab",
					"id":43912,"slug":"sinatra-views-lab-ii",
						"title":"Sinatra Views Lab II","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608657.57189","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-video-review-forms","content_type":"Readme",
					"id":43913,"slug":"video-review-forms",
						"title":"Video Review: Forms","visible":true}],
					"id":43906,"slug":"mvc-and-forms",
						"title":"MVC and Forms","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533608657.64828","viewed":true,"github_repo_name":"learn-co-curriculum/intro-to-capybara","content_type":"Lab",
					"id":43915,"slug":"intro-to-capybara-tests",
						"title":"Intro to Capybara Tests","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608699.60554","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-dynamic-routes-codealong","content_type":"Lab",
					"id":43916,"slug":"dynamic-routes",
						"title":"Dynamic Routes","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608700.12207","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-dynamic-routes-lab","content_type":"Lab",
					"id":43917,"slug":"dynamic-routes-lab",
						"title":"Dynamic Routes Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608714.71323","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-forms-params-readme-walkthrough","content_type":"Lab",
					"id":43918,"slug":"html-forms-and-params",
						"title":"HTML Forms and Params","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608715.15765","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-view-and-controller-readme-walkthrough","content_type":"Lab",
					"id":43919,"slug":"passing-data-between-views-and-controllers",
						"title":"Passing Data Between Views and Controllers","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608715.69469","viewed":true,"github_repo_name":"learn-co-curriculum/basic-sinatra-forms-lab","content_type":"Lab",
					"id":43920,"slug":"basic-sinatra-forms-lab",
						"title":"Basic Sinatra Forms Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608731.15574","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-yield-readme","content_type":"Readme",
					"id":43921,"slug":"layouts-and-yield",
						"title":"Layouts and Yield","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608731.67765","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-integrating-models-walkthrough","content_type":"Lab",
					"id":43922,"slug":"integrating-models-for-a-full-mvc",
						"title":"Integrating Models for a Full MVC","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608733.19668","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-mvc-lab","content_type":"Lab",
					"id":43923,"slug":"sinatra-mvc-lab",
						"title":"Sinatra MVC Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610559.73378","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-basic-forms-lab","content_type":"Lab",
					"id":43924,"slug":"sinatra-basic-forms-lab",
						"title":"Sinatra Basic Forms Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608745.69042","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-nested-forms-readme","content_type":"Lab",
					"id":43925,"slug":"sinatra-nested-forms",
						"title":"Sinatra Nested Forms","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610665.20539","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-nested-forms","content_type":"Lab",
					"id":43926,"slug":"sinatra-nested-forms-lab-pirates",
						"title":"Sinatra Nested Forms Lab: Pirates!","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610671.07532","viewed":true,"github_repo_name":"learn-co-curriculum/lab-review-sinatra-nested-forms-lab-pirates","content_type":"Readme",
					"id":43927,"slug":"lab-review-sinatra-nested-forms-lab-pirates",
						"title":"Lab Review-- Sinatra Nested Forms Lab: Pirates","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610688.74152","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-nested-forms-lab-superheros","content_type":"Lab",
					"id":43928,"slug":"sinatra-nested-forms-lab-superheros",
						"title":"Sinatra Nested Forms Lab: Superheros!","visible":true}],
					"id":43914,"slug":"forms",
						"title":"Forms ","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533608800.54855","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-cookies-readme","content_type":"Readme",
					"id":43930,"slug":"sessions-and-cookies",
						"title":"Sessions and Cookies","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608802.15145","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-mechanics-of-sessions-readme","content_type":"Readme",
					"id":43931,"slug":"mechanics-of-sessions",
						"title":"Mechanics of Sessions","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608836.2515","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-basic-sessions-lab","content_type":"Lab",
					"id":43932,"slug":"sinatra-sessions-lab",
						"title":"Sinatra Sessions Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608838.27854","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-sessions","content_type":"Lab",
					"id":43933,"slug":"sinatra-sessions-codealong",
						"title":"Sinatra Sessions Codealong","visible":true}],
					"id":43929,"slug":"sessions",
						"title":"Sessions","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533608839.66234","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-activerecord-setup","content_type":"Lab",
					"id":43935,"slug":"activerecord-setup-in-sinatra",
						"title":"ActiveRecord Setup in Sinatra","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608844.2303","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-activerecord-reading","content_type":"Readme",
					"id":43936,"slug":"activerecord-in-sinatra",
						"title":"ActiveRecord in Sinatra","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608845.60992","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-ar-crud-lab","content_type":"Lab",
					"id":43937,"slug":"sinatra-activerecord-crud",
						"title":"Sinatra ActiveRecord CRUD","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610722.04435","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-user-auth","content_type":"Lab",
					"id":43938,"slug":"user-authentication-in-sinatra",
						"title":"User Authentication in Sinatra","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610722.69825","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-logging-in-and-out","content_type":"Lab",
					"id":43939,"slug":"sinatra-sessions-lab-user-logins",
						"title":"Sinatra Sessions Lab- User Logins","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610725.38179","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-password-security","content_type":"Lab",
					"id":43940,"slug":"securing-passwords-in-sinatra",
						"title":"Securing Passwords in Sinatra","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610727.15059","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-secure-password-lab","content_type":"Lab",
					"id":43941,"slug":"secure-password-lab",
						"title":"Secure Password Lab ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610741.88003","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-video-review-authentication","content_type":"Readme",
					"id":43942,"slug":"video-review-authentication",
						"title":"Video Review: Authentication","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610741.86636","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-restful-routes-readme","content_type":"Readme",
					"id":43943,"slug":"sinatra-restful-routes",
						"title":"Sinatra RESTful Routes","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610742.78352","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-restful-routes-lab","content_type":"Lab",
					"id":43944,"slug":"sinatra-restful-routes-lab",
						"title":"Sinatra RESTful Routes Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610754.58065","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-activerecord-using-tux","content_type":"Lab",
					"id":43945,"slug":"using-tux-in-sinatra-with-activerecord",
						"title":"Using Tux in Sinatra with ActiveRecord","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610756.7607","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-activerecord-associations","content_type":"Lab",
					"id":43946,"slug":"activerecord-associations-in-sinatra",
						"title":"ActiveRecord Associations in Sinatra","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610758.94292","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-activerecord-associations-join-tables","content_type":"Readme",
					"id":43947,"slug":"activerecord-associations-join-tables",
						"title":"ActiveRecord Associations: Join Tables","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610761.95263","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-multiple-controllers","content_type":"Readme",
					"id":43948,"slug":"sinatra-multiple-controllers",
						"title":"Sinatra Multiple Controllers","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610785.01174","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-complex-forms-associations","content_type":"Lab",
					"id":43949,"slug":"sinatra-complex-forms-associations",
						"title":"Sinatra Complex Forms Associations","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610800.60558","viewed":true,"github_repo_name":"learn-co-curriculum/playlister-sinatra","content_type":"Lab",
					"id":43950,"slug":"sinatra-playlister",
						"title":"Sinatra Playlister","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610800.62596","viewed":true,"github_repo_name":"learn-co-curriculum/nyc-sinatra","content_type":"Lab",
					"id":43951,"slug":"sinatra-nyc",
						"title":"Sinatra NYC","visible":true}],
					"id":43934,"slug":"activerecord",
						"title":"ActiveRecord","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533608765.34085","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-video-review-building-a-site-generator-part-1","content_type":"Readme",
					"id":43953,"slug":"video-review-building-a-site-generator-part-1",
						"title":"Video Review: Building a Site Generator, Part 1","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533608730.13334","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-video-review-building-a-site-generator-part-2","content_type":"Readme",
					"id":43954,"slug":"video-review-building-a-site-generator-part-2",
						"title":"Video Review: Building a Site Generator, Part 2","visible":true}],
					"id":43952,"slug":"erb-outside-of-sinatra",
						"title":"ERB Outside of Sinatra","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533610998.43991","viewed":true,"github_repo_name":"learn-co-curriculum/sinatra-fwitter-group-project","content_type":"Project",
					"id":43956,"slug":"fwitter",
						"title":"Fwitter","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/sinatra-cms-app-assessment","content_type":"Lab",
					"id":43957,"slug":"sinatra-portfolio-project",
						"title":"Sinatra Portfolio Project","visible":true}],
					"id":43955,"slug":"sinatra-project-mode",
						"title":"Sinatra Project Mode","completed_all":false,"started_any":true,"visible":true}],
					"id":43897,"slug":"sinatra",
						"title":"Sinatra","completed_all":false,"started_any":true,"visible":true},{

    "units":[{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533605559.65617","viewed":true,"github_repo_name":"learn-co-curriculum/intro-to-rails","content_type":"Readme",
					"id":43960,"slug":"intro-to-rails",
						"title":"Intro to Rails ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533605559.76998","viewed":true,"github_repo_name":"learn-co-curriculum/rails-application-basics-readme","content_type":"Readme",
					"id":43961,"slug":"rails-application-basics",
						"title":"Rails Application Basics","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533609839.01697","viewed":true,"github_repo_name":"learn-co-curriculum/rails-model-view-controller-readme","content_type":"Readme",
					"id":43962,"slug":"rails-mvc",
						"title":"Rails MVC","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533609854.50361","viewed":true,"github_repo_name":"learn-co-curriculum/rails-static-request-readme","content_type":"Readme",
					"id":43963,"slug":"rails-static-request",
						"title":"Rails Static Request","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610953.94426","viewed":true,"github_repo_name":"learn-co-curriculum/rails-hello-world-lab","content_type":"Lab",
					"id":43964,"slug":"rails-hello-world",
						"title":"Rails Hello World","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610964.60749","viewed":true,"github_repo_name":"learn-co-curriculum/rails-video-review-intro-to-rails","content_type":"Readme",
					"id":43965,"slug":"video-review-intro-to-rails",
						"title":"Video Review: Intro to Rails","visible":true}],
					"id":43959,"slug":"introduction-to-rails",
						"title":"Introduction to Rails","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533611013.16351","viewed":true,"github_repo_name":"learn-co-curriculum/rails-activerecord-models-and-rails-readme","content_type":"Readme",
					"id":43967,"slug":"activerecord-models-and-rails",
						"title":"ActiveRecord Models and Rails","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611013.18929","viewed":true,"github_repo_name":"learn-co-curriculum/rails-activerecord-model-rails-lab","content_type":"Lab",
					"id":43968,"slug":"activerecord-models-and-rails-lab",
						"title":"ActiveRecord Models and Rails Lab","visible":true}],
					"id":43966,"slug":"rails-models-basics",
						"title":"Rails Models Basics","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533610841.24363","viewed":true,"github_repo_name":"learn-co-curriculum/rails-intro-to-rest","content_type":"Readme",
					"id":43970,"slug":"intro-to-rest",
						"title":"Intro to Rest","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611013.96506","viewed":true,"github_repo_name":"learn-co-curriculum/rails-restful-index-action-lab","content_type":"Lab",
					"id":43971,"slug":"restful-action-index-lab",
						"title":"RESTful Action Index Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612552.7347","viewed":true,"github_repo_name":"learn-co-curriculum/rails-dynamic-request-readme","content_type":"Lab",
					"id":43972,"slug":"rails-dynamic-request",
						"title":"Rails Dynamic Request","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612552.87513","viewed":true,"github_repo_name":"learn-co-curriculum/rails-dynamic-request-lab","content_type":"Lab",
					"id":43973,"slug":"rails-dynamic-request-lab",
						"title":"Rails Dynamic Request Lab","visible":true}],
					"id":43969,"slug":"intro-to-rest",
						"title":"Intro to REST","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533612552.94665","viewed":true,"github_repo_name":"learn-co-curriculum/rails-url-helpers-readme","content_type":"Lab",
					"id":43975,"slug":"rails-url-helpers",
						"title":"Rails URL Helpers","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612554.17946","viewed":true,"github_repo_name":"learn-co-curriculum/rails-url-helpers-lab","content_type":"Lab",
					"id":43976,"slug":"rails-url-helpers-lab",
						"title":"Rails URL Helpers Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612626.98317","viewed":true,"github_repo_name":"learn-co-curriculum/rails-form_tag-readme","content_type":"Lab",
					"id":43977,"slug":"rails-form_tag",
						"title":"Rails form_tag","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612627.97489","viewed":true,"github_repo_name":"learn-co-curriculum/rails-form_tag-lab","content_type":"Lab",
					"id":43978,"slug":"rails-form_tag-lab",
						"title":"Rails form_tag lab","visible":true}],
					"id":43974,"slug":"intro-to-actionview",
						"title":"Intro to ActionView","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533612628.73094","viewed":true,"github_repo_name":"learn-co-curriculum/rails-create-action-readme","content_type":"Lab",
					"id":43980,"slug":"create-action",
						"title":"Create Action","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612629.33206","viewed":true,"github_repo_name":"learn-co-curriculum/rails-create-action-lab","content_type":"Lab",
					"id":43981,"slug":"create-action-lab",
						"title":"Create Action Lab ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612629.75897","viewed":true,"github_repo_name":"learn-co-curriculum/rails-index-show-new-create-lab","content_type":"Lab",
					"id":43982,"slug":"index-show-new-create-lab",
						"title":"Index, Show, New, Create Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612632.83908","viewed":true,"github_repo_name":"learn-co-curriculum/rails-edit-update-action-readme","content_type":"Lab",
					"id":43983,"slug":"edit-update-action",
						"title":"Edit/Update Action","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612633.78","viewed":true,"github_repo_name":"learn-co-curriculum/rails-form_for-on-edit-readme","content_type":"Lab",
					"id":43984,"slug":"form_for-on-edit",
						"title":"form_for on Edit","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612634.81679","viewed":true,"github_repo_name":"learn-co-curriculum/strong-params-basics","content_type":"Lab",
					"id":43985,"slug":"strong-params-basics",
						"title":"Strong Params Basics","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612636.00732","viewed":true,"github_repo_name":"learn-co-curriculum/rails-forms-readme","content_type":"Readme",
					"id":43986,"slug":"rails-forms-overview",
						"title":"Rails Forms Overview","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612651.25174","viewed":true,"github_repo_name":"learn-co-curriculum/rails-form_for-lab","content_type":"Lab",
					"id":43987,"slug":"form_for-lab",
						"title":"form_for lab ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612785.96802","viewed":true,"github_repo_name":"learn-co-curriculum/todomvc-1-assets-and-managing-lists","content_type":"Readme",
					"id":43988,"slug":"todomvc-1-assets-and-managing-lists",
						"title":"TodoMVC 1: Assets and Managing Lists","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612650.77621","viewed":true,"github_repo_name":"learn-co-curriculum/rails-generators-readme","content_type":"Lab",
					"id":43989,"slug":"rails-generators",
						"title":"Rails Generators","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612651.21192","viewed":true,"github_repo_name":"learn-co-curriculum/rails-cru-form_for-lab","content_type":"Lab",
					"id":43990,"slug":"cru-rails-lab",
						"title":"CRU Rails Lab ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612651.22623","viewed":true,"github_repo_name":"learn-co-curriculum/rails-resource-and-scaffold-generator","content_type":"Lab",
					"id":43991,"slug":"resource-generator-routes",
						"title":"Resource Generator/ Routes","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612651.23574","viewed":true,"github_repo_name":"learn-co-curriculum/rails-blog-scaffold","content_type":"Lab",
					"id":43992,"slug":"rails-blog-scaffold",
						"title":"Rails Blog Scaffold","visible":true}],
					"id":43979,"slug":"crud-with-rails",
						"title":"CRUD with Rails","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533612590.74075","viewed":true,"github_repo_name":"learn-co-curriculum/activerecord-validations-readme","content_type":"Readme",
					"id":43994,"slug":"activerecord-validations",
						"title":"ActiveRecord Validations","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612700.77097","viewed":true,"github_repo_name":"learn-co-curriculum/activerecord-validations-lab","content_type":"Lab",
					"id":43995,"slug":"activerecord-validations-lab",
						"title":"ActiveRecord Validations Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612715.5688","viewed":true,"github_repo_name":"learn-co-curriculum/validations-in-controller-actions-rails","content_type":"Readme",
					"id":43996,"slug":"validations-in-controller-actions",
						"title":"Validations in Controller Actions","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612715.57713","viewed":true,"github_repo_name":"learn-co-curriculum/validations-in-controller-actions-rails-lab","content_type":"Lab",
					"id":43997,"slug":"validations-in-controller-actions-lab",
						"title":"Validations in Controller Actions Lab ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612716.36994","viewed":true,"github_repo_name":"learn-co-curriculum/validations-with-form_tag-rails","content_type":"Readme",
					"id":43998,"slug":"validations-with-form_tag",
						"title":"Validations with form_tag","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612716.41239","viewed":true,"github_repo_name":"learn-co-curriculum/validations-with-form_tag-rails-lab","content_type":"Lab",
					"id":43999,"slug":"validations-with-form_tag-lab",
						"title":"Validations with form_tag lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612680.18363","viewed":true,"github_repo_name":"learn-co-curriculum/validations-with-form_for-rails","content_type":"Readme",
					"id":44000,"slug":"validations-with-form_for",
						"title":"Validations with form_for","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612653.72932","viewed":true,"github_repo_name":"learn-co-curriculum/delete-forms-rails","content_type":"Readme",
					"id":44001,"slug":"delete-forms",
						"title":"Delete forms","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612755.42258","viewed":true,"github_repo_name":"learn-co-curriculum/ruby-rails-testing","content_type":"Readme",
					"id":44002,"slug":"rails-testing",
						"title":"Rails Testing","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612755.43924","viewed":true,"github_repo_name":"learn-co-curriculum/crud-with-validations-lab","content_type":"Lab",
					"id":44003,"slug":"crud-with-validations",
						"title":"CRUD with Validations","visible":true}],
					"id":43993,"slug":"validations-and-forms",
						"title":"Validations and Forms","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533612787.98247","viewed":true,"github_repo_name":"learn-co-curriculum/activerecord-associations-review","content_type":"Readme",
					"id":44005,"slug":"activerecord-associations-review",
						"title":"Activerecord Associations Review","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612786.35464","viewed":true,"github_repo_name":"learn-co-curriculum/join-the-fun-rails","content_type":"Lab",
					"id":44006,"slug":"join-the-fun-rails-lab",
						"title":"Join The Fun Rails Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612820.27597","viewed":true,"github_repo_name":"learn-co-curriculum/activerecord-lifecycle-reading","content_type":"Lab",
					"id":44007,"slug":"activerecord-lifecycle-methods",
						"title":"ActiveRecord Lifecycle Methods","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612786.36268","viewed":true,"github_repo_name":"learn-co-curriculum/displaying-associations-rails","content_type":"Lab",
					"id":44008,"slug":"displaying-associations-data",
						"title":"Displaying Associations Data","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612786.37743","viewed":true,"github_repo_name":"learn-co-curriculum/displaying-associations-rails-lab","content_type":"Lab",
					"id":44009,"slug":"displaying-associations-data-lab",
						"title":"Displaying Associations Data Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612832.78195","viewed":true,"github_repo_name":"learn-co-curriculum/forms-and-basic-associations-rails","content_type":"Readme",
					"id":44010,"slug":"forms-and-basic-association",
						"title":"Forms and Basic Association ","visible":true},{
"complete":false,"started_at":nil,"updated_at":"1533612786.39418","viewed":true,"github_repo_name":"learn-co-curriculum/forms-and-basic-associations-rails-lab","content_type":"Lab",
					"id":44011,"slug":"forms-and-basic-associations-lab",
						"title":"Forms and Basic Associations Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/basic-nested-forms","content_type":"Lab",
					"id":44012,"slug":"basic-nested-forms",
						"title":"Basic Nested Forms","visible":true},{
"complete":false,"started_at":nil,"updated_at":"1533613620.55378","viewed":true,"github_repo_name":"learn-co-curriculum/basic-nested-forms-lab","content_type":"Lab",
					"id":44013,"slug":"basic-nested-forms-lab",
						"title":"Basic Nested Forms Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/displaying-has-many-through-rails","content_type":"Readme",
					"id":44014,"slug":"displaying-has-many-through",
						"title":"Displaying Has Many Through ","visible":true},{
"complete":false,"started_at":nil,"updated_at":"1533613620.57338","viewed":true,"github_repo_name":"learn-co-curriculum/displaying-has-many-through-rails-lab","content_type":"Lab",
					"id":44015,"slug":"displaying-has-many-through-lab",
						"title":"Displaying Has Many Through Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/has-many-through-forms-rails","content_type":"Lab",
					"id":44016,"slug":"has-many-through-in-forms",
						"title":"Has Many Through in Forms","visible":true},{
"complete":false,"started_at":nil,"updated_at":"1533613620.59219","viewed":true,"github_repo_name":"learn-co-curriculum/has-many-through-forms-rails-labs","content_type":"Lab",
					"id":44017,"slug":"has-many-through-in-forms-lab",
						"title":"Has Many Through in Forms Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/rails-video-review-has-many-through-in-forms-lab","content_type":"Readme",
					"id":44018,"slug":"video-review-has-many-through-in-forms-lab",
						"title":"Video Review: Has Many Through in Forms Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/rails-video-review-deep-dive-into-nested-forms","content_type":"Readme",
					"id":44019,"slug":"video-review-deep-dive-into-nested-forms",
						"title":"Video Review: Deep Dive into Nested Forms","visible":true}],
					"id":44004,"slug":"associations-and-rails",
						"title":"Associations and Rails ","completed_all":false,"started_any":true,"visible":true},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/rails-layouts-and-templates","content_type":"Readme",
					"id":44021,"slug":"layouts-and-templates-in-rails",
						"title":"Layouts And Templates in Rails","visible":true},{
"complete":false,"started_at":nil,"updated_at":"1533613656.38307","viewed":true,"github_repo_name":"learn-co-curriculum/rails-layouts-and-templates-lab","content_type":"Lab",
					"id":44022,"slug":"layouts-and-templates-in-rails-lab",
						"title":"Layouts And Templates in Rails Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/simple-partials-reading","content_type":"Lab",
					"id":44023,"slug":"simple-partials",
						"title":"Simple Partials ","visible":true},{
"complete":false,"started_at":nil,"updated_at":"1533613702.15196","viewed":true,"github_repo_name":"learn-co-curriculum/simple-partials-lab","content_type":"Lab",
					"id":44024,"slug":"simple-partials-lab",
						"title":"Simple Partials Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":"1533613743.80567","viewed":true,"github_repo_name":"learn-co-curriculum/partial-locals-reading","content_type":"Lab",
					"id":44025,"slug":"partial-with-locals",
						"title":"Partial with Locals ","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/partial-locals-lab","content_type":"Lab",
					"id":44026,"slug":"partial-with-locals-lab",
						"title":"Partial with Locals Lab","visible":true}],
					"id":44020,"slug":"layouts-and-partials",
						"title":"Layouts and Partials ","completed_all":false,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533610530.10387","viewed":true,"github_repo_name":"learn-co-curriculum/refresher-on-mvc","content_type":"Readme",
					"id":44028,"slug":"refresher-on-mvc",
						"title":"Refresher On MVC","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533614403.13287","viewed":true,"github_repo_name":"learn-co-curriculum/refactoring-views-with-helpers-reading","content_type":"Lab",
					"id":44029,"slug":"refactoring-views-with-helpers",
						"title":"Refactoring Views With Helpers","visible":true},{
"complete":false,"started_at":nil,"updated_at":"1533614403.14986","viewed":true,"github_repo_name":"learn-co-curriculum/refactoring-views-with-helpers-lab","content_type":"Lab",
					"id":44030,"slug":"refactoring-views-with-helpers-lab",
						"title":"Refactoring Views With Helpers Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/model-class-methods-reading","content_type":"Readme",
					"id":44031,"slug":"model-class-methods",
						"title":"Model Class Methods","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/model-class-methods-lab","content_type":"Lab",
					"id":44032,"slug":"model-class-methods-lab",
						"title":"Model Class Methods Lab","visible":true}],
					"id":44027,"slug":"refactoring-with-helpers-and-model-methods",
						"title":"Refactoring with Helpers and Model Methods","completed_all":false,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533610849.71412","viewed":true,"github_repo_name":"learn-co-curriculum/routing-nested-resources-reading","content_type":"Readme",
					"id":44034,"slug":"routing-and-nested-resources",
						"title":"Routing and Nested Resources","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/routing-nested-resources-lab","content_type":"Lab",
					"id":44035,"slug":"routing-and-nested-resources-lab",
						"title":"Routing and Nested Resources Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/modification-nested-routes-reading","content_type":"Readme",
					"id":44036,"slug":"modifying-nested-resources",
						"title":"Modifying Nested Resources","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/modification-nested-routes-lab","content_type":"Lab",
					"id":44037,"slug":"modifying-nested-resources-lab",
						"title":"Modifying Nested Resources Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/namespaced-routes-reading","content_type":"Lab",
					"id":44038,"slug":"namespaced-routes",
						"title":"Namespaced Routes ","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/namespaced-routes-lab","content_type":"Lab",
					"id":44039,"slug":"namespaced-routes-lab",
						"title":"Namespaced Routes Lab","visible":true}],
					"id":44033,"slug":"routes-and-resources",
						"title":"Routes and Resources","completed_all":false,"started_any":true,"visible":true},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/todomvc-2-lists-have-items","content_type":"Readme",
					"id":44041,"slug":"todomvc-2-lists-have-items",
						"title":"TodoMVC 2:  Lists have Items","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/todomvc-3-mark-items-complete","content_type":"Readme",
					"id":44042,"slug":"todomvc-3-mark-items-complete",
						"title":"TodoMVC 3: Mark Items Complete","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/todomvc-4-refactoring-with-partials-and-helpers","content_type":"Readme",
					"id":44043,"slug":"todomvc-4-refactoring-with-partials-and-helpers",
						"title":"TodoMVC 4: Refactoring with Partials and Helpers ","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/todomvc-5-deleting-items","content_type":"Readme",
					"id":44044,"slug":"todomvc-5-deleting-items",
						"title":"TodoMVC 5: Deleting Items","visible":true}],
					"id":44040,"slug":"rails-review-todomvc-2",
						"title":"Rails Review: TodoMVC 2","completed_all":false,"started_any":false,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533623473.40126","viewed":true,"github_repo_name":"learn-co-curriculum/introduction-to-authentication-and-authorization","content_type":"Readme",
					"id":44046,"slug":"introduction-to-authenticaiton-and-authorization",
						"title":"Introduction to Authenticaiton and Authorization","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533614198.97488","viewed":true,"github_repo_name":"learn-co-curriculum/cookies_and_sessions_readme","content_type":"Readme",
					"id":44047,"slug":"cookies-and-sessions",
						"title":"Cookies And Sessions ","visible":true},{
"complete":false,"started_at":nil,"updated_at":"1533614198.98889","viewed":true,"github_repo_name":"learn-co-curriculum/cookies_and_sessions_lab","content_type":"Lab",
					"id":44048,"slug":"cookies-and-sessions-lab",
						"title":"Cookies And Sessions Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/sessions_controller_readme","content_type":"Readme",
					"id":44049,"slug":"sessions-controller",
						"title":"Sessions Controller","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/sessions_controller_lab","content_type":"Lab",
					"id":44050,"slug":"sessions-controller-lab",
						"title":"Sessions Controller Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/login_required_readme","content_type":"Readme",
					"id":44051,"slug":"login-required",
						"title":"Login Required ","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/login_required_lab","content_type":"Lab",
					"id":44052,"slug":"login-required-lab",
						"title":"Login Required Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/has_secure_password_readme","content_type":"Readme",
					"id":44053,"slug":"using-has_secure-password",
						"title":"Using has_secure Password ","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/has_secure_password_lab","content_type":"Lab",
					"id":44054,"slug":"using-has_secure-password-lab",
						"title":"Using has_secure Password Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/rails-video-review-authentication","content_type":"Readme",
					"id":44055,"slug":"video-review-authentication",
						"title":"Video Review: Authentication","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/omniauth_readme","content_type":"Lab",
					"id":44056,"slug":"omniauth",
						"title":"Omniauth ","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/omniauth-review-lecture-in-todomvc","content_type":"Readme",
					"id":44057,"slug":"omniauth-review-lecture-in-todomvc",
						"title":"Omniauth Review Lecture in TodoMVC","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/omniauth_lab","content_type":"Lab",
					"id":44058,"slug":"omniauth-lab",
						"title":"Omniauth Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/authentication-and-authorization-recap-and-gems","content_type":"Readme",
					"id":44059,"slug":"authentication-and-authorization-recap-and-common-gems",
						"title":"Authentication And Authorization Recap And Common Gems","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/rails-amusement-park","content_type":"Lab",
					"id":44060,"slug":"rails-amusement-park",
						"title":"Rails Amusement Park","visible":true}],
					"id":44045,"slug":"authentication",
						"title":"Authentication","completed_all":false,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533610538.87672","viewed":true,"github_repo_name":"learn-co-curriculum/rails-how-to-find-gems-readme","content_type":"Readme",
					"id":44062,"slug":"how-to-find-gems",
						"title":"How To Find Gems","visible":true}],
					"id":44061,"slug":"popular-gems",
						"title":"Popular Gems","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/rails-assessment","content_type":"Lab",
					"id":44064,"slug":"rails-portfolio-project",
						"title":"Rails Portfolio Project","visible":true}],
					"id":44063,"slug":"rails-project-mode",
						"title":"Rails Project Mode","completed_all":false,"started_any":false,"visible":true}],
					"id":43958,"slug":"rails",
						"title":"Rails","completed_all":false,"started_any":true,"visible":true},{

    "units":[{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533611038.66636","viewed":true,"github_repo_name":"learn-co-curriculum/js-basics-intro-to-javascript-readme","content_type":"Readme",
					"id":44067,"slug":"intro-to-javascript",
						"title":"Intro to JavaScript","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611039.48166","viewed":true,"github_repo_name":"learn-co-curriculum/js-basics-data-types-readme","content_type":"Readme",
					"id":44068,"slug":"data-types",
						"title":"Data Types","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533600788.91012","viewed":true,"github_repo_name":"learn-co-curriculum/javascript-data-types-quiz","content_type":"Readme",
					"id":44069,"slug":"data-types-quiz",
						"title":"Data Types Quiz","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611041.65587","viewed":true,"github_repo_name":"learn-co-curriculum/js-basics-variables-readme","content_type":"Readme",
					"id":44070,"slug":"variables",
						"title":"Variables","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611041.71949","viewed":true,"github_repo_name":"learn-co-curriculum/js-basics-variables-lab","content_type":"Lab",
					"id":44071,"slug":"variables-lab",
						"title":"Variables Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611042.5387","viewed":true,"github_repo_name":"learn-co-curriculum/js-basics-strings-code-along","content_type":"Lab",
					"id":44072,"slug":"strings-code-along",
						"title":"Strings Code-along","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611044.06486","viewed":true,"github_repo_name":"learn-co-curriculum/js-basics-arithmetic-lab","content_type":"Lab",
					"id":44073,"slug":"arithmetic-lab",
						"title":"Arithmetic Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611060.63624","viewed":true,"github_repo_name":"learn-co-curriculum/js-basics-comparisons-readme","content_type":"Readme",
					"id":44074,"slug":"comparisons",
						"title":"Comparisons","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611061.33925","viewed":true,"github_repo_name":"learn-co-curriculum/js-basics-conditionals-readme","content_type":"Readme",
					"id":44075,"slug":"conditionals",
						"title":"Conditionals","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611062.16406","viewed":true,"github_repo_name":"learn-co-curriculum/js-basics-logical-operators-readme","content_type":"Readme",
					"id":44076,"slug":"logical-operators",
						"title":"Logical Operators","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611062.93576","viewed":true,"github_repo_name":"learn-co-curriculum/js-basics-control-flow-lab","content_type":"Lab",
					"id":44077,"slug":"control-flow-lab",
						"title":"Control Flow Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611101.01548","viewed":true,"github_repo_name":"learn-co-curriculum/js-basics-functions-readme","content_type":"Readme",
					"id":44078,"slug":"functions",
						"title":"Functions","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611101.03407","viewed":true,"github_repo_name":"learn-co-curriculum/js-basics-functions-lab","content_type":"Lab",
					"id":44079,"slug":"functions-lab",
						"title":"Functions Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611102.76004","viewed":true,"github_repo_name":"learn-co-curriculum/js-basics-intro-to-debugging-readme","content_type":"Readme",
					"id":44080,"slug":"intro-to-debugging",
						"title":"Intro to Debugging","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611102.90238","viewed":true,"github_repo_name":"learn-co-curriculum/js-basics-logging-lab","content_type":"Lab",
					"id":44081,"slug":"logging-lab",
						"title":"Logging Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611102.87438","viewed":true,"github_repo_name":"learn-co-curriculum/js-basics-intro-to-testing-readme","content_type":"Readme",
					"id":44082,"slug":"intro-to-testing",
						"title":"Intro to Testing","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533623261.89153","viewed":true,"github_repo_name":"learn-co-curriculum/js-basics-javascript-basics-quiz","content_type":"Readme",
					"id":44083,"slug":"javascript-basics-quiz",
						"title":"JavaScript Basics Quiz","visible":true}],
					"id":44066,"slug":"basics",
						"title":"Basics","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533611103.16199","viewed":true,"github_repo_name":"learn-co-curriculum/js-principles-scope-readme","content_type":"Readme",
					"id":44085,"slug":"scope",
						"title":"Scope","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611103.18022","viewed":true,"github_repo_name":"learn-co-curriculum/js-principles-scope-lab","content_type":"Lab",
					"id":44086,"slug":"scope-lab",
						"title":"Scope Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611107.2925","viewed":true,"github_repo_name":"learn-co-curriculum/js-principles-scope-chain-readme","content_type":"Readme",
					"id":44087,"slug":"scope-chain",
						"title":"Scope Chain","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/js-principles-scope-chain-code-along","content_type":"Lab",
					"id":44088,"slug":"scope-chain-code-along",
						"title":"Scope Chain Code-along","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611133.02633","viewed":true,"github_repo_name":"learn-co-curriculum/js-principles-lexical-scoping-readme","content_type":"Readme",
					"id":44089,"slug":"lexical-scoping",
						"title":"Lexical Scoping","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611133.38178","viewed":true,"github_repo_name":"learn-co-curriculum/js-principles-errors-and-stack-traces-readme","content_type":"Readme",
					"id":44090,"slug":"errors-and-stack-traces",
						"title":"Errors and Stack Traces","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611134.59329","viewed":true,"github_repo_name":"learn-co-curriculum/js-principles-hoisting-readme","content_type":"Readme",
					"id":44091,"slug":"hoisting",
						"title":"Hoisting","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/js-principles-javascript-principles-quiz","content_type":"Readme",
					"id":44092,"slug":"javascript-principles-quiz",
						"title":"JavaScript Principles Quiz","visible":true}],
					"id":44084,"slug":"principles",
						"title":"Principles","completed_all":false,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533611135.81521","viewed":true,"github_repo_name":"learn-co-curriculum/js-data-structures-arrays-readme","content_type":"Readme",
					"id":44094,"slug":"arrays",
						"title":"Arrays","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611135.82583","viewed":true,"github_repo_name":"learn-co-curriculum/js-data-structures-arrays-lab","content_type":"Lab",
					"id":44095,"slug":"arrays-lab",
						"title":"Arrays Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611524.50686","viewed":true,"github_repo_name":"learn-co-curriculum/js-data-structures-objects-readme","content_type":"Readme",
					"id":44096,"slug":"objects",
						"title":"Objects","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611524.51667","viewed":true,"github_repo_name":"learn-co-curriculum/js-data-structures-objects-lab","content_type":"Lab",
					"id":44097,"slug":"objects-lab",
						"title":"Objects Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533624020.98672","viewed":true,"github_repo_name":"learn-co-curriculum/js-data-structures-objects-and-arrays-quiz","content_type":"Readme",
					"id":44098,"slug":"objects-and-arrays-quiz",
						"title":"Objects and Arrays Quiz","visible":true}],
					"id":44093,"slug":"data-structures",
						"title":"Data Structures","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533611526.80354","viewed":true,"github_repo_name":"learn-co-curriculum/js-looping-and-iteration-looping-code-along","content_type":"Readme",
					"id":44100,"slug":"looping-code-along",
						"title":"Looping Code-along","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611528.08478","viewed":true,"github_repo_name":"learn-co-curriculum/js-looping-and-iteration-object-iteration-readme","content_type":"Readme",
					"id":44101,"slug":"object-iteration",
						"title":"Object Iteration","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611528.26854","viewed":true,"github_repo_name":"learn-co-curriculum/js-looping-and-iteration-traversing-nested-objects-readme","content_type":"Readme",
					"id":44102,"slug":"traversing-nested-objects",
						"title":"Traversing Nested Objects","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611530.97626","viewed":true,"github_repo_name":"learn-co-curriculum/js-looping-and-iteration-filter-readme","content_type":"Readme",
					"id":44103,"slug":"filter",
						"title":"Filter","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611536.16221","viewed":true,"github_repo_name":"learn-co-curriculum/js-looping-and-iteration-filter-lab","content_type":"Lab",
					"id":44104,"slug":"filter-lab",
						"title":"Filter Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611795.89403","viewed":true,"github_repo_name":"learn-co-curriculum/js-looping-and-iteration-map-readme","content_type":"Readme",
					"id":44105,"slug":"map",
						"title":"Map","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611795.91834","viewed":true,"github_repo_name":"learn-co-curriculum/js-looping-and-iteration-map-lab","content_type":"Lab",
					"id":44106,"slug":"map-lab",
						"title":"Map Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611835.98026","viewed":true,"github_repo_name":"learn-co-curriculum/js-looping-and-iteration-filter-and-map-lab","content_type":"Lab",
					"id":44107,"slug":"filter-and-map-lab",
						"title":"Filter and Map Lab","visible":true}],
					"id":44099,"slug":"looping-and-iteration",
						"title":"Looping and Iteration","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533612002.11698","viewed":true,"github_repo_name":"learn-co-curriculum/js-advanced-functions-first-class-functions-readme","content_type":"Readme",
					"id":44109,"slug":"first-class-functions",
						"title":"First-Class Functions","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612002.22733","viewed":true,"github_repo_name":"learn-co-curriculum/js-advanced-functions-first-class-functions-lab","content_type":"Lab",
					"id":44110,"slug":"first-class-functions-lab",
						"title":"First-Class Functions Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612006.28738","viewed":true,"github_repo_name":"learn-co-curriculum/js-advanced-functions-first-class-functions-practice-readme","content_type":"Readme",
					"id":44111,"slug":"first-class-functions-practice",
						"title":"First-Class Functions Practice","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612006.33506","viewed":true,"github_repo_name":"learn-co-curriculum/js-advanced-first-class-functions-practice-lab","content_type":"Lab",
					"id":44112,"slug":"first-class-functions-practice-lab",
						"title":"First-Class Functions Practice Lab","visible":true}],
					"id":44108,"slug":"advanced-functions",
						"title":"Advanced Functions","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533612030.46503","viewed":true,"github_repo_name":"learn-co-curriculum/js-object-oriented-constructor-functions-readme","content_type":"Readme",
					"id":44114,"slug":"creating-objects",
						"title":"Creating Objects","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612030.49567","viewed":true,"github_repo_name":"learn-co-curriculum/js-object-oriented-constructor-functions-lab","content_type":"Lab",
					"id":44115,"slug":"creating-objects-lab",
						"title":"Creating Objects Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612030.96203","viewed":true,"github_repo_name":"learn-co-curriculum/js-object-oriented-object-methods-readme","content_type":"Readme",
					"id":44116,"slug":"object-methods",
						"title":"Object Methods","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612031.00117","viewed":true,"github_repo_name":"learn-co-curriculum/js-object-oriented-object-methods-lab","content_type":"Lab",
					"id":44117,"slug":"object-methods-lab",
						"title":"Object Methods Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612031.55364","viewed":true,"github_repo_name":"learn-co-curriculum/js-object-oriented-prototypes-readme","content_type":"Readme",
					"id":44118,"slug":"prototypes",
						"title":"Prototypes","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612031.57189","viewed":true,"github_repo_name":"learn-co-curriculum/js-object-oriented-prototypes-lab","content_type":"Lab",
					"id":44119,"slug":"prototypes-lab",
						"title":"Prototypes Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612032.16255","viewed":true,"github_repo_name":"learn-co-curriculum/js-object-oriented-classes-readme","content_type":"Readme",
					"id":44120,"slug":"classes",
						"title":"Classes","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612032.16978","viewed":true,"github_repo_name":"learn-co-curriculum/js-object-oriented-class-syntax-lab","content_type":"Lab",
					"id":44121,"slug":"class-syntax-lab",
						"title":"Class Syntax Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612032.62187","viewed":true,"github_repo_name":"learn-co-curriculum/js-object-oriented-classes-travel-lab","content_type":"Lab",
					"id":44122,"slug":"classes-travel-lab",
						"title":"Classes Travel Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612042.9512","viewed":true,"github_repo_name":"learn-co-curriculum/js-object-oriented-this-walkthrough-readme","content_type":"Readme",
					"id":44123,"slug":"this",
						"title":"This","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612043.51481","viewed":true,"github_repo_name":"learn-co-curriculum/js-object-oriented-bind-call-apply-readme","content_type":"Readme",
					"id":44124,"slug":"bind-call-apply",
						"title":"Bind Call Apply","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/js-advanced-functions-this-code-along","content_type":"Readme",
					"id":44125,"slug":"this-bind-call-apply-code-along",
						"title":"This Bind Call Apply Code-along","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612043.52926","viewed":true,"github_repo_name":"learn-co-curriculum/js-object-oriented-bind-call-apply-this-lab","content_type":"Lab",
					"id":44126,"slug":"bind-call-apply-lab",
						"title":"Bind Call Apply Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612053.15954","viewed":true,"github_repo_name":"learn-co-curriculum/js-object-oriented-object-relations-readme","content_type":"Readme",
					"id":44127,"slug":"object-relations",
						"title":"Object Relations","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612074.64458","viewed":true,"github_repo_name":"learn-co-curriculum/js-object-oriented-object-relations-methods-readme","content_type":"Readme",
					"id":44128,"slug":"object-relations-methods",
						"title":"Object Relations Methods","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612074.66284","viewed":true,"github_repo_name":"learn-co-curriculum/js-object-oriented-class-relations-lab","content_type":"Lab",
					"id":44129,"slug":"class-relations-lab",
						"title":"Class Relations Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612136.3726","viewed":true,"github_repo_name":"learn-co-curriculum/js-object-oriented-daily-lunch","content_type":"Lab",
					"id":44130,"slug":"daily-lunch-lab",
						"title":"Daily Lunch Lab","visible":true}],
					"id":44113,"slug":"object-oriented-js",
						"title":"Object-Oriented JS","completed_all":false,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533612083.12933","viewed":true,"github_repo_name":"learn-co-curriculum/js-advanced-scope-closures-readme","content_type":"Readme",
					"id":44132,"slug":"closures",
						"title":"Closures","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612083.14517","viewed":true,"github_repo_name":"learn-co-curriculum/js-advanced-scope-closures-lab","content_type":"Lab",
					"id":44133,"slug":"closures-lab",
						"title":"Closures Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612059.70014","viewed":true,"github_repo_name":"learn-co-curriculum/js-advanced-scope-arrow-functions-readme","content_type":"Readme",
					"id":44134,"slug":"arrow-functions",
						"title":"Arrow Functions","visible":true}],
					"id":44131,"slug":"advanced-scope",
						"title":"Advanced Scope","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533611228.17412","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-intro-to-the-dom-readme","content_type":"Readme",
					"id":44136,"slug":"intro-to-the-dom",
						"title":"Intro to the DOM","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611228.33883","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-selecting-single-elements-readme","content_type":"Readme",
					"id":44137,"slug":"more-on-the-dom",
						"title":"More on the DOM","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611228.61844","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-intro-to-the-dom-code-along","content_type":"Readme",
					"id":44138,"slug":"intro-to-the-dom-code-along",
						"title":"Intro to the DOM Code-along","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611443.12517","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-the-dom-is-a-tree-readme","content_type":"Readme",
					"id":44139,"slug":"the-dom-is-a-tree",
						"title":"The DOM is a Tree","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611445.90778","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-hide-and-seek-lab","content_type":"Lab",
					"id":44140,"slug":"hide-and-seek-lab",
						"title":"Hide and Seek Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612059.77279","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-removing-altering-and-inserting-html-readme","content_type":"Readme",
					"id":44141,"slug":"creating-and-inserting-dom-nodes",
						"title":"Creating and Inserting DOM Nodes","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612059.79973","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-listening-to-dom-events-readme","content_type":"Readme",
					"id":44142,"slug":"listening-to-nodes",
						"title":"Listening to Nodes","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612199.33557","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-konami-code-lab","content_type":"Lab",
					"id":44143,"slug":"konami-code-lab",
						"title":"Konami Code Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611258.77595","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-modifying-html-readme","content_type":"Lab",
					"id":44144,"slug":"modifying-html",
						"title":"Modifying HTML","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611258.82014","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-modifying-html-lab","content_type":"Lab",
					"id":44145,"slug":"modifying-html-lab",
						"title":"Modifying HTML Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611260.00568","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-window-onload-readme","content_type":"Readme",
					"id":44146,"slug":"document-ready",
						"title":"document.ready","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611288.06311","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-advanced-selectors-readme","content_type":"Lab",
					"id":44147,"slug":"jquery-selectors",
						"title":"jQuery Selectors","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611347.06733","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-acting-on-events-lab","content_type":"Readme",
					"id":44148,"slug":"acting-on-events-lab",
						"title":"Acting on Events Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611347.0811","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-dom-quiz","content_type":"Readme",
					"id":44149,"slug":"dom-quiz",
						"title":"DOM Quiz","visible":true}],
					"id":44135,"slug":"dom-and-events",
						"title":"DOM and Events","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533611394.41822","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-css-refresher-readme","content_type":"Readme",
					"id":44151,"slug":"css-refresher",
						"title":"CSS Refresher","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611394.45096","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-css-refresher-quiz","content_type":"Readme",
					"id":44152,"slug":"css-refresher-quiz",
						"title":"CSS Refresher Quiz","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611395.1595","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-css-libraries-readme","content_type":"Readme",
					"id":44153,"slug":"css-libraries",
						"title":"CSS Libraries","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612203.48954","viewed":true,"github_repo_name":"learn-co-curriculum/js-dom-and-events-css-libraries-lab","content_type":"Readme",
					"id":44154,"slug":"css-libraries-lab",
						"title":"CSS Libraries Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612203.89354","viewed":true,"github_repo_name":"learn-co-curriculum/js-templates-intro-to-templates-readme","content_type":"Readme",
					"id":44155,"slug":"intro-to-templates",
						"title":"Intro to Templates","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612204.02434","viewed":true,"github_repo_name":"learn-co-curriculum/js-templates-template-engines-readme","content_type":"Readme",
					"id":44156,"slug":"template-engines",
						"title":"Template Engines","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612240.04636","viewed":true,"github_repo_name":"learn-co-curriculum/js-templates-template-engines-lab","content_type":"Lab",
					"id":44157,"slug":"template-engines-lab",
						"title":"Template Engines Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612249.21066","viewed":true,"github_repo_name":"learn-co-curriculum/js-templates-advanced-templating-readme","content_type":"Lab",
					"id":44158,"slug":"advanced-templating",
						"title":"Advanced Templating","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612279.39255","viewed":true,"github_repo_name":"learn-co-curriculum/js-templates-advanced-templating-lab","content_type":"Lab",
					"id":44159,"slug":"advanced-templating-lab",
						"title":"Advanced Templating Lab","visible":true}],
					"id":44150,"slug":"styling-and-templates",
						"title":"Styling and Templates","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533612288.84647","viewed":true,"github_repo_name":"learn-co-curriculum/js-ajax-intro-to-ajax-readme","content_type":"Lab",
					"id":44161,"slug":"intro-to-ajax",
						"title":"Intro to AJAX","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612292.42676","viewed":true,"github_repo_name":"learn-co-curriculum/js-ajax-hitting-apis-lab","content_type":"Lab",
					"id":44162,"slug":"hitting-apis-lab",
						"title":"Hitting APIs Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612327.74503","viewed":true,"github_repo_name":"learn-co-curriculum/js-ajax-advanced-ajax-lab","content_type":"Lab",
					"id":44163,"slug":"advanced-ajax-lab",
						"title":"Advanced AJAX Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612324.9642","viewed":true,"github_repo_name":"learn-co-curriculum/js-ajax-ajax-and-callbacks-readme","content_type":"Readme",
					"id":44164,"slug":"ajax-and-callbacks",
						"title":"AJAX and Callbacks","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612324.97141","viewed":true,"github_repo_name":"learn-co-curriculum/js-ajax-ajax-and-callbacks-lab","content_type":"Lab",
					"id":44165,"slug":"ajax-and-callbacks-lab",
						"title":"AJAX and Callbacks Lab","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612204.11434","viewed":true,"github_repo_name":"learn-co-curriculum/js-ajax-rest-refresher-readme","content_type":"Readme",
					"id":44166,"slug":"rest-refresher",
						"title":"REST Refresher","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612204.12192","viewed":true,"github_repo_name":"learn-co-curriculum/js-ajax-rest-quiz","content_type":"Readme",
					"id":44167,"slug":"rest-quiz",
						"title":"REST Quiz","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612204.28013","viewed":true,"github_repo_name":"learn-co-curriculum/js-ajax-fetch-readme","content_type":"Lab",
					"id":44168,"slug":"fetch",
						"title":"Fetch","visible":true},{
"complete":false,"started_at":nil,"updated_at":"1533612204.32182","viewed":true,"github_repo_name":"learn-co-curriculum/js-ajax-fetch-lab","content_type":"Lab",
					"id":44169,"slug":"fetch-lab",
						"title":"Fetch Lab","visible":true}],
					"id":44160,"slug":"ajax",
						"title":"AJAX","completed_all":false,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533611516.65556","viewed":true,"github_repo_name":"learn-co-curriculum/js-advanced-functions-testing-refresher-readme","content_type":"Readme",
					"id":44171,"slug":"testing-refresher",
						"title":"Testing Refresher","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611516.70796","viewed":true,"github_repo_name":"learn-co-curriculum/js-advanced-functions-intro-to-mocha-readme","content_type":"Lab",
					"id":44172,"slug":"intro-to-mocha",
						"title":"Intro to Mocha","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611520.1742","viewed":true,"github_repo_name":"learn-co-curriculum/js-refactoring-and-design-patterns-testing-with-spies-readme","content_type":"Readme",
					"id":44173,"slug":"testing-with-spies",
						"title":"Testing with Spies","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611520.22932","viewed":true,"github_repo_name":"learn-co-curriculum/js-refactoring-and-design-patterns-testing-with-mocks-and-stubs-readme","content_type":"Readme",
					"id":44174,"slug":"testing-with-mocks-and-stubs",
						"title":"Testing with Mocks and Stubs","visible":true}],
					"id":44170,"slug":"advanced-testing",
						"title":"Advanced Testing","completed_all":true,"started_any":true,"visible":true}],
					"id":44065,"slug":"javascript",
						"title":"JavaScript","completed_all":false,"started_any":true,"visible":true},{

    "units":[{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533609857.43915","viewed":true,"github_repo_name":"learn-co-curriculum/what-is-the-asset-pipeline","content_type":"Readme",
					"id":44177,"slug":"what-is-the-asset-pipeline",
						"title":"What Is The Asset Pipeline","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610993.60916","viewed":true,"github_repo_name":"learn-co-curriculum/javascript-manifests","content_type":"Readme",
					"id":44178,"slug":"javascript-manifests",
						"title":"Javascript Manifests","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/javascript-manifests-lab","content_type":"Lab",
					"id":44179,"slug":"javascript-manifests-lab",
						"title":"Javascript Manifests Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/page-specific-javascript-rails","content_type":"Readme",
					"id":44180,"slug":"page-specific-javascript",
						"title":"Page Specific Javascript ","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/external-javascript-libraries-in-rails","content_type":"Readme",
					"id":44181,"slug":"external-javascript-libraries",
						"title":"External Javascript Libraries","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/css-manifests","content_type":"Readme",
					"id":44182,"slug":"css-manifests",
						"title":"CSS Manifests","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/css-manifests-lab","content_type":"Lab",
					"id":44183,"slug":"css-manifests-lab",
						"title":"CSS Manifests Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/external-css-frameworks-in-rails","content_type":"Readme",
					"id":44184,"slug":"external-css-frameworks-in-rails",
						"title":"External CSS Frameworks In Rails","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/asset-preprocessors-in-rails","content_type":"Readme",
					"id":44185,"slug":"asset-preprocessors-in-rails",
						"title":"Asset Preprocessors In Rails","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/images-and-the-asset-pipeline","content_type":"Readme",
					"id":44186,"slug":"images-and-the-asset-pipeline",
						"title":"Images And The Asset Pipeline","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/your-own-js-and-css-in-rails","content_type":"Lab",
					"id":44187,"slug":"your-own-js-and-css-in-rails",
						"title":"Your Own JS And CSS In Rails","visible":true}],
					"id":44176,"slug":"asset-pipeline",
						"title":"Asset Pipeline","completed_all":false,"started_any":true,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533610538.87672","viewed":true,"github_repo_name":"learn-co-curriculum/rails-how-to-find-gems-readme","content_type":"Readme",
					"id":44189,"slug":"rails-how-to-find-gems-readme",
						"title":"Rails How To Find Gems Readme","visible":true}],
					"id":44188,"slug":"popular-gems",
						"title":"Popular Gems","completed_all":true,"started_any":true,"visible":true},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/rails-long-running-tasks-readme","content_type":"Lab",
					"id":44191,"slug":"long-running-tasks-in-rails",
						"title":"Long Running Tasks in Rails","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/rails-long-running-tasks-lab","content_type":"Lab",
					"id":44192,"slug":"long-running-tasks-in-rails-lab",
						"title":"Long Running Tasks in Rails Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/rails-sidekiq-readme","content_type":"Lab",
					"id":44193,"slug":"sidekiq",
						"title":"Sidekiq","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/rails-sidekiq-lab","content_type":"Lab",
					"id":44194,"slug":"sidekiq-lab",
						"title":"Sidekiq Lab","visible":true}],
					"id":44190,"slug":"workers",
						"title":"Workers","completed_all":false,"started_any":false,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533611945.56966","viewed":true,"github_repo_name":"learn-co-curriculum/what-is-an-api-reading","content_type":"Readme",
					"id":44196,"slug":"what-is-an-api",
						"title":"What Is An API? ","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533611946.36121","viewed":true,"github_repo_name":"learn-co-curriculum/apis-and-postman","content_type":"Readme",
					"id":44197,"slug":"apis-and-postman",
						"title":"APIs And Postman","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/apis-and-faraday-reading","content_type":"Lab",
					"id":44198,"slug":"hitting-apis-with-faraday",
						"title":"Hitting APIs with Faraday","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/basic-apis-lab","content_type":"Lab",
					"id":44199,"slug":"basic-apis-lab",
						"title":"Basic APIs Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/web-auth-readme","content_type":"Lab",
					"id":44200,"slug":"using-oauth-with-apis",
						"title":"Using OAuth With APIs","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/ruby-posting-requests","content_type":"Lab",
					"id":44201,"slug":"posting-to-apis",
						"title":"Posting to APIs ","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/rails-github-api","content_type":"Lab",
					"id":44202,"slug":"working-with-apis",
						"title":"Working with APIs","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/web-service-objects-readme","content_type":"Lab",
					"id":44203,"slug":"web-service-objects",
						"title":"Web Service Objects ","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/rails-refactoring-apis","content_type":"Lab",
					"id":44204,"slug":"refactoring-apis-lab",
						"title":"Refactoring APIs Lab","visible":true}],
					"id":44195,"slug":"consuming-apis",
						"title":"Consuming APIs","completed_all":false,"started_any":true,"visible":true},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/rails-video-review-loading-comments-via-get-ajax","content_type":"Readme",
					"id":44206,"slug":"video-review-loading-comments-via-get-ajax",
						"title":"Video Review: Loading Comments via GET AJAX","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/rails-video-review-rails-and-ajax-submitting-a-form","content_type":"Readme",
					"id":44207,"slug":"video-review-rails-and-ajax-submitting-a-form",
						"title":"Video Review: Rails and AJAX, Submitting a Form","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/rails-video-review-adding-form-fields-via-ajax","content_type":"Readme",
					"id":44208,"slug":"video-review-adding-form-fields-via-ajax",
						"title":"Video Review: Adding Form Fields via AJAX","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/rails-video-review-handlebars-and-js-prototypes","content_type":"Readme",
					"id":44209,"slug":"video-review-handlebars-and-js-prototypes",
						"title":"Video Review: Handlebars and JS Prototypes","visible":true}],
					"id":44205,"slug":"using-ajax-and-rails",
						"title":"Using AJAX and Rails","completed_all":false,"started_any":false,"visible":true},{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533612140.05317","viewed":true,"github_repo_name":"learn-co-curriculum/why-building-apis-reading","content_type":"Readme",
					"id":44211,"slug":"why-build-an-api",
						"title":"Why Build an API? ","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/returning-string-data","content_type":"Readme",
					"id":44212,"slug":"returning-string-data",
						"title":"Returning String Data","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/return-string-data-lab","content_type":"Lab",
					"id":44213,"slug":"returning-strings-lab",
						"title":"Returning Strings Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/diy-json-serializer-ruby","content_type":"Readme",
					"id":44214,"slug":"diy-json-serializer",
						"title":"DIY JSON Serializer","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/diy-json-serializer-lab","content_type":"Lab",
					"id":44215,"slug":"diy-json-serializer-lab",
						"title":"DIY JSON Serializer Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/using-to-json-ruby","content_type":"Readme",
					"id":44216,"slug":"using-to_json",
						"title":"Using to_json","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/using-to-json-lab","content_type":"Lab",
					"id":44217,"slug":"using-to_json-lab",
						"title":"Using to_json Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/using-active-model-serializer","content_type":"Readme",
					"id":44218,"slug":"using-active-model-serializer",
						"title":"Using Active Model Serializer","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/using-active-model-serializer-lab","content_type":"Lab",
					"id":44219,"slug":"using-active-model-serializer-lab",
						"title":"Using Active Model Serializer Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/receiving-api-posts","content_type":"Readme",
					"id":44220,"slug":"receiving-api-posts",
						"title":"Receiving API POSTs","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/receiving-api-posts-lab","content_type":"Lab",
					"id":44221,"slug":"receiving-api-posts-lab",
						"title":"Receiving API POSTs Lab","visible":true}],
					"id":44210,"slug":"building-apis",
						"title":"Building APIs","completed_all":false,"started_any":true,"visible":true},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/js-tictactoe-rails-api-backend","content_type":"Lab",
					"id":44223,"slug":"jquery-tic-tac-toe-with-a-rails-api-part-1",
						"title":"jQuery Tic-Tac-Toe with a Rails API — Part 1","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/js-tictactoe-rails-api","content_type":"Project",
					"id":44224,"slug":"jquery-tic-tac-toe-with-a-rails-api-part-2",
						"title":"jQuery Tic-Tac-Toe with a Rails API — Part 2","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/rails-js-assessment","content_type":"Lab",
					"id":44225,"slug":"rails-app-with-a-jquery-front-end",
						"title":"Rails App with a jQuery Front End","visible":true}],
					"id":44222,"slug":"project-mode",
						"title":"Project Mode","completed_all":false,"started_any":false,"visible":true}],
					"id":44175,"slug":"rails-and-javascript",
						"title":"Rails and Javascript","completed_all":false,"started_any":true,"visible":true},{

    "units":[{
      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/intro-to-npm-readme","content_type":"Readme",
					"id":44325,"slug":"intro-to-npm-readme",
						"title":"Intro To Npm Readme","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/npm-lab","content_type":"Lab",
					"id":44326,"slug":"npm-lab",
						"title":"Npm Lab","visible":true}],
					"id":44308,"slug":"node-package-manager",
						"title":"Node Package Manager","completed_all":false,"started_any":false,"visible":true},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/this-is-react-readme","content_type":"Readme",
					"id":44327,"slug":"this-is-react-readme",
						"title":"This Is React Readme","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/a-react-app-example","content_type":"Lab",
					"id":44328,"slug":"a-react-app-example",
						"title":"A React App Example","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/some-useful-tools-for-writing-react","content_type":"Readme",
					"id":44329,"slug":"some-useful-tools-for-writing-react",
						"title":"Some Useful Tools For Writing React","visible":true}],
					"id":44309,"slug":"introduction-to-react",
						"title":"Introduction to React","completed_all":false,"started_any":false,"visible":true},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-components","content_type":"Readme",
					"id":44346,"slug":"react-components",
						"title":"React Components","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-static-components-lab","content_type":"Lab",
					"id":44347,"slug":"static-components-lab",
						"title":"Static Components Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-dynamic-components","content_type":"Readme",
					"id":44349,"slug":"dynamic-components",
						"title":"Dynamic Components","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-dynamic-components-lab","content_type":"Lab",
					"id":44348,"slug":"dynamic-components-lab",
						"title":"Dynamic Components Lab","visible":true}],
					"id":44310,"slug":"components",
						"title":"Introduction to Components","completed_all":false,"started_any":false,"visible":true},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-props-readme","content_type":"Readme",
					"id":44351,"slug":"props-readme",
						"title":"Props","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-props-movie-lab","content_type":"Lab",
					"id":44352,"slug":"props-lab",
						"title":"Props Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-modular-code","content_type":"Readme",
					"id":44356,"slug":"modular-code",
						"title":"Modular Code","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-events-crash-course-readme","content_type":"Readme",
					"id":44357,"slug":"events-crash-course-readme",
						"title":"Events Crash Course Readme","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-events-crash-course-lab","content_type":"Lab",
					"id":44358,"slug":"events-crash-course-lab",
						"title":"Events Crash Course Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-state-readme","content_type":"Readme",
					"id":44359,"slug":"state",
						"title":"State","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-simple-state-lab","content_type":"Lab",
					"id":44360,"slug":"simple-state-lab",
						"title":"Simple State Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-initial-state-lab","content_type":"Lab",
					"id":44361,"slug":"slider-state-lab",
						"title":"Slider State Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-using-callbacks-to-pass-information-lab","content_type":"Lab",
					"id":44362,"slug":"using-callbacks-to-pass-information-lab",
						"title":"Using Callbacks To Pass Information Lab","visible":true}],
					"id":44350,"slug":"props",
						"title":"Props and State","completed_all":false,"started_any":false,"visible":true},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-event-system","content_type":"Readme",
					"id":44365,"slug":"react-event-system",
						"title":"React Event System","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-event-system-lab","content_type":"Lab",
					"id":44364,"slug":"event-system-lab",
						"title":"Event System Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-events-in-detail","content_type":"Readme",
					"id":44366,"slug":"events-in-detail",
						"title":"Events In Detail","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-events-in-detail-lab","content_type":"Lab",
					"id":44367,"slug":"events-in-detail-lab",
						"title":"Events In Detail Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-updating-state","content_type":"Lab",
					"id":44368,"slug":"updating-state",
						"title":"Updating State","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-updating-state-lab","content_type":"Lab",
					"id":44369,"slug":"updating-state-lab",
						"title":"Updating State Lab","visible":true}],
					"id":44363,"slug":"events",
						"title":"Events","completed_all":false,"started_any":false,"visible":true},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-forms","content_type":"Lab",
					"id":44371,"slug":"forms",
						"title":"Forms","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-forms-lab","content_type":"Lab",
					"id":44372,"slug":"forms-lab",
						"title":"Forms Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-props-and-state-lab","content_type":"Lab",
					"id":44373,"slug":"props-state-and-events-lab",
						"title":"Props, State, and Events Lab","visible":true}],
					"id":44370,"slug":"forms",
						"title":"Forms","completed_all":false,"started_any":false,"visible":true},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-component-lifecycle-overview","content_type":"Readme",
					"id":44374,"slug":"react-component-lifecycle-overview",
						"title":"React Component Lifecycle Overview","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-component-mounting-lifecycle-readme","content_type":"Readme",
					"id":44375,"slug":"component-mounting-lifecycle-readme",
						"title":"Component Mounting and Unmounting Readme","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-component-mounting-lab","content_type":"Lab",
					"id":44376,"slug":"component-mounting-lab",
						"title":"Component Mounting Lab - MultiTimer App","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-component-mounting-and-unmounting-lab","content_type":"Lab",
					"id":44377,"slug":"component-mounting-and-unmounting-lab",
						"title":"Component Mounting Lab - Pancake Flipper","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-update-lifecycle-readme","content_type":"Readme",
					"id":44378,"slug":"update-lifecycle-readme",
						"title":"Update Lifecycle Readme","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-component-updating-lab","content_type":"Lab",
					"id":44379,"slug":"component-updating-lab",
						"title":"Component Updating Lab","visible":true}],
					"id":44311,"slug":"lifecycle-methods",
						"title":"Lifecycle Methods","completed_all":false,"started_any":false,"visible":true},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-async-readme","content_type":"Readme",
					"id":44380,"slug":"async-react",
						"title":"Async React","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-async-fetch-lab","content_type":"Lab",
					"id":44381,"slug":"async-fetch-lab",
						"title":"Async Fetch Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-async-gif-search-lab","content_type":"Lab",
					"id":44382,"slug":"react-gif-search-lab",
						"title":"Async React Mini Project","visible":true}],
					"id":44312,"slug":"async-react",
						"title":"Async React","completed_all":false,"started_any":false,"visible":true},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-types-of-components","content_type":"Readme",
					"id":44383,"slug":"types-of-components",
						"title":"Types Of Components","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-presentation-components","content_type":"Readme",
					"id":44384,"slug":"presentational-components",
						"title":"Presentational Components","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-presentation-components-lab","content_type":"Lab",
					"id":44385,"slug":"presentational-components-lab",
						"title":"Presentational Components Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-container-components","content_type":"Readme",
					"id":44386,"slug":"container-components",
						"title":"Container Components","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-container-components-lab","content_type":"Lab",
					"id":44387,"slug":"container-components-lab",
						"title":"Container Components Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-fragments","content_type":"Readme",
					"id":44388,"slug":"react-fragments",
						"title":"Fragments","visible":true}],
					"id":44314,"slug":"advanced-components",
						"title":"Advanced Components","completed_all":false,"started_any":false,"visible":true},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/create-react-app","content_type":"Readme",
					"id":44389,"slug":"create-react-app",
						"title":"Create React App","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/babel-and-react","content_type":"Readme",
					"id":44390,"slug":"babel-and-react",
						"title":"Babel And React","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/webpack-and-react","content_type":"Readme",
					"id":44391,"slug":"webpack-and-react",
						"title":"Webpack And React","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612099.47684","viewed":true,"github_repo_name":"learn-co-curriculum/react-declarative-programming","content_type":"Readme",
					"id":44392,"slug":"declarative-programming-in-react",
						"title":"Declarative Programming in React","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533612099.45378","viewed":true,"github_repo_name":"learn-co-curriculum/javascript-virtual-dom","content_type":"Readme",
					"id":44393,"slug":"the-virtual-dom",
						"title":"The Virtual Dom","visible":true}],
					"id":44315,"slug":"react-under-the-hood",
						"title":"React: Under the Hood","completed_all":false,"started_any":true,"visible":true},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-introduction-to-react-router","content_type":"Readme",
					"id":44394,"slug":"introduction-to-react-router",
						"title":"Introduction To React Router","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-components-as-routes","content_type":"Lab",
					"id":44395,"slug":"components-as-routes",
						"title":"Components As Routes","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-components-as-routes-lab","content_type":"Lab",
					"id":44396,"slug":"components-as-routes-lab",
						"title":"Components As Routes Lab","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-router-nested-routes-code-along","content_type":"Lab",
					"id":44397,"slug":"nested-routes-code-along",
						"title":"Nested Routes Code Along","visible":true}],
					"id":44316,"slug":"client-side-routing",
						"title":"Client-Side Routing","completed_all":false,"started_any":false,"visible":true}],
					"id":44258,"slug":"react-redux",
						"title":"React","completed_all":false,"started_any":true,"visible":true},{

    "units":[{

      "lessons":[{

"complete":true,"started_at":nil,"updated_at":"1533610832.12528","viewed":true,"github_repo_name":"learn-co-curriculum/why-redux","content_type":"Readme",
					"id":44400,"slug":"why-redux",
						"title":"Why Redux","visible":true},{
"complete":true,"started_at":nil,"updated_at":"1533610833.00897","viewed":true,"github_repo_name":"learn-co-curriculum/redux-flow","content_type":"Readme",
					"id":44401,"slug":"redux-flow",
						"title":"Redux Flow","visible":true},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/redux-reducer","content_type":"Lab",
					"id":44402,"slug":"redux-reducer",
						"title":"Redux Reducer","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/redux-dispatch","content_type":"Readme",
					"id":44403,"slug":"redux-dispatch",
						"title":"Redux Dispatch","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/redux-initial-dispatch","content_type":"Readme",
					"id":44404,"slug":"redux-initial-dispatch",
						"title":"Redux Initial Dispatch","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/redux-dispatch-with-event-listeners","content_type":"Readme",
					"id":44405,"slug":"redux-dispatch-with-event-listeners",
						"title":"Redux Dispatch With Event Listeners","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/redux-create-store","content_type":"Readme",
					"id":44406,"slug":"redux-create-store",
						"title":"Redux Create Store","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/redux-create-store-lab","content_type":"Lab",
					"id":44407,"slug":"redux-create-store-lab",
						"title":"Redux Create Store Lab","visible":false}],
					"id":44399,"slug":"building-redux",
						"title":"Building Redux","completed_all":false,"started_any":true,"visible":true},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/intro-to-redux-library-codealong","content_type":"Lab",
					"id":44409,"slug":"intro-to-redux-library-codealong",
						"title":"Intro To Redux Library Codealong","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/map-state-to-props-readme","content_type":"Lab",
					"id":44410,"slug":"map-state-to-props",
						"title":"Map State To Props","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/review-map-state-to-props-readme","content_type":"Lab",
					"id":44411,"slug":"review-map-state-to-props-readme",
						"title":"Review Map State To Props Readme","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/map-state-to-props-lab","content_type":"Lab",
					"id":44412,"slug":"map-state-to-props-lab",
						"title":"Map State To Props Lab","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/redux-action-creators","content_type":"Readme",
					"id":44413,"slug":"redux-action-creators",
						"title":"Redux Action Creators","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/map-dispatch-to-props-readme","content_type":"Lab",
					"id":44414,"slug":"map-dispatch-to-props",
						"title":"Map Dispatch To Props","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/map-dispatch-to-props-lab","content_type":"Lab",
					"id":44415,"slug":"map-dispatch-to-props-lab",
						"title":"Map Dispatch To Props Lab","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/combine-reducers","content_type":"Lab",
					"id":44416,"slug":"combine-reducers-codealong",
						"title":"Combine Reducers Codealong","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/quote-maker-react-lab","content_type":"Lab",
					"id":44417,"slug":"cooking-with-redux",
						"title":"Cooking with Redux","visible":false}],
					"id":44408,"slug":"redux-library",
						"title":"Redux Library","completed_all":false,"started_any":false,"visible":false},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-components-events-actions-and-stores","content_type":"Readme",
					"id":44419,"slug":"when-to-connect-react-and-redux",
						"title":"When To Connect React and Redux","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/redux-forms-codealong","content_type":"Lab",
					"id":44420,"slug":"redux-forms-codealong",
						"title":"Redux Forms Codealong","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/redux-index-codealong","content_type":"Lab",
					"id":44421,"slug":"redux-index-codealong",
						"title":"Redux Index Codealong","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/building-forms-lab","content_type":"Lab",
					"id":44422,"slug":"building-forms-lab",
						"title":"Building Forms Lab","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/redux-delete-codealong","content_type":"Lab",
					"id":44423,"slug":"redux-delete-codealong",
						"title":"Redux Delete Codealong","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/redux-delete-lab","content_type":"Lab",
					"id":44424,"slug":"redux-delete-lab",
						"title":"Redux Delete Lab","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/crud-lab","content_type":"Lab",
					"id":44425,"slug":"crud-lab",
						"title":"Crud Lab","visible":false}],
					"id":44418,"slug":"react-redux-continued",
						"title":"React Redux Continued","completed_all":false,"started_any":false,"visible":false},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/redux-thunk-readme","content_type":"Readme",
					"id":44427,"slug":"redux-thunk",
						"title":"Redux Thunk","visible":false},{
"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/redux-thunk-lab","content_type":"Lab",
					"id":44449,"slug":"redux-thunk-lab",
						"title":"Redux Thunk Lab","visible":false}],
					"id":44426,"slug":"async-redux",
						"title":"Async Redux","completed_all":false,"started_any":false,"visible":false},{

      "lessons":[{

"complete":false,"started_at":nil,"updated_at":nil,"viewed":false,"github_repo_name":"learn-co-curriculum/react-redux-assessment","content_type":"Lab",
					"id":44431,"slug":"react-redux-portfolio-project",
						"title":"React Redux Portfolio Project","visible":false}],
					"id":44430,"slug":"redux-final-project",
						"title":"Redux Final Project","completed_all":false,"started_any":false,"visible":false}],
					"id":44341,"slug":"redux",
						"title":"Redux","completed_all":false,"started_any":true,"visible":true}]
}
end
end
