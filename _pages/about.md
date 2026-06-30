---
permalink: /
title: ""
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

<style>
.contribution {
    margin-top: 10px;
    background-color: #f5f5f5;
    color: #2f3337;
    padding: 10px;
    border-radius: 5px;
    border: 1px solid #ddd;
    font-size: 1em;
    line-height: 1.35;
    box-sizing: border-box;
}

html[data-theme="dark"] .contribution {
    background-color: #3a3a3a;
    color: #f2f2f2;
    border-color: #666;
}

.contribution-details summary {
    cursor: pointer;
    display: inline-flex;
    align-items: center;
    gap: 4px;
    list-style: none;
}

.contribution-details summary::-webkit-details-marker {
    display: none;
}

.contribution-details summary::after {
    content: "";
    display: inline-block;
    width: 0;
    height: 0;
    margin-top: 2px;
    border-left: 4px solid transparent;
    border-right: 4px solid transparent;
    border-top: 5px solid currentColor;
    transition: transform 0.15s ease-in-out;
}

.contribution-details[open] summary::after {
    transform: rotate(180deg);
}

.contribution ul {
    margin: 0 0 0 20px;
    padding: 0;
}

.contribution li {
    margin-top: 4px;
}

.news-list li:nth-child(n + 10) {
    display: none;
}

.news-date {
    font-weight: bold;
    margin-right: 6px;
}

.social-row {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 10px 16px;
    margin: -0.2em 0 1em;
}

.social-link {
    display: inline-flex;
    align-items: center;
    gap: 6px;
    color: #224b8d;
    text-decoration: underline;
}

.social-icon {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    width: 1.35em;
    height: 1.35em;
    flex: 0 0 auto;
}

.douyin-icon svg {
    width: 100%;
    height: 100%;
}

.rednote-icon {
    width: auto;
    min-width: 1.35em;
    padding: 0 0.25em;
    border-radius: 0.35em;
    background: #ff2442;
    color: #ffffff;
    font-size: 0.8em;
    font-weight: 700;
    line-height: 1.35;
}

.publication-item {
    display: grid;
    grid-template-columns: minmax(340px, 38%) minmax(0, 1fr);
    align-items: stretch;
    gap: 0 26px;
    margin-top: 22px;
    overflow-anchor: none;
}

.publication-visual {
    position: relative;
    width: 100%;
    height: 100%;
    min-height: 185px;
}

.venue-badge {
    position: absolute;
    top: 0;
    left: 0;
    z-index: 1;
    padding-left: 1rem;
    padding-right: 1rem;
    margin-top: .5em;
    margin-left: -.5em;
    background-color: #00369f;
    color: #ffffff;
    font-size: .8em;
}

.publication-image {
    width: 100%;
    height: 100%;
    min-height: 185px;
    max-width: 100%;
    object-fit: contain;
    object-position: top left;
}

.publication-info {
    flex: 1 1 0;
    min-width: 0;
    align-self: start;
}

.publication-actions {
    display: flex;
    flex-wrap: nowrap;
    align-items: baseline;
    gap: 0 8px;
}

.publication-actions .contribution-details {
    display: block;
    flex: 1 1 auto;
    min-width: 0;
    margin-top: 0;
    scroll-margin-top: 90px;
}

.coauthor-paper {
    margin-top: 14px;
}

.awards-list {
    display: grid;
    gap: 8px;
    margin: 12px 0 6px;
}

