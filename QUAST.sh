for FASTA_FILE in *.fa; do
    echo "Running QUAST on $FASTA_FILE..."
    quast "$FASTA_FILE" -o "${FASTA_FILE%.fa}_quast" -t 48 -m 200
done


output_file="quast_transposed_summary.csv"

first_file=$(find . -name "transposed_report.tsv" | head -n 1)
head -n 1 "$first_file" | tr '\t' ',' > "$output_file"
for report in */transposed_report.tsv; do
    tail -n +2 "$report" | tr '\t' ',' >> "$output_file"
done
echo "Summary saved to $output_file"

