@echo off

cd %~dp0
cd ..

call robot template ^
--template template\phipo_ext.tsv ^
--prefix "ont: https://raw.githubusercontent.com/PHI-base/phipo_ext/master/phipo_ext.owl#" ^
--ontology-iri https://raw.githubusercontent.com/PHI-base/phipo_ext/master/phipo_ext.owl ^
annotate ^
--annotation-file template\annotations_owl.ttl ^
--output phipo_ext.owl

call robot template ^
--template template\phipo_ext.tsv ^
--prefix "ont: http://purl.obolibrary.org/obo/" ^
--ontology-iri "http://purl.obolibrary.org/obo/phipo_ext" ^
annotate ^
--annotation-file template\annotations_obo.ttl ^
--output phipo_ext.obo
