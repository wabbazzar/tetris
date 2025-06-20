.PHONY: serve play clean-cache start help

# Core development server
serve:
	@echo "Starting local server on http://localhost:8000"
	@python3 -m http.server 8000 --bind localhost || python -m SimpleHTTPServer 8000

# Open main game
play:
	@echo "Opening Tetris Turbo..."
	@open http://localhost:8000/tetris.html || xdg-open http://localhost:8000/tetris.html

# Cache management
clean-cache:
	@echo "Browser cache clear: Ctrl+Shift+R (Win) or Cmd+Shift+R (Mac)"
	@echo "Or use incognito mode for clean testing"

# Quick start
start: serve

# Help
help:
	@echo "Available commands:"
	@echo "  make serve       - Start development server"
	@echo "  make play        - Open Tetris Turbo game"
	@echo "  make clean-cache - Cache clearing instructions"
	@echo "  make start       - Quick start (same as serve)" 