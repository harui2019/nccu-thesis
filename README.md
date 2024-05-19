# 政治大學碩博士論文 XeLaTeX 模版

---

## 前言

- 這份模板是從[交通大學碩博士論文 XeLaTeX 模版](https://github.com/Po-haoHuang/nctu-thesis) Fork 而來
  ，前身是 [tzhuan](http://github.com/tzhuan) 的
  [臺灣大學碩博士論文 XeLaTeX 模板](https://github.com/tzhuan/ntu-thesis)。
- 最後則由 [walker088](https://github.com/Walker088) 在撰寫論文期間根據 [政大圖書館](http://www.lib.nccu.edu.tw/thesis/download.html) 所提供的論文格式規範加以修改。

---

## 下載

您可以直接 clone 這個 git repository，或者下載成 zip.

---

## 快速開始

- 這份文件主要提供在 [Overleaf](https://www.overleaf.com/) 上編輯撰寫，將這個 repo 下載成 zip 後就可以直接輸入 overleaf 順利編譯。
- 主要章節會在 `./chapter/` 資料夾裡面，可以自行新增。
- 章節順序請在 `./thesis.tex` 內編排修改。
- **_口試委員審定書_** 會由系辦助教在口試當天協助印出，口試完成後將有口委簽名的版本掃描成 PDF 檔，取代 `./pdfs/cert.pdf` ，就可以修改成自己的審定書了。

### 備註

- 在 overleaf 上傳 zip file 後，需要到 `Menu > Settings > Compiler` 改成 `XeLaTeX` 才可以正確編譯。

## 詳細說明

目前請先參考交大 [shaform](https://github.com/shaform) 所撰寫的 [wiki](https://github.com/shaform/ntu-thesis/wiki) 說明。

## Changelog

- v1.3.1
  - Update `README.md`
  - Merge the latest changes from [tzhuan](https://github.com/tzhuan/ntu-thesis)
- v1.3
  - Enable fake bold/italic font by default, thanks to [alan23273850](https://github.com/alan23273850).
- v1.2
  - Refine the certification page.
- v1.1
  - New switch to turn on/off the watermark and DOI for the first page, thanks to [louis2889184](https://github.com/louis2889184).
- v1.0
  - Do not show watermark in the cover pages, thanks to [louis2889184](https://github.com/louis2889184).
  - The first fork release
  - Add Chinese support
  - Add NTU watermark & password protection
  - Add certification and spine .docx files
  - Add setup
  - Add hypertext links in the document
  - Adjust line spacing
- v0.9
  - Support inserting certification pdf file, thanks to [dragonkao730](https://github.com/dragonkao730).
- v0.8
  - Support watermark with transparent background, thanks to [zipong](https://github.com/zipong).
- v0.7
  - Add keywords and PDF properties supports, thanks to [moneycat](https://github.com/moneycat).
- v0.6
  - Add DOI support, thanks to [WeiTang114](https://github.com/WeiTang114).
- v0.5.1
  - Avoid removing pdf files mistakenly.
- v0.5
  - Fix a typo, thanks to [dyinpao](https://github.com/dyinpao).
  - Support watermark and password setting, thanks to [shaform](https://github.com/shaform) and [qcl](https://github.com/qcl).
- v0.4
  - Rename \year, \month and \day to avoid the conflicts. Thanks to [shaform](https://github.com/shaform).
- v0.3.1
  - Fix issue #2, thanks to [BachiLi](https://github.com/BachiLi).
- v0.3
  - Fix issue #1, thanks to [simonxander](https://github.com/simonxander).
  - Set doublespacing by default, add singlespacing and onehalfspacing support.
  - Refine the cover page and the certification.
- v0.2
  - Add proposal support
- v0.1
  - The first release
