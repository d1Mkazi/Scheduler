#include <QApplication>
#include <QShortcut>
#include <QDebug>


void initializeShortcuts(QObject *window) {
#ifdef __linux__
    QShortcut *closeWindow = new QShortcut(QKeySequence(Qt::CTRL | Qt::SHIFT | Qt::Key_W), window);
    QShortcut::connect(closeWindow, &QShortcut::activated, window,
        []() {
            QCoreApplication::exit(0);
        }
    );
#endif // __linux__
}
