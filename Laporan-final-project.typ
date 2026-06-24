// Template Proposal Tugas Akhir ITS - Typst
// Simpan file ini sebagai main.typ, lalu compile:

// Struktur mengacu pada pedoman proposal TA/PA ITS.



//  OVERALL DATA DOKUMEN


#let kode_proposal = "laporan final project"
#let judul = "MOCHI: Minecraft Object Comprehension & Hybrid Indexing"
#let judul_en = "MOCHI: Minecraft Object Comprehension & Hybrid Indexing"

#let nama_1 = "Faiz Muhammad Kautsar"
#let nrp_1 = "5054231013"

#let nama_2 = "Efan Ramdhani"
#let nrp_2 = "5054231017"

#let nama_3 = "Muhammad Rasyad Lubis"
#let nrp_3 = "5054231010"

#let nama_4 = "Muhammad Farhan Arya Wicaksono"
#let nrp_4 = "5054231011"

#let pembimbing = "Dosen Pengampu 1"
#let nip_pembimbing = "1xxxxxxxxxxxxxxxx"

#let pembimbing2 = "Dosen Pengampu 2"
#let nip_pembimbing2 = "1xxxxxxxxxxxxxxxx"


#let gelar = "<Nama Gelar>"
#let prodi = "Rekayasa kecerdasan artifisial"
#let departemen = "Teknik informatika"
#let fakultas = "Fakultas Teknologi Elektro dan Informatika Cerdas "
#let bulan_tahun = "Bulan, Tahun"
#let tahun = "2025"

#let logo_path = "assets/LAMBANG ITS.png"
#let logo_path_biru = "assets/Logo ITS-Biru.png"


// GLOBAL CONFIGS

#set document(title: judul, author: nama_1)

#set page(
  paper: "a4",
  margin: (
    top: 3cm,
    bottom: 2.5cm,
    left: 3cm,
    right: 2cm,
  ),
)

#set text(font: "Times New Roman", size: 12pt)
#set par(justify: true, leading: 0.65em, first-line-indent: 1.25cm)


#set heading(numbering: none)

#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  set par(first-line-indent: 0pt)
  align(center)[#text(weight: "bold")[#upper(it.body)]]
  v(1em)
}

#show heading.where(level: 2): it => {
  set par(first-line-indent: 0pt)
  v(0.75em)
  text(weight: "bold")[#it.body]
  v(0.25em)
}

// Helper untuk judul halaman awal
#let front-title(body) = {
  set par(first-line-indent: 0pt)
  align(center)[#text(weight: "bold", size: 14pt)[#upper(body)]]
  v(1em)
}

// Helper logo agar file tetap bisa compile walaupun logo belum tersedia.
#let logo() = {
  if logo_path == none {
    align(left)[
      #rect(width: 2.5cm, height: 2.5cm, stroke: 0.5pt)[
        #align(center + horizon)[ITS]
      ]
    ]
  } else {
    image(logo_path, width: 2.5cm)
  }
}

// COVER 1 Halaman Sampul Depan

#set page(paper: "a4", margin: 0pt, numbering: none)
#set text(font: "Trebuchet MS", size: 12pt)
#set par(first-line-indent: 0pt, justify: false)

#place(top + left, dx: 20mm, dy: 10mm)[
  #image(logo_path_biru,height: 25mm, width: 43.6mm)
]

// Background biru full dari 45mm sampai bawah halaman
#place(top + left, dx: 0mm, dy: 45mm)[
  #rect(width: 210mm, height: 252mm, fill: rgb("#0067AC"))
]

#place(top + left, dx: 30mm, dy: 55mm)[
  #text(weight: "bold", size: 14pt, fill: white)[#upper(kode_proposal)]
]


#place(top + left, dx: 30mm, dy: 75mm)[
  #block(width: 150mm)[
    #text(weight: "bold", size: 18pt, fill: white)[#upper(judul)]
  ]

  // batas antara dosen pembimbing dan bagian bawah
  #v(10mm)
  
  #set text(size: 12pt, fill: white)
  #text(weight: "bold")[#upper(nama_1)]
  #v(0.5pt)
  NRP #nrp_1 
  #v(0.5pt)
  #text(weight: "bold")[#upper(nama_2)] 
  #v(0.5pt)
  NRP #nrp_2 
  #v(0.5pt)
  #text(weight: "bold")[#upper(nama_3)] 
  #v(0.5pt)
  NRP #nrp_3 
  #v(0.5pt)
  #text(weight: "bold")[#upper(nama_4)] 
  #v(0.5pt)
  NRP #nrp_4
]


