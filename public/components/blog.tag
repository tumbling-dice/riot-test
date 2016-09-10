<blog-post>
  <div class="blog-post">
    <h2 class="blog-post-title">{ opts.title }</h2>
    <p class="blog-post-meta">{ opts.meta } by <a href="{ opts.link }">{ opts.author }</a></p>
    <yield/>
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
</blog-post>
