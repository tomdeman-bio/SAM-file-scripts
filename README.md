# SAM-file-scripts
Scripts for handling SAM files

## Count_unique_genes_in_sam_file.pl
Shows the quantity of unique genes or mapping targets in a SAM file

### Usage 
    perl Count_unique_genes_in_sam_file.pl <file.sam>

## count_map_target_sam_file.pl
Shows the genes or mapping targets in a SAM file ordered by their abundance 

### Usage 
    perl count_map_target_sam_file.pl <file.sam>

## Unaligned_read_search_multi_SAM.pl
Count unmapped reads in all SAM files

### Usage
    perl Unaligned_read_search_multi_SAM.pl /path/to/sam/files