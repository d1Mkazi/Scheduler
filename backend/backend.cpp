#include "backend.h"

#include <cstring>
#include <QDebug>


int Backend::addTeacher(QString surname, QString firstname, QString middlename) {
    if(!surname.size() || !firstname.size() || !middlename.size()) {
        return 1;
    }

    char log[144];
    snprintf(log, sizeof(log), "Backend::addTeacher(%s, %s, %s)", qPrintable(surname), qPrintable(firstname), qPrintable(middlename));
    qDebug() << log;

    return 0;
}
