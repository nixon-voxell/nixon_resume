#import "template.typ": *

#show: resume.with(
  author: (
      firstname: "Yi Heng (Nixon)", 
      lastname: "Cheng",
      email: "voxell.technologies@gmail.com", 
      phone: "(+60) 173389100",
      github: "nixon-voxell",
      linkedin: "nixonyh",
      positions: (
        "Graphics Programmer",
        "Game Developer",
      )
  ),
  //TODO: https://github.com/typst/typst/issues/204
  date: "December 08, 2023"
)

#resume_section("Education")

#education_item[
  Asia Pacific University of Technology & Innovation
][
  Bachelor of Science (Honours) in Computer Games Development
][
  #resume_gpa("4.00", "4.00")
][
  Aug. 2022 - Present
]

#resume_section("Experience")

#work_experience_item_header(
  "Aaaaaa Aaaaaaaa",
  "Aaaaaa Aaaaa Aaaaa, AA",
  "Software Engineer",
  "Jul. 0000 - Jul. 0000",
)

#resume_item[
  - *#lorem(10)*. #lorem(20)
  - #lorem(30)
  - #lorem(40)
  - #lorem(30)
]

#work_experience_item_header(
  "Aaaaaa Aaaaaaaa",
  "Aaaaaa Aaaaa Aaaaa, AA",
  "Software Engineer",
  "Jul. 0000 - Jul. 0000",
)

#resume_item[
  - *#lorem(10)*. #lorem(20)
  - #lorem(30)
  - #lorem(40)
  - #lorem(30)
]

#resume_section("Personal Project")

#personal_project_item_header(
  "Aaaaaaa Aaaa",
  "Aaaaaa, AA",
  "AAAAAAA",
  "Feb. 0000",
)

#resume_item[
  - #lorem(30)
]

#personal_project_item_header(
  "Aaaaaaa Aaaa",
  "Aaaaaa, AA",
  "AAAAAAA",
  "Feb. 0000",
)

#resume_item[
  - #lorem(30)
]

#resume_section("Skills")

#skill_item(
  "Program Language",
  (
    strong[Aaaaa],
    strong[Aaaaaa], 
    strong[Aaaa], 
    strong[Aaaaaa], 
    strong[Aaaaaaa], 
    strong[Aaaa],
    "A/A++",
    "Aaaa", 
    "Aaaaaaa", 
    "Aaaa", 
    "Aaaaa",
    "A/A++",
    "Aaaa", 
    "Aaaaaaa", 
    "Aaaa", 
    "Aaaaa"
  )
)

#skill_item(
  "Back-End",
  (
    strong[Aaaaa],
    strong[Aaaaaa], 
    strong[Aaaa], 
    "Aaaaaa", 
    "Aaaaaaa", 
    "Aaaa",
    "A/A++",
    "Aaaa", 
    "Aaaaaaa", 
  )
)

#skill_item(
  "Front-End",
  (
    strong[Aaaaa],
    strong[Aaaaaa], 
    strong[Aaaa], 
    strong[Aaaaaa], 
    strong[Aaaaaaa], 
    "Aaaa",
    "A/A++",
    "Aaaa", 
    "Aaaaaaa", 
  )
)

#skill_item(
  "DevOps",
  (
    strong[Aaaaa],
    strong[Aaaaaa], 
    strong[Aaaa], 
    strong[Aaaaaa], 
    strong[Aaaaaaa], 
    strong[Aaaa],
    "A/A++",
    "Aaaa", 
    "Aaaaaaa", 
    "Aaaaaaa", 
  )
)
