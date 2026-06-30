# AGENTS.md — Arxiu històric de webs de l'ICMAB

Aquest repositori és un **arxiu estàtic** de webs antigues de l'institut (ICMAB-CSIC).
Es publica a `https://archive.icmab.es`. No és una aplicació: són pàgines HTML
estàtiques guardades com a històric. No hi ha build, ni backend, ni base de dades.

## 1. Estructura general

Arrel del repo (`c:\laragon\www\active`):

- **Pàgines índex** (el "catàleg" navegable, fetes amb la plantilla BootstrapMade "Active"):
  - `events.html` → congressos, workshops, summer schools, cursos
  - `projects.html` → projectes
  - `annualreports.html` → memòries anuals
  - `index.html` és la home; `about.html`, `contact.html`, `services.html`, `team.html`,
    `portfolio-details.html`, `index2.html` són restes de la plantilla (poc o gens usades).
- **Webs arxivades** (una carpeta per web, és el contingut real i pesat):
  - `events_arxivats/<nom>/`
  - `projects_arxivats/<nom>/`
  - `annual_arxivats/<any>/`
- **Assets compartits de la plantilla índex**: `assets/css/main.css`, `assets/js/main.js`,
  `assets/vendor/` (bootstrap, aos, swiper, glightbox, isotope, etc.).
- **Imatges de les targetes (cards)** del catàleg:
  - `assets/img/congressos/` → cards d'`events.html` (n'hi ha ~55)
  - `assets/img/projectes/` → cards de `projects.html`
  - `assets/img/annual/` → cards d'`annualreports.html`

> Nota: les rutes d'imatges/web dins dels índexs solen fer servir `\` (backslash, estil
> Windows). Funcionen igual amb `/`, però per consistència segueix l'estil majoritari del fitxer.

## 2. Entorn i eines (IMPORTANT)

