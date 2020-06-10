#!/usr/bin/python

# read the file again                                                                 
in_file = open("/home/atgm2001/project/Canu_output/datasets/Canu_assembler_on_data_69,_data_68,_and_others_(contigs)_4.fasta", "r")

lines = in_file.read().strip()

# print(lines)                                                                        print (lines)                                                     

# remove the windows based characters                                                                                                            
lines = lines.replace("\r\n", "\n")

in_file.close()

# split the contents                                                                                                                             
sequences = lines.split("\n>")

# print(sequences)                                                                                                                               
outdir = "/home/atgm2001/project/Canu_output/datasets/fasta"

dict = {}

for sequence in sequences:

    lines = sequence.split("\n")

    # print(lines)                                                                                                                               
    # print(lines[0])                                                                                                                            

    header = lines[0]

    # print(header)                                                                                                                              
    ids = header.split()

    # print(ids)                                                                                                                         
    id = ids[0].replace(">", "")

    print(id)

    # print(lines[1:])                                                                                                                           

    seq = "".join(lines[1:])

    # print(seq)                                                                                                                                 
    # write a file within the loop. BE VERY CAREFUL WITH THE INDENTION!                                                                          

    out_file = outdir + id + ".fasta"

    print(out_file)

    output = open(out_file, "w")

    output.write(">" + id + "\n" + seq)

    output.close()

    if id not in dict:

        dict[id] = []

        dict[id].append(">" + id + "\n" + seq)
        
print(dict)