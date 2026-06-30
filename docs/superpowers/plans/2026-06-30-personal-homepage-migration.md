# Personal Homepage Migration Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Turn `ZhipengXx.github.io-main` into He Lingfeng's single-page academic homepage using content and assets from `个人主页源码`.

**Architecture:** Keep the target Jekyll template layout and migrate only the page-level content, navigation, author metadata, and referenced image assets. Avoid bringing over unused collections or generated output.

**Tech Stack:** Jekyll, Liquid, Markdown, inline scoped CSS, static image assets.

---

### Task 1: Migrate Site Metadata

**Files:**
- Modify: `_config.yml`
- Modify: `_data/navigation.yml`

- [ ] **Step 1: Update author/site metadata**

Set `title`, `description`, `repository`, and `author` fields for He Lingfeng. Use `selfie-2.png` as the sidebar avatar and `HHHLF` as the GitHub username.

- [ ] **Step 2: Update one-page navigation**

Use anchors for About Me, Education, News, Publications, Preprints, Co-author Papers, Awards, and Other Information.

### Task 2: Migrate Homepage Content

**Files:**
- Modify: `_pages/about.md`

- [ ] **Step 1: Replace the page body**

Replace the Zhipeng Xu content with the He Lingfeng content from `个人主页源码/_pages/about.md`.

- [ ] **Step 2: Adapt heading anchors**

Use headings that generate stable Jekyll anchors matching `_data/navigation.yml`.

- [ ] **Step 3: Keep scoped styles**

Keep the source page CSS required for publication cards, contribution details, education cards, awards, and responsive behavior.

### Task 3: Copy Referenced Assets

**Files:**
- Copy into: `images/selfie-2.png`
- Copy into: `images/loda.png`
- Copy into: `images/seca1.png`
- Copy into: `images/mult.png`
- Copy into: `images/saclr.png`
- Copy into: `images/MBCCM.png`
- Copy into: `images/ckaa.png`

- [ ] **Step 1: Copy only referenced images**

Copy the assets used by the migrated homepage from `个人主页源码/images`.

### Task 4: Verify

**Files:**
- Read/verify edited files and build output.

- [ ] **Step 1: Check references**

Search for remaining template author strings and missing expected He Lingfeng strings.

- [ ] **Step 2: Build Jekyll**

Run `bundle exec jekyll build` in `ZhipengXx.github.io-main`. If dependencies are unavailable, report the exact failure.
