versions=( '3.9' '3.10' '3.11' '3.12' )
for version in "${versions[@]}";
do
    docker image build --build-arg PYTHON_VERSION=$version -t mpmq:$version .
done