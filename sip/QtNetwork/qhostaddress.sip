// qhostaddress.sip generated by MetaSIP on Sun Jun 16 16:06:27 2013
//
// This file is part of the QtNetwork Python extension module.
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
#include <qhostaddress.h>
%End

class QHostAddress
{
%TypeHeaderCode
#include <qhostaddress.h>
%End

%ConvertToTypeCode
// SIP doesn't support automatic type convertors so we explicitly allow a
// QHostAddress::SpecialAddress to be used whenever a QHostAddress is expected.

if (sipIsErr == NULL)
    return (PyObject_TypeCheck(sipPy, sipTypeAsPyTypeObject(sipType_QHostAddress_SpecialAddress)) ||
            sipCanConvertToType(sipPy, sipType_QHostAddress, SIP_NO_CONVERTORS));

if (PyObject_TypeCheck(sipPy, sipTypeAsPyTypeObject(sipType_QHostAddress_SpecialAddress)))
{
    *sipCppPtr = new QHostAddress((QHostAddress::SpecialAddress)SIPLong_AsLong(sipPy));

    return sipGetState(sipTransferObj);
}

*sipCppPtr = reinterpret_cast<QHostAddress *>(sipConvertToType(sipPy, sipType_QHostAddress, sipTransferObj, SIP_NO_CONVERTORS, 0, sipIsErr));

return 0;
%End

public:
    enum SpecialAddress
    {
        Null,
        Broadcast,
        LocalHost,
        LocalHostIPv6,
%If (Qt_5_0_0 -)
        AnyIPv4,
%End
        AnyIPv6,
        Any,
    };

    QHostAddress();
    QHostAddress(QHostAddress::SpecialAddress address /Constrained/);
    explicit QHostAddress(quint32 ip4Addr);
    explicit QHostAddress(const QString &address);
    explicit QHostAddress(const Q_IPV6ADDR &ip6Addr);
    QHostAddress(const QHostAddress &copy);
    ~QHostAddress();
    void setAddress(quint32 ip4Addr);
    bool setAddress(const QString &address);
    void setAddress(const Q_IPV6ADDR &ip6Addr);
    QAbstractSocket::NetworkLayerProtocol protocol() const;
    quint32 toIPv4Address() const;
    Q_IPV6ADDR toIPv6Address() const;
    QString toString() const;
    QString scopeId() const;
    void setScopeId(const QString &id);
    bool operator==(const QHostAddress &address) const;
    bool operator==(QHostAddress::SpecialAddress address) const;
%If (Qt_4_2_0 -)
    bool operator!=(const QHostAddress &address) const;
%End
%If (Qt_4_2_0 -)
    bool operator!=(QHostAddress::SpecialAddress address) const;
%End
    bool isNull() const;
    void clear();
%If (Qt_4_2_0 -)
    long __hash__() const;
%MethodCode
        sipRes = qHash(*sipCpp);
%End

%End
%If (Qt_4_5_0 -)
    bool isInSubnet(const QHostAddress &subnet, int netmask) const;
%End
%If (Qt_4_5_0 -)
    bool isInSubnet(const QPair<QHostAddress, int> &subnet) const;
%End
%If (Qt_5_0_0 -)
    bool isLoopback() const;
%End
%If (Qt_4_5_0 -)
    static QPair<QHostAddress, int> parseSubnet(const QString &subnet);
%End
};

bool operator==(QHostAddress::SpecialAddress address1, const QHostAddress &address2);
%If (Qt_4_2_0 -)
QDataStream &operator<<(QDataStream &, const QHostAddress &);
%End
%If (Qt_4_2_0 -)
QDataStream &operator>>(QDataStream &, QHostAddress &);
%End
// Q_IPV6ADDR is implemented as a Python 16-tuple of ints.
%MappedType Q_IPV6ADDR /DocType="16-tuple-of-int"/
{
%TypeHeaderCode
#include <qhostaddress.h>
%End

%ConvertFromTypeCode
    // Create the tuple.
    PyObject *t;

    if ((t = PyTuple_New(16)) == NULL)
        return NULL;

    // Set the tuple elements.
    for (int i = 0; i < 16; ++i)
    {
        PyObject *pobj;

        if ((pobj = SIPLong_FromLong((*sipCpp)[i])) == NULL)
        {
            Py_DECREF(t);

            return NULL;
        }

        PyTuple_SET_ITEM(t, i, pobj);
    }

    return t;
%End

%ConvertToTypeCode
    // Check the type if that is all that is required.
    if (sipIsErr == NULL)
        return (PySequence_Check(sipPy) && PySequence_Size(sipPy) == 16);

    Q_IPV6ADDR *qa = new Q_IPV6ADDR;
 
    for (SIP_SSIZE_T i = 0; i < 16; ++i)
    {
        PyObject *itm = PySequence_ITEM(sipPy, i);

        if (!itm)
        {
            delete qa;
            *sipIsErr = 1;

            return 0;
        }

        (*qa)[i] = SIPLong_AsLong(itm);

        Py_DECREF(itm);
    }
 
    *sipCppPtr = qa;
 
    return sipGetState(sipTransferObj);
%End
};
