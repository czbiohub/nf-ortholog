FROM nfcore/base:1.7
LABEL authors="Olga Botvinnik" \
      description="Docker image containing all requirements for nf-core/ortholog pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-ortholog-1.0dev/bin:$PATH
