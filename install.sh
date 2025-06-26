#!/bin/bash

# 🚀 Log-UI Installation Script
# Professional Log Analysis Interface Setup

set -e

echo "🔍 Log-UI Installation Starting..."
echo "=================================="

# Check Python version
echo "🐍 Checking Python version..."
python3 --version || {
    echo "❌ Python 3 is required but not installed"
    exit 1
}

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv
source venv/bin/activate

# Upgrade pip
echo "⬆️ Upgrading pip..."
pip install --upgrade pip

# Install requirements
echo "📋 Installing Python dependencies..."
pip install -r requirements.txt

# Install Playwright browsers
echo "🎭 Installing Playwright browsers..."
playwright install chromium

# Check system dependencies
echo "🔧 Checking system dependencies..."

# Check for chromium (for Selenium)
if ! command -v chromium-browser &> /dev/null && ! command -v google-chrome &> /dev/null; then
    echo "⚠️ Chromium/Chrome not found. Installing..."
    
    # Detect package manager
    if command -v dnf &> /dev/null; then
        echo "📦 Installing chromium via dnf..."
        sudo dnf install -y chromium
    elif command -v apt &> /dev/null; then
        echo "📦 Installing chromium via apt..."
        sudo apt update && sudo apt install -y chromium-browser
    elif command -v yum &> /dev/null; then
        echo "📦 Installing chromium via yum..."
        sudo yum install -y chromium
    else
        echo "⚠️ Please install chromium manually for Selenium testing"
    fi
fi

# Create sample configuration
echo "⚙️ Creating sample configuration..."
cat > config.py << 'EOF'
#!/usr/bin/env python3
"""
Log-UI Configuration
"""

# Interface settings
PROFESSIONAL_INTERFACE_PORT = 9002
LNAV_ANALYZER_PORT = 9003

# Default crash file paths (customize for your system)
DEFAULT_CRASH_PATHS = [
    "/var/log/audit/audit.log",
    "/var/log/messages",
    "/var/log/syslog",
    "~/Documents/*crash*",
    "~/Documents/*vscode*"
]

# Database settings
DATABASE_PATH = "~/.local/share/log-ui/logs.sqlite"

# Testing settings
SELENIUM_HEADLESS = True
PLAYWRIGHT_HEADLESS = True

# Accessibility settings
ENABLE_TEXT_SELECTION = True
HIGH_CONTRAST_MODE = False
EOF

# Create startup script
echo "🚀 Creating startup script..."
cat > start.sh << 'EOF'
#!/bin/bash

# 🔍 Log-UI Startup Script

echo "🚀 Starting Log-UI Professional Log Analysis Interface..."

# Activate virtual environment
source venv/bin/activate

# Start professional interface in background
echo "🎯 Starting Professional Interface (Port 9002)..."
python3 professional_log_interface.py &
PROF_PID=$!

# Start lnav-based analyzer in background  
echo "🔍 Starting lnav-based Analyzer (Port 9003)..."
python3 lnav_based_analyzer.py &
LNAV_PID=$!

# Wait a moment for startup
sleep 3

echo ""
echo "✅ Log-UI Started Successfully!"
echo "================================"
echo "🌐 Professional Interface: http://localhost:9002"
echo "🔍 lnav-based Analyzer:    http://localhost:9003"
echo ""
echo "📊 Features Available:"
echo "  • Real crash analysis with signal detection"
echo "  • Smart solutions with implementation steps"
echo "  • Accessibility-compliant interface design"
echo "  • Comprehensive testing with Selenium/Playwright"
echo ""
echo "🛑 To stop: Press Ctrl+C or run: ./stop.sh"

# Create stop script
cat > stop.sh << 'STOP_EOF'
#!/bin/bash
echo "🛑 Stopping Log-UI..."
pkill -f "professional_log_interface.py"
pkill -f "lnav_based_analyzer.py"
echo "✅ Log-UI stopped"
STOP_EOF

chmod +x stop.sh

# Wait for interrupt
trap 'echo ""; echo "🛑 Shutting down Log-UI..."; kill $PROF_PID $LNAV_PID 2>/dev/null; exit 0' INT

wait
EOF

chmod +x start.sh

# Create testing script
echo "🧪 Creating testing script..."
cat > test.sh << 'EOF'
#!/bin/bash

# 🧪 Log-UI Testing Script

echo "🧪 Running Log-UI Comprehensive Tests..."
echo "======================================="

# Activate virtual environment
source venv/bin/activate

# Start interfaces for testing
echo "🚀 Starting interfaces for testing..."
python3 professional_log_interface.py &
PROF_PID=$!
python3 lnav_based_analyzer.py &
LNAV_PID=$!

# Wait for startup
sleep 5

# Run comprehensive tests
echo "🔍 Running Selenium tests..."
cd testing
python3 comprehensive_testing_framework.py

echo ""
echo "🎭 Running Playwright tests..."
python3 comprehensive_interface_tester.py

# Cleanup
echo ""
echo "🧹 Cleaning up test processes..."
kill $PROF_PID $LNAV_PID 2>/dev/null

echo "✅ Testing complete!"
EOF

chmod +x test.sh

# Create documentation
echo "📚 Creating quick start guide..."
cat > QUICKSTART.md << 'EOF'
# 🚀 Log-UI Quick Start Guide

## Installation
```bash
./install.sh
```

## Starting Log-UI
```bash
./start.sh
```

## Testing
```bash
./test.sh
```

## Usage

### Professional Interface (Port 9002)
- **Dashboard**: View crash statistics and system health
- **Log Viewer**: Browse and filter log entries
- **Structured Data**: Analyze patterns and timelines
- **Relationship Graph**: Visualize crash correlations
- **Smart Solutions**: Get actionable recommendations

### lnav-based Analyzer (Port 9003)
- **Direct Analysis**: Upload crash files for analysis
- **Signal Detection**: SIGILL, SIGSEGV, SIGABRT analysis
- **Recommendations**: Based on lnav patterns

## Accessibility Features
- ✅ Selectable button text for copy-paste
- ✅ Screen reader compatible
- ✅ Keyboard navigation support
- ✅ High contrast professional theme

## Testing Verification
- ✅ Selenium: Functional testing and interaction
- ✅ Playwright: Performance and accessibility
- ✅ Real data validation (no placeholders)
EOF

echo ""
echo "✅ Log-UI Installation Complete!"
echo "================================"
echo ""
echo "🚀 Next Steps:"
echo "  1. Run: ./start.sh"
echo "  2. Open: http://localhost:9002"
echo "  3. Test: ./test.sh"
echo ""
echo "📚 Documentation:"
echo "  • README.md - Full documentation"
echo "  • QUICKSTART.md - Quick start guide"
echo "  • config.py - Configuration options"
echo ""
echo "🎯 Ready for professional log analysis!"
