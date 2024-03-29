// qfontmetrics.sip generated by MetaSIP on Sun Jun 16 16:06:25 2013
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


class QFontMetrics
{
%TypeHeaderCode
#include <qfontmetrics.h>
%End

public:
%If (Qt_5_0_0 -)
    explicit QFontMetrics(const QFont &);
%End
%If (- Qt_5_0_0)
    QFontMetrics(const QFont &);
%End
    QFontMetrics(const QFont &, QPaintDevice *pd);
    QFontMetrics(const QFontMetrics &);
    ~QFontMetrics();
    int ascent() const;
    int descent() const;
    int height() const;
    int leading() const;
    int lineSpacing() const;
    int minLeftBearing() const;
    int minRightBearing() const;
    int maxWidth() const;
    int xHeight() const;
    bool inFont(QChar) const;
    int leftBearing(QChar) const;
    int rightBearing(QChar) const;
    int width(QChar) const /API=QString:2 - , PyName=widthChar/;
    int width(QChar) const /API=QString: - 2/;
    int width(const QString &text, int length = -1) const;
    int charWidth(const QString &str, int pos) const;
    QRect boundingRect(QChar) const /API=QString:2 - , PyName=boundingRectChar/;
    QRect boundingRect(QChar) const /API=QString: - 2/;
    QRect boundingRect(const QString &text) const;
    QRect boundingRect(const QRect &rect, int flags, const QString &text, int tabStops = 0, SIP_PYLIST tabArray /AllowNone,DocType="list-of-int"/ = 0) const;
%MethodCode
        int *tabarray = qtgui_tabarray(a4);
        
        sipRes = new QRect(sipCpp->boundingRect(*a0, a1, *a2, a3, tabarray));
        
        if (!tabarray)
            delete[] tabarray;
%End

    QRect boundingRect(int x, int y, int width, int height, int flags, const QString &text, int tabStops = 0, SIP_PYLIST tabArray /AllowNone,DocType="list-of-int"/ = 0) const;
%MethodCode
        int *tabarray = qtgui_tabarray(a7);
        
        sipRes = new QRect(sipCpp->boundingRect(a0, a1, a2, a3, a4, *a5, a6, tabarray));
        
        if (!tabarray)
            delete[] tabarray;
%End

    QSize size(int flags, const QString &text, int tabStops = 0, SIP_PYLIST tabArray /AllowNone,DocType="list-of-int"/ = 0) const;
%MethodCode
        int *tabarray = qtgui_tabarray(a3);
        
        sipRes = new QSize(sipCpp->size(a0, *a1, a2, tabarray));
        
        if (!tabarray)
            delete[] tabarray;
%End

    int underlinePos() const;
    int overlinePos() const;
    int strikeOutPos() const;
    int lineWidth() const;
%If (Qt_4_2_0 -)
    int averageCharWidth() const;
%End
%If (Qt_4_2_0 -)
    QString elidedText(const QString &text, Qt::TextElideMode mode, int width, int flags = 0) const;
%End
    bool operator==(const QFontMetrics &other) const;
%If (Qt_4_2_0 -)
    bool operator!=(const QFontMetrics &other) const;
%End
%If (- Qt_4_2_0)
    bool operator!=(const QFontMetrics &other);
%End
%If (Qt_4_3_0 -)
    QRect tightBoundingRect(const QString &text) const;
%End
%If (Qt_4_8_0 -)
    bool inFontUcs4(uint character) const;
%End
%If (Qt_5_0_0 -)
    void swap(QFontMetrics &other);
%End
};

class QFontMetricsF
{
%TypeHeaderCode
#include <qfontmetrics.h>
%End

public:
%If (Qt_5_0_0 -)
    explicit QFontMetricsF(const QFont &);
%End
%If (- Qt_5_0_0)
    QFontMetricsF(const QFont &);
%End
    QFontMetricsF(const QFont &, QPaintDevice *pd);
%If (Qt_4_2_0 -)
    QFontMetricsF(const QFontMetrics &);
%End
    QFontMetricsF(const QFontMetricsF &);
    ~QFontMetricsF();
    qreal ascent() const;
    qreal descent() const;
    qreal height() const;
    qreal leading() const;
    qreal lineSpacing() const;
    qreal minLeftBearing() const;
    qreal minRightBearing() const;
    qreal maxWidth() const;
    qreal xHeight() const;
    bool inFont(QChar) const;
    qreal leftBearing(QChar) const;
    qreal rightBearing(QChar) const;
    qreal width(QChar) const /API=QString:2 - , PyName=widthChar/;
    qreal width(QChar) const /API=QString: - 2/;
    qreal width(const QString &string) const;
    QRectF boundingRect(QChar) const /API=QString:2 - , PyName=boundingRectChar/;
    QRectF boundingRect(QChar) const /API=QString: - 2/;
    QRectF boundingRect(const QString &string) const;
    QRectF boundingRect(const QRectF &rect, int flags, const QString &text, int tabStops = 0, SIP_PYLIST tabArray /AllowNone,DocType="list-of-int"/ = 0) const;
%MethodCode
        int *tabarray = qtgui_tabarray(a4);
        
        sipRes = new QRectF(sipCpp->boundingRect(*a0, a1, *a2, a3, tabarray));
        
        if (!tabarray)
            delete[] tabarray;
%End

    QSizeF size(int flags, const QString &text, int tabStops = 0, SIP_PYLIST tabArray /AllowNone,DocType="list-of-int"/ = 0) const;
%MethodCode
        int *tabarray = qtgui_tabarray(a3);
        
        sipRes = new QSizeF(sipCpp->size(a0, *a1, a2, tabarray));
        
        if (!tabarray)
            delete[] tabarray;
%End

    qreal underlinePos() const;
    qreal overlinePos() const;
    qreal strikeOutPos() const;
    qreal lineWidth() const;
%If (Qt_4_2_0 -)
    qreal averageCharWidth() const;
%End
%If (Qt_4_2_0 -)
    QString elidedText(const QString &text, Qt::TextElideMode mode, qreal width, int flags = 0) const;
%End
    bool operator==(const QFontMetricsF &other) const;
    bool operator!=(const QFontMetricsF &other) const;
%If (Qt_4_3_0 -)
    QRectF tightBoundingRect(const QString &text) const;
%End
%If (Qt_4_8_0 -)
    bool inFontUcs4(uint character) const;
%End
%If (Qt_5_0_0 -)
    void swap(QFontMetricsF &other);
%End
};

%ModuleHeaderCode
// Used by QFontMetrics and QFontMetricsF.
int *qtgui_tabarray(PyObject *l);
%End

%ModuleCode
// Convert an optional Python list to a 0 terminated array of integers on the
// heap.
int *qtgui_tabarray(PyObject *l)
{
    if (!l || l == Py_None)
        return 0;

    int *arr = new int[PyList_GET_SIZE(l) + 1];
    SIP_SSIZE_T i;

    for (i = 0; i < PyList_GET_SIZE(l); ++i)
        arr[i] = SIPLong_AsLong(PyList_GET_ITEM(l, i));

    arr[i] = 0;

    return arr;
}
%End
