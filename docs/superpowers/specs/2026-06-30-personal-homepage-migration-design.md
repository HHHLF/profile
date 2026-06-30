# Personal Homepage Migration Design

## Goal

Use `ZhipengXx.github.io-main` as the active Jekyll/GitHub Pages template and migrate the real personal homepage content from `个人主页源码` into it.

## Scope

- Modify only `ZhipengXx.github.io-main`.
- Treat `个人主页源码` as read-only source material.
- Keep the result as a focused single-page academic homepage.
- Do not migrate example blog posts, teaching pages, talks pages, portfolio pages, CV JSON pages, generated `_site` files, or unused academicpages collections.

## Content

The homepage will include:

- Bio and contact links for He Lingfeng.
- Education.
- News.
- First-author/student-first-author publications with images, links, and collapsible contribution notes.
- Preprints.
- Co-author papers.
- Awards.
- Other information.

## Files

- `_config.yml`: replace site title, description, repository, and author metadata with He Lingfeng information.
- `_data/navigation.yml`: update in-page navigation anchors to match the migrated sections.
- `_pages/about.md`: replace the template author's content with the source homepage content and adapt section headings to stable anchors.
- `images/`: copy the avatar and publication assets used by the migrated homepage.
- Existing layout, sidebar, includes, and Sass files remain in place unless a small compatibility fix is required.

## Visual Design

The site keeps the target template's overall layout: header navigation, left author profile, and main content column. Publication entries use the source content's image-plus-text layout because it is more suitable for paper previews than the target template's original paper cards. Inline page CSS stays scoped inside `_pages/about.md` to avoid a larger theme refactor.

## Verification

Build the Jekyll site from `ZhipengXx.github.io-main`. If dependencies are available, run `bundle exec jekyll build`; otherwise report the missing dependency and verify the edited files and asset references directly.
