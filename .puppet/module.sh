
sudo puppet module list | grep 'skoblenick-sourcetree'

if [ $? -ne 0 ]; then
    sudo puppet module install skoblenick/sourcetree
else
    echo "Module already installed: skoblenick/sourcetree"
fi