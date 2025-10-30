#ifndef __BACKEND_H
#define __BACKEND_H

#include <QObject>
#include <QQmlEngine>


class Backend : public QObject {
    Q_OBJECT
    QML_ELEMENT
    QML_SINGLETON

public:
    Q_INVOKABLE int addTeacher(QString surname, QString firstname, QString lastname);
};


#endif // __BACKEND_H
