// qdbusmessage.sip generated by MetaSIP on Sun Jun 16 16:06:28 2013
//
// This file is part of the QtDBus Python extension module.
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


%If (Qt_4_7_0 -)

class QDBusMessage
{
%TypeHeaderCode
#include <qdbusmessage.h>
%End

public:
    enum MessageType
    {
        InvalidMessage,
        MethodCallMessage,
        ReplyMessage,
        ErrorMessage,
        SignalMessage,
    };

    QDBusMessage();
    QDBusMessage(const QDBusMessage &other);
    ~QDBusMessage();
    static QDBusMessage createSignal(const QString &path, const QString &interface, const QString &name);
    static QDBusMessage createMethodCall(const QString &service, const QString &path, const QString &interface, const QString &method);
    static QDBusMessage createError(const QString &name, const QString &msg);
    static QDBusMessage createError(const QDBusError &error);
    static QDBusMessage createError(QDBusError::ErrorType type, const QString &msg);
    QDBusMessage createReply(const QList<QVariant> &arguments = QList<QVariant>()) const;
    QDBusMessage createReply(const QVariant &argument) const;
    QDBusMessage createErrorReply(const QString name, const QString &msg) const;
    QDBusMessage createErrorReply(const QDBusError &error) const;
    QDBusMessage createErrorReply(QDBusError::ErrorType type, const QString &msg) const;
    QString service() const;
    QString path() const;
    QString interface() const;
    QString member() const;
    QString errorName() const;
    QString errorMessage() const;
    QDBusMessage::MessageType type() const;
    QString signature() const;
    bool isReplyRequired() const;
    void setDelayedReply(bool enable) const;
    bool isDelayedReply() const;
    void setAutoStartService(bool enable);
    bool autoStartService() const;
    void setArguments(const QList<QVariant> &arguments);
    QList<QVariant> arguments() const;
    QDBusMessage &operator<<(const QVariant &arg);
};

%End