- **Shell: PowerShell** a Windows. No facis servir sintaxi bash (`ls -la`, `&&` encadenat a
  l'estil bash de vegades falla). Usa cmdlets PowerShell (`Get-ChildItem`, `Measure-Object`, …).
- Eines disponibles: `python` (amb **Pillow**), `node`/`npx`, `ffmpeg`, `git`, `convert` (el de
  Windows, **NO** ImageMagick).
- **NO** instal·lades: `exiftool`, ImageMagick (`magick`), `pikepdf`, `pymupdf`/`fitz`,
  `playwright` (es pot instal·lar amb `npx playwright` o `pip install`).
- Per scripts puntuals, prefereix Python (Pillow ja hi és). Si cal tractar PDF/Office,
  instal·la el paquet concret (`pip install pikepdf` o usa `zipfile` per a Office).

## 3. Afegir una web nova al catàleg (tasca habitual)

Quan l'usuari posa una carpeta nova a `events_arxivats/` (o projects/annual), cal:

### 3a. Crear la card (captura de pantalla)
1. Genera una captura de la `index.html` de la carpeta nova i desa-la com a card.
   Mida objectiu: **1200×900 px (4:3), JPG**, igual que la resta de cards.
   Desa-la a la carpeta de cards corresponent amb el nom de la carpeta:
   `assets/img/congressos/<nom>.jpg` (o `projectes/`, `annual/`).
2. Recepta amb Playwright (instal·la sota demanda):
   ```powershell
   npx --yes playwright install chromium
   # captura a 1200x900 i desa-la
   ```
   Després retalla/redimensiona a 1200×900 amb Pillow si cal. Si la pàgina té un
   hero/banner representatiu, també és vàlid reutilitzar aquesta imatge retallada a 4:3.

### 3b. Afegir l'entrada a l'índex
Les entrades viuen dins de `div.row.gy-4.isotope-container` i estan **ordenades per any,
de més nou a més antic** (a dalt el més recent). Insereix la nova al lloc cronològic correcte.

Plantilla d'entrada per a `events.html`:

```html
<div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-CATEGORIA">
  <img src="assets/img/congressos/NOM.jpg" class="img-fluid" alt="">
  <div class="portfolio-info">
    <h4>TÍTOL CURT</h4>
    <p>Descripció breu i dates / lloc.</p>
    <a href="assets/img/congressos/NOM.jpg" title="TÍTOL CURT"
      data-gallery="portfolio-gallery-branding" class="glightbox preview-link"><i
        class="bi bi-zoom-in"></i></a>
    <a href="events_arxivats\NOM\index.html" title="Web" class="details-link" target="_blank"><i
        class="bi bi-link-45deg"></i></a>
  </div>
</div>
```

- `CATEGORIA` (classe de filtre d'`events.html`): una de
  `filter-congres`, `filter-workshop`, `filter-summerschool`, `filter-course`.
- A `projects.html` i `annualreports.html` els filtres estan comentats; la classe de
  categoria és irrellevant però mantén el patró `portfolio-item isotope-item filter-...`.
- El títol del `glightbox` (`title="..."`) ha de coincidir amb l'`<h4>`.

### Backlog pendent
Aquestes carpetes ja existeixen a `events_arxivats/` però **encara no tenen entrada** a
`events.html` (sèrie JPhD): `jphd2011, jphd2013, jphd2015, jphd2016, jphd2017, jphd2019,
jphd2020, jphd2021, jphd2023, jphd2024, jphd2025`. Quan se't demani, afegeix-les amb card.

## 4. Neteja de metadades (normativa de seguretat)

Objectiu: cap foto, PDF, PPTX o DOC(X) ha de contenir metadades (autor, GPS, software, etc.).

- **Imatges** (`.jpg/.jpeg/.png/.webp/.tiff`): re-desa amb Pillow sense EXIF/ICC.
  Estratègia: obrir, recrear amb només les dades de píxel i desar. Verifica després que
  no queden blocs EXIF/XMP.
- **PDF**: eliminar el `/Info` i metadades XMP. Cal instal·lar `pikepdf`
  (`pip install pikepdf`) o `pymupdf`. Documenta-ho si ho fas.
- **Office (DOCX/PPTX/XLSX)**: són ZIP. Cal netejar `docProps/core.xml`,
  `docProps/app.xml` (i custom) amb `python -m zipfile` / la llibreria `zipfile`.
- Fes sempre la feina de manera **idempotent** i verificable (un segon passi no ha de
  trobar res a netejar). No toquis el contingut visible, només metadades.

## 5. Reducció de pes / neteja de codi (sense pressa)

La majoria de webs venen de **Joomla convertit a estàtic** amb una eina poc eficient.
Pesen molt més del que toca. Patrons de "bloat" detectats (segurs de revisar/eliminar amb cura):

- **JS duplicat amb sufix hash**: a `js/` hi ha desenes de còpies gairebé idèntiques, p.ex.
  `core.min_1096573067.js`, `theme_1214557058.js`, `uikit.min_1001133218.js`,
  `messages.min_*.js`, `uikit-icons-kojiro.min_*.js`. Normalment només cal **un** de cada
  (el referenciat pels HTML). Comprova quins `src=` s'usen realment abans d'esborrar.
- **Imatges duplicades**: variants del mateix fitxer com `Programme 1.jpg`,
  `Programme 1-.jpg`, `Programme 1--1bb579c9.jpeg`. Conserva la versió usada pels HTML.
- **Fonts senceres innecessàries**: FontAwesome complet (`fa-*.ttf` + `.woff2`) i dotzenes
  de subsets `montserrat-*.woff2`. Sovint només se'n fan servir uns quants.
- **Fitxers escombraria de la conversió**: carpetes `component/`, fitxers `*f0fe.html`,
  `index....html` amb hash, i fitxers tipus `Copia de ...`, ` - Copia.html`.
- **Imatges grans**: redimensiona/recomprimeix (Pillow o ffmpeg). Les webs més pesades a
  vigilar: `matheroes` (~294 MB), `matener2018` (~191 MB), `raddel` (~98 MB),
  `madamechatelet` (~86 MB), `energystorage2014` (~86 MB), `hpsp18-whs2` (~76 MB),
  `tcm2017` (~68 MB), `nanoselect` (~59 MB), `orgi2015` (~58 MB), `ess2011` (~57 MB).

Regla d'or de la neteja: **no trenquis la web**. Abans d'esborrar res, comprova que no
estigui referenciat per cap HTML/CSS de la carpeta (`Grep` per nom de fitxer). Treballa
carpeta per carpeta i verifica que la pàgina segueix carregant igual.

> Les carpetes `jphd*` són una excepció: estan fetes a mà (Bootstrap per CDN, `assets/`
> net) i ja són lleugeres. No necessiten neteja de bloat de Joomla.

## 6. Convencions

- No introdueixis dependències ni passos de build: tot ha de funcionar obrint l'HTML.
- Manté l'estètica i el patró existents dels índexs (no rediseccionis la plantilla).
- Edita fitxers existents abans de crear-ne de nous; no creïs documentació no demanada.
- Les rutes externes de logos/favicon de l'ICMAB apunten a `https://media.icmab.es/...`;
  deixa-les com estan.
