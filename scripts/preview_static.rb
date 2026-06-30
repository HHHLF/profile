require "cgi"
require "fileutils"
require "yaml"

ROOT = File.expand_path("..", __dir__)
ABOUT_PATH = File.join(ROOT, "_pages", "about.md")
CONFIG_PATH = File.join(ROOT, "_config.yml")
OUTPUT_DIR = File.join(ROOT, "_preview")
OUTPUT_PATH = File.join(OUTPUT_DIR, "index.html")

config = YAML.load_file(CONFIG_PATH)
author = config.fetch("author")
source = File.read(ABOUT_PATH)
body = source.sub(/\A---\s*\n.*?\n---\s*\n/m, "")

def inline_markdown(text)
  escaped = CGI.escapeHTML(text)
  escaped = escaped.gsub(/\*\*(.+?)\*\*/, '<strong>\1</strong>')
  escaped = escaped.gsub(/\*(.+?)\*/, '<em>\1</em>')
  escaped.gsub(/\[([^\]]+)\]\(([^)]+)\)/, '<a href="\2">\1</a>')
end

def flush_list(html, list)
  return if list.empty?

  html << "<ul>\n"
  list.each { |item| html << "  <li>#{inline_markdown(item)}</li>\n" }
  html << "</ul>\n"
  list.clear
end

html_body = +""
list = []
in_raw = false

body.each_line do |line|
  stripped = line.strip

  if stripped.start_with?("<style", "<script", "<div", "</div", "<ul", "</ul", "<li", "</li", "<span", "<img", "<details", "</details", "<summary", "</summary")
    flush_list(html_body, list)
    html_body << line
    in_raw = !stripped.include?("</style>") if stripped.start_with?("<style")
    in_raw = !stripped.include?("</script>") if stripped.start_with?("<script")
    next
  end

  if in_raw
    html_body << line
    in_raw = false if stripped.include?("</style>") || stripped.include?("</script>")
    next
  end

  if stripped.empty?
    flush_list(html_body, list)
    next
  end

  if stripped.start_with?("## ")
    flush_list(html_body, list)
    html_body << "<h2>#{inline_markdown(stripped.delete_prefix("## "))}</h2>\n"
  elsif stripped.start_with?("# ")
    flush_list(html_body, list)
    html_body << "<h1>#{inline_markdown(stripped.delete_prefix("# "))}</h1>\n"
  elsif stripped.start_with?("- ")
    list << stripped.delete_prefix("- ")
  elsif stripped == "---"
    flush_list(html_body, list)
    html_body << "<hr>\n"
  else
    flush_list(html_body, list)
    html_body << "<p>#{inline_markdown(stripped)}</p>\n"
  end
end

flush_list(html_body, list)

FileUtils.mkdir_p(OUTPUT_DIR)
File.write(OUTPUT_PATH, <<~HTML)
  <!doctype html>
  <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>#{CGI.escapeHTML(config["title"].to_s)}</title>
    <style>
      body {
        margin: 0;
        color: #2f3337;
        background: #fff;
        font-family: Georgia, "Times New Roman", serif;
      }
      a { color: #3273a8; text-decoration: none; }
      a:hover { text-decoration: underline; }
      .masthead {
        position: sticky;
        top: 0;
        z-index: 10;
        border-bottom: 1px solid #e8e8e8;
        background: rgba(255,255,255,.96);
      }
      .nav {
        max-width: 1420px;
        margin: 0 auto;
        padding: 14px 28px;
        display: flex;
        align-items: center;
        gap: 18px;
        flex-wrap: wrap;
      }
      .brand {
        margin-right: auto;
        font-weight: 700;
        color: #222;
      }
      .nav a {
        color: #4a4f55;
        font-size: 14px;
      }
      .layout {
        max-width: 1420px;
        margin: 0 auto;
        padding: 30px 28px 60px;
        display: grid;
        grid-template-columns: 280px minmax(0, 1fr);
        gap: 42px;
      }
      .sidebar {
        align-self: start;
        position: sticky;
        top: 76px;
      }
      .profile {
        text-align: center;
      }
      .avatar {
        width: 180px;
        max-width: 100%;
        border-radius: 8px;
      }
      .profile h2 {
        margin: 16px 0 6px;
        font-size: 22px;
      }
      .profile p {
        margin: 8px 0;
        line-height: 1.4;
      }
      .profile ul {
        list-style: none;
        padding: 0;
        margin: 18px 0 0;
        text-align: left;
      }
      .profile li {
        margin: 8px 0;
        line-height: 1.35;
      }
      main {
        min-width: 0;
        line-height: 1.55;
        font-size: 17px;
      }
      main h2 {
        margin-top: 34px;
        padding-bottom: 6px;
        border-bottom: 1px solid #e6e6e6;
        font-size: 26px;
      }
      main p {
        margin: 12px 0;
      }
      .anchor {
        display: block;
        position: relative;
        top: -82px;
        visibility: hidden;
      }
      hr {
        border: 0;
        border-top: 1px solid #ececec;
        margin: 22px 0;
      }
      @media (max-width: 860px) {
        .layout {
          display: block;
          padding: 20px 18px 48px;
        }
        .sidebar {
          position: static;
          margin-bottom: 26px;
        }
        .profile ul {
          text-align: center;
        }
      }
    </style>
  </head>
  <body>
    <header class="masthead">
      <nav class="nav">
        <a class="brand" href="/">#{CGI.escapeHTML(config["title"].to_s)}</a>
        <a href="#about-me">About Me</a>
        <a href="#education">Education</a>
        <a href="#news">News</a>
        <a href="#publications">Publications</a>
        <a href="#preprints">Preprints</a>
        <a href="#co-author-papers">Co-author Papers</a>
        <a href="#awards">Awards</a>
        <a href="#other-information">Other</a>
      </nav>
    </header>
    <div class="layout">
      <aside class="sidebar">
        <div class="profile">
          <img class="avatar" src="../#{CGI.escapeHTML(author["avatar"].to_s)}" alt="#{CGI.escapeHTML(author["name"].to_s)}">
          <h2>#{CGI.escapeHTML(author["name"].to_s)}</h2>
          <p>#{CGI.escapeHTML(author["bio"].to_s)}</p>
          <ul>
            <li>#{CGI.escapeHTML(config["description"].to_s)}</li>
            <li>#{CGI.escapeHTML(author["location"].to_s)}</li>
            <li>#{CGI.escapeHTML(author["employer"].to_s)}</li>
            <li><a href="mailto:#{CGI.escapeHTML(author["email"].to_s)}">Email</a></li>
            <li><a href="https://github.com/#{CGI.escapeHTML(author["github"].to_s)}">GitHub</a></li>
            <li><a href="#{CGI.escapeHTML(author["googlescholar"].to_s)}">Google Scholar</a></li>
          </ul>
        </div>
      </aside>
      <main>
        #{html_body}
      </main>
    </div>
  </body>
  </html>
HTML

puts OUTPUT_PATH