#place(bottom + left, dx: 30mm, dy: -30mm)[
  #set text(fill: white, size: 12pt)
  #text(size: 14pt)[Dosen Pengampu] 
  #v(0.5pt)
  #text(weight: "bold", size: 14pt)[#pembimbing] 
  #v(0.5pt)
  #text(size: 14pt)[NIP #nip_pembimbing] 
  #v(0.5pt)
  #text(weight: "bold", size: 14pt)[#pembimbing2] 
  #v(0.5pt)
  #text(size: 14pt)[NIP #nip_pembimbing2]
    
  #v(8pt)
  
  #text(weight: "bold")[Program Studi #prodi]
  #v(0.5pt)
  Departemen #departemen 
  #v(0.5pt)
  Fakultas #fakultas
  #v(0.5pt)
  Institut Teknologi Sepuluh Nopember 
  #v(0.5pt)
  Surabaya 
  #v(0.5pt)
  Tahun #tahun
]

#pagebreak()


#set page(paper: "a4", margin: 0pt, numbering: "i", number-align: bottom + right)
#counter(page).update(1)
#set text(font: "Trebuchet MS", size: 12pt)
#set par(first-line-indent: 0pt, justify: false)

#place(top + left, dx: 20mm, dy: 10mm)[
  #image(logo_path, height: 25mm)
]

#place(top + left, dx: 0mm, dy: 45mm)[
  #rect(width: 210mm, height: 10mm, fill: rgb("#0067AC"))
]

#place(top + left, dx: 30mm, dy: 65mm)[
  #text(weight: "bold", size: 14pt)[#upper(kode_proposal)]
]

#place(top + left, dx: 30mm, dy: 80mm)[
  #block(width: 150mm)[
    #text(weight: "bold", size: 18pt)[#upper(judul)]
  ]

  #v(5mm)

  #set text(size: 12pt)
  #text(weight: "bold")[#upper(nama_1)]
  #v(0.5pt)
  NRP #nrp_1
  #v(0.5pt)
  #text(weight: "bold")[#upper(nama_2)]
  #v(0.5pt)
  NRP #nrp_2
  #v(0.5pt)
  #text(weight: "bold")[#upper(nama_3)]
  #v(0.5pt)
  NRP #nrp_3
  #v(0.5pt)
  #text(weight: "bold")[#upper(nama_4)]
  #v(0.5pt)
  NRP #nrp_4
]

#place(bottom + left, dx: 30mm, dy: -25mm)[
  #set text(size: 12pt)
  #text(size: 14pt)[Dosen Pengampu]
  #v(0.5pt)
  #text(weight: "bold", size: 14pt)[#pembimbing]
  #v(0.5pt)
  #text(size: 14pt)[NIP #nip_pembimbing]
  #v(0.5pt)
  #text(weight: "bold", size: 14pt)[#pembimbing2]
  #v(0.5pt)
  #text(size: 14pt)[NIP #nip_pembimbing2]

  #v(8pt)

  #text(weight: "bold")[Program Studi #prodi]
  #v(0.5pt)
  Departemen #departemen
  #v(0.5pt)
  Fakultas #fakultas
  #v(0.5pt)
  Institut Teknologi Sepuluh Nopember
  #v(0.5pt)
  Surabaya
  #v(0.5pt)
  Tahun #tahun
]

#pagebreak()


// =====================================================
// BALIK KE FORMAT NORMAL PROPOSAL
// =====================================================
// Setelah sampul, margin kembali mengikuti panduan proposal:
// atas 3 cm, bawah 2.5 cm, kiri 3 cm, kanan 2 cm.
#set page(
  paper: "a4",
  margin: (
    top: 3cm,
    bottom: 2.5cm,
    left: 3cm,
    right: 2cm,
  ),
)

#set text(font: "Times New Roman", size: 12pt, fill: black)
#set par(justify: true, leading: 0.65em, first-line-indent: 1.25cm)

