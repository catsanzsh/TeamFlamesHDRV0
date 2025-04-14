echo "📼 NES: Installing cc65 compiler"
read -p "✨ Do you want to install cc65 for NES development? [y/n]: " choice

if [[ "$choice" == [Yy] ]]; then
    echo "🔧 Locating your package manager..."
    if command -v apt &> /dev/null; then
        echo "📦 Using APT (Debian/Ubuntu)"
        sudo apt install -y cc65
    elif command -v brew &> /dev/null; then
        echo "🍺 Using Homebrew (macOS/Linuxbrew)"
        brew install cc65
    elif command -v pacman &> /dev/null; then
        echo "🌀 Using Pacman (Arch/Manjaro)"
        sudo pacman -S --noconfirm cc65
    else
        echo "⚠️ No known package manager found!"
        echo "➡️ Please install cc65 manually from: https://cc65.github.io"
    fi
else
    echo "🚫 Skipping cc65 installation."
fi

echo ""
echo "🧯 [C] Team Flames 199–20XX — Burnin' bytes since cartridge days 🔥"
