# 🔍 Log-UI - Professional Log Analysis Interface

A comprehensive, professional-grade log analysis tool with real-time crash detection, intelligent solutions, and accessibility-compliant interface design.

## ✨ Features

### 🎯 **Professional Log Analysis**
- **Real crash analysis** using patterns from `tstack/lnav` repository
- **Signal detection** (SIGILL, SIGSEGV, SIGABRT) with severity assessment
- **Timeline correlation** and pattern matching
- **Comprehensive system context** integration

### 🔧 **Smart Solutions Engine**
- **Actionable recommendations** with implementation steps
- **Verification commands** and rollback plans
- **Confidence scoring** and time estimates
- **Complete solution workflows** for common issues

### 🎨 **Accessibility-First Design**
- **Selectable button text** for copy-paste accessibility
- **Screen reader compatible** interface elements
- **Keyboard navigation** support
- **High contrast** professional theme

### 🧪 **Comprehensive Testing**
- **Selenium** for functional testing and interaction verification
- **Playwright** for performance and accessibility testing
- **Real data validation** (no placeholder frameworks)

## 🚀 Quick Start

### Prerequisites
```bash
# Install Python dependencies
pip install flask selenium playwright requests psutil

# Install Playwright browsers
playwright install chromium

# Install system dependencies (Fedora/RHEL)
sudo dnf install chromium-headless
```

### Running the Interface
```bash
# Clone the repository
git clone https://github.com/swipswaps/log-ui.git
cd log-ui

# Start the professional interface
python3 professional_log_interface.py

# Access the interface
open http://localhost:9002
```

### Running with lnav-based Analysis
```bash
# Start the lnav-based analyzer
python3 lnav_based_analyzer.py

# Access the analyzer
open http://localhost:9003
```

## 📊 Interface Overview

### **Professional Log Analysis Interface** (Port 9002)
- **Dashboard**: Real-time crash statistics and system health
- **Log Viewer**: Comprehensive log display with filtering
- **Structured Data**: Timeline analysis and pattern detection
- **Relationship Graph**: Visual crash correlation analysis
- **Smart Solutions**: Complete implementation workflows

### **lnav-based Analyzer** (Port 9003)
- **Direct crash file analysis** using lnav patterns
- **Signal analysis** with Linux kernel integration
- **Recommendation engine** based on proven diagnostic patterns

## 🔍 Real Data Analysis

### Crash Detection
```python
# Example: VSCode crash analysis
analysis = analyzer.analyze_crash_file_with_lnav_patterns(crash_file)

# Results:
# - 3 crashes detected (SIGILL, SIGSEGV)
# - CRITICAL severity assessment
# - 11 actionable recommendations
# - Timeline correlation analysis
```

### Smart Solutions
```json
{
  "title": "🔧 Fix Binary Corruption (SIGILL)",
  "severity": "CRITICAL",
  "confidence": 95,
  "implementation_steps": [
    "sudo dnf reinstall code-insiders",
    "file /usr/share/code-insiders/code-insiders",
    "sha256sum /usr/share/code-insiders/code-insiders"
  ],
  "verification_commands": [
    "code-insiders --version",
    "ldd /usr/share/code-insiders/code-insiders | grep 'not found'"
  ],
  "estimated_time": "5-10 minutes"
}
```

## 🧪 Testing Framework

### Selenium Testing
```python
# Test button functionality and text selection
driver.get('http://localhost:9002')
buttons = driver.find_elements(By.TAG_NAME, 'button')
# Verify text is selectable for accessibility
```

### Playwright Testing
```python
# Test performance and accessibility
await page.goto('http://localhost:9002')
await page.screenshot(path='evidence.png')
# Verify responsive design and load times
```

## 📁 Project Structure

```
log-ui/
├── professional_log_interface.py    # Main professional interface
├── lnav_based_analyzer.py          # lnav pattern analyzer
├── improved_log_parser.py          # Enhanced log parsing
├── intelligent_error_database.py   # Error categorization
├── real_system_log_capture.py      # System log integration
├── testing/
│   ├── comprehensive_testing_framework.py
│   └── selenium_playwright_tests.py
├── static/                          # CSS and JS assets
├── templates/                       # HTML templates
└── docs/                           # Documentation
```

## 🎯 Use Cases

### System Administrators
- **Crash analysis** for application failures
- **Performance monitoring** and resource tracking
- **Automated solution deployment** with verification

### Developers
- **Debug assistance** with signal analysis
- **Pattern recognition** for recurring issues
- **Integration testing** with comprehensive frameworks

### Security Teams
- **Audit log analysis** with timeline correlation
- **Anomaly detection** using proven patterns
- **Incident response** with actionable recommendations

## 🔧 Configuration

### Environment Variables
```bash
export DEFAULT_CRASH_FILE="/path/to/crash/logs"
export LOG_LEVEL="INFO"
export INTERFACE_PORT="9002"
```

### Custom Crash File Analysis
```python
# Analyze custom crash files
analyzer = LnavBasedAnalyzer()
analysis = analyzer.analyze_crash_file_with_lnav_patterns("/path/to/crash.log")
```

## 🤝 Contributing

1. **Fork** the repository
2. **Create** a feature branch
3. **Add tests** using Selenium/Playwright
4. **Verify accessibility** compliance
5. **Submit** a pull request

## 📜 License

MIT License - see LICENSE file for details

## 🙏 Acknowledgments

- **tstack/lnav** - Log analysis patterns and parsing logic
- **Linux kernel** - Signal analysis and crash detection
- **Accessibility standards** - WCAG compliance guidelines

---

**Built with real data analysis, comprehensive testing, and accessibility-first design principles.**
