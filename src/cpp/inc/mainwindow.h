#ifndef __MAINWINDOW_H
#define __MAINWINDOW_H


#include <QtWidgets/QWidget>


class MainWindow : public QWidget {
    Q_OBJECT
public:
    MainWindow(QWidget *parent, Qt::WindowFlags);
    ~MainWindow() noexcept override;
private:
};


#endif // __MAINWINDOW_H
