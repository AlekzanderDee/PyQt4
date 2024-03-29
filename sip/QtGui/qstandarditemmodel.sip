// qstandarditemmodel.sip generated by MetaSIP on Sun Jun 16 16:06:26 2013
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


%ModuleCode
#include <qstandarditemmodel.h>
%End

class QStandardItemModel : QAbstractItemModel
{
%TypeHeaderCode
#include <qstandarditemmodel.h>
%End

public:
    explicit QStandardItemModel(QObject *parent /TransferThis/ = 0);
    QStandardItemModel(int rows, int columns, QObject *parent /TransferThis/ = 0);
    virtual ~QStandardItemModel();
    virtual QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const;
    virtual QModelIndex parent(const QModelIndex &child) const;
    QObject *parent() const;
    virtual int rowCount(const QModelIndex &parent = QModelIndex()) const;
    virtual int columnCount(const QModelIndex &parent = QModelIndex()) const;
    virtual bool hasChildren(const QModelIndex &parent = QModelIndex()) const;
    virtual QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const;
    virtual bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole);
    virtual QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const;
    virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant &value, int role = Qt::EditRole);
    virtual bool insertRows(int row, int count, const QModelIndex &parent = QModelIndex());
    virtual bool insertColumns(int column, int count, const QModelIndex &parent = QModelIndex());
    virtual bool removeRows(int row, int count, const QModelIndex &parent = QModelIndex());
    virtual bool removeColumns(int column, int count, const QModelIndex &parent = QModelIndex());
    virtual Qt::ItemFlags flags(const QModelIndex &index) const;
    void clear();
%If (Qt_4_2_0 -)
    virtual Qt::DropActions supportedDropActions() const;
%End
%If (Qt_4_2_0 -)
    virtual QMap<int, QVariant> itemData(const QModelIndex &index) const;
%End
%If (Qt_4_2_0 -)
    virtual bool setItemData(const QModelIndex &index, const QMap<int, QVariant> &roles);
%End
%If (Qt_4_2_0 -)
    virtual void sort(int column, Qt::SortOrder order = Qt::AscendingOrder);
%End
%If (Qt_4_2_0 -)
    QStandardItem *itemFromIndex(const QModelIndex &index) const;
%End
%If (Qt_4_2_0 -)
    QModelIndex indexFromItem(const QStandardItem *item) const;
%End
%If (Qt_4_2_0 -)
    QStandardItem *item(int row, int column = 0) const;
%End
%If (Qt_4_2_0 -)
    void setItem(int row, int column, QStandardItem *item /Transfer/);
%End
%If (Qt_4_2_0 -)
    void setItem(int arow, QStandardItem *aitem /Transfer/);
%End
%If (Qt_4_2_0 -)
    QStandardItem *invisibleRootItem() const /Transfer/;
%End
%If (Qt_4_2_0 -)
    QStandardItem *horizontalHeaderItem(int column) const;
%End
%If (Qt_4_2_0 -)
    void setHorizontalHeaderItem(int column, QStandardItem *item /Transfer/);
%End
%If (Qt_4_2_0 -)
    QStandardItem *verticalHeaderItem(int row) const;
%End
%If (Qt_4_2_0 -)
    void setVerticalHeaderItem(int row, QStandardItem *item /Transfer/);
%End
%If (Qt_4_2_0 -)
    void setHorizontalHeaderLabels(const QStringList &labels);
%End
%If (Qt_4_2_0 -)
    void setVerticalHeaderLabels(const QStringList &labels);
%End
%If (Qt_4_2_0 -)
    void setRowCount(int rows);
%End
%If (Qt_4_2_0 -)
    void setColumnCount(int columns);
%End
%If (Qt_4_2_0 -)
    void appendRow(const QList<QStandardItem*> &items /Transfer/);
%End
%If (Qt_4_2_0 -)
    void appendColumn(const QList<QStandardItem*> &items /Transfer/);
%End
%If (Qt_4_2_0 -)
    void insertRow(int row, const QList<QStandardItem*> &items /Transfer/);
%End
%If (Qt_4_2_0 -)
    void insertColumn(int column, const QList<QStandardItem*> &items /Transfer/);
%End
%If (Qt_4_2_0 -)
    QStandardItem *takeItem(int row, int column = 0) /TransferBack/;
%End
%If (Qt_4_2_0 -)
    QList<QStandardItem*> takeRow(int row) /TransferBack/;
%End
%If (Qt_4_2_0 -)
    QList<QStandardItem*> takeColumn(int column) /TransferBack/;
%End
%If (Qt_4_2_0 -)
    QStandardItem *takeHorizontalHeaderItem(int column) /TransferBack/;
%End
%If (Qt_4_2_0 -)
    QStandardItem *takeVerticalHeaderItem(int row) /TransferBack/;
%End
%If (Qt_4_2_0 -)
    const QStandardItem *itemPrototype() const;
%End
%If (Qt_4_2_0 -)
    void setItemPrototype(const QStandardItem *item /Transfer/);
%End
%If (Qt_4_2_0 -)
    QList<QStandardItem*> findItems(const QString &text, Qt::MatchFlags flags = Qt::MatchExactly, int column = 0) const;
%End
%If (Qt_4_2_0 -)
    int sortRole() const;
%End
%If (Qt_4_2_0 -)
    void setSortRole(int role);
%End
%If (Qt_4_2_0 -)
    void appendRow(QStandardItem *aitem /Transfer/);
%End
%If (Qt_4_2_0 -)
    void insertRow(int arow, QStandardItem *aitem /Transfer/);
%End
%If (Qt_4_2_0 -)
    bool insertRow(int row, const QModelIndex &parent = QModelIndex());
