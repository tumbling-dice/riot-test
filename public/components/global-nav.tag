<global-nav>
  <nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
      <nav-header></nav-header>
      <div id="navbar" class="navbar-collapse collapse">
        <navbar></navbar>
        <ul class="nav navbar-nav navbar-right">
          <li class="active">
            <a href="./">scope test</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</global-nav>

<nav-header>
  <div class="navbar-header">
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="index.html">Project name</a>
  </div>
</nav-header>

<navbar>
  <ul class="nav navbar-nav">
    <li each="{ nav in navs }" class="{ active: isActive(nav.link) }">
      <a href="{ nav.link }">{ nav.title }</a>
    </li>
  </ul>

  <style scoped>
    /* bootstrapの指定が複雑すぎるので!importantで強制的に上書き */
    .active > a {
      background-color: #BBDEFB !important;
    }

  </style>

  <script>
    this.navs = [
      {
        link: "index.html",
        title: "Home"
      }, {
        link: "about.html",
        title: "About"
      }, {
        link: "contact.html",
        title: "Contact"
      }
    ];

    this.isActive = function (path) {
      return path == location.pathname.replace(/^\//, "");
    }
  </script>
</navbar>
