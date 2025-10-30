#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <sqlite3.h>


extern int initializeShortcuts(QObject*);


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

    int err = initializeShortcuts(window);
    if(err) {
        qDebug() << "Failed adding shortcuts: " << err;
    }

    sqlite3 *db;
    sqlite3_open("Scheduler.db", &db);
    sqlite3_close(db);

    return app.exec();
}
