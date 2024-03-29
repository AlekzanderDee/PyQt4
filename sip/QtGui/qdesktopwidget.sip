// qdesktopwidget.sip generated by MetaSIP on Sun Jun 16 16:06:25 2013
//
// This file is part of the QtGui Python extension module.
//
// Copyright (c) 2013 Riverbank Computing Limited <info@riverbankcomputing.com>
// 
// This file is part of PyQt.
// 
// This file may be used under the terms of the GNU General Public
// License versions 2.0 or 3.0 as published by the Free Software
// Foundation and appearing in the files LICENSE.GPL2 and LICENSE.GPL3
// included in the packaging of this file.  Alternatively you may (at
// your option) use any later version of the GNU General Public
// License if such license has been publicly approved by Riverbank
// Computing Limited (or its successors, if any) and the KDE Free Qt
// Foundation. In addition, as a special exception, Riverbank gives you
// certain additional rights. These rights are described in the Riverbank
// GPL Exception version 1.1, which can be found in the file
// GPL_EXCEPTION.txt in this package.
// 
// If you are unsure which license is appropriate for your use, please
// contact the sales department at sales@riverbankcomputing.com.
// 
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
// WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.


class QDesktopWidget : QWidget
{
%TypeHeaderCode
#include <qdesktopwidget.h>
%End

public:
    QDesktopWidget();
    virtual ~QDesktopWidget();
    bool isVirtualDesktop() const;
    int numScreens() const;
    int primaryScreen() const;
    int screenNumber(const QWidget *widget = 0) const;
    int screenNumber(const QPoint &) const;
    QWidget *screen(int screen = -1);
%If (Qt_4_6_0 -)
    int screenCount() const;
%End
    const QRect screenGeometry(int screen = -1) const;
    const QRect screenGeometry(const QWidget *widget) const;
    const QRect screenGeometry(const QPoint &point) const;
    const QRect availableGeometry(int screen = -1) const;
    const QRect availableGeometry(const QWidget *widget) const;
    const QRect availableGeometry(const QPoint &point) const;

signals:
    void resized(int);
    void workAreaResized(int);
%If (Qt_4_6_0 -)
    void screenCountChanged(int);
%End

protected:
    virtual void resizeEvent(QResizeEvent *e);

private:
    QDesktopWidget(const QDesktopWidget &);
};
