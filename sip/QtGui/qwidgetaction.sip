// qwidgetaction.sip generated by MetaSIP on Sun Jun 16 16:06:27 2013
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


%If (Qt_4_2_0 -)

class QWidgetAction : QAction
{
%TypeHeaderCode
#include <qwidgetaction.h>
%End

public:
    explicit QWidgetAction(QObject *parent /TransferThis/);
    virtual ~QWidgetAction();
    void setDefaultWidget(QWidget *w /Transfer/);
    QWidget *defaultWidget() const;
    QWidget *requestWidget(QWidget *parent /TransferThis/) /Factory/;
    void releaseWidget(QWidget *widget /TransferBack/);

protected:
    virtual bool event(QEvent *);
%If (Qt_4_4_0 -)
    virtual bool eventFilter(QObject *, QEvent *);
%End
    virtual QWidget *createWidget(QWidget *parent /TransferThis/) /Factory/;
    virtual void deleteWidget(QWidget *widget /Transfer/);
    QList<QWidget*> createdWidgets() const;

private:
    QWidgetAction(const QWidgetAction &);
};

%End
