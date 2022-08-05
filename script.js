// Define study
const study = lab.util.fromObject({
  "title": "root",
  "type": "lab.flow.Sequence",
  "parameters": {},
  "plugins": [
    {
      "type": "lab.plugins.Metadata",
      "path": undefined
    },
    {
      "type": "lab.plugins.Download",
      "filePrefix": "study",
      "path": undefined
    }
  ],
  "metadata": {
    "title": "",
    "description": "",
    "repository": "",
    "contributors": ""
  },
  "files": {},
  "responses": {},
  "content": [
    {
      "title": "Ebbinghaus Online_lab.js",
      "type": "lab.flow.Sequence",
      "parameters": {},
      "plugins": [],
      "metadata": {
        "title": "Ebbinghaus Online_lab.js",
        "description": "",
        "repository": "",
        "contributors": ""
      },
      "messageHandlers": {},
      "files": {},
      "responses": {},
      "content": [
        {
          "type": "lab.html.Page",
          "items": [
            {
              "required": true,
              "type": "html",
              "content": "\u003Cbutton id=\"Start\"\u003EContinue to experiment\u003C\u002Fbutton\u003E",
              "name": ""
            }
          ],
          "scrollTop": true,
          "submitButtonText": "Continue →",
          "submitButtonPosition": "hidden",
          "files": {},
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {
            "after:end": function anonymous(
) {
document.body.style.backgroundColor = "white"
document.body.style.color = "black"
}
          },
          "title": "Continue to Experiment"
        },
        {
          "type": "lab.html.Screen",
          "files": {},
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {
            "before:prepare": function anonymous(
) {
/* Get the documentElement (<html>) to display the page in fullscreen */
var elem = document.documentElement;

/* View in fullscreen */
this.options.events['click button#fullscreen'] = function openFullscreen() {
  if (elem.requestFullscreen) {
    elem.requestFullscreen();
  } else if (elem.mozRequestFullScreen) { /* Firefox */
    elem.mozRequestFullScreen();
  } else if (elem.webkitRequestFullscreen) { /* Chrome, Safari and Opera */
    elem.webkitRequestFullscreen();
  } else if (elem.msRequestFullscreen) { /* IE/Edge */
    elem.msRequestFullscreen();
  }

/* Continue to next screen */
this.end()
}
}
          },
          "title": "Fullscreen",
          "content": "\u003Cbutton id=\"fullscreen\"\u003EPress to enter full screen\u003C\u002Fbutton\u003E"
        },
        {
          "type": "lab.html.Page",
          "items": [
            {
              "type": "text",
              "title": "Part 1: First, a quick task to get your screen set-up for the experiment.",
              "content": "Click the center of each circle with your cursor.  \n\nTIP: You may need to be very precise with your clicking."
            },
            {
              "required": true,
              "type": "text",
              "title": "Click 'Continue' when ready to proceed."
            }
          ],
          "scrollTop": true,
          "submitButtonText": "Continue →",
          "submitButtonPosition": "right",
          "files": {},
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {
            "after:end": function anonymous(
) {
document.body.style.backgroundColor = "white"
document.body.style.color = "black"
}
          },
          "title": "Screen Set Up Instructions",
          "skip": true
        },
        {
          "type": "lab.flow.Loop",
          "templateParameters": [
            {
              "Horizontal_Pos": "0",
              "Vertical_Pos": "0",
              "": "Center"
            },
            {
              "Horizontal_Pos": "-175",
              "Vertical_Pos": "0",
              "": "Left"
            },
            {
              "Horizontal_Pos": "0",
              "Vertical_Pos": "-175",
              "": "High"
            },
            {
              "Horizontal_Pos": "0",
              "Vertical_Pos": "175",
              "": "Low"
            },
            {
              "Horizontal_Pos": "175",
              "Vertical_Pos": "0",
              "": "Right"
            }
          ],
          "sample": {
            "mode": "sequential",
            "n": ""
          },
          "files": {},
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {},
          "title": "Screen Setup",
          "shuffleGroups": [],
          "template": {
            "type": "lab.flow.Sequence",
            "files": {},
            "responses": {
              "": ""
            },
            "parameters": {},
            "messageHandlers": {},
            "title": "Sequence",
            "content": [
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "circle",
                    "left": "${parameters.Horizontal_Pos}",
                    "top": "${parameters.Vertical_Pos}",
                    "angle": 0,
                    "width": "18",
                    "height": 4,
                    "stroke": "#000000",
                    "strokeWidth": 1,
                    "fill": "#ffffff"
                  },
                  {
                    "type": "aoi",
                    "left": "${parameters.Horizontal_Pos}",
                    "top": "${parameters.Vertical_Pos}",
                    "angle": 0,
                    "width": "2",
                    "height": "2",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "rgba(0, 0, 0, 0.2)",
                    "label": "Center"
                  },
                  {
                    "type": "circle",
                    "left": "${parameters.Horizontal_Pos}",
                    "top": "${parameters.Vertical_Pos}",
                    "angle": 0,
                    "width": 2.46,
                    "height": 2.46,
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "black"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {},
                "responses": {
                  "click @Center": "Center",
                  "click @Low": "Low",
                  "click @High": "High",
                  "click @Right": "Right",
                  "click @Left": "Left",
                  "click @Top_Left": "Top_Left",
                  "click @Top_Right": "Top_Right",
                  "click @Bottom_Left": "Bottom_Left",
                  "click @Bottom_Right": "Bottom_Right"
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Calibration",
                "plugins": [
                  {
                    "type": "mousetrap",
                    "mode": "mousetrap",
                    "path": "global.MousetrapPlugin"
                  }
                ]
              },
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "image",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": "600",
                    "height": "600",
                    "stroke": null,
                    "strokeWidth": 0,
                    "fill": "black",
                    "src": "${ this.files[\"screen.jpeg\"] }"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "screen.jpeg": "embedded\u002F0444150c2c031ef7f44caaa0725897453f39206c03dab57ddf1d6532b6aec5b0.jpeg"
                },
                "responses": {
                  "": ""
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Mask",
                "timeout": "200"
              }
            ]
          }
        },
        {
          "type": "lab.html.Page",
          "items": [
            {
              "type": "text",
              "content": "This document contains important information about in-person research during the COVID-19 public health crisis. COVID-19 (also called SARS-CoV2) is an illness caused by the coronavirus. Coronaviruses are most commonly spread from an infected person through: a) respiratory droplets when you cough or sneeze; b) close personal contact, such as touching or shaking hands; or c) touching something with the virus on it, then touching your eyes, nose or mouth before washing your hands. "
            },
            {
              "required": true,
              "type": "text",
              "content": "If you feel that you are from a group that is more vulnerable to COVID-19 effects (e.g., senior (over the age of 60 years), immuno-compromised), please discuss your participation with the research team before providing your consent. You are under no obligation to participate and can change your mind about participating in the research at any time and without consequence. The University of Manitoba is committed to taking measures to protect the health and safety of their campuses and the wider community. We will follow University of Manitoba protocols which include:"
            },
            {
              "required": true,
              "type": "text",
              "content": "•\tAll study research teams are wearing 3-ply reusable or disposable masks. You are also required to wear a mask. "
            },
            {
              "required": true,
              "type": "text",
              "content": "•\tWe also require all of our employees to screen themselves for symptoms daily before they come into work, and we’ll screen you for symptoms the day of your visit. "
            },
            {
              "required": true,
              "type": "text",
              "content": "•\tWe will provide you with a screening questionnaire. Please complete this on the morning of your visit. If you answer yes to any of the questions, please email us to reschedule your visit. You should not attend any visits if you are not feeling well or exhibiting any symptoms of COVID-19, if you have been a close contact with someone with COVID-19 (or awaiting tests results), or have been told by a health official to self-isolate. "
            },
            {
              "required": true,
              "type": "text",
              "content": "•\tWe are following meticulous infection control practices, including disinfection of study materials, and hand washing. "
            },
            {
              "required": true,
              "type": "text",
              "content": "•\tWe ask that you attend the study alone. Accommodations can be made if necessary. Please let us know ahead of time if you require someone to attend with you. "
            },
            {
              "required": true,
              "type": "text",
              "content": "The University of Manitoba is closely watching the situation in Manitoba and may restrict in- person research at any time. We will continue to keep you informed as to changes that may occur to this study. \nIf you have questions regarding this study, measures we are taking to keep all parties safe, or have any concerns, please do not hesitate to ask. You can contact any of the above named researchers or the Human Ethics office at humanethics@umanitoba.ca\n"
            },
            {
              "required": true,
              "type": "text",
              "title": "Please click 'Continue' to proceed to the Experiment Consent Form"
            }
          ],
          "scrollTop": true,
          "submitButtonText": "Continue →",
          "submitButtonPosition": "right",
          "files": {},
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {},
          "title": "Page",
          "skip": true
        },
        {
          "type": "lab.html.Page",
          "items": [
            {
              "required": true,
              "type": "image",
              "width": "",
              "height": "",
              "src": "${ this.files[\"UM_Logo.png\"] }",
              "name": ""
            },
            {
              "required": true,
              "type": "text",
              "title": "Principal Investigators:",
              "content": "Ryan Langridge (PhD Candidate, Psychology, University of Manitoba, langrirw@myumanitoba.ca) "
            },
            {
              "required": true,
              "type": "text",
              "content": "Gabrielle David (Undergraduate student, Department of Biological Sciences, University of Manitoba)",
              "title": ""
            },
            {
              "required": true,
              "type": "text",
              "content": "Jasmine Pomrenke, Undergraduate student, Department of Psychology, University of Manitoba)",
              "title": ""
            },
            {
              "required": true,
              "type": "text",
              "content": "Dr. Jonathan Marotta (Professor, Psychology, University of Manitoba, Jonathan.Marotta@umanitoba.ca)",
              "title": "Supervisor:"
            },
            {
              "required": true,
              "type": "text",
              "title": "Source of Support: NSERC Discovery Grant",
              "content": "This consent form, a copy of which will be left with you for your records and reference, is only part of the process of informed consent. It should give you the basic idea of what the research is about and what your participation will involve. If you would like more detail about something mentioned here, or information not included here, you should feel free to ask. Please take the time to read this carefully and to understand any accompanying information."
            },
            {
              "required": true,
              "type": "text",
              "content": "We are interested in how your perception of a circle affects your performance when clicking it.",
              "title": "Purpose:"
            },
            {
              "required": true,
              "type": "text",
              "title": "Description:",
              "content": "This study will last approximately 30 minutes. During the experiment you will be asked to click on circular targets as quickly and as accurately as possible. Prior to this task, you will be asked to fill out a brief questionnaire involving questions about your age, sex, handedness, and your vision."
            },
            {
              "required": true,
              "type": "text",
              "title": "Risks and Benefits:",
              "content": "There are no risks (physical, psychological, and\u002For emotional) inherent in the tasks you will perform, but some of the tests may be repetitive. By participating in this study, you will be providing valuable data regarding about how our perception of the environment affects the way we interact with it."
            },
            {
              "required": true,
              "type": "text",
              "title": "Costs and Payments:",
              "content": "There are no fees or charges to participate in this study. You will receive 1 experimental credit for your participation in this study."
            },
            {
              "required": true,
              "type": "text",
              "title": "Confidentiality",
              "content": "Your information will be kept confidential. You will be referred to by a code number. After completing the experiment, all identifying information will be saved separately from your experimental data and will only be used to assign you participation credit. Your files will only be accessible by the investigators. Summary results from this study will be disseminated through conference presentations and refereed publications. Participant confidentiality will not be jeopardized."
            },
            {
              "required": true,
              "type": "text",
              "title": "Voluntary Consent",
              "content": "By selecting the 'I Consent' option below, you are indicating that you have understood to your satisfaction the information regarding participation in the research project and agree to participate as a subject. In no way does this waive your legal rights nor release the researchers, sponsors, or involved institutions form their legal and professional responsibilities. You are free to withdraw from the study at any time (participation is completely voluntary), and\u002For refrain from answering any questions you prefer to omit, without prejudice or consequence. This means that should you choose to withdraw at any point from the study, you will still receive 1 participation credit."
            },
            {
              "required": true,
              "type": "text",
              "content": "The University of Manitoba may look at your research records to see that the research is being done in a safe and proper way"
            },
            {
              "required": true,
              "type": "text",
              "content": "The University of Manitoba may look at your research records to see that the research is being done in a safe and proper way. This research has been approved by the Research Ethics Board (REB1) of the university of Manitoba. If you have any concerns or complaints about this project you may contact any of the above named persons or the Human Ethics Coordinator (HEC) at (204) 474-7122 (Email: humanethics@umanitoba.ca).",
              "title": ""
            },
            {
              "required": true,
              "type": "radio",
              "options": [
                {
                  "label": "I Consent",
                  "coding": "1"
                },
                {
                  "label": "I Do Not Consent",
                  "coding": "2"
                }
              ],
              "name": "Participant_Consent",
              "label": "Do you understand and consent to these terms?"
            },
            {
              "required": false,
              "type": "input",
              "label": "If you would like to receive a general summary of the results from this study when it is completed, please provide your email address below:",
              "name": "if-you-would-like-to-receive-a-general-summary-of-the-results-from-this-study-when-it-is-completed-please-provide-your-email-address-below:"
            },
            {
              "required": true,
              "type": "text",
              "content": "Thank you for your participation!",
              "title": ""
            }
          ],
          "scrollTop": true,
          "submitButtonText": "Continue →",
          "submitButtonPosition": "right",
          "files": {
            "UM_Logo.png": "embedded\u002Fcdc265bb9ccc663e521b502e8ea913f0265f80613ded26a4eb962293639abb3a.png"
          },
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {},
          "title": "Consent Form",
          "width": "m"
        },
        {
          "type": "lab.html.Page",
          "items": [
            {
              "type": "text",
              "title": "You have decided not to participate in today's study. "
            },
            {
              "required": true,
              "type": "text",
              "title": "Please alert the researcher of your decision."
            },
            {
              "required": true,
              "type": "text",
              "title": "There is no penalty for deciding not to participate."
            }
          ],
          "scrollTop": true,
          "submitButtonText": "Continue →",
          "submitButtonPosition": "hidden",
          "files": {},
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {},
          "title": "No Consent",
          "skip": "${this.state['Participant_Consent'] == '1'}",
          "tardy": true
        },
        {
          "type": "lab.html.Page",
          "items": [
            {
              "required": true,
              "type": "text",
              "title": "The following information is used to assist us in conducting our study.  Please note that there is no personally identifiable information kept, and you will only be referred to by an arbitrary participant number.  All information will be kept confidential, and your files will only be accessible by the investigators.  You may refrain from answering any questions you choose."
            },
            {
              "type": "text",
              "content": "Please read each question very carefully and fill out the following information to the best of your knowledge (leave blank if you don't know the answer):",
              "title": "Instructions"
            },
            {
              "required": false,
              "type": "input",
              "label": "What is your age (years)?",
              "name": "what-is-your-age-(years)"
            },
            {
              "required": false,
              "type": "radio",
              "options": [
                {
                  "label": "I have normal vision",
                  "coding": "1"
                },
                {
                  "label": "I have corrected-to-normal vision (e.g., Wearing glasses, contact lenses, corrective eye-surgery etc.)",
                  "coding": "2"
                }
              ],
              "label": "Vision:",
              "name": "vision:"
            },
            {
              "required": false,
              "type": "radio",
              "options": [
                {
                  "label": "Male",
                  "coding": "1"
                },
                {
                  "label": "Female",
                  "coding": "2"
                },
                {
                  "label": "Prefer not to answer",
                  "coding": "3"
                }
              ],
              "label": "What is the sex you were assigned at birth?",
              "name": "what-is-the-sex-you-were-assigned-at-birth"
            },
            {
              "required": true,
              "type": "text",
              "title": "Which hand do you use to do the following?"
            },
            {
              "required": false,
              "type": "radio",
              "options": [
                {
                  "label": "Left",
                  "coding": "1"
                },
                {
                  "label": "Right",
                  "coding": "2"
                }
              ],
              "label": "Throw a ball:",
              "name": "throw-a-ball:"
            },
            {
              "required": false,
              "type": "radio",
              "options": [
                {
                  "label": "Left",
                  "coding": "1"
                },
                {
                  "label": "Right",
                  "coding": "2"
                }
              ],
              "label": "Brush your teeth:",
              "name": "brush-your-teeth:"
            },
            {
              "required": false,
              "type": "radio",
              "options": [
                {
                  "label": "Left",
                  "coding": "1"
                },
                {
                  "label": "Right",
                  "coding": "2"
                }
              ],
              "label": "Eat soup with a spoon:",
              "name": "eat-soup-with-a-spoon:"
            },
            {
              "required": false,
              "type": "radio",
              "options": [
                {
                  "label": "Left",
                  "coding": "1"
                },
                {
                  "label": "Right",
                  "coding": "2"
                }
              ],
              "label": "Comb your hair:",
              "name": "comb-your-hair:"
            },
            {
              "required": false,
              "type": "radio",
              "options": [
                {
                  "label": "Left",
                  "coding": "1"
                },
                {
                  "label": "Right",
                  "coding": "2"
                }
              ],
              "label": "Cut bread with a knife:",
              "name": "cut-bread-with-a-knife:"
            },
            {
              "required": false,
              "type": "radio",
              "options": [
                {
                  "label": "Left",
                  "coding": "1"
                },
                {
                  "label": "Right",
                  "coding": "2"
                }
              ],
              "label": "Swing a tennis\u002Fbadminton racquet or bat:",
              "name": "swing-a-tennisbadminton-racquet-or-bat:"
            },
            {
              "required": false,
              "type": "radio",
              "options": [
                {
                  "label": "Left",
                  "coding": "1"
                },
                {
                  "label": "Right",
                  "coding": "2"
                }
              ],
              "label": "Hammer a nail:",
              "name": "hammer-a-nail:"
            },
            {
              "required": false,
              "type": "radio",
              "options": [
                {
                  "label": "Left",
                  "coding": "1"
                },
                {
                  "label": "Right",
                  "coding": "2"
                }
              ],
              "label": "Point to something accurately:",
              "name": "point-to-something-accurately:"
            },
            {
              "required": false,
              "type": "radio",
              "options": [
                {
                  "label": "Left",
                  "coding": "1"
                },
                {
                  "label": "Right",
                  "coding": "2"
                }
              ],
              "label": "Write your name:",
              "name": "write-your-name:"
            },
            {
              "required": false,
              "type": "radio",
              "options": [
                {
                  "label": "Left",
                  "coding": "1"
                },
                {
                  "label": "Right",
                  "coding": "2"
                }
              ],
              "label": "Control the cursor when using a computer:",
              "name": "control-the-cursor-when-using-a-computer:"
            },
            {
              "required": false,
              "type": "radio",
              "options": [
                {
                  "label": "Yes",
                  "coding": "1"
                },
                {
                  "label": "No",
                  "coding": "2"
                }
              ],
              "label": "Do you play any eye-hand coordination sports?",
              "name": "do-you-play-any-eye-hand-coordination-sports"
            },
            {
              "required": false,
              "type": "input",
              "label": "If yes, which sports do you play?",
              "name": "if-yes-which-sports-do-you-play"
            }
          ],
          "scrollTop": true,
          "submitButtonText": "Continue →",
          "submitButtonPosition": "right",
          "files": {},
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {},
          "title": "Demographics"
        },
        {
          "type": "lab.html.Page",
          "items": [
            {
              "type": "text",
              "title": "Instructions",
              "content": "In this experiment, you will be using the cursor to click on target circles presented on the screen.\n"
            },
            {
              "required": true,
              "type": "text",
              "content": "This experiment involves 3 parts:"
            },
            {
              "required": true,
              "type": "text",
              "content": "Part 1: Practice\n\n"
            },
            {
              "required": true,
              "type": "text",
              "content": "Part 2: Experimental Trials"
            },
            {
              "required": true,
              "type": "text",
              "content": "Part 3: Size Judgment"
            },
            {
              "required": true,
              "type": "text",
              "content": "Click 'Continue' when ready to begin."
            }
          ],
          "scrollTop": true,
          "submitButtonText": "Continue →",
          "submitButtonPosition": "right",
          "files": {
            "cross_r.cur": "embedded\u002F628faecdf73efcb02e6ba66f589b816f3bb3fc1ef42cf76ecad460f5587d4069.cur"
          },
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {
            "before:prepare": function anonymous(
) {
this.options.events['click button#fullscreen'] = function() {
  // Launch fullscreen mode
lab.util.fullscreen.launch(document.body)
    // ... if successful, move to next screen
  .then(() => this.end('Fullscreen mode enabled'))
    // ... otherwise, alert the user
  .catch(() => alert('Fullscreen mode not available'))
}
}
          },
          "title": "Introduction"
        },
        {
          "type": "lab.html.Page",
          "items": [
            {
              "type": "text",
              "title": "Part 1: Practice",
              "content": "A grey 'start' button will appear in the center of the screen. Press this button to begin each trial."
            },
            {
              "required": true,
              "type": "image",
              "width": "",
              "height": "",
              "src": "${ this.files[\"Start Button.PNG\"] }",
              "name": ""
            },
            {
              "required": true,
              "type": "text",
              "content": "When the target circle appears, use the trackpad on the desk in front of you to click the center of the target circle AS QUICKLY AND AS ACCURATELY AS POSSIBLE.\n\n"
            },
            {
              "required": true,
              "type": "image",
              "width": "",
              "height": "",
              "src": "${ this.files[\"Instructions P_Large Pic.PNG\"] }",
              "name": ""
            },
            {
              "required": true,
              "type": "text",
              "content": "Click 'Continue' to begin the first set of practice trials."
            }
          ],
          "scrollTop": true,
          "submitButtonText": "Continue →",
          "submitButtonPosition": "right",
          "files": {
            "Instructions P_Large Pic.PNG": "embedded\u002F7e1adc82bcdc2f1336e95a14c85f723b32d484c1429e2e35fcd941b06df644fd.PNG",
            "Start Button.PNG": "embedded\u002Ffd9ccb3ec1a51d36c433df61c8789ae8b8b0ee06b54b1b575036a844bc3a6e3e.PNG"
          },
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {},
          "title": "Practice Instructions_Vis",
          "skip": true
        },
        {
          "type": "lab.flow.Loop",
          "templateParameters": [
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "40",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "40",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "60",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "60",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "40",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "40",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "60",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "60",
              "Position_V": "-175"
            }
          ],
          "sample": {
            "mode": "draw",
            "n": ""
          },
          "files": {
            "Control Context Only.png": "embedded\u002F5e04a73c6cbecd9dac6b3063848adb79e6b7e3fd02bd826bae15c4cd343720dc.png",
            "P_Small Context Only.png": "embedded\u002Faf40cc0dbb8fe690520ca84449a67f81604c58e66d62189adaaa4c32f00eb819.png",
            "P_Large Context Only.png": "embedded\u002F992a9d10481882a0cfe4bf27e5395035a6398ea122acfc48cd5163209d98b020.png",
            "P_Small_Far Context Only.png": "embedded\u002F8f0579522952818b5e5ef468a76b6405674fea39f30203977dd5a6321ab75b20.png"
          },
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {
            "before:prepare": function anonymous(
) {
this.options.viewport = [800, 600]
this.options.viewportScale = 1
}
          },
          "title": "Practice Trials_Vis",
          "skip": true,
          "shuffleGroups": [],
          "template": {
            "type": "lab.flow.Sequence",
            "files": {},
            "responses": {
              "": ""
            },
            "parameters": {},
            "messageHandlers": {
              "before:prepare": function anonymous(
) {
this.options.viewport = [800, 600]
this.options.viewportScale = 1
}
            },
            "title": "Sequence",
            "content": [
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "aoi",
                    "left": 0,
                    "top": "0",
                    "angle": 0,
                    "width": 20.84,
                    "height": 20.84,
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "rgba(0, 0, 0, 0.2)",
                    "label": "Start_Button"
                  },
                  {
                    "type": "rect",
                    "left": "0",
                    "top": "0",
                    "angle": 0,
                    "width": "600",
                    "height": "600",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "black"
                  },
                  {
                    "type": "circle",
                    "left": 0,
                    "top": "0",
                    "angle": 0,
                    "width": 15,
                    "height": 15,
                    "stroke": "#aaaaaa",
                    "strokeWidth": 1,
                    "fill": "#dddddd"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {},
                "responses": {
                  "click @Start_Button": "Start Position"
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Start Button",
                "plugins": [
                  {
                    "type": "mousetrap",
                    "mode": "mousetrap",
                    "path": "global.MousetrapPlugin"
                  }
                ]
              },
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "rect",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": "600",
                    "height": "600",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "black"
                  },
                  {
                    "type": "image",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "240",
                    "height": "240",
                    "stroke": null,
                    "strokeWidth": 0,
                    "fill": "black",
                    "src": "${this.files[this.parameters.Context_Size]}"
                  },
                  {
                    "type": "circle",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "${parameters.Target_Size}",
                    "height": 70,
                    "stroke": "#ffffff",
                    "strokeWidth": 1,
                    "fill": "#ffffff"
                  },
                  {
                    "type": "aoi",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "${parameters.Target_Size}",
                    "height": "${parameters.Target_Size}",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "rgba(0, 0, 0, 0.2)",
                    "label": "Response"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "P_Small_3.png": "embedded\u002F6dc69d0480b14a98a83de75f92c0eca4e2669255731aa141a99f1be6da719c42.png",
                  "P_Large_3.png": "embedded\u002Fd37f527663db56db4b0fdb663ab0dd627ead047fc61d08dd0f6eaa9aef6b2615.png",
                  "Control_3.png": "embedded\u002F7e50a10442cfc7c81fc90163ae942334600b470c1821b5485b1c59f6e81548f2.png",
                  "Control_3 (Big).png": "embedded\u002F708b6f94fcde61e1648d34d6678481c4b21d066970e2ca1ad797bbd3752cdf8e.png",
                  "Control_3 (Small).png": "embedded\u002F946b8f3f3b01a592a1b8fa9b2c099dd13287ee645f541445da4ecaec9e0615d9.png",
                  "P_Small Context Only.png": "embedded\u002Faf40cc0dbb8fe690520ca84449a67f81604c58e66d62189adaaa4c32f00eb819.png",
                  "P_Large Context Only.png": "embedded\u002Fb442ec0b7fcb1633cb33796d7f9d1748c72e40ee71643d664de1b30999111e28.png",
                  "Control Context Only.png": "embedded\u002F5e04a73c6cbecd9dac6b3063848adb79e6b7e3fd02bd826bae15c4cd343720dc.png"
                },
                "responses": {
                  "click @Response": "Response"
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Practice",
                "plugins": [
                  {
                    "type": "mousetrap",
                    "mode": "mousetrap",
                    "path": "global.MousetrapPlugin"
                  }
                ]
              },
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "image",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": "600",
                    "height": "600",
                    "stroke": null,
                    "strokeWidth": 0,
                    "fill": "black",
                    "src": "${ this.files[\"screen.jpeg\"] }"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "screen.jpeg": "embedded\u002F0444150c2c031ef7f44caaa0725897453f39206c03dab57ddf1d6532b6aec5b0.jpeg"
                },
                "responses": {
                  "": ""
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Mask",
                "timeout": "200"
              }
            ]
          }
        },
        {
          "type": "lab.flow.Loop",
          "templateParameters": [
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "40",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "40",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "60",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "60",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "40",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "40",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "60",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "60",
              "Position_V": "-175"
            }
          ],
          "sample": {
            "mode": "draw",
            "n": "100"
          },
          "files": {
            "Control Context Only.png": "embedded\u002F5e04a73c6cbecd9dac6b3063848adb79e6b7e3fd02bd826bae15c4cd343720dc.png",
            "P_Small Context Only.png": "embedded\u002Faf40cc0dbb8fe690520ca84449a67f81604c58e66d62189adaaa4c32f00eb819.png",
            "P_Large Context Only.png": "embedded\u002F992a9d10481882a0cfe4bf27e5395035a6398ea122acfc48cd5163209d98b020.png",
            "P_Small_Far Context Only.png": "embedded\u002F8f0579522952818b5e5ef468a76b6405674fea39f30203977dd5a6321ab75b20.png"
          },
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {
            "before:prepare": function anonymous(
) {
this.options.viewport = [800, 600]
this.options.viewportScale = 1
}
          },
          "title": "Experimental Trials_Vis",
          "skip": true,
          "shuffleGroups": [],
          "template": {
            "type": "lab.flow.Sequence",
            "files": {},
            "responses": {
              "": ""
            },
            "parameters": {},
            "messageHandlers": {
              "before:prepare": function anonymous(
) {
this.options.viewport = [800, 600]
this.options.viewportScale = 1
}
            },
            "title": "Sequence",
            "content": [
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "aoi",
                    "left": 0,
                    "top": "0",
                    "angle": 0,
                    "width": 20.84,
                    "height": 20.84,
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "rgba(0, 0, 0, 0.2)",
                    "label": "Start_Button"
                  },
                  {
                    "type": "rect",
                    "left": "0",
                    "top": "0",
                    "angle": 0,
                    "width": "600",
                    "height": "600",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "black"
                  },
                  {
                    "type": "circle",
                    "left": 0,
                    "top": "0",
                    "angle": 0,
                    "width": 15,
                    "height": 15,
                    "stroke": "#aaaaaa",
                    "strokeWidth": 1,
                    "fill": "#dddddd"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {},
                "responses": {
                  "click @Start_Button": "Start Position"
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Start Button",
                "plugins": [
                  {
                    "type": "mousetrap",
                    "mode": "mousetrap",
                    "path": "global.MousetrapPlugin"
                  }
                ]
              },
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "rect",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": "600",
                    "height": "600",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "black"
                  },
                  {
                    "type": "image",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "240",
                    "height": "240",
                    "stroke": null,
                    "strokeWidth": 0,
                    "fill": "black",
                    "src": "${this.files[this.parameters.Context_Size]}"
                  },
                  {
                    "type": "circle",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "${parameters.Target_Size}",
                    "height": 70,
                    "stroke": "#ffffff",
                    "strokeWidth": 1,
                    "fill": "#ffffff"
                  },
                  {
                    "type": "aoi",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "${parameters.Target_Size}",
                    "height": "${parameters.Target_Size}",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "rgba(0, 0, 0, 0.2)",
                    "label": "Response"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "P_Small_3.png": "embedded\u002F6dc69d0480b14a98a83de75f92c0eca4e2669255731aa141a99f1be6da719c42.png",
                  "P_Large_3.png": "embedded\u002Fd37f527663db56db4b0fdb663ab0dd627ead047fc61d08dd0f6eaa9aef6b2615.png",
                  "Control_3.png": "embedded\u002F7e50a10442cfc7c81fc90163ae942334600b470c1821b5485b1c59f6e81548f2.png",
                  "Control_3 (Big).png": "embedded\u002F708b6f94fcde61e1648d34d6678481c4b21d066970e2ca1ad797bbd3752cdf8e.png",
                  "Control_3 (Small).png": "embedded\u002F946b8f3f3b01a592a1b8fa9b2c099dd13287ee645f541445da4ecaec9e0615d9.png",
                  "P_Small Context Only.png": "embedded\u002Faf40cc0dbb8fe690520ca84449a67f81604c58e66d62189adaaa4c32f00eb819.png",
                  "P_Large Context Only.png": "embedded\u002Fb442ec0b7fcb1633cb33796d7f9d1748c72e40ee71643d664de1b30999111e28.png",
                  "Control Context Only.png": "embedded\u002F5e04a73c6cbecd9dac6b3063848adb79e6b7e3fd02bd826bae15c4cd343720dc.png"
                },
                "responses": {
                  "click @Response": "Response"
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Trial",
                "plugins": [
                  {
                    "type": "mousetrap",
                    "mode": "mousetrap",
                    "path": "global.MousetrapPlugin"
                  }
                ]
              },
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "image",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": "600",
                    "height": "600",
                    "stroke": null,
                    "strokeWidth": 0,
                    "fill": "black",
                    "src": "${ this.files[\"screen.jpeg\"] }"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "screen.jpeg": "embedded\u002F0444150c2c031ef7f44caaa0725897453f39206c03dab57ddf1d6532b6aec5b0.jpeg"
                },
                "responses": {
                  "": ""
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Mask",
                "timeout": "200"
              }
            ]
          }
        },
        {
          "type": "lab.flow.Loop",
          "templateParameters": [
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "40",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "40",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "60",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "60",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "40",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "40",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "60",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "60",
              "Position_V": "-175"
            }
          ],
          "sample": {
            "mode": "draw",
            "n": "100"
          },
          "files": {
            "Control Context Only.png": "embedded\u002F5e04a73c6cbecd9dac6b3063848adb79e6b7e3fd02bd826bae15c4cd343720dc.png",
            "P_Small Context Only.png": "embedded\u002Faf40cc0dbb8fe690520ca84449a67f81604c58e66d62189adaaa4c32f00eb819.png",
            "P_Large Context Only.png": "embedded\u002F992a9d10481882a0cfe4bf27e5395035a6398ea122acfc48cd5163209d98b020.png",
            "P_Small_Far Context Only.png": "embedded\u002F8f0579522952818b5e5ef468a76b6405674fea39f30203977dd5a6321ab75b20.png"
          },
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {
            "before:prepare": function anonymous(
) {
this.options.viewport = [800, 600]
this.options.viewportScale = 1
}
          },
          "title": "Experimental Trials_Vis_B2",
          "skip": true,
          "shuffleGroups": [],
          "template": {
            "type": "lab.flow.Sequence",
            "files": {},
            "responses": {
              "": ""
            },
            "parameters": {},
            "messageHandlers": {
              "before:prepare": function anonymous(
) {
this.options.viewport = [800, 600]
this.options.viewportScale = 1
}
            },
            "title": "Sequence",
            "content": [
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "aoi",
                    "left": 0,
                    "top": "0",
                    "angle": 0,
                    "width": 20.84,
                    "height": 20.84,
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "rgba(0, 0, 0, 0.2)",
                    "label": "Start_Button"
                  },
                  {
                    "type": "rect",
                    "left": "0",
                    "top": "0",
                    "angle": 0,
                    "width": "600",
                    "height": "600",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "black"
                  },
                  {
                    "type": "circle",
                    "left": 0,
                    "top": "0",
                    "angle": 0,
                    "width": 15,
                    "height": 15,
                    "stroke": "#aaaaaa",
                    "strokeWidth": 1,
                    "fill": "#dddddd"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {},
                "responses": {
                  "click @Start_Button": "Start Position"
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Start Button",
                "plugins": [
                  {
                    "type": "mousetrap",
                    "mode": "mousetrap",
                    "path": "global.MousetrapPlugin"
                  }
                ]
              },
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "rect",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": "600",
                    "height": "600",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "black"
                  },
                  {
                    "type": "image",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "240",
                    "height": "240",
                    "stroke": null,
                    "strokeWidth": 0,
                    "fill": "black",
                    "src": "${this.files[this.parameters.Context_Size]}"
                  },
                  {
                    "type": "circle",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "${parameters.Target_Size}",
                    "height": 70,
                    "stroke": "#ffffff",
                    "strokeWidth": 1,
                    "fill": "#ffffff"
                  },
                  {
                    "type": "aoi",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "${parameters.Target_Size}",
                    "height": "${parameters.Target_Size}",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "rgba(0, 0, 0, 0.2)",
                    "label": "Response"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "P_Small_3.png": "embedded\u002F6dc69d0480b14a98a83de75f92c0eca4e2669255731aa141a99f1be6da719c42.png",
                  "P_Large_3.png": "embedded\u002Fd37f527663db56db4b0fdb663ab0dd627ead047fc61d08dd0f6eaa9aef6b2615.png",
                  "Control_3.png": "embedded\u002F7e50a10442cfc7c81fc90163ae942334600b470c1821b5485b1c59f6e81548f2.png",
                  "Control_3 (Big).png": "embedded\u002F708b6f94fcde61e1648d34d6678481c4b21d066970e2ca1ad797bbd3752cdf8e.png",
                  "Control_3 (Small).png": "embedded\u002F946b8f3f3b01a592a1b8fa9b2c099dd13287ee645f541445da4ecaec9e0615d9.png",
                  "P_Small Context Only.png": "embedded\u002Faf40cc0dbb8fe690520ca84449a67f81604c58e66d62189adaaa4c32f00eb819.png",
                  "P_Large Context Only.png": "embedded\u002Fb442ec0b7fcb1633cb33796d7f9d1748c72e40ee71643d664de1b30999111e28.png",
                  "Control Context Only.png": "embedded\u002F5e04a73c6cbecd9dac6b3063848adb79e6b7e3fd02bd826bae15c4cd343720dc.png"
                },
                "responses": {
                  "click @Response": "Response"
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Trial",
                "plugins": [
                  {
                    "type": "mousetrap",
                    "mode": "mousetrap",
                    "path": "global.MousetrapPlugin"
                  }
                ]
              },
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "image",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": "600",
                    "height": "600",
                    "stroke": null,
                    "strokeWidth": 0,
                    "fill": "black",
                    "src": "${ this.files[\"screen.jpeg\"] }"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "screen.jpeg": "embedded\u002F0444150c2c031ef7f44caaa0725897453f39206c03dab57ddf1d6532b6aec5b0.jpeg"
                },
                "responses": {
                  "": ""
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Mask",
                "timeout": "200"
              }
            ]
          }
        },
        {
          "type": "lab.html.Page",
          "items": [
            {
              "type": "text",
              "title": "Practice",
              "content": "A grey 'start' button will appear in the center of the screen, along with a target circle. Press this button to begin each trial."
            },
            {
              "required": true,
              "type": "text",
              "title": "",
              "content": "Clicking the start button will cause the target to disappear.  After clicking the start button, move your cursor and click the center of the disappeared target AS QUICKLY AND AS ACCURATELY AS POSSIBLE."
            },
            {
              "required": true,
              "type": "text",
              "content": "Click 'Continue' to begin.  Good Luck!"
            }
          ],
          "scrollTop": true,
          "submitButtonText": "Continue →",
          "submitButtonPosition": "right",
          "files": {},
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {
            "before:prepare": function anonymous(
) {
this.options.viewport = [800, 600]
this.options.viewportScale = 1
}
          },
          "title": "Practice Instructions_Dis"
        },
        {
          "type": "lab.flow.Loop",
          "templateParameters": [
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "40",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "40",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "60",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "60",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "40",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "40",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "60",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "60",
              "Position_V": "-175"
            }
          ],
          "sample": {
            "mode": "draw",
            "n": "20"
          },
          "files": {
            "Control Context Only.png": "embedded\u002F5e04a73c6cbecd9dac6b3063848adb79e6b7e3fd02bd826bae15c4cd343720dc.png",
            "P_Small Context Only.png": "embedded\u002Faf40cc0dbb8fe690520ca84449a67f81604c58e66d62189adaaa4c32f00eb819.png",
            "P_Large Context Only.png": "embedded\u002F992a9d10481882a0cfe4bf27e5395035a6398ea122acfc48cd5163209d98b020.png",
            "P_Small_Far Context Only.png": "embedded\u002F8f0579522952818b5e5ef468a76b6405674fea39f30203977dd5a6321ab75b20.png"
          },
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {
            "before:prepare": function anonymous(
) {
this.options.viewport = [800, 600]
this.options.viewportScale = 1
}
          },
          "title": "Practice Trials_Dis",
          "shuffleGroups": [],
          "template": {
            "type": "lab.flow.Sequence",
            "files": {},
            "responses": {
              "": ""
            },
            "parameters": {},
            "messageHandlers": {
              "before:prepare": function anonymous(
) {
this.options.viewport = [800, 600]
this.options.viewportScale = 1
}
            },
            "title": "Sequence",
            "content": [
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "rect",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": "600",
                    "height": 600,
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "black"
                  },
                  {
                    "type": "image",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "240",
                    "height": "240",
                    "stroke": null,
                    "strokeWidth": 0,
                    "fill": "black",
                    "src": "${this.files[this.parameters.Context_Size]}"
                  },
                  {
                    "type": "circle",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "${parameters.Target_Size}",
                    "height": 70,
                    "stroke": "#ffffff",
                    "strokeWidth": 1,
                    "fill": "#ffffff"
                  },
                  {
                    "type": "circle",
                    "left": "0",
                    "top": 0,
                    "angle": 0,
                    "width": "15",
                    "height": 55,
                    "stroke": "#aaaaaa",
                    "strokeWidth": 1,
                    "fill": "#dddddd"
                  },
                  {
                    "type": "aoi",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": "15",
                    "height": "15",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "rgba(0, 0, 0, 0.2)",
                    "label": "Start_Click"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "P_Small_3.png": "embedded\u002F6dc69d0480b14a98a83de75f92c0eca4e2669255731aa141a99f1be6da719c42.png",
                  "P_Large_3.png": "embedded\u002Fd37f527663db56db4b0fdb663ab0dd627ead047fc61d08dd0f6eaa9aef6b2615.png",
                  "Control_3.png": "embedded\u002F7e50a10442cfc7c81fc90163ae942334600b470c1821b5485b1c59f6e81548f2.png",
                  "Control_3 (Big).png": "embedded\u002F708b6f94fcde61e1648d34d6678481c4b21d066970e2ca1ad797bbd3752cdf8e.png",
                  "Control_3 (Small).png": "embedded\u002F946b8f3f3b01a592a1b8fa9b2c099dd13287ee645f541445da4ecaec9e0615d9.png",
                  "P_Small Context Only.png": "embedded\u002Faf40cc0dbb8fe690520ca84449a67f81604c58e66d62189adaaa4c32f00eb819.png",
                  "P_Large Context Only.png": "embedded\u002Fb442ec0b7fcb1633cb33796d7f9d1748c72e40ee71643d664de1b30999111e28.png",
                  "Control Context Only.png": "embedded\u002F5e04a73c6cbecd9dac6b3063848adb79e6b7e3fd02bd826bae15c4cd343720dc.png"
                },
                "responses": {
                  "click @Start_Click": "Start_Click"
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Practice",
                "plugins": [
                  {
                    "type": "mousetrap",
                    "mode": "mousetrap",
                    "path": "global.MousetrapPlugin"
                  }
                ]
              },
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "rect",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": "600",
                    "height": 600,
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "black"
                  },
                  {
                    "type": "aoi",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "${parameters.Target_Size}",
                    "height": 50,
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "rgba(0, 0, 0, 0.2)",
                    "label": "Response"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "P_Small_3.png": "embedded\u002F6dc69d0480b14a98a83de75f92c0eca4e2669255731aa141a99f1be6da719c42.png",
                  "P_Large_3.png": "embedded\u002Fd37f527663db56db4b0fdb663ab0dd627ead047fc61d08dd0f6eaa9aef6b2615.png",
                  "Control_3.png": "embedded\u002F7e50a10442cfc7c81fc90163ae942334600b470c1821b5485b1c59f6e81548f2.png",
                  "Control_3 (Big).png": "embedded\u002F708b6f94fcde61e1648d34d6678481c4b21d066970e2ca1ad797bbd3752cdf8e.png",
                  "Control_3 (Small).png": "embedded\u002F946b8f3f3b01a592a1b8fa9b2c099dd13287ee645f541445da4ecaec9e0615d9.png",
                  "P_Small Context Only.png": "embedded\u002Faf40cc0dbb8fe690520ca84449a67f81604c58e66d62189adaaa4c32f00eb819.png",
                  "P_Large Context Only.png": "embedded\u002Fb442ec0b7fcb1633cb33796d7f9d1748c72e40ee71643d664de1b30999111e28.png",
                  "Control Context Only.png": "embedded\u002F5e04a73c6cbecd9dac6b3063848adb79e6b7e3fd02bd826bae15c4cd343720dc.png"
                },
                "responses": {
                  "click @Response": "Response"
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Practice_2",
                "plugins": [
                  {
                    "type": "mousetrap",
                    "mode": "mousetrap",
                    "path": "global.MousetrapPlugin"
                  }
                ]
              },
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "image",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": 600,
                    "height": 599.76,
                    "stroke": null,
                    "strokeWidth": 0,
                    "fill": "black",
                    "src": "${ this.files[\"screen.jpeg\"] }"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "screen.jpeg": "embedded\u002F0444150c2c031ef7f44caaa0725897453f39206c03dab57ddf1d6532b6aec5b0.jpeg"
                },
                "responses": {
                  "": ""
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Mask",
                "timeout": "200"
              }
            ]
          }
        },
        {
          "type": "lab.html.Page",
          "items": [
            {
              "type": "text",
              "title": "Part 2: Experimental Trials",
              "content": "Click the 'Continue' button to begin the actual experiment"
            }
          ],
          "scrollTop": true,
          "submitButtonText": "Continue →",
          "submitButtonPosition": "right",
          "files": {},
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {},
          "title": "Experimental Trials Instructions"
        },
        {
          "type": "lab.flow.Loop",
          "templateParameters": [
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "40",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "40",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "60",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "60",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "40",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "40",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "60",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "60",
              "Position_V": "-175"
            }
          ],
          "sample": {
            "mode": "draw",
            "n": "100"
          },
          "files": {
            "Control Context Only.png": "embedded\u002F5e04a73c6cbecd9dac6b3063848adb79e6b7e3fd02bd826bae15c4cd343720dc.png",
            "P_Small Context Only.png": "embedded\u002Faf40cc0dbb8fe690520ca84449a67f81604c58e66d62189adaaa4c32f00eb819.png",
            "P_Large Context Only.png": "embedded\u002F992a9d10481882a0cfe4bf27e5395035a6398ea122acfc48cd5163209d98b020.png",
            "P_Small_Far Context Only.png": "embedded\u002F8f0579522952818b5e5ef468a76b6405674fea39f30203977dd5a6321ab75b20.png"
          },
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {
            "before:prepare": function anonymous(
) {
this.options.viewport = [800, 600]
this.options.viewportScale = 1
}
          },
          "title": "Experimental Trials_Dis",
          "shuffleGroups": [],
          "template": {
            "type": "lab.flow.Sequence",
            "files": {},
            "responses": {
              "": ""
            },
            "parameters": {},
            "messageHandlers": {
              "before:prepare": function anonymous(
) {
this.options.viewport = [800, 600]
this.options.viewportScale = 1
}
            },
            "title": "Sequence",
            "content": [
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "rect",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": "600",
                    "height": 600,
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "black"
                  },
                  {
                    "type": "image",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "240",
                    "height": "240",
                    "stroke": null,
                    "strokeWidth": 0,
                    "fill": "black",
                    "src": "${this.files[this.parameters.Context_Size]}"
                  },
                  {
                    "type": "circle",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "${parameters.Target_Size}",
                    "height": 70,
                    "stroke": "#ffffff",
                    "strokeWidth": 1,
                    "fill": "#ffffff"
                  },
                  {
                    "type": "circle",
                    "left": "0",
                    "top": 0,
                    "angle": 0,
                    "width": "15",
                    "height": 55,
                    "stroke": "#aaaaaa",
                    "strokeWidth": 1,
                    "fill": "#dddddd"
                  },
                  {
                    "type": "aoi",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": "15",
                    "height": "15",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "rgba(0, 0, 0, 0.2)",
                    "label": "Start_Click"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "P_Small_3.png": "embedded\u002F6dc69d0480b14a98a83de75f92c0eca4e2669255731aa141a99f1be6da719c42.png",
                  "P_Large_3.png": "embedded\u002Fd37f527663db56db4b0fdb663ab0dd627ead047fc61d08dd0f6eaa9aef6b2615.png",
                  "Control_3.png": "embedded\u002F7e50a10442cfc7c81fc90163ae942334600b470c1821b5485b1c59f6e81548f2.png",
                  "Control_3 (Big).png": "embedded\u002F708b6f94fcde61e1648d34d6678481c4b21d066970e2ca1ad797bbd3752cdf8e.png",
                  "Control_3 (Small).png": "embedded\u002F946b8f3f3b01a592a1b8fa9b2c099dd13287ee645f541445da4ecaec9e0615d9.png",
                  "P_Small Context Only.png": "embedded\u002Faf40cc0dbb8fe690520ca84449a67f81604c58e66d62189adaaa4c32f00eb819.png",
                  "P_Large Context Only.png": "embedded\u002Fb442ec0b7fcb1633cb33796d7f9d1748c72e40ee71643d664de1b30999111e28.png",
                  "Control Context Only.png": "embedded\u002F5e04a73c6cbecd9dac6b3063848adb79e6b7e3fd02bd826bae15c4cd343720dc.png"
                },
                "responses": {
                  "click @Start_Click": "Start_Click"
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Trial_1",
                "plugins": [
                  {
                    "type": "mousetrap",
                    "mode": "mousetrap",
                    "path": "global.MousetrapPlugin"
                  }
                ]
              },
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "rect",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": 600,
                    "height": 600,
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "black"
                  },
                  {
                    "type": "aoi",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "${parameters.Target_Size}",
                    "height": 50,
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "rgba(0, 0, 0, 0.2)",
                    "label": "Response"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "P_Small_3.png": "embedded\u002F6dc69d0480b14a98a83de75f92c0eca4e2669255731aa141a99f1be6da719c42.png",
                  "P_Large_3.png": "embedded\u002Fd37f527663db56db4b0fdb663ab0dd627ead047fc61d08dd0f6eaa9aef6b2615.png",
                  "Control_3.png": "embedded\u002F7e50a10442cfc7c81fc90163ae942334600b470c1821b5485b1c59f6e81548f2.png",
                  "Control_3 (Big).png": "embedded\u002F708b6f94fcde61e1648d34d6678481c4b21d066970e2ca1ad797bbd3752cdf8e.png",
                  "Control_3 (Small).png": "embedded\u002F946b8f3f3b01a592a1b8fa9b2c099dd13287ee645f541445da4ecaec9e0615d9.png",
                  "P_Small Context Only.png": "embedded\u002Faf40cc0dbb8fe690520ca84449a67f81604c58e66d62189adaaa4c32f00eb819.png",
                  "P_Large Context Only.png": "embedded\u002Fb442ec0b7fcb1633cb33796d7f9d1748c72e40ee71643d664de1b30999111e28.png",
                  "Control Context Only.png": "embedded\u002F5e04a73c6cbecd9dac6b3063848adb79e6b7e3fd02bd826bae15c4cd343720dc.png"
                },
                "responses": {
                  "click @Response": "Response"
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Trial_2",
                "plugins": [
                  {
                    "type": "mousetrap",
                    "mode": "mousetrap",
                    "path": "global.MousetrapPlugin"
                  }
                ]
              },
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "image",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": 600,
                    "height": 599.76,
                    "stroke": null,
                    "strokeWidth": 0,
                    "fill": "black",
                    "src": "${ this.files[\"screen.jpeg\"] }"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "screen.jpeg": "embedded\u002F0444150c2c031ef7f44caaa0725897453f39206c03dab57ddf1d6532b6aec5b0.jpeg"
                },
                "responses": {
                  "": ""
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Mask",
                "timeout": "200"
              }
            ]
          }
        },
        {
          "type": "lab.html.Page",
          "items": [
            {
              "type": "text",
              "title": "Break",
              "content": "When you are ready, Press the 'Continue' button to proceed to the next set of trials."
            }
          ],
          "scrollTop": true,
          "submitButtonText": "Continue →",
          "submitButtonPosition": "right",
          "files": {},
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {},
          "title": "Break"
        },
        {
          "type": "lab.flow.Loop",
          "templateParameters": [
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "50",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "40",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "40",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "-175",
              "Target_Size": "60",
              "Position_V": "0"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "175",
              "Target_Size": "60",
              "Position_V": "0"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "P_Small Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "P_Large Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "50",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "40",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "40",
              "Position_V": "-175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "60",
              "Position_V": "175"
            },
            {
              "Context_Size": "Control Context Only.png",
              "Position_H": "0",
              "Target_Size": "60",
              "Position_V": "-175"
            }
          ],
          "sample": {
            "mode": "draw",
            "n": "100"
          },
          "files": {
            "Control Context Only.png": "embedded\u002F5e04a73c6cbecd9dac6b3063848adb79e6b7e3fd02bd826bae15c4cd343720dc.png",
            "P_Small Context Only.png": "embedded\u002Faf40cc0dbb8fe690520ca84449a67f81604c58e66d62189adaaa4c32f00eb819.png",
            "P_Large Context Only.png": "embedded\u002F992a9d10481882a0cfe4bf27e5395035a6398ea122acfc48cd5163209d98b020.png",
            "P_Small_Far Context Only.png": "embedded\u002F8f0579522952818b5e5ef468a76b6405674fea39f30203977dd5a6321ab75b20.png"
          },
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {
            "before:prepare": function anonymous(
) {
this.options.viewport = [800, 600]
this.options.viewportScale = 1
}
          },
          "title": "Experimental Trials_Dis_B2",
          "shuffleGroups": [],
          "template": {
            "type": "lab.flow.Sequence",
            "files": {},
            "responses": {
              "": ""
            },
            "parameters": {},
            "messageHandlers": {
              "before:prepare": function anonymous(
) {
this.options.viewport = [800, 600]
this.options.viewportScale = 1
}
            },
            "title": "Sequence",
            "content": [
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "rect",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": "600",
                    "height": 600,
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "black"
                  },
                  {
                    "type": "image",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "240",
                    "height": "240",
                    "stroke": null,
                    "strokeWidth": 0,
                    "fill": "black",
                    "src": "${this.files[this.parameters.Context_Size]}"
                  },
                  {
                    "type": "circle",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "${parameters.Target_Size}",
                    "height": 70,
                    "stroke": "#ffffff",
                    "strokeWidth": 1,
                    "fill": "#ffffff"
                  },
                  {
                    "type": "circle",
                    "left": "0",
                    "top": 0,
                    "angle": 0,
                    "width": "15",
                    "height": 55,
                    "stroke": "#aaaaaa",
                    "strokeWidth": 1,
                    "fill": "#dddddd"
                  },
                  {
                    "type": "aoi",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": "15",
                    "height": "15",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "rgba(0, 0, 0, 0.2)",
                    "label": "Start_Click"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "P_Small_3.png": "embedded\u002F6dc69d0480b14a98a83de75f92c0eca4e2669255731aa141a99f1be6da719c42.png",
                  "P_Large_3.png": "embedded\u002Fd37f527663db56db4b0fdb663ab0dd627ead047fc61d08dd0f6eaa9aef6b2615.png",
                  "Control_3.png": "embedded\u002F7e50a10442cfc7c81fc90163ae942334600b470c1821b5485b1c59f6e81548f2.png",
                  "Control_3 (Big).png": "embedded\u002F708b6f94fcde61e1648d34d6678481c4b21d066970e2ca1ad797bbd3752cdf8e.png",
                  "Control_3 (Small).png": "embedded\u002F946b8f3f3b01a592a1b8fa9b2c099dd13287ee645f541445da4ecaec9e0615d9.png",
                  "P_Small Context Only.png": "embedded\u002Faf40cc0dbb8fe690520ca84449a67f81604c58e66d62189adaaa4c32f00eb819.png",
                  "P_Large Context Only.png": "embedded\u002Fb442ec0b7fcb1633cb33796d7f9d1748c72e40ee71643d664de1b30999111e28.png",
                  "Control Context Only.png": "embedded\u002F5e04a73c6cbecd9dac6b3063848adb79e6b7e3fd02bd826bae15c4cd343720dc.png"
                },
                "responses": {
                  "click @Start_Click": "Start_Click"
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Trial_1",
                "plugins": [
                  {
                    "type": "mousetrap",
                    "mode": "mousetrap",
                    "path": "global.MousetrapPlugin"
                  }
                ]
              },
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "rect",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": 600,
                    "height": 600,
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "black"
                  },
                  {
                    "type": "aoi",
                    "left": "${parameters.Position_H}",
                    "top": "${parameters.Position_V}",
                    "angle": 0,
                    "width": "${parameters.Target_Size}",
                    "height": 50,
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "rgba(0, 0, 0, 0.2)",
                    "label": "Response"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "P_Small_3.png": "embedded\u002F6dc69d0480b14a98a83de75f92c0eca4e2669255731aa141a99f1be6da719c42.png",
                  "P_Large_3.png": "embedded\u002Fd37f527663db56db4b0fdb663ab0dd627ead047fc61d08dd0f6eaa9aef6b2615.png",
                  "Control_3.png": "embedded\u002F7e50a10442cfc7c81fc90163ae942334600b470c1821b5485b1c59f6e81548f2.png",
                  "Control_3 (Big).png": "embedded\u002F708b6f94fcde61e1648d34d6678481c4b21d066970e2ca1ad797bbd3752cdf8e.png",
                  "Control_3 (Small).png": "embedded\u002F946b8f3f3b01a592a1b8fa9b2c099dd13287ee645f541445da4ecaec9e0615d9.png",
                  "P_Small Context Only.png": "embedded\u002Faf40cc0dbb8fe690520ca84449a67f81604c58e66d62189adaaa4c32f00eb819.png",
                  "P_Large Context Only.png": "embedded\u002Fb442ec0b7fcb1633cb33796d7f9d1748c72e40ee71643d664de1b30999111e28.png",
                  "Control Context Only.png": "embedded\u002F5e04a73c6cbecd9dac6b3063848adb79e6b7e3fd02bd826bae15c4cd343720dc.png"
                },
                "responses": {
                  "click @Response": "Response"
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Trial_2",
                "plugins": [
                  {
                    "type": "mousetrap",
                    "mode": "mousetrap",
                    "path": "global.MousetrapPlugin"
                  }
                ]
              },
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "image",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": 600,
                    "height": 599.76,
                    "stroke": null,
                    "strokeWidth": 0,
                    "fill": "black",
                    "src": "${ this.files[\"screen.jpeg\"] }"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "screen.jpeg": "embedded\u002F0444150c2c031ef7f44caaa0725897453f39206c03dab57ddf1d6532b6aec5b0.jpeg"
                },
                "responses": {
                  "": ""
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Mask",
                "timeout": "200"
              }
            ]
          }
        },
        {
          "type": "lab.html.Page",
          "items": [
            {
              "type": "text",
              "title": "Part 3: Size Judgement",
              "content": "You will be shown two target circles, one of which is slightly larger than the other."
            },
            {
              "required": true,
              "type": "text",
              "content": "Choose which target circle is largest by clicking on it.\n\n"
            },
            {
              "required": true,
              "type": "image",
              "width": "",
              "height": "",
              "src": "${ this.files[\"Comparison 1.PNG\"] }",
              "name": ""
            },
            {
              "required": true,
              "type": "text",
              "content": "If a target circle is surrounded by a ring of other circles, only consider the size of the target circle in the MIDDLE when comparing target circle sizes."
            },
            {
              "required": true,
              "type": "image",
              "src": "${ this.files[\"Comparison 2.PNG\"] }",
              "name": ""
            },
            {
              "required": true,
              "type": "text",
              "content": "Click 'Continue' to proceed."
            }
          ],
          "scrollTop": true,
          "submitButtonText": "Continue →",
          "submitButtonPosition": "right",
          "files": {
            "Comparison 2.PNG": "embedded\u002Fd42115abaa6f45fa3dcb87811c3312773b0deb2d8e3c8766458c5c294f254fd3.PNG",
            "Comparison 1.PNG": "embedded\u002F1d656ca8aeed7a55387e918c995ccd20294a02d73d5780c730b764b13bcd5f04.PNG"
          },
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {
            "before:prepare": function anonymous(
) {
this.options.viewport = [800, 600]
this.options.viewportScale = 1
}
          },
          "title": "Percept Compare Instructions"
        },
        {
          "type": "lab.flow.Loop",
          "templateParameters": [
            {
              "Context_L": "P_Large Context Only.png",
              "Context_R": "P_Small Context Only.png",
              "Target_Size_L": "50",
              "Target_Size_R": "50"
            },
            {
              "Context_L": "P_Large Context Only.png",
              "Context_R": "Control Context Only.png",
              "Target_Size_L": "50",
              "Target_Size_R": "50"
            },
            {
              "Context_L": "P_Large Context Only.png",
              "Context_R": "Control Context Only.png",
              "Target_Size_L": "50",
              "Target_Size_R": "60"
            },
            {
              "Context_L": "P_Large Context Only.png",
              "Context_R": "Control Context Only.png",
              "Target_Size_L": "50",
              "Target_Size_R": "40"
            },
            {
              "Context_L": "P_Small Context Only.png",
              "Context_R": "P_Large Context Only.png",
              "Target_Size_L": "50",
              "Target_Size_R": "50"
            },
            {
              "Context_L": "P_Small Context Only.png",
              "Context_R": "Control Context Only.png",
              "Target_Size_L": "50",
              "Target_Size_R": "50"
            },
            {
              "Context_L": "P_Small Context Only.png",
              "Context_R": "Control Context Only.png",
              "Target_Size_L": "50",
              "Target_Size_R": "60"
            },
            {
              "Context_L": "P_Small Context Only.png",
              "Context_R": "Control Context Only.png",
              "Target_Size_L": "50",
              "Target_Size_R": "40"
            },
            {
              "Context_L": "Control Context Only.png",
              "Context_R": "P_Large Context Only.png",
              "Target_Size_L": "50",
              "Target_Size_R": "50"
            },
            {
              "Context_L": "Control Context Only.png",
              "Context_R": "P_Small Context Only.png",
              "Target_Size_L": "50",
              "Target_Size_R": "50"
            },
            {
              "Context_L": "Control Context Only.png",
              "Context_R": "Control Context Only.png",
              "Target_Size_L": "50",
              "Target_Size_R": "60"
            },
            {
              "Context_L": "Control Context Only.png",
              "Context_R": "Control Context Only.png",
              "Target_Size_L": "50",
              "Target_Size_R": "40"
            },
            {
              "Context_L": "Control Context Only.png",
              "Context_R": "P_Large Context Only.png",
              "Target_Size_L": "60",
              "Target_Size_R": "50"
            },
            {
              "Context_L": "Control Context Only.png",
              "Context_R": "P_Small Context Only.png",
              "Target_Size_L": "60",
              "Target_Size_R": "50"
            },
            {
              "Context_L": "Control Context Only.png",
              "Context_R": "Control Context Only.png",
              "Target_Size_L": "60",
              "Target_Size_R": "50"
            },
            {
              "Context_L": "Control Context Only.png",
              "Context_R": "Control Context Only.png",
              "Target_Size_L": "60",
              "Target_Size_R": "40"
            },
            {
              "Context_L": "Control Context Only.png",
              "Context_R": "P_Large Context Only.png",
              "Target_Size_L": "40",
              "Target_Size_R": "50"
            },
            {
              "Context_L": "Control Context Only.png",
              "Context_R": "P_Small Context Only.png",
              "Target_Size_L": "40",
              "Target_Size_R": "50"
            },
            {
              "Context_L": "Control Context Only.png",
              "Context_R": "Control Context Only.png",
              "Target_Size_L": "40",
              "Target_Size_R": "60"
            },
            {
              "Context_L": "Control Context Only.png",
              "Context_R": "Control Context Only.png",
              "Target_Size_L": "40",
              "Target_Size_R": "50"
            }
          ],
          "sample": {
            "mode": "draw-shuffle",
            "n": ""
          },
          "files": {
            "Control_3.png": "embedded\u002F7e50a10442cfc7c81fc90163ae942334600b470c1821b5485b1c59f6e81548f2.png",
            "P_Large_3.png": "embedded\u002Fd37f527663db56db4b0fdb663ab0dd627ead047fc61d08dd0f6eaa9aef6b2615.png",
            "P_Small_3.png": "embedded\u002F6dc69d0480b14a98a83de75f92c0eca4e2669255731aa141a99f1be6da719c42.png",
            "Control_3 (Big).png": "embedded\u002F708b6f94fcde61e1648d34d6678481c4b21d066970e2ca1ad797bbd3752cdf8e.png",
            "Control_3 (Small).png": "embedded\u002F946b8f3f3b01a592a1b8fa9b2c099dd13287ee645f541445da4ecaec9e0615d9.png",
            "P_Small Context Only.png": "embedded\u002Faf40cc0dbb8fe690520ca84449a67f81604c58e66d62189adaaa4c32f00eb819.png",
            "Control Context Only.png": "embedded\u002F5e04a73c6cbecd9dac6b3063848adb79e6b7e3fd02bd826bae15c4cd343720dc.png",
            "P_Large Context Only.png": "embedded\u002F992a9d10481882a0cfe4bf27e5395035a6398ea122acfc48cd5163209d98b020.png",
            "P_Small_Far Context Only.png": "embedded\u002F8f0579522952818b5e5ef468a76b6405674fea39f30203977dd5a6321ab75b20.png"
          },
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {},
          "title": "Perceptual Comparison",
          "shuffleGroups": [],
          "template": {
            "type": "lab.flow.Sequence",
            "files": {},
            "responses": {
              "": ""
            },
            "parameters": {},
            "messageHandlers": {},
            "title": "Sequence",
            "content": [
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "aoi",
                    "left": 0,
                    "top": "0",
                    "angle": 0,
                    "width": 20.84,
                    "height": 20.84,
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "rgba(0, 0, 0, 0.2)",
                    "label": "Start_Button"
                  },
                  {
                    "type": "rect",
                    "left": "0",
                    "top": "0",
                    "angle": 0,
                    "width": "600",
                    "height": "600",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "black"
                  },
                  {
                    "type": "circle",
                    "left": 0,
                    "top": "0",
                    "angle": 0,
                    "width": 15,
                    "height": 15,
                    "stroke": "#aaaaaa",
                    "strokeWidth": 1,
                    "fill": "#dddddd"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {},
                "responses": {
                  "click @Start_Button": "Start Position"
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Start Button",
                "plugins": [
                  {
                    "type": "mousetrap",
                    "mode": "mousetrap",
                    "path": "global.MousetrapPlugin"
                  }
                ]
              },
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "rect",
                    "left": "0",
                    "top": "0",
                    "angle": 0,
                    "width": "600",
                    "height": "600",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "black"
                  },
                  {
                    "type": "image",
                    "left": "175",
                    "top": 0,
                    "angle": 0,
                    "width": "240",
                    "height": "240",
                    "stroke": null,
                    "strokeWidth": 0,
                    "fill": "black",
                    "src": "${ this.files[this.parameters.Context_R] }"
                  },
                  {
                    "type": "aoi",
                    "left": "-175",
                    "top": 0,
                    "angle": 0,
                    "width": "${parameters.Target_Size_L}",
                    "height": "${parameters.Target_Size_L}",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "rgba(0, 0, 0, 0.2)",
                    "label": "Response_Left"
                  },
                  {
                    "type": "image",
                    "left": "-175",
                    "top": 0,
                    "angle": 0,
                    "width": "240",
                    "height": "240",
                    "stroke": null,
                    "strokeWidth": 0,
                    "fill": "black",
                    "src": "${ this.files[this.parameters.Context_L] }"
                  },
                  {
                    "type": "circle",
                    "left": "-175",
                    "top": 0,
                    "angle": 0,
                    "width": "${parameters.Target_Size_L}",
                    "height": 55,
                    "stroke": "#ffffff",
                    "strokeWidth": 1,
                    "fill": "#ffffff"
                  },
                  {
                    "type": "circle",
                    "left": "175",
                    "top": 0,
                    "angle": 0,
                    "width": "${parameters.Target_Size_R}",
                    "height": 50,
                    "stroke": "#ffffff",
                    "strokeWidth": 1,
                    "fill": "#ffffff"
                  },
                  {
                    "type": "aoi",
                    "left": "175",
                    "top": 0,
                    "angle": 0,
                    "width": "${parameters.Target_Size_R}",
                    "height": "${parameters.Target_Size_R}",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "rgba(0, 0, 0, 0.2)",
                    "label": "Response_Right"
                  },
                  {
                    "type": "aoi",
                    "left": "-175",
                    "top": 0,
                    "angle": 0,
                    "width": "${parameters.Target_Size_L}",
                    "height": "${parameters.Target_Size_L}",
                    "stroke": null,
                    "strokeWidth": 1,
                    "fill": "rgba(0, 0, 0, 0.2)",
                    "label": "Response_Left"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "P_Small_3.png": "embedded\u002F6dc69d0480b14a98a83de75f92c0eca4e2669255731aa141a99f1be6da719c42.png",
                  "P_Large_3.png": "embedded\u002Fd37f527663db56db4b0fdb663ab0dd627ead047fc61d08dd0f6eaa9aef6b2615.png",
                  "Control_3.png": "embedded\u002F7e50a10442cfc7c81fc90163ae942334600b470c1821b5485b1c59f6e81548f2.png"
                },
                "responses": {
                  "click @Response_Left": "Respond_Left",
                  "click @Response_Right": "Respond_Right"
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Comparison",
                "plugins": [
                  {
                    "type": "mousetrap",
                    "mode": "mousetrap",
                    "path": "global.MousetrapPlugin"
                  }
                ]
              },
              {
                "type": "lab.canvas.Screen",
                "content": [
                  {
                    "type": "image",
                    "left": 0,
                    "top": 0,
                    "angle": 0,
                    "width": "600",
                    "height": "600",
                    "stroke": null,
                    "strokeWidth": 0,
                    "fill": "black",
                    "src": "${ this.files[\"screen.jpeg\"] }"
                  }
                ],
                "viewport": [
                  800,
                  600
                ],
                "files": {
                  "screen.jpeg": "embedded\u002F0444150c2c031ef7f44caaa0725897453f39206c03dab57ddf1d6532b6aec5b0.jpeg"
                },
                "responses": {
                  "": ""
                },
                "parameters": {},
                "messageHandlers": {},
                "title": "Mask",
                "timeout": "200"
              }
            ]
          }
        },
        {
          "type": "lab.html.Form",
          "content": "\u003Cbutton id=\"Continue\"\u003EContinue\u003C\u002Fbutton\u003E",
          "scrollTop": true,
          "files": {},
          "responses": {
            "": ""
          },
          "parameters": {},
          "messageHandlers": {
            "before:prepare": function anonymous(
) {
/* Get the documentElement (<html>) to display the page in fullscreen */
var elem = document.documentElement;

/* Download data to firebase */
this.options.events['click button#Continue'] = function sendToFirebase() {
    const rng = new lab.util.Random();
  
  firebase.database().ref(rng.uuid4()).set({
    data: this.options.datastore.exportJson()
    });

/* Continue to next screen */
this.end()
}
}
          },
          "title": "Download to Firebase"
        },
        {
          "type": "lab.html.Page",
          "items": [
            {
              "required": true,
              "type": "text",
              "title": "Experiment Finished!",
              "content": "Thank you for participating."
            },
            {
              "required": true,
              "type": "text",
              "content": "Ryan Langridge (PhD Candidate, Psychology, University of Manitoba, langrirw@myumanitoba.ca),",
              "title": "Principal Investigators:"
            },
            {
              "required": true,
              "type": "text",
              "content": "Gabrielle David (Undergraduate student, Department of Biological Sciences, University of Manitoba),"
            },
            {
              "required": true,
              "type": "text",
              "content": "Jasmine Pomrenke, Undergraduate student, Department of Psychology, University of Manitoba)"
            },
            {
              "required": true,
              "type": "text",
              "content": "Dr. Jonathan Marotta (Professor, Psychology, University of Manitoba, Jonathan.Marotta@umanitoba.ca)",
              "title": "Supervisor:"
            },
            {
              "required": true,
              "type": "text",
              "title": "Debriefing:",
              "content": "The purpose of this study was to measure how the perception of a circle's size influences how accurately participants judge the location of that circle's center.  To bias size perception, we used a commonly known illusion often referred to as the 'Ebbinghaus Illusion'.  This illusion involves surrounding a middle circle with a ring of larger or smaller circles.\n\nIn this illusion, a circle is usually perceived as larger when surrounded by smaller circles, while an identical sized circle is typically perceived as smaller when surrounded by larger circles.  During the experiment, you were required to choose the larger of two circles.  In some of those trials, the target circles were actually the same size, even though the illusion may have made them appear smaller or larger."
            },
            {
              "required": true,
              "type": "text",
              "content": "If you have any questions about this study, please feel free to contact us. Or, you can contact the Human Ethics Coordinator at humanethics@umanitoba.ca.",
              "title": ""
            },
            {
              "required": true,
              "type": "text",
              "title": "You may now alert the experimenter that you have finished.  Thank you!",
              "content": ""
            }
          ],
          "scrollTop": true,
          "submitButtonText": "Continue →",
          "submitButtonPosition": "hidden",
          "files": {},
          "responses": {},
          "parameters": {},
          "messageHandlers": {
            "before:prepare": function anonymous(
) {
this.options.viewport = [800, 600]
this.options.viewportScale = 1
}
          },
          "title": "Debrief_Experiment Complete",
          "width": "l"
        }
      ]
    }
  ]
})

// Let's go!
study.run()