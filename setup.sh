#!/bin/bash
# Setup script for Network Sniffer
# Makes it easy to install dependencies

echo "🔍 Network Sniffer - Setup Guide"
echo "=================================="
echo ""

# Check if Python 3 is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed!"
    echo "Install it with: sudo apt-get install python3 python3-pip"
    exit 1
fi

PYTHON_VERSION=$(python3 --version | cut -d' ' -f2)
echo "✓ Python $PYTHON_VERSION found"

# Check if pip3 is installed
if ! command -v pip3 &> /dev/null; then
    echo "❌ pip3 is not installed!"
    echo "Install it with: sudo apt-get install python3-pip"
    exit 1
fi

echo "✓ pip3 is installed"
echo ""

# Install requirements
echo "📦 Installing dependencies from requirements.txt..."
pip3 install -r requirements.txt

echo ""
echo "✅ Setup Complete!"
echo ""
echo "📚 Next Steps:"
echo "1. Read the README.md for detailed information"
echo "2. Run the sniffer with: sudo python3 sniffer.py"
echo "3. Try different packet counts: sudo python3 sniffer.py 20"
echo ""
echo "💡 Tip: Open your browser while sniffing to see more packets!"
