// qgraphicswidget.sip generated by MetaSIP on Sun Jun 16 16:06:26 2013
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


%If (Qt_4_4_0 - Qt_4_6_0)

class QGraphicsWidget : QObject, QGraphicsItem, QGraphicsLayoutItem
{
%TypeHeaderCode
#include <qgraphicswidget.h>
%End

%TypeCode
// Transfer ownership of all widgets in a layout to their new parent.
static void qtgui_TransferGraphicsLayoutWidgets(QGraphicsLayout *lay, PyObject *pw)
{
    int n = lay->count();

    for (int i = 0; i < n; ++i)
    {
        QGraphicsLayoutItem *item = lay->itemAt(i);

        if (item->isLayout())
            qtgui_TransferGraphicsLayoutWidgets(static_cast<QGraphicsLayout *>(item), pw);
        else
        {
            PyObject *obj = sipGetPyObject(static_cast<QGraphicsWidget *>(item), sipType_QGraphicsWidget);

            if (obj)
                sipTransferTo(obj, pw);
        }
    }
}
%End

public:
    QGraphicsWidget(QGraphicsItem *parent /TransferThis/ = 0, Qt::WindowFlags flags = 0);
    virtual ~QGraphicsWidget();
    QGraphicsLayout *layout() const;
    void setLayout(QGraphicsLayout *layout /Transfer/);
%MethodCode
        Py_BEGIN_ALLOW_THREADS
        sipCpp->setLayout(a0);
        Py_END_ALLOW_THREADS
        
        // Internally Qt has reparented all of the widgets in the layout, so we need
        // to update the ownership hierachy.
        qtgui_TransferGraphicsLayoutWidgets(a0, sipSelf);
%End

    void adjustSize();
    Qt::LayoutDirection layoutDirection() const;
    void setLayoutDirection(Qt::LayoutDirection direction);
    void unsetLayoutDirection();
    QStyle *style() const;
    void setStyle(QStyle *style /KeepReference/);
    QFont font() const;
    void setFont(const QFont &font);
    QPalette palette() const;
    void setPalette(const QPalette &palette);
    void resize(const QSizeF &size);
    void resize(qreal w, qreal h);
    QSizeF size() const;
    virtual void setGeometry(const QRectF &rect);
    void setGeometry(qreal ax, qreal ay, qreal aw, qreal ah);
    QRectF rect() const;
    void setContentsMargins(qreal left, qreal top, qreal right, qreal bottom);
    virtual void getContentsMargins(qreal *left, qreal *top, qreal *right, qreal *bottom) const;
    void setWindowFrameMargins(qreal left, qreal top, qreal right, qreal bottom);
    void getWindowFrameMargins(qreal *left, qreal *top, qreal *right, qreal *bottom) const;
    void unsetWindowFrameMargins();
    QRectF windowFrameGeometry() const;
    QRectF windowFrameRect() const;
    Qt::WindowFlags windowFlags() const;
    Qt::WindowType windowType() const;
    void setWindowFlags(Qt::WindowFlags wFlags);
    bool isActiveWindow() const;
    void setWindowTitle(const QString &title);
    QString windowTitle() const;
    Qt::FocusPolicy focusPolicy() const;
    void setFocusPolicy(Qt::FocusPolicy policy);
    static void setTabOrder(QGraphicsWidget *first, QGraphicsWidget *second);
    QGraphicsWidget *focusWidget() const;
    void setAttribute(Qt::WidgetAttribute attribute, bool on = true);
    bool testAttribute(Qt::WidgetAttribute attribute) const;
    virtual int type() const;
    virtual void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget = 0);
    virtual void paintWindowFrame(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget = 0);
    virtual QRectF boundingRect() const;
    virtual QPainterPath shape() const;
    const QObjectList &children() const;

public slots:
    bool close();

protected:
    virtual void initStyleOption(QStyleOption *option) const;
    virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF &constraint = QSizeF()) const;
    virtual void updateGeometry();
    virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant &value);
    virtual bool sceneEvent(QEvent *event);
    virtual bool windowFrameEvent(QEvent *e);
    virtual Qt::WindowFrameSection windowFrameSectionAt(const QPointF &pos) const;
    virtual bool event(QEvent *event);
    virtual void changeEvent(QEvent *event);
    virtual void closeEvent(QCloseEvent *event);
    virtual void focusInEvent(QFocusEvent *event);
    virtual bool focusNextPrevChild(bool next);
    virtual void focusOutEvent(QFocusEvent *event);
    virtual void hideEvent(QHideEvent *event);
    virtual void moveEvent(QGraphicsSceneMoveEvent *event);
    virtual void polishEvent();
    virtual void resizeEvent(QGraphicsSceneResizeEvent *event);
    virtual void showEvent(QShowEvent *event);
    virtual void hoverMoveEvent(QGraphicsSceneHoverEvent *event);
    virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent *event);
    virtual void grabMouseEvent(QEvent *event);
    virtual void ungrabMouseEvent(QEvent *event);
    virtual void grabKeyboardEvent(QEvent *event);
    virtual void ungrabKeyboardEvent(QEvent *event);

public:
%If (Qt_4_5_0 -)
    int grabShortcut(const QKeySequence &sequence, Qt::ShortcutContext context = Qt::WindowShortcut);
%End
%If (Qt_4_5_0 -)
    void releaseShortcut(int id);
%End
%If (Qt_4_5_0 -)
    void setShortcutEnabled(int id, bool enabled = true);
