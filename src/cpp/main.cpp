#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "mainwindow.h"


int main(int argc, char *argv[]) {
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qt/gui/main.qml"));
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

    return app.exec();
}
