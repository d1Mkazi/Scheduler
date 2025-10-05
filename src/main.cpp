#include <QGuiApplication>
#include <QQmlApplicationEngine>


extern void initializeShortcuts(QObject*);


int main(int argc, char *argv[]) {
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/gui/main.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if(!obj && url == objUrl) {
                QCoreApplication::exit(1);
            }
        },
        Qt::QueuedConnection);
    engine.load(url);

    QObject *window = engine.rootObjects()[0];
    if(!window) {
        QCoreApplication::exit(2);
    }

    initializeShortcuts(window);

    return app.exec();
}