// =====================
// BAGIAN AWAL
// =====================
#set page(numbering: "i", number-align: bottom + right)
#counter(page).update(1)

// = LEMBAR PENGESAHAN

// #align(center)[
//   #text(weight: "bold")[#upper(judul)]

//   #v(2em)

//   #text(weight: "bold")[PROPOSAL TUGAS AKHIR]


//   Diajukan untuk memenuhi salah satu syarat 
//   #v(0.65em)
//   memperoleh gelar #gelar pada 
//   #v(0.65em)
//   Program Studi S-1 #prodi 
//   #v(0.65em)
//   Departemen #departemen 
//   #v(0.65em)
//   Fakultas #fakultas 
//   #v(0.65em)
//   Institut Teknologi Sepuluh Nopember

//   #v(0.65em)

//   Oleh : \
//   #upper(nama_1) / NRP. #nrp_1 \
//   #upper(nama_2) / NRP. #nrp_2 \
//   #upper(nama_3) / NRP. #nrp_3 \
//   #upper(nama_4) / NRP. #nrp_4

//   #v(1em)
  
//   Disetujui oleh Tim Penguji Proposal Tugas Akhir :
// ]

// #v(1em)

// #set par(first-line-indent: 0pt, justify: false)

// #set text(size: 13pt)
// #table(
//   columns: (auto, 1fr, auto),
//   stroke: none,
//   inset: (x: 0pt, y: 0.3em),
//   column-gutter: 0.5em,
//   [1.], [#pembimbing], [Pembimbing],
//   [], [], [],
//   [], [], [],
//   [], [], [],
//   [2.], [Nama dan gelar ko-pembimbing/penguji], [Ko-pembimbing],
//   [], [], [],
//   [], [], [],
//   [], [], [],
//   [3.], [Nama dan gelar penguji], [Penguji],
//   [], [], [],
//   [], [], [],
//   [], [], [],
//   [4.], [Nama dan gelar penguji], [Penguji],
//   [], [], [],
//   [], [], [],
//   [], [], [],
//   [5.], [Nama dan gelar penguji], [Penguji],
// )
// #set text(size: 12pt)
// #set par(justify: true, leading: 0.65em, first-line-indent: 0pt)

// #v(0.65em)

// #align(center)[
//   SURABAYA \
//   #text(weight: "regular")[#bulan_tahun]
// ]


// =====================
// ABSTRAK
// =====================
= ABSTRAK

#pad(left: 0cm, right: 0cm)[
  #align(center)[
    #set par(first-line-indent: 0pt, justify: false)
    #text(weight: "bold", hyphenate: false)[#upper(judul)]
  ]
]




#v(1em)

