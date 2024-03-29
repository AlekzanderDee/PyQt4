// qhelpcontentwidget.sip generated by MetaSIP on Sun Jun 16 16:06:28 2013
//
// This file is part of the QtHelp Python extension module.
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


%If (Qt_4_4_0 -)

class QHelpContentItem /NoDefaultCtors/
{
%TypeHeaderCode
#include <qhelpcontentwidget.h>
%End

public:
    ~QHelpContentItem();
    QHelpContentItem *child(int row) const;
    int childCount() const;
    QString title() const;
    QUrl url() const;
    int row() const;
    QHelpContentItem *parent() const;
    int childPosition(QHelpContentItem *child) const;
};

%End
%If (Qt_4_4_0 -)

class QHelpContentModel : QAbstractItemModel /NoDefaultCtors/
{
%TypeHeaderCode
#include <qhelpcontentwidget.h>
%End

public:
    virtual ~QHelpContentModel();
    void createContents(const QString &customFilterName);
    QHelpContentItem *contentItemAt(const QModelIndex &index) const;
    virtual QVariant data(const QModelIndex &index, int role) const;
    virtual QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const;
    virtual QModelIndex parent(const QModelIndex &index) const;
    virtual int rowCount(const QModelIndex &parent = QModelIndex()) const;
    virtual int columnCount(const QModelIndex &parent = QModelIndex()) const;
    bool isCreatingContents() const;

signals:
    void contentsCreationStarted();
    void contentsCreated();
};

%End
%If (Qt_4_4_0 -)

class QHelpContentWidget : QTreeView
{
%TypeHeaderCode
#include <qhelpcontentwidget.h>
%End

public:
    QModelIndex indexOf(const QUrl &link);

signals:
    void linkActivated(const QUrl &link);

private:
    QHelpContentWidget();
};

%End
