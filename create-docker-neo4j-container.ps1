docker create `
    -v $HOME/neo4j/data:/data `
    -v $HOME/neo4j/dump:/dump `
    -v $HOME/neo4j/plugins:/plugins `
    --name neo4j `
    -p7474:7474 `
    -p7687:7687 `
    -e NEO4J_AUTH=neo4j/12345678 `
    -e NEO4J_apoc_export_file_enabled=true `
    -e NEO4J_apoc_import_file_enabled=true `
    -e NEO4J_apoc_import_file_use__neo4j__config=true `
    -e 'NEO4JLABS_PLUGINS=[\"apoc\"]' `
    -e NEO4J_ACCEPT_LICENSE_AGREEMENT=yes `
    neo4j:enterprise
