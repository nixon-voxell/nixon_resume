#import "template.typ": *

#show: resume.with(
  author: (
    firstname: "(Nixon) Yi Heng", 
    lastname: "Cheng",
    email: "voxell.technologies@gmail.com", 
    phone: "(+60) 173389100",
    loc: "Malaysia",
    linkedin: "nixonyh",
    github: "nixon-voxell",
    url_name: "linktr.ee/voxell",
    url: "https://linktr.ee/voxell",
    youtube: "@voxelltech",
    soundcloud: "voxalmusic",
    positions: (
      "Computer Graphics Engineer",
      // "Game Developer",
    ),
  ),
  date: datetime.today().display("[day] [month repr:long] [year]")
)

#resume_section("Skills")

#skill_item(
  "Programming\nLanguages",
  (
    "Rust",
    "C#",
    "WGSL",
    "HLSL",
    "GLSL",
    "Python",
    "Typescript",
    "C++",
    "Dart",
    "Java",
    "PHP",
    "R",
  )
)

#skill_item(
  "Expertise",
  (
    "Real-time Physics Simulation",
    "Animation",
    "Motion Graphics",
    "Graphics Programming",
    "Deep Learning",
    "VFX",
    "Bevy Engine",
    "Unity3D",
    "Unreal Engine",
  )
)

#resume_section("Experience")

#work_experience_item_header(
  "Physics Simulation Engineer",
  "23 Bulbs",
  "London, UK",
  "Sep. 2020 - Present",
)
#resume_item[
  - Develop GPU accelerated cloth simulation engine.
  - Tools & pipeline for cloth/softbody authoring.
]

#work_experience_item_header(
  "Head of Events",
  "APU Game Development Club",
  "KL, Malaysia",
  "Feb. 2023 - April. 2024",
)
#resume_item[
  - Organize and manage events for the club.
]

#work_experience_item_header(
  "Graphics Programmer",
  "Fiverr",
  "Remote",
  "Jun. 2020 - Aug. 2023",
)
#resume_item[
  - Work on vaiours client projects.
]

#work_experience_item_header(
  "Intern Game Programmer",
  "Streamline Studios",
  "KL, Malaysia",
  "May. 2022 - Aug. 2022",
)
#resume_item[
  - Develop Blender addon tools for artists.
  - Contributed to Bake n Switch project.
]

#resume_section("Education")

#education_item[
  Asia Pacific University of Technology & Innovation (APU)
][
  Bachelor of Science (Honours) in Computer Games Development
][
  #resume_gpa("3.95", "4.00")
][
  Aug. 2022 - Present
]

#education_item[
  Asia Pacific University of Technology & Innovation (APU)
][
  Diploma in Information & Communication Technology with a Specialism in Software Engineering
][
  #resume_gpa("3.80", "4.00")
][
  Jun. 2020 - Jul. 2022
]

#resume_section("Projects")

#project_item_header(
  "Bevy MotionGfx",
  "https://github.com/nixon-voxell/bevy_motiongfx",
)
#resume_item[
  - Motion graphics creation tool in Bevy. (Highly inspired by Motion Canvas and Manim)
]

#project_item_header(
  "Bevy Vello Renderer",
  "https://github.com/nixon-voxell/bevy_vello_renderer",
)
#resume_item[
  - A minimal integration for rendering Vello graphics in Bevy.
]

#project_item_header(
  "Unity TTS",
  "https://github.com/voxell-tech/UnityTTS",
)
#resume_item[
  - Text to speech in Unity.
]

#project_item_header(
  "Unity NLP",
  "https://github.com/voxell-tech/UnityNLP",
)
#resume_item[
  - Natural language processing in Unity.
]

#project_item_header(
  "Unity Audio Visualizer",
  "https://github.com/voxell-tech/UnityAudioVisualizer",
)
#resume_item[
  - Audio visualizer in Unity using Job System, Burst Compiler, and VFX Graph.
]

#resume_section("Awards")

Certificates: #link("https://www.linkedin.com/in/nixonyh/details/honors/")

#award_item_header(
  "2023 4th All American DAVINCI International Innovation and Invention Expo",
  "Sep. 2023"
)
#resume_item[
  - Gold Medal
  - ATIP Special Award
  - OCIIP Special Award
  - TISIAS Special Award
]

#award_item_header(
  "DB-SNUbiz Global Startup Challenge 2023",
  "Sep. 2023"
)
#resume_item[
  - Finalist
]

#award_item_header(
  "2023 INNOVERSE Innovation & Invention Expo",
  "Aug. 2023"
)
#resume_item[
  - Gold Medal
  - INNOPA Special Award
  - Canadian Spacial Award of Excellence
]

#award_item_header(
  "The 12th World Invention Creativity Olympic 2023",
  "Jul. 2023"
)
#resume_item[
  - Gold Award
  - TISIAS Special Award
  - TUMMIAD Special Award
]

#award_item_header(
  "Virtual Innovation Competition 2023",
  "Jun. 2023"
)
#resume_item[
  - Gold Medal
]

#award_item_header(
  "34th International Invention, Innovation & Technology Exhibition",
  "May. 2023"
)
#resume_item[
  - Silver Medal
]

#award_item_header(
  "Hilti IT Competition 2023",
  "May. 2023"
)
#resume_item[
  - Semi-Finalist
]

#resume_section("Talks")

#item_and_link("Beauty of Shaders Talk (APUGDC)", "https://www.instagram.com/p/CtfxIu0vD3k/?img_index=2")

#item_and_link("TEDx - Simulating Millions of Particles in a Digital Twin (BATxAPU Week)", "https://twitter.com/AsiaPacificU/status/1534062323346083840")

#resume_section("Media & Press Releases")

#item_and_link("The Star (Rescue AI - Gold Medal @ Invention Innovation Competition in Canada 2023)", "https://www.thestar.com.my/starpicks/2023/11/16/next-gen-game-development-for-next-gen-professionals")

#item_and_link("Open Gov (Rescue AI - Gold Medal @ 12th World Invention Creativity Olympic 2023)", "https://opengovasia.com/rescueai-smart-city-disaster-management/")

#item_and_link("APU News (Rescue AI - Gold Medal @ 12th World Invention Creativity Olympic 2023)", "https://www.apu.edu.my/media/news/2939")

#item_and_link("APU News (1st Runner Up @ Intel AI Global Impact Festival 2023, 3rd Runner Up @ Petronas CHESS Symposium 2023)", "https://www.apu.edu.my/media/news/2911")

#item_and_link("APU News (Silver Medal @ ITEX 2023)", "https://www.apu.edu.my/media/news/2869")
