<blog-main>

  <div class="col-sm-8 blog-main">
    <blog-post each="{ post in posts }" title="{ post.title }" meta="{ post.meta }" author="{ post.author }" link="{ post.link }" body="{ post.body }"></blog-post>
    <!-- 本当はここもちゃんと作らないといけないんだけど割愛 -->
    <nav>
      <ul class="pager">
        <li>
          <a href="#">Previous</a>
        </li>
        <li>
          <a href="#">Next</a>
        </li>
      </ul>
    </nav>
  </div>

  <style scoped>
    .blog-main {
      font-size: 18px;
      line-height: 1.5;
    }

  </style>

  <script>
    var self = this;
    this.posts = [];
    // API作るの面倒なのでJSON読みこむだけ
    $.get("/javascripts/blog.json").done(function (data) {
      self.posts = data;
      self.update();
    });
  </script>
</blog-main>

<blog-post>
  <div class="blog-post" name="body">
    <h2 class="blog-post-title">{ opts.title }</h2>
    <p class="blog-post-meta">{ opts.meta } by
      <a href="{ opts.link }">{ opts.author }</a>
    </p>
  </div>

  <style scoped>
    .blog-post {
      margin-bottom: 60px;
    }
    .blog-post-title {
      margin-bottom: 5px;
      font-size: 40px;
    }
    .blog-post-meta {
      margin-bottom: 20px;
      color: #999;
    }

  </style>

  <script>
    // opts.bodyをそのまま表示するとエスケープされてしまうので、何らかの要素のinnerHTMLに追加しないといけない。
    // カスタムタグ内のnameが付いているDOMはthisからアクセスできるので、適当にdivにbodyなんてnameを指定している。
    $(this.body).append($(opts.body));
  </script>

</blog-post>
