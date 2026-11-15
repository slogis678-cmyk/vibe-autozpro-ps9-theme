# Autozpro — szablon motywu dla PrestaShop 9+

Motyw bazowy (starter) dla PrestaShop **9.x**, zbudowany na oficjalnym motywie
[classic-theme (PS9)](https://github.com/PrestaShop/classic-theme) i dostosowany
do stylu sklepu z częściami samochodowymi **Autozpro** (czerwony akcent `#e8262d`,
ciemny pasek górny `#1b1f2a`, spakietowana nawigacja).

## Zawartość

```
autozpro/
├── config.xml            # konfiguracja motywu (PS 9.0.0) + lista modułów
├── config/theme.yml      # definicja motywu: layouty, hooki, typy zdjęć
├── config.rb             # (legacy) konfiguracja Compass — patrz "Build"
├── assets/               # skompilowane pliki CSS/JS/fonty (gotowe do instalacji)
├── _dev/                 # źródła SCSS/JS + webpack (npm)
├── modules/              # szablony nadpisujące moduły rdzenia (ps_*)
├── templates/            # szablony Smarty (layouty, katalog, koszyk, klient…)
└── preview.png           # podgląd motywu
```

> **Uwaga:** oryginalny motyw Autozpro (Leo Themes) opierał się na modułach
> `appagebuilder`, `leoslideshow`, `leoblog`, `leobootstrapmenu` itd., które
> **nie są kompatybilne z PrestaShop 9**. Ten starter zastępuje je modułami
> rdzenia (`ps_imageslider`, `ps_mainmenu`, `ps_featuredproducts`…) wpisanymi
> w `config/theme.yml` (sekcja `global_settings.hooks`).

## Instalacja

1. Spakuj katalog `autozpro/` do ZIP (lub skopiuj go przez FTP).
2. W panelu admina: **Wygląd → Motywy → Dodaj nowy motyw** i wgraj ZIP
   (albo skopiuj katalog do `themes/` i kliknij „Zainstaluj”).
3. Motyw wymaga PrestaShop **>= 9.0.0** (deklaracja w `config/theme.yml`).

## Build (SCSS/JS)

Główne źródła stylów: `_dev/css/theme.scss` (partiale w `_dev/css/partials/`,
komponenty w `_dev/css/components/` — m.in. `autozpro.scss` z modyfikacjami
kolorystyki). Zmienne kolorów: `_dev/css/partials/_variables.scss`.

```bash
cd _dev
npm install
npm run build     # produkcja -> ../assets
npm run watch     # tryb developerski
```

Plik `config.rb` pochodzi ze starego workflow Compass; webpack (powyżej) jest
obsługiwanym sposobem budowania, bo SCSS importuje Bootstrap/Bourbon przez npm.

## Layouty

- `layout-full-width` (domyślny)
- `layout-both-columns` (3 kolumny)
- `layout-left-column` / `layout-right-column` (2 kolumny)

Przypisanie stron do layoutów: `theme_settings.layouts` w `config/theme.yml`.

## Licencja

Na bazie motywu Classic — licencja AFL-3.0 (patrz `LICENSE.md`).
