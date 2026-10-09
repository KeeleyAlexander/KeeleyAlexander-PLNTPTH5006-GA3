

# GA3 answers - Keeley Alexander

------------------------------------------------------------------------

## Part A: Your README, data, and Git repo

### 1: Create subdirs and copy files

### 2: Initialize a Git repository, and commit the README and `.gitignore`

### 3: Commit throughout the assignment

------------------------------------------------------------------------

## Part B: Basic shell scripts

### 4: Predict the output of `echo.sh`

*Answer* (prediction and reasoning for `bash scripts/echo.sh Oct07 Oct08`): Error. There are only 2 "arguments" being "Oct 07" and "Oct08". The script needs 3 variables since the "set -euo pipefail command" is set in place. If this wasn't set it place, it would execute the first 2 lines of echo, give a blank for the 3rd variable, and still print the "Finished"

*Answer* (prediction and reasoning for `bash scripts/echo.sh Oct07 Oct08 Oct09 Oct10`):I predict that the script will run on the first three variables, and nothing will happen with the "Oct 10". That or it may give an error that there is an unassigned variable. 

*Answer* (prediction and reasoning for `bash scripts/echo.sh Oct07 Oct08 "Oct09 Oct10"`):I predict the script will run, but the "Oct 09 Oct10" will be together on the third line

*Answer* (prediction and reasoning for `bash scripts/echo.sh results/fastqc/*.html`):I think maybe the script will run multiple times with the third variable changing to include all the files that include .html

### 5: Run `echo.sh` and compare with your predictions

```bash
bash scripts/echo.sh Oct07 Oct08
```

The output of the command was:

```
Oct07
Oct08
scripts/echo.sh: line 6: $3: unbound variable         
```

```bash
bash scripts/echo.sh Oct07 Oct08 Oct09 Oct10
```

The output of the command was:

```    
Oct07
Oct08
Oct09
Finished     
```

```bash
bash scripts/echo.sh Oct07 Oct08 "Oct09 Oct10"
```

The output of the command was:

```
Oct07
Oct08
Oct09 Oct10
Finished         
```

```bash
bash scripts/echo.sh results/fastqc/*.html
```

The output of the command was:

```
results/fastqc/S63_R1_fastqc.html
results/fastqc/S63_R2_fastqc.html
scripts/echo.sh: line 6: $3: unbound variable         
```

*Answer*: Which output (if any) differed from your prediction, and why?
The output of the last command was different from my prediction. When I made my prediction I was looking at results as variable one, fastqc as variable 2, and *.html as variable 3. It looks as if this command was able to print the files  

### 6: Write the `printline.sh` script

<!-- No need to paste the script: we'll look at scripts/printline.sh directly. -->

### 7: Test `printline.sh` twice

Test 1:

```bash
bash scripts/printline.sh data/metadata.tsv 3
```

The output of the command was:

```
S75     10dpi   cathemerium
```

Test 2 (with redirection), and checking the contents of the output file:

```bash
#I added printline directory first
mkdir results/printline
bash scripts/printline.sh data/metadata.tsv 4 > results/printline/line_4.txt
cat results/printline/line_4.txt 
```

The output of the command that checks the file contents was:

```         
S79     10dpi   cathemerium
```

------------------------------------------------------------------------

## Part C: A script to run MultiQC

### 8: Get a MultiQC container link

*Answer*: The container link (URI) is: oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20

### 9: MultiQC's help info, and the MultiQC command

Code to run `multiqc --help` with the container:

```bash
apptainer exec oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20 multiqc --help
```

<!-- You don't need to paste the MultiQC help output -->

The MultiQC command to run MultiQC on `results/fastqc` with output in `results/multiqc`:

```bash
multiqc --outdir results/multiqc results/fastqc
```

### 10: Write the `multiqc.sh` script

<!-- No need to paste the script: we'll look at scripts/multiqc.sh directly. -->

### 11: Run `multiqc.sh`

Code to run the script:

```bash
bash scripts/multiqc.sh 
```

<!-- You don't need to paste the MultiQC logging output -->

*Answer*: Number of FastQC reports MultiQC found: 44

*Answer*: Does that match what you expected? Why/why not? Yes! There are 22 samples and each one has an R1 and R2, giving 44

### 12: Make `multiqc.sh` accept arguments, and rerun it

<!-- No need to paste the script: we'll look at scripts/multiqc.sh and its Git history directly. -->

Code to rerun the script:

```bash
bash scripts/multiqc.sh results/multiqc/ results/fastqc/
```

<!-- No need to paste any output -->

### 13: Differences between the two MultiQC runs

*Answer*: Since there were already reports from this script in the folder, it had to add a suffix to the file name "_1". This is useful information as we see it wont overwrite its output.

------------------------------------------------------------------------

## Part D: Pandoc to render Markdown

### 14: The structure of the Pandoc command

*Answer* (options and arguments, and what each does):

*Answer* (how does Pandoc know which output format to produce?):

### 15: Render your README to PDF and HTML

```bash
pandoc -o README.pdf README.md
```

- Command to render to HTML:

```bash
# Your command:
```

### 16: Should the rendered files be committed?

*Answer*: Should the rendered files be committed to your Git repo? Why/why not?

### 17: Install the PDF Viewer extension and view the PDF

*Answer*: One observation about the rendered PDF file:

## Part E: Publish your repo on GitHub

### 18: Create a GitHub repository

<!-- No command/output needed here -- we check your GitHub repo directly. -->

### 19: Connect your local repo to GitHub, and push

<!-- No command/output needed here -- we check your GitHub repo directly. -->

### 20: Create an Issue to tag the instructors

<!-- No command/output needed here -- we check your GitHub repo directly. -->

------------------------------------------------------------------------

## Bonus

### 21: Explore the MultiQC report

*Answer* (one insight you gained):

*Answer* (one thing you're confused about):

### 22: Pandoc versions

```bash
# Your command:
```

The output of the command(s) was:

```         
```

*Answer*: Is the Pandoc version available by default the most recent one?

*Answer*: Which Pandoc version are you using after loading the module?