%End
%If (Qt_4_5_0 -)
    void setShortcutAutoRepeat(int id, bool enabled = true);
%End
%If (Qt_4_5_0 -)
    void addAction(QAction *action);
%End
%If (Qt_4_5_0 -)
    void addActions(QList<QAction*> actions);
%End
%If (Qt_4_5_0 -)
    void insertAction(QAction *before, QAction *action);
%End
%If (Qt_4_5_0 -)
    void insertActions(QAction *before, QList<QAction*> actions);
%End
%If (Qt_4_5_0 -)
    void removeAction(QAction *action);
%End
%If (Qt_4_5_0 -)
    QList<QAction*> actions() const;
%End

private:
    QGraphicsWidget(const QGraphicsWidget &);
};

%End
%If (Qt_4_6_0 -)

class QGraphicsWidget : QGraphicsObject, QGraphicsLayoutItem
{
%TypeHeaderCode
#include <qgraphicswidget.h>
%End

public:
    QGraphicsWidget(QGraphicsItem *parent /TransferThis/ = 0, Qt::WindowFlags flags = 0);
    virtual ~QGraphicsWidget();
    QGraphicsLayout *layout() const;
    void setLayout(QGraphicsLayout *layout /Transfer/);
    void adjustSize();
    Qt::LayoutDirection layoutDirection() const;
    void setLayoutDirection(Qt::LayoutDirection direction);
    void unsetLayoutDirection();
    QStyle *style() const;
    void setStyle(QStyle *style /KeepReference/);
    QFont font() const;
    void setFont(const QFont &font);
    QPalette palette() const;
    void setPalette(const QPalette &palette);
    void resize(const QSizeF &size);
    void resize(qreal w, qreal h);
    QSizeF size() const;
    virtual void setGeometry(const QRectF &rect);
    QRectF rect() const;
    void setContentsMargins(qreal left, qreal top, qreal right, qreal bottom);
    virtual void getContentsMargins(qreal *left, qreal *top, qreal *right, qreal *bottom) const;
    void setWindowFrameMargins(qreal left, qreal top, qreal right, qreal bottom);
    void getWindowFrameMargins(qreal *left, qreal *top, qreal *right, qreal *bottom) const;
    void unsetWindowFrameMargins();
    QRectF windowFrameGeometry() const;
    QRectF windowFrameRect() const;
    Qt::WindowFlags windowFlags() const;
    Qt::WindowType windowType() const;
    void setWindowFlags(Qt::WindowFlags wFlags);
    bool isActiveWindow() const;
    void setWindowTitle(const QString &title);
    QString windowTitle() const;
    Qt::FocusPolicy focusPolicy() const;
    void setFocusPolicy(Qt::FocusPolicy policy);
    static void setTabOrder(QGraphicsWidget *first, QGraphicsWidget *second);
    QGraphicsWidget *focusWidget() const;
    int grabShortcut(const QKeySequence &sequence, Qt::ShortcutContext context = Qt::WindowShortcut);
    void releaseShortcut(int id);
    void setShortcutEnabled(int id, bool enabled = true);
    void setShortcutAutoRepeat(int id, bool enabled = true);
    void addAction(QAction *action);
    void addActions(QList<QAction*> actions);
    void insertAction(QAction *before, QAction *action);
    void insertActions(QAction *before, QList<QAction*> actions);
    void removeAction(QAction *action);
    QList<QAction*> actions() const;
    void setAttribute(Qt::WidgetAttribute attribute, bool on = true);
    bool testAttribute(Qt::WidgetAttribute attribute) const;
    virtual int type() const;
    virtual void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget = 0);
    virtual void paintWindowFrame(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget = 0);
    virtual QRectF boundingRect() const;
    virtual QPainterPath shape() const;
    void setGeometry(qreal ax, qreal ay, qreal aw, qreal ah);

public slots:
    bool close();

protected:
    virtual void initStyleOption(QStyleOption *option) const;
    virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF &constraint = QSizeF()) const;
    virtual void updateGeometry();
    virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant &value);
    virtual bool sceneEvent(QEvent *event);
    virtual bool windowFrameEvent(QEvent *e);
    virtual Qt::WindowFrameSection windowFrameSectionAt(const QPointF &pos) const;
    virtual bool event(QEvent *event);
    virtual void changeEvent(QEvent *event);
    virtual void closeEvent(QCloseEvent *event);
    virtual void focusInEvent(QFocusEvent *event);
    virtual bool focusNextPrevChild(bool next);
    virtual void focusOutEvent(QFocusEvent *event);
    virtual void hideEvent(QHideEvent *event);
    virtual void moveEvent(QGraphicsSceneMoveEvent *event);
    virtual void polishEvent();
    virtual void resizeEvent(QGraphicsSceneResizeEvent *event);
    virtual void showEvent(QShowEvent *event);
    virtual void hoverMoveEvent(QGraphicsSceneHoverEvent *event);
    virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent *event);
    virtual void grabMouseEvent(QEvent *event);
    virtual void ungrabMouseEvent(QEvent *event);
    virtual void grabKeyboardEvent(QEvent *event);
    virtual void ungrabKeyboardEvent(QEvent *event);

public:
%If (Qt_4_7_0 -)
    bool autoFillBackground() const;
%End
%If (Qt_4_7_0 -)
    void setAutoFillBackground(bool enabled);
%End

signals:
%If (Qt_4_7_0 -)
    void geometryChanged();
%End

private:
    QGraphicsWidget(const QGraphicsWidget &);
};

%End