%End
%If (Qt_4_2_0 -)
    bool insertColumn(int column, const QModelIndex &parent = QModelIndex());
%End
%If (Qt_4_5_0 -)
    virtual QStringList mimeTypes() const;
%End
%If (Qt_4_5_0 -)
    virtual QMimeData *mimeData(const QModelIndexList &indexes) const /TransferBack/;
%End
%If (Qt_4_5_0 -)
    virtual bool dropMimeData(const QMimeData *data, Qt::DropAction action, int row, int column, const QModelIndex &parent);
%End
%If (Qt_5_0_0 -)
    virtual QModelIndex sibling(int row, int column, const QModelIndex &idx) const;
%End

signals:
%If (Qt_4_2_0 -)
    void itemChanged(QStandardItem *item);
%End

private:
    QStandardItemModel(const QStandardItemModel &);
};

%If (Qt_4_2_0 -)

class QStandardItem /Supertype=sip.wrapper/
{
%TypeHeaderCode
#include <qstandarditemmodel.h>
%End

public:
    QStandardItem();
%If (Qt_5_0_0 -)
    explicit QStandardItem(const QString &text);
%End
%If (- Qt_5_0_0)
    QStandardItem(const QString &text);
%End
    QStandardItem(const QIcon &icon, const QString &text);
    QStandardItem(int rows, int columns = 1);
    virtual ~QStandardItem();
    virtual QVariant data(int role = Qt::UserRole+1) const;
    virtual void setData(const QVariant &value, int role = Qt::UserRole+1);
    QString text() const;
    QIcon icon() const;
    QString toolTip() const;
    QString statusTip() const;
    QString whatsThis() const;
    QSize sizeHint() const;
    QFont font() const;
    Qt::Alignment textAlignment() const;
    QBrush background() const;
    QBrush foreground() const;
    Qt::CheckState checkState() const;
    QString accessibleText() const;
    QString accessibleDescription() const;
    Qt::ItemFlags flags() const;
    void setFlags(Qt::ItemFlags flags);
    bool isEnabled() const;
    void setEnabled(bool enabled);
    bool isEditable() const;
    void setEditable(bool editable);
    bool isSelectable() const;
    void setSelectable(bool selectable);
    bool isCheckable() const;
    void setCheckable(bool checkable);
    bool isTristate() const;
    void setTristate(bool tristate);
    bool isDragEnabled() const;
    void setDragEnabled(bool dragEnabled);
    bool isDropEnabled() const;
    void setDropEnabled(bool dropEnabled);
    QStandardItem *parent() const;
    int row() const;
    int column() const;
    QModelIndex index() const;
    QStandardItemModel *model() const;
    int rowCount() const;
    void setRowCount(int rows);
    int columnCount() const;
    void setColumnCount(int columns);
    bool hasChildren() const;
    QStandardItem *child(int row, int column = 0) const;
    void setChild(int row, int column, QStandardItem *item /Transfer/);
    void setChild(int arow, QStandardItem *aitem /Transfer/);
    void insertRow(int row, const QList<QStandardItem*> &items /Transfer/);
    void insertRow(int arow, QStandardItem *aitem /Transfer/);
    void insertRows(int row, int count);
    void insertColumn(int column, const QList<QStandardItem*> &items /Transfer/);
    void insertColumns(int column, int count);
    void removeRow(int row);
    void removeColumn(int column);
    void removeRows(int row, int count);
    void removeColumns(int column, int count);
    QStandardItem *takeChild(int row, int column = 0) /TransferBack/;
    QList<QStandardItem*> takeRow(int row) /TransferBack/;
    QList<QStandardItem*> takeColumn(int column) /TransferBack/;
    void sortChildren(int column, Qt::SortOrder order = Qt::AscendingOrder);
    virtual QStandardItem *clone() const /Factory/;

    enum ItemType
    {
        Type,
        UserType,
    };

    virtual int type() const;
    virtual void read(QDataStream &in);
    virtual void write(QDataStream &out) const;
    virtual bool operator<(const QStandardItem &other /NoCopy/) const;
    void setText(const QString &atext);
    void setIcon(const QIcon &aicon);
    void setToolTip(const QString &atoolTip);
    void setStatusTip(const QString &astatusTip);
    void setWhatsThis(const QString &awhatsThis);
    void setSizeHint(const QSize &asizeHint);
    void setFont(const QFont &afont);
    void setTextAlignment(Qt::Alignment atextAlignment);
    void setBackground(const QBrush &abrush);
    void setForeground(const QBrush &abrush);
    void setCheckState(Qt::CheckState acheckState);
    void setAccessibleText(const QString &aaccessibleText);
    void setAccessibleDescription(const QString &aaccessibleDescription);
    void appendRow(const QList<QStandardItem*> &aitems /Transfer/);
    void appendRow(QStandardItem *aitem /Transfer/);
    void appendColumn(const QList<QStandardItem*> &aitems /Transfer/);
%If (Qt_4_3_0 -)
    void insertRows(int row, const QList<QStandardItem*> &items /Transfer/);
%End
%If (Qt_4_3_0 -)
    void appendRows(const QList<QStandardItem*> &aitems /Transfer/);
%End

protected:
    QStandardItem(const QStandardItem &other);
%If (Qt_4_4_0 -)
    void emitDataChanged();
%End
};

%End
%If (Qt_4_2_0 -)
QDataStream &operator>>(QDataStream &in, QStandardItem &item /Constrained/);
%End
%If (Qt_4_2_0 -)
QDataStream &operator<<(QDataStream &out, const QStandardItem &item /Constrained/);
%End