.award-item {
    display: grid;
    grid-template-columns: 74px minmax(0, 1fr);
    align-items: center;
    gap: 10px;
    padding: 8px 13px;
    border: 1px solid #e2dfd7;
    border-left: 3px solid #b78b32;
    border-radius: 6px;
    background: linear-gradient(90deg, #fff9ec 0%, #ffffff 54%);
    box-shadow: 0 1px 4px rgba(47, 51, 55, 0.05);
}

.award-year {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    width: 56px;
    min-height: 26px;
    border-radius: 999px;
    background-color: #2f3337;
    color: #ffffff;
    font-weight: bold;
    font-size: 1em;
    letter-spacing: 0;
}

.award-title {
    color: #2f3337;
    font-size: 1em;
    line-height: 1.25;
    font-weight: bold;
}

html[data-theme="dark"] .award-item {
    background: linear-gradient(90deg, #3a352b 0%, #2f3337 58%);
    border-color: #675a3a;
    box-shadow: none;
}

html[data-theme="dark"] .award-year {
    background-color: #f2f2f2;
    color: #2f3337;
}

html[data-theme="dark"] .award-title {
    color: #f2f2f2;
}

@media screen and (min-width: 925px) {
    #main {
        max-width: 1420px;
    }

    .page {
        padding-left: 2%;
        padding-right: 0;
    }
}

@media screen and (max-width: 767px) {
    .publication-item {
        display: block;
        margin-top: 24px;
    }

    .publication-image {
        display: block;
        width: 100%;
        height: auto;
        min-height: 0;
        max-width: 520px;
        margin: 0 0 12px 0;
    }

    .publication-visual {
        min-height: 0;
        max-width: 520px;
        margin-bottom: 12px;
    }

    .venue-badge {
        font-size: .8em;
    }

    .publication-actions {
        flex-wrap: wrap;
    }

    .award-item {
        grid-template-columns: 1fr;
        gap: 8px;
    }
}
</style>

<style>
/* Education section styles (single-line items, soft blue background) */
.education {
  display: flex;
  flex-direction: column;
  gap: 10px;
  margin: 14px 0 22px 0;
}
.edu-item {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 12px;
  padding: 10px 14px;
  border: 1px solid #d6eefc;
  border-radius: 10px;
  background: linear-gradient(180deg,#e8f6ff 0%, #f5fcff 100%);
  min-height: 44px;
}
.edu-main {
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  color: #0b5f86;
  font-weight: 600;
  font-size: 1em;
}
.edu-year {
  color: #0b67a0;
  font-size: 1em;
  white-space: nowrap;
  margin-left: 12px;
}

html[data-theme="dark"] .edu-item {
  background: linear-gradient(180deg,#0b4966 0%, #072834 100%);
  border-color: #06475f;
}
html[data-theme="dark"] .edu-main { color: #bfeeff; }
html[data-theme="dark"] .edu-year { color: #7fd6ff; }
</style>

<script>
document.addEventListener("click", function(event) {
    if (!event.target.closest(".contribution-details > summary")) {
        return;
    }

    var scrollX = window.scrollX;
    var scrollY = window.scrollY;
    window.requestAnimationFrame(function() {
        window.scrollTo(scrollX, scrollY);
    });
    window.requestAnimationFrame(function() {
        window.scrollTo(scrollX, scrollY);
    });
});
</script>

<span class="anchor" id="about-me"></span>

I am a Ph.D. student at The Hong Kong University of Science and Technology (HKUST), starting in Fall 2026, supervised by Prof. [Xiaomeng Li](https://scholar.google.com/citations?user=uVTzPpoAAAAJ&hl=en). Prior to this, I received my master's degree from Xidian University, the State Key Laboratory of Integrated Services Networks (ISN), in 2026, advised by Prof. [De Cheng](https://scholar.google.com/citations?user=180lASkAAAAJ&hl=en) and Prof. [Nannan Wang](https://scholar.google.com/citations?user=SRBn7oUAAAAJ&hl=en), and received my bachelor's degree from Xidian University in 2023. My research interests are in computer vision and multi-modal learning, with specific interest in **continual learning**, **Person re-identification**, **parameter-efficient fine-tuning**, etc.

[Email](mailto:lingfenghe077@gmail.com){:target="_self"}: lingfenghe077@gmail.com / [Github](https://github.com/HHHLF) / [Google scholar](https://scholar.google.com/citations?user=bUCPpbAAAAAJ&hl=zh-CN)

<div class="social-row">
  <a class="social-link" href="https://www.douyin.com/search/1263158490?type=user" target="_blank" rel="noopener">
    <span class="social-icon douyin-icon" aria-hidden="true">
      <svg viewBox="0 0 48 48" role="img" focusable="false">
        <path fill="#00f2ea" d="M19.9 34.5c-2.3 0-4.1-1.8-4.1-4s1.8-4 4.1-4c.5 0 1 .1 1.5.3v-8.1a12 12 0 0 0-1.5-.1c-6.7 0-12.1 5.3-12.1 11.9s5.4 11.9 12.1 11.9c6.6 0 12-5.2 12.1-11.7V10.9c2.8 3.3 6 5.1 9.8 5.4V8.5c-3.8-.8-6.8-3-9.4-6.9h-8.2v28.8c0 2.3-1.9 4.1-4.3 4.1z"/>
        <path fill="#ff0050" d="M23 36.3c-2.3 0-4.1-1.8-4.1-4s1.8-4 4.1-4c.5 0 1 .1 1.5.3v-8.1a12 12 0 0 0-1.5-.1c-6.7 0-12.1 5.3-12.1 11.9s5.4 11.9 12.1 11.9c6.6 0 12-5.2 12.1-11.7V12.7c2.8 3.3 6 5.1 9.8 5.4v-7.8c-3.8-.8-6.8-3-9.4-6.9h-8.2v28.8c0 2.3-1.9 4.1-4.3 4.1z"/>
        <path fill="#111111" d="M21.4 35.4c-2.3 0-4.1-1.8-4.1-4s1.8-4 4.1-4c.5 0 1 .1 1.5.3v-8.1a12 12 0 0 0-1.5-.1c-6.7 0-12.1 5.3-12.1 11.9s5.4 11.9 12.1 11.9c6.6 0 12-5.2 12.1-11.7V11.8c2.8 3.3 6 5.1 9.8 5.4V9.4c-3.8-.8-6.8-3-9.4-6.9h-8.2v28.8c0 2.3-1.9 4.1-4.3 4.1z"/>
      </svg>
    </span>
    Douyin: 1263158490
  </a>
  <a class="social-link" href="https://www.xiaohongshu.com/user/profile/636f0b7700000001f01b4ff" target="_blank" rel="noopener">
    <span class="social-icon rednote-icon" aria-hidden="true">小红书</span>
    Xiaohongshu
  </a>
</div>
 
<span class="anchor" id="education"></span>

## 🎓 Education

<div class="education">
  <div class="edu-item">
    <div>
        <div class="edu-main">Ph.D. (in progress), The Hong Kong University of Science and Technology</div>
    </div>
    <div class="edu-year">2026–</div>
  </div>

  <div class="edu-item">
    <div>
        <div class="edu-main">M.S., Xidian University</div>
    </div>
    <div class="edu-year">2023–2026</div>
  </div>

  <div class="edu-item">
    <div>
        <div class="edu-main">B.S., Xidian University (Qian Xuesen Experimental Class)</div>
    </div>
    <div class="edu-year">2019–2023</div>
  </div>
</div>

<span class="anchor" id="news"></span>

## 🔥 News

<ul class="news-list">
  <li><span class="news-date">[2026.05]</span> One paper about Continual Learning is accepted by ICML 2026!</li>
  <li><span class="news-date">[2026.04]</span> I received the Hong Kong PhD Fellowship Scheme (HKPFS) award!</li>
  <li><span class="news-date">[2026.01]</span> I received the official offer from HKUST for Fall 2026!</li>
  <li><span class="news-date">[2025.11]</span> One paper about Continual Learning is accepted by AAAI 2026!</li>
  <li><span class="news-date">[2025.06]</span> One paper about Person Re-Identification is accepted by IJCV!</li>
  <li><span class="news-date">[2024.12]</span> One paper about Person Re-Identification is accepted by IJCV!</li>
  <li><span class="news-date">[2023.08]</span> One paper about Person Re-Identification is accepted by ACM MM 2023 (Oral)!</li>
</ul>

<span class="anchor" id="publications"></span>

## 📝 Publications (First author/Student first author)

(*equal contribution; only papers as first authors are included; click to view contribution)

---

<div class="publication-item">
  <div class="publication-visual">
    <span class="badge venue-badge">ICML 2026</span>
    <img class="publication-image" src="images/loda.png" alt="Overall Framework">
  </div>
  
  <div class="publication-info">
    <strong>Task-Driven Subspace Decomposition for Knowledge Sharing and Isolation in LoRA-based Continual Learning</strong><br>
    <strong>Lingfeng He</strong>, De Cheng, Huaijie Wang, Xi Yang, Nannan Wang, Xinbo Gao<br><br>

    <div class="publication-actions">
      <a href="https://arxiv.org/abs/2603.00191">[Arxiv]</a> 
      <a href="https://github.com/HHHLF/LoDA_ICML2026">[Code]</a>
      <details class="contribution-details">
        <summary><strong>Contribution</strong></summary>
        <div class="contribution">
          <ul>
            <li>We analyze LoRA learning capability in Continual Learning from a projection energy perspective.</li>
            <li>Based on the projection energy, we propose LoDA to decompose continual updates into two branches for learning general and task-specific knowledge.</li>
          </ul>
        </div>
      </details>
    </div>
  </div>
</div>

<div class="publication-item">
  <div class="publication-visual">
    <span class="badge venue-badge">AAAI 2026</span>
    <img class="publication-image" src="images/seca1.png" alt="Overall Framework">
  </div>
  
  <div class="publication-info">
    <strong>Harnessing Textual Semantic Priors for Knowledge Transfer and Refinement in CLIP-Driven Continual Learning</strong><br>
    <strong>Lingfeng He</strong>, De Cheng, Di Xu, Huaijie Wang, Nannan Wang<br><br>

    <div class="publication-actions">
      <a href="https://www.arxiv.org/abs/2508.01579">[Arxiv]</a> 
      <a href="https://github.com/HHHLF/SECA_AAAI2026">[Code]</a>
      <details class="contribution-details">
        <summary><strong>Contribution</strong></summary>
        <div class="contribution">
          <ul>
            <li>We propose a novel distillation algorithm for Continual Learning, which selectively transfer old knowledge to new model via textual semantic guidance.</li>
            <li>We identify the modality gap issue in CLIP, and construct a semantic-enriched visual classifier via textual relationships.</li>
          </ul>
        </div>
      </details>
    </div>
  </div>
</div>


<div class="publication-item">
  <div class="publication-visual">
    <span class="badge venue-badge">IJCV 2024</span>
    <img class="publication-image" src="images/mult.png" alt="MULT Framework">
  </div>
  
  <div class="publication-info">
    <strong>Exploring Homogeneous and Heterogeneous Consistent Label Associations for Unsupervised Visible-Infrared Person ReID</strong><br>
    <strong>Lingfeng He</strong>, De Cheng, Nannan Wang, Xinbo Gao<br><br>

    <div class="publication-actions">
      <a href="https://arxiv.org/pdf/2402.00672">[Arxiv]</a> 
      <a href="https://github.com/HHHLF/MULT_IJCV2024">[Code]</a>
      <details class="contribution-details">
        <summary><strong>Contribution</strong></summary>
        <div class="contribution">
          <ul>
            <li>We propose a novel pseudo-label optimization algorithm for unsupervised VI-ReID by minimizing homogeneous and heterogeneous feature-label space consistency terms.</li>
            <li>We propose a novel framework that alternates between the explicit optimization of pseudo-labels and the feature extractor.</li>
          </ul>
        </div>
      </details>
    </div>
  </div>
</div>


<div class="publication-item">
  <div class="publication-visual">
    <span class="badge venue-badge">IJCV 2025</span>
    <img class="publication-image" src="images/saclr.png" alt="SACLR Framework">
  </div>
  
  <div class="publication-info">
    <strong>Semantic-Aligned Learning with Collaborative Refinement for Unsupervised VI-ReID</strong><br>
    De Cheng*, <strong>Lingfeng He*</strong>, Nannan Wang, Dingwen Zhang, Xinbo Gao<br><br>

    <div class="publication-actions">
      <a href="https://arxiv.org/pdf/2504.19244">[Arxiv]</a> 
      <a href="https://github.com/HHHLF/SACLR_IJCV2025">[Code]</a>
      <details class="contribution-details">
        <summary><strong>Contribution</strong></summary>
        <div class="contribution">
          <ul>
            <li>To address the semantic inconsistency issue in unsupervised VI-ReID, and propose a query-guided attention and a semantic-aligned optimization.</li>
            <li>We propose a novel re-ranking algorithm for VI-ReID inspired by the Graph Neural Network (GNN).</li>
          </ul>
        </div>
      </details>
    </div>
  </div>
</div>


<div class="publication-item">
  <div class="publication-visual">
    <span class="badge venue-badge">ACM MM 2023 (Oral)</span>
    <img class="publication-image" src="images/MBCCM.png" alt="MBCCM Framework">
  </div>
  
  <div class="publication-info">
    <strong>Efficient Bilateral Cross-Modality Cluster Matching for Unsupervised Visible-Infrared Person Re-ID</strong><br>
    De Cheng*, <strong>Lingfeng He*</strong>, Nannan Wang, Shizhou Zhang, Zhen Wang, Xinbo Gao<br><br>

    <div class="publication-actions">
      <a href="https://arxiv.org/pdf/2305.12673">[Arxiv]</a>
      <details class="contribution-details">
        <summary><strong>Contribution</strong></summary>
        <div class="contribution">
          <ul>
            <li>We propose MBCCM, which formulates cross-modality label association as a bilateral bipartite graph matching problem.</li>
            <li>We propose a contrastive-learning-based framework with a modality alignment objective to synchronously learn modality-shared and modality-specific features. </li>
          </ul>
        </div>
      </details>
    </div>
  </div>
</div>

---

<span class="anchor" id="preprints"></span>

## 📌 Preprints (First author/Student first author)

<div class="publication-item">
  <div class="publication-visual">
    <span class="badge venue-badge">TIP (Under Review)</span>
    <img class="publication-image" src="images/ckaa.png" alt="CKAA Framework">
  </div>
  
  <div class="publication-info">
    <strong>CKAA: Cross-subspace Knowledge Alignment and Aggregation for Robust Continual Learning</strong><br>
    <strong>Lingfeng He</strong>, De Cheng, Zhiheng Ma, Huaijie Wang, Dingwen Zhang, Nannan Wang, Xinbo Gao<br><br>

    <div class="publication-actions">
      <a href="https://www.arxiv.org/pdf/2507.09471">[Arxiv]</a>
      <details class="contribution-details">
        <summary><strong>Contribution</strong></summary>
        <div class="contribution">
          <ul>
            <li>We propose a DKA training approach for [Continual Learning with task-specific modules], which enhances model robustness under misleading task-IDs.</li>
            <li>We propose Task-Confidence-guided Mixture-of-Adapter to better integrate task-specific information in inference without task-IDs.</li>
          </ul>
        </div>
      </details>
    </div>
  </div>
</div>

---
<span class="anchor" id="co-author-papers"></span>

## 🤝 Co-author Papers

<div class="coauthor-paper">
  <strong>EKPC: Elastic Knowledge Preservation and Compensation for Class-Incremental Learning</strong><br>
  Huaijie Wang, De Cheng, <strong>Lingfeng He</strong>, Yan Li, Jie Li, Nannan Wang, Xinbo Gao<br>
  <em>International Journal of Computer Vision (IJCV), 2026</em>
</div>

<div class="coauthor-paper">
  <strong>StPR: Spatiotemporal Preservation and Routing for Exemplar-Free Video Class-Incremental Learning</strong><br>
  Huaijie Wang, De Cheng, Guozhang Li, Zhipeng Xu, <strong>Lingfeng He</strong>, Jie Li, Nannan Wang, Xinbo Gao<br>
  <em>International Conference on Learning Representations (ICLR), 2026</em>
</div>

<div class="coauthor-paper">
  <strong>Progressive Feature-Attribute Matching via Bi-directional Generation for Transductive Zero-Shot Learning</strong><br>
  De Cheng, Lei Wei, Chaowei Fang, <strong>Lingfeng He</strong>, Nannan Wang, Xinbo Gao<br>
  <em>IEEE Transactions on Circuits and Systems for Video Technology (TCSVT), 2025</em>
</div>

<div class="coauthor-paper">
  <strong>Unsupervised Visible-Infrared Person ReID by Collaborative Learning with Neighbor-Guided Label Refinement</strong><br>
  De Cheng, Xiaojian Huang, Nannan Wang, <strong>Lingfeng He</strong>, Zhihui Li, Xinbo Gao<br>
  <em>Proceedings of the 31st ACM International Conference on Multimedia (ACM MM), 2023</em>
</div>

---

<span class="anchor" id="awards"></span>

## 🎖 Awards

<div class="awards-list">
  <div class="award-item">
    <span class="award-year">2026</span>
    <span class="award-title">Hong Kong PhD Fellowship Scheme (HKPFS)</span>
  </div>

  <div class="award-item">
    <span class="award-year">2026</span>
    <span class="award-title">HKUST RedBird PhD Recruitment Award (2026-27)</span>
  </div>

  <div class="award-item">
    <span class="award-year">2025</span>
    <span class="award-title">National Scholarship of China</span>
  </div>

  <div class="award-item">
    <span class="award-year">2025</span>
    <span class="award-title">Nomination for the Xidian University President Award (Top 6 university-wide)</span>
  </div>

  <div class="award-item">
    <span class="award-year">2024</span>
    <span class="award-title">National Scholarship of China</span>
  </div>
</div>

---

<span class="anchor" id="other-information"></span>

## 💬 Other Information

I'm He Lingfeng. My hometown is Ningbo, Zhejiang Province, China. 

I have a strong passion for pop music. I was fortunate to join **the Xiatian Music Club**, where I met many like-minded friends. I was also honored as one of **the Top Ten Campus Singers** during both my undergraduate and master's studies. Music has brought energy and inspiration to my research life. 

I am also very interested in sports. In my spare time, I enjoy playing basketball and badminton.

I hope to connect with more like-minded friends through this platform, so we can share ideas and grow together.

---
