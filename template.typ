// const color
#let color_darknight = rgb("#131A28")
#let color_darkgray = rgb("333333")

// layout utility
#let justify_align(left_body, right_body) = {
  block[
    #left_body
    #box(width: 1fr)[
      #align(right)[
        #right_body
      ]
    ]
  ]
}

#let justify_align_3(left_body, mid_body, right_body) = {
  block[
    #box(width: 1fr)[
      #align(left)[
        #left_body
      ]
    ]
    #box(width: 1fr)[
      #align(center)[
        #mid_body
      ]
    ]
    #box(width: 1fr)[
      #align(right)[
        #right_body
      ]
    ]
  ]
}

#let resume(author: (), date: "", body) = {
  let generate_contact(icon, contact, url: "") = {
    align(horizon)[
      #if url != "" {
        box()[#link(url)[#contact]]
      } else {
        contact
      }
      #h(10pt)
      #icon
    ]
  }

  set document(
    author: author.firstname + " " + author.lastname, 
    title: "resume",
  )
  
  set text(
    font: ("Source Sans Pro"),
    lang: "en",
    size: 11pt,
    fill: color_darknight,
    fallback: false
  )

  set page(
    paper: "a4",
    margin: (left: 15mm, right: 15mm, top: 10mm, bottom: 10mm),
    footer: [
      #set text(fill: gray, size: 8pt)
      #justify_align_3[
        #smallcaps[#date]
      ][
        #smallcaps[
          #author.firstname
          #author.lastname
          #sym.dot.c
          #"Résumé"
        ]
      ][
        #counter(page).display()
      ]
    ],
    footer-descent: 0pt,
  )
  
  // set paragraph spacing
  show par: set block(above: 0.75em, below: 0.75em)
  set par(justify: true)

  set heading(
    numbering: none,
    outlined: false,
  )
  
  let name = {
    align(left)[
      #pad(bottom: 5pt)[
        #block[
          #set text(size: 24pt, style: "normal", font: ("Roboto"))
          #text(weight: "thin")[#author.firstname]
          #linebreak()
          #text(weight: "bold")[#author.lastname]
        ]
      ]
    ]
  }

  let positions = {
    set text(
      size: 9pt,
      weight: "regular"
    )
    align(left)[
      #smallcaps[
        #author.positions.join(
          text[#"  "#sym.dot.c#"  "]
        )
      ]
    ]
  }

  let contacts = {
    set box(height: 11pt)

    let height = 18pt;
    let email_icon = box(image("assets/icons/square-envelope-solid.svg", height: height))
    let phone_icon = box(image("assets/icons/square-phone-solid.svg", height: height))
    let github_icon = box(image("assets/icons/square-github.svg", height: height))
    let linkedin_icon = box(image("assets/icons/linkedin.svg", height: height))

    align(right)[
      #generate_contact(email_icon, author.email, url: "mailto:" + author.email)
      #generate_contact(phone_icon, author.phone)
      #generate_contact(github_icon, author.github, url: "https://github.com/" + author.github)
      #generate_contact(linkedin_icon, author.linkedin, url: "https://linkedin.com/in/" + author.linkedin)
    ]
  }

  align(left)[
    #box(radius: 6pt, clip: true)[#image("assets/images/me.jpg", height: 80pt)]
    #h(10pt)
    #box[
      #name
      #positions
    ]
    #h(1fr)
    #box[#contacts]
  ]

  body
}

// general style
#let resume_section(title) = {
  set text(
    size: 16pt,
    weight: "regular"
  )
  align(left)[
    #smallcaps[
      // #text[#title.slice(0, 3)]#strong[#text[#title.slice(3)]]
      #strong[#text[#title]]
    ]
    #box(width: 1fr, line(length: 100%))
  ]
}

#let resume_item(body) = {
  set text(size: 10pt, style: "normal", weight: "light")
  set par(leading: 0.65em)
  body
}

#let resume_time(body) = {
  set text(weight: "light", style: "italic", size: 9pt)
  body
}

#let resume_degree(body) = {
  set text(size: 10pt, weight: "light")
  smallcaps[#body]
}

#let resume_organization(body) = {
  set text(size: 12pt, style: "normal", weight: "bold")
  body
}

#let resume_location(body) = {
  set text(size: 12pt, style: "italic", weight: "light")
  body
}

#let resume_position(body) = {
  set text(size: 10pt, weight: "regular")
  smallcaps[#body]
}

#let resume_category(body) = {
  set text(size: 11pt, weight: "bold")
  body
}

#let resume_gpa(numerator, denominator) = {
  set text(size: 12pt, style: "italic", weight: "light")
  text[Cumulative GPA: #box[#strong[#numerator] / #denominator]]
}

// sections specific components
#let education_item(organization, degree, gpa, time_frame) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  pad[
    #justify_align[
      #resume_organization[#organization]
    ][
      #gpa
    ]
    #justify_align[
      #resume_degree[#degree]
    ][
      #resume_time[#time_frame]
    ]
  ]
}

#let work_experience_item_header(
  position,
  company,
  location,
  time_frame
) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  pad[
    #justify_align[
      #resume_organization[#position]
    ][
      #resume_location[#location]
    ]
    #justify_align[
      #resume_position[#company]
    ][
      #resume_time[#time_frame]
    ]
  ]
}

#let project_item_header(
  name,
  url,
) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  pad[
    #justify_align[
      #resume_organization[#name]
    ][
      #text(style: "italic", size: 8pt)[#link(url)]
    ]
  ]
}

#let award_item_header(
  name,
  time,
) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  pad[
    #justify_align[
      #resume_organization[#name]
    ][
      #resume_time[#time]
    ]
  ]
}

#let skill_item(category, items) = {
  set block(above: 1.0em, below: 1.0em)
  
  grid(
    columns: (18fr, 80fr),
    gutter: 10pt,
    align(right)[
      #resume_category[#category]
    ],
    align(left)[
      #set text(size: 11pt, style: "normal", weight: "light")
      #items.join(", ")
    ],
  )
}
