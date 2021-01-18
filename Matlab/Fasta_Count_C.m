function Fasta_Count_C(fasta_file)
% Read a fasta file and count the number of cysteine residues
% Results are stored in the file results.txt

[Header, Sequence] = fastaread(fasta_file);

fid = fopen('results.txt', 'w');
C_count = 0;
for i = 1:numel(Header)
    C_count = C_count + count(Sequence{i},'C');
    fprintf(fid, '%s\n%s\n%d cysteine residues\n', Header{i}, Sequence{i}, count(Sequence{i},'C'));
end

fprintf(fid, '\nTotal cysteine residues: %d', C_count);

fclose(fid);

end