.PHONY: serve play clean-cache start help mobile-test touch-test device-test mobile-play clean-mobile

# Core development server (mobile-ready)
serve:
	@echo "Starting mobile-ready server on http://localhost:8000"
	@echo "For mobile device testing, use your local IP address"
	@python3 -m http.server 8000 --bind 0.0.0.0 || python -m SimpleHTTPServer 8000

# Desktop game
play:
	@echo "Opening Tetris Turbo (Desktop)..."
	@open http://localhost:8000/tetris.html || xdg-open http://localhost:8000/tetris.html

# Mobile testing
mobile-test:
	@echo "Opening mobile test harness..."
	@open http://localhost:8000/mobile_test.html || xdg-open http://localhost:8000/mobile_test.html

touch-test:
	@echo "Opening touch testing interface..."
	@open http://localhost:8000/touch_test.html || xdg-open http://localhost:8000/touch_test.html

device-test:
	@echo "Connect mobile device and navigate to one of these URLs:"
	@echo "Game: http://$(shell hostname -I | awk '{print $$1}' 2>/dev/null || ifconfig | grep 'inet ' | grep -v 127.0.0.1 | head -1 | awk '{print $$2}' | sed 's/addr://' || echo 'localhost'):8000/tetris.html"
	@echo "Mobile Test: http://$(shell hostname -I | awk '{print $$1}' 2>/dev/null || ifconfig | grep 'inet ' | grep -v 127.0.0.1 | head -1 | awk '{print $$2}' | sed 's/addr://' || echo 'localhost'):8000/mobile_test.html"

mobile-play:
	@echo "Opening Tetris Turbo (Mobile-optimized)..."
	@open http://localhost:8000/tetris.html || xdg-open http://localhost:8000/tetris.html

# Cache management
clean-cache:
	@echo "Browser cache clear: Ctrl+Shift+R (Win) or Cmd+Shift+R (Mac)"
	@echo "Mobile Safari: Settings > Safari > Clear History and Website Data"
	@echo "Chrome Mobile: Menu > History > Clear browsing data"

clean-mobile:
	@echo "Mobile-specific cache clearing:"
	@echo "iOS: Settings > Safari > Clear History and Website Data"
	@echo "Android: Chrome > Settings > Privacy > Clear browsing data"

# Quick start
start: serve

# Help
help:
	@echo "Available commands:"
	@echo "  make serve       - Start mobile-ready development server"
	@echo "  make play        - Open desktop Tetris game"
	@echo "  make mobile-play - Open mobile-optimized Tetris game"
	@echo "  make mobile-test - Open mobile testing interface"
	@echo "  make touch-test  - Open touch testing interface"
	@echo "  make device-test - Show mobile device connection info"
	@echo "  make clean-cache - Cache clearing instructions"
	@echo "  make clean-mobile - Mobile-specific cache clearing" 