# Resumator

Resumator turns data into a resume.

It is not an uncommon desire to want to maintain a resume in multiple formats.
Or to include some aspects of resume data in one resume and not in another.  As
with other common software practices, decomposing the data and presentation
layers of the resume is not a wholly unworthwhile process. We can now simply
represent our employment history, education, etc in YAML (or any other simple
data representation format of your choice) and from that generate an HTML, PDF,
LaTeX, or Markdown version of our resume--whichever we build an ERB for.

## Installation

gem install resumator

## Configuration

Simply input your resume data in a format that is readable by resumator.

```yaml
Name: Greg Poirier
Objective:
  Never have to update an HTML version of a resume again
Experience:
  - Opower:
    - Devopsy things!
  - Los Alamos National Laboratory:
    - Network security automation.
  - self:
    - Wrote resumator, among other things.
```

Take care of capitalization yourself, because Resumator ain't know no English.
You can build your own templates and inform Resumator about them via a 
.resumatorrc file in your home director of the format:

templatetype: path/to/template

Where templatetype is a supported template type (html, pdf, or markdown).

## Running

Most basic usage, updates all configured/known output types:

resumator build resume.yaml

## License

Copyright 2013 Greg Poirier

Licensed under the Apache License, Version 2.0. See LICENSE.txt.
