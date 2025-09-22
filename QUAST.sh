for FASTA_FILE in *.fa; do
    echo "Running QUAST on $FASTA_FILE..."
    quast "$FASTA_FILE" -o "${FASTA_FILE%.fa}_quast" -t 48 -m 200
done
