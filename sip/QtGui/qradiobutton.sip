// qradiobutton.sip generated by MetaSIP on Sun Jun 16 16:06:26 2013
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


class QRadioButton : QAbstractButton
{
%TypeHeaderCode
#include <qradiobutton.h>
%End

public:
    explicit QRadioButton(QWidget *parent /TransferThis/ = 0);
    QRadioButton(const QString &text, QWidget *parent /TransferThis/ = 0);
%If (Qt_5_0_0 -)
    virtual ~QRadioButton();
%End
    virtual QSize sizeHint() const;
%If (Qt_4_8_0 -)
    virtual QSize minimumSizeHint() const;
%End

protected:
%If (Qt_4_3_0 -)
    void initStyleOption(QStyleOptionButton *button) const;
%End
    virtual bool hitButton(const QPoint &) const;
    virtual bool event(QEvent *e);
    virtual void paintEvent(QPaintEvent *);
    virtual void mouseMoveEvent(QMouseEvent *);

private:
    QRadioButton(const QRadioButton &);
};
