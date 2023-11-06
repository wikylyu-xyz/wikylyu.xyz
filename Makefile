


l10n:
	flutter gen-l10n

run:
	flutter run -d chrome --web-renderer canvaskit



dt=$(shell date "+%s000")

jsbuild:
	mv build/web/main.dart.js build/web/$(dt).main.dart.js
	sed "s/main.dart.js/$(dt).main.dart.js/g" build/web/flutter_service_worker.js >build/web/new_flutter_service_worker.js
	mv build/web/new_flutter_service_worker.js build/web/flutter_service_worker.js
	sed "s/main.dart.js/$(dt).main.dart.js/g" build/web/flutter.js >build/web/new_flutter.js
	mv build/web/new_flutter.js build/web/flutter.js

	mv build/web/flutter.js build/web/$(dt).flutter.js
	sed "s/flutter.js/$(dt).flutter.js/g" build/web/index.html >build/web/new_index.html
	mv build/web/new_index.html build/web/index.html