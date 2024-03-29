// qproxymodel.sip generated by MetaSIP on Sun Jun 16 16:06:26 2013
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


%If (- Qt_5_0_0)

class QProxyModel : QAbstractItemModel
{
%TypeHeaderCode
#include <qproxymodel.h>
%End

public:
    explicit QProxyModel(QObject *parent /TransferThis/ = 0);
    virtual ~QProxyModel();
    virtual void setModel(QAbstractItemModel *model /KeepReference/);
    QAbstractItemModel *model() const;
%If (- Qt_4_7_0)
    virtual QModelIndex index(int row, int column, const QModelIndex &parent) const;
%End
%If (Qt_4_7_0 -)
    virtual QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const;
%End
    virtual QModelIndex parent(const QModelIndex &child) const;
    QObject *parent() const;
%If (- Qt_4_7_0)
    virtual int rowCount(const QModelIndex &parent) const;
%End
%If (Qt_4_7_0 -)
    virtual int rowCount(const QModelIndex &parent = QModelIndex()) const;
%End
%If (- Qt_4_7_0)
    virtual int columnCount(const QModelIndex &parent) const;
%End
%If (Qt_4_7_0 -)
    virtual int columnCount(const QModelIndex &parent = QModelIndex()) const;
%End
%If (- Qt_4_7_0)
    virtual bool hasChildren(const QModelIndex &parent) const;
%End
%If (Qt_4_7_0 -)
    virtual bool hasChildren(const QModelIndex &parent = QModelIndex()) const;
%End
%If (- Qt_4_7_0)
    virtual QVariant data(const QModelIndex &index, int role) const;
%End
%If (Qt_4_7_0 -)
    virtual QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const;
%End
%If (- Qt_4_7_0)
    virtual bool setData(const QModelIndex &index, const QVariant &value, int role);
%End
%If (Qt_4_7_0 -)
    virtual bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole);
%End
%If (- Qt_4_7_0)
    virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const;
%End
%If (Qt_4_7_0 -)
    virtual QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const;
%End
%If (- Qt_4_7_0)
    virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant &value, int role);
%End
%If (Qt_4_7_0 -)
    virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant &value, int role = Qt::EditRole);
%End
    virtual QStringList mimeTypes() const;
    virtual QMimeData *mimeData(const QModelIndexList &indexes) const /TransferBack/;
    virtual bool dropMimeData(const QMimeData *data, Qt::DropAction action, int row, int column, const QModelIndex &parent);
    virtual Qt::DropActions supportedDropActions() const;
%If (- Qt_4_7_0)
    virtual bool insertRows(int row, int count, const QModelIndex &parent);
%End
%If (Qt_4_7_0 -)
    virtual bool insertRows(int row, int count, const QModelIndex &parent = QModelIndex());
%End
%If (- Qt_4_7_0)
    virtual bool insertColumns(int column, int count, const QModelIndex &parent);
%End
%If (Qt_4_7_0 -)
    virtual bool insertColumns(int column, int count, const QModelIndex &parent = QModelIndex());
%End
    virtual void fetchMore(const QModelIndex &parent);
    virtual Qt::ItemFlags flags(const QModelIndex &index) const;
%If (- Qt_4_7_0)
    virtual void sort(int column, Qt::SortOrder order);
%End
%If (Qt_4_7_0 -)
    virtual void sort(int column, Qt::SortOrder order = Qt::AscendingOrder);
%End
%If (- Qt_4_7_0)
    virtual QModelIndexList match(const QModelIndex &start, int role, const QVariant &value, int hits, Qt::MatchFlags flags) const;
%End
%If (Qt_4_7_0 -)
    virtual QModelIndexList match(const QModelIndex &start, int role, const QVariant &value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags(Qt::MatchStartsWith|Qt::MatchWrap)) const;
%End
    virtual QSize span(const QModelIndex &index) const;
    virtual bool submit();
    virtual void revert();

private:
    QProxyModel(const QProxyModel &);
};

%End
