# Simple File Organizer

I'm writing this since I like this format for organizing the gazillions of pictures I take with my cell phone, but never get around to organizing them when I transfer them to my machine.

## Assumptions and Requirements

- Files to be organized must be placed in subdirectory named "input_files".
- Files in this directory will be organized by year/month.
- There is currently no restriction on file type.  Any file placed into input_files will be sorted into its appropriate year/month directory.
- The date the files will be sorted by are the modified date (stat %y), not birth date (which for example can be later than the modified date if the file was copied into the directory from elsewhere, and which also is not accessible on some operating systems)