#set par(first-line-indent: 0pt, justify: false)
#table(
  columns: (5.33cm, 0.306cm, auto),
  stroke: none,
  inset: (x: 0pt, y: 0.15em),
  column-gutter: 0pt,
  [Nama Mahasiswa / NRP], [: ], [#nama_1 / #nrp_1],
  [],                     [],   [#nama_2 / #nrp_2],
  [],                     [],   [#nama_3 / #nrp_3],
  [],                     [],   [#nama_4 / #nrp_4],
  [Departemen],           [: ], [#departemen],
  [Dosen Pembimbing],     [: ], [#pembimbing],
)

#v(1em)

#set par(justify: true, leading: 0.65em, first-line-indent: 1.25cm)

*Abstrak*

  Minecraft hosts one of the largest user-generated 3D content ecosystems, yet searching for community-created schematics relies on inconsistent, keyword-based tags. We present MOCHI, a cross-modal retrieval system between natural language and 3D voxel structures in the Minecraft domain. By leveraging a CLIP-style dual-encoder architecture with a 3D CNN and a frozen language model, we learn a shared embedding space for text and discrete voxel grids. We introduce a two-stage training pipeline incorporating Masked Voxel Modeling (MVM) for self-supervised pretraining, followed by symmetric InfoNCE contrastive fine-tuning. We demonstrate that bounding-box cropping and MVM pretraining significantly improve retrieval performance on a dataset of 8,328 community schematics, achieving a top-1 category hit rate of over 50%.
#set par(first-line-indent: 0pt)
*Kata kunci:* _kata kunci 1, kata kunci 2_


// =====================
// ABSTRACT
// =====================
= ABSTRACT

#pad(left: 0cm, right: 0cm)[
  #align(center)[
    #set par(first-line-indent: 0pt, justify: false)
    #text(weight: "bold", hyphenate: false)[#upper(judul_en)]
  ]
]

#v(1em)

#set par(first-line-indent: 0pt, justify: false)
#table(
  columns: (5.33cm, 0.306cm, auto),
  stroke: none,
  inset: (x: 0pt, y: 0.15em),
  column-gutter: 0pt,
  [Student Name / NRP], [: ], [#nama_1 / #nrp_1],
  [],                   [],   [#nama_2 / #nrp_2],
  [],                   [],   [#nama_3 / #nrp_3],
  [],                   [],   [#nama_4 / #nrp_4],
  [Department],         [: ], [#departemen],
  [Advisor],            [: ], [#pembimbing],
)

#v(1em)

#set par(justify: true, leading: 0.65em, first-line-indent: 1.25cm)

*Abstract*

Fill in the English abstract here.

#set par(first-line-indent: 0pt)
*Keywords:* _keyword 1, keyword 2_


// =====================
// DAFTAR ISI
// =====================
= DAFTAR ISI

#outline(title: none, depth: 2)


// =====================
// DAFTAR GAMBAR
// =====================
= DAFTAR GAMBAR

#outline(title: none, target: figure.where(kind: image))


// =====================
// DAFTAR TABEL
// =====================
= DAFTAR TABEL

#outline(title: none, target: figure.where(kind: table))


// =====================
// DAFTAR SIMBOL
// =====================
= DAFTAR SIMBOL

#set par(first-line-indent: 0pt)
#table(
  columns: (auto, auto, 1fr),
  stroke: none,
  inset: (x: 0pt, y: 0.3em),
  column-gutter: 1em,
  [*Simbol*], [*Keterangan*], [],
)


// =====================
// BAB 1 - 3 & PENUTUP
// =====================
#set page(numbering: "1", number-align: bottom + right)
#counter(page).update(1)
#set par(justify: true, leading: 0.65em, first-line-indent: 1.25cm)

= BAB 1 PENDAHULUAN

== 1.1 Latar Belakang

Minecraft is home to one of the largest user-generated 3D content ecosystems in the world. Community platforms host hundreds of thousands of player-created structures, shared as downloadable schematics (3D voxel grids of block IDs). However, finding the right schematic is painful as search is predominantly keyword-based, tags are inconsistent, and there is no way to search by structure or semantic intent.

This paper explores cross-modal retrieval between natural language and 3D voxel structures in the Minecraft domain. We learn a shared embedding space where text descriptions and 3D block grids live side-by-side, enabling bidirectional semantic search. Our approach draws from the CLIP paradigm, utilizing a dual-encoder architecture trained with symmetric InfoNCE loss. It is adapted for discrete voxel grids and community-authored text, using a relatively small dataset of approximately 8,000 samples.

@ruan2024tricolo

== 1.2 Rumusan Masalah

Permasalahan penelitian harus dituliskan dalam bentuk deklaratif atau kalimat-kalimat
pertanyaan yang tegas dan jelas.

== 1.3 Batasan Masalah

Ruang lingkup/pembatasan masalah dalam upaya memfokuskan penelitian yang akan
dilakukan menjadi lebih terarah.

== 1.4 Tujuan

Tujuan penelitian/tugas akhir/desain.

== 1.5 Manfaat

Manfaat penelitian/tugas akhir/desain.


= BAB 2 TINJAUAN PUSTAKA

== 2.1 Hasil Penelitian Terdahulu

== 2.2 Dasar Teori


= BAB 3 METODOLOGi

== 3.1 Metode yang Digunakan


== 3.2 Bahan dan Peralatan yang Digunakan

== 3.3 Urutan Pelaksanaan Penelitian


= BAB 4 HASIL DAN PEMBAHASAN


= BAB 5 KESIMPULAN

// =====================
// DAFTAR PUSTAKA
// =====================
#pagebreak()
#set par(first-line-indent: 0pt)

#bibliography("refs.bib", title: [DAFTAR PUSTAKA], style: "american-psychological-association")




// =====================
// LAMPIRAN
// =====================
#pagebreak()

#front-title[LAMPIRAN]


