library(minfi)
library(tidyverse)

# phenotype data
base_path <- file.path('Z:', 'Victor', 'Projects', 'NIH - cells', 'data', 'main', 'interim')

pDat <- readRDS(file.path(base_path, '2_3_pDat_contam.rds'))
pDat <- pDat %>%
    mutate(Tissue = case_when(
        !(Tissue %in% c('Villi', 'Villi maternal', 'Syncytiotrophoblast', 'Mixture')) ~ paste(Tissue, 'cs'),
        Tissue == 'Syncytiotrophoblast' ~ 'Trophoblasts enz',
        TRUE ~ Tissue
    ))

# filter out samples
pDat_filt <- pDat %>%
    filter(maternal_contamination_norm_flip < 0.35,
           !Sample_Name %in% c('PM364_hofb_cs', 'PL293_v_R2', 'PM366_vc_R2', 'P131_hofb_cs',
                               'PM324_V4', 'PM324_V1', 'PM139_vc', 'PM77_vc'),
           !Tissue %in% c('Villi maternal',
                          'Dead Cells and Lymphocytes cs',
                          'Mixture'),
           Trimester != 'Second')

pDat_filt %>% count(Case_ID) %>% as.data.frame
pDat_filt %>% count(Tissue) %>% as.data.frame

# filter out columns
pDat_filt <- pDat_filt %>%
    mutate(Title = Sample_Name,
           Source = paste0('Genomic DNA from ', Sample_Name),
           Organism = 'Homo sapiens', molecule = 'DNA') %>%
    select(Sample_Name, Title, Source, Organism,
           Case_ID,
           Sex, GA, Trimester, Tissue,
           Sentrix_ID, Sentrix_Position, Chip_number, Well) %>%
    rename(Celltype = Tissue, Gestational_age = GA)


# Methylation data
## Processed
betas <- readRDS(file.path(base_path, '1_4_betas_noob_filt.rds'))
dim(betas)
betas_filt <- betas[,pDat_filt$Sentrix]
dim(betas_filt)
colnames(betas_filt) <- pDat_filt$Sample_Name

## unprocessed
rgset <- readRDS(file.path(base_path, '0_1_rgset_raw.rds'))

# fix pdata
pData(rgset) <- DataFrame(pDat_filt)
p <- pDat_filt %>% as.data.frame()
rownames(p) <- paste0(p$Sentrix_ID, '_', p$Sentrix_Position)

rgset_filt <- rgset[,paste0(p$Sentrix_ID, '_', p$Sentrix_Position)]
pData(rgset_filt) <- DataFrame(p)

## checks
dim(betas_filt)
dim(rgset_filt)
dim(pDat_filt)

#rename
GSE159526_processed_matrix <- betas_filt
GSE159526_raw_rgset <- rgset_filt
GSE159526_phenodata_df <- pDat_filt

## save
save(GSE159526_processed_matrix,
     file="GSE159526_processed_matrix.Rda")

save(GSE159526_raw_rgset,
     file="GSE159526_raw_rgset.Rda")

save(GSE159526_phenodata_df,
     file="GSE159526_phenodata_df.Rda")


