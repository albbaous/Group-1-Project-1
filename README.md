# Group-1-Project-1
*Repository for the first group project on genomic QC, assembly and alignment*

**Basic Code**
<br>
+ Run a batch file: &nbsp; <code> sbatch file.sh </code></pre>
+ Read the queue for jobs in SLURM: &nbsp; <code> squeue </code></pre>
+ Open compressed files: &nbsp; <code> zless file.zip </code></pre>
+ Cancel job: &nbsp; <code> scancel jobnumber  </code></pre>
+ Check on specific job: <code> sacct -j jobnumber --format=jobid,jobname,elapsed,state,exitcode </code></pre>
+ Make files readable and writable for everyone: <code> chmod a+rw file.sh </code></pre>
+ Make file executable for everyone: <code> chmod +x file.txt </code></pre>
+ Check file permissions for all files in directory: <code> ls -ltr </code></pre>
