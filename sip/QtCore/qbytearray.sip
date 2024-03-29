// qbytearray.sip generated by MetaSIP on Sun Jun 16 16:06:24 2013
//
// This file is part of the QtCore Python extension module.
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
#include <qbytearray.h>
%End

quint16 qChecksum(const char *s /Array/, uint len /ArraySize/);

class QByteArray
{
%TypeHeaderCode
#include <qbytearray.h>
%End

%TypeCode
// This is needed by __hash__().
#include <qhash.h>


// Convenience function for converting a QByteArray to a Python str object.
static PyObject *QByteArrayToPyStr(QByteArray *ba)
{
    char *data = ba->data();

    if (data)
        // QByteArrays may have embedded '\0's so set the size explicitly.    
        return SIPBytes_FromStringAndSize(data, ba->size());

    return SIPBytes_FromString("");
}
%End

%ConvertToTypeCode
// We have to be very careful about what we allow to be converted to a
// QByteArray and to a QString as we need to take into account the v1 and v2
// APIs and Python v2.x and v3.x.
//
// QSvgRenderer() is a good example of what needs to work "naturally".  This
// has a ctor that takes a QString argument that is the name of the SVG file.
// It has another ctor that takes a QByteArray argument that is the SVG data.
//
// In Python v2.x we want a str object to be interpreted as the name of the
// file (as that is the historical behaviour).  This has the following
// implications.
//
// - The QString version of the ctor must appear before the QByteArray version
//   in the .sip file.  This rule should be applied wherever a similar
//   situation arises.
// - A QString must not automatically convert a QByteArray.
// - QByteArray must also exist in the v2 API.
//
// In Python v3.x we want a bytes object to be used wherever a QByteArray is
// expected.  This means that a QString must not automatically convert a bytes
// object.
//
// Qt uses QByteArray to represent binary data and also '\0' terminated C
// strings.  If we only allowed a bytes object to be automatically converted to
// a QByteArray then we would force such strings to be either explicitly
// specified as bytes (ie. have a leading 'b') or wrapped in a call to the
// QByteArray ctor - neither of which is very Pythonic.  We therefore allow a
// Latin-1 encoded str object to be automatcially converted to a QByteArray.
// For consistency we also allow a Python v2.x unicode object to be similarly
// converted.

if (sipIsErr == NULL)
    return (
#if PY_VERSION_HEX >= 0x02060000
            PyByteArray_Check(sipPy) ||
#endif
            PyUnicode_Check(sipPy) || SIPBytes_Check(sipPy) ||
            sipCanConvertToType(sipPy, sipType_QByteArray, SIP_NO_CONVERTORS));

#if PY_VERSION_HEX >= 0x02060000
if (PyByteArray_Check(sipPy))
{
    *sipCppPtr = new QByteArray(PyByteArray_AS_STRING(sipPy),
            PyByteArray_GET_SIZE(sipPy));

    return sipGetState(sipTransferObj);
}
#endif

if (PyUnicode_Check(sipPy))
{
    const char *bytes = sipString_AsLatin1String(&sipPy);

    if (!sipPy)
    {
        *sipIsErr = 1;
        return 0;
    }

    *sipCppPtr = new QByteArray(bytes);

    Py_DECREF(sipPy);

    return sipGetState(sipTransferObj);
}

if (SIPBytes_Check(sipPy))
{
    *sipCppPtr = new QByteArray(SIPBytes_AS_STRING(sipPy),
            SIPBytes_GET_SIZE(sipPy));

    return sipGetState(sipTransferObj);
}

*sipCppPtr = reinterpret_cast<QByteArray *>(sipConvertToType(sipPy,
        sipType_QByteArray, sipTransferObj, SIP_NO_CONVERTORS, 0, sipIsErr));

return 0;
%End

%BIGetBufferCode
    sipRes = PyBuffer_FillInfo(sipBuffer, sipSelf, sipCpp->data(), sipCpp->size(), 0, sipFlags);
%End

%BIGetReadBufferCode
    if (sipSegment != 0)
    {
        PyErr_SetString(PyExc_SystemError, "accessing non-existent QByteArray segment");
        sipRes = -1;
    }
    else
    {
        *sipPtrPtr = (void *)sipCpp->data();
        sipRes = sipCpp->size();
    }
%End

%BIGetSegCountCode
    if (sipLenPtr)
        *sipLenPtr = sipCpp->size();
    
    sipRes = 1;
%End

%BIGetCharBufferCode
    if (sipSegment != 0)
    {
        PyErr_SetString(PyExc_SystemError, "accessing non-existent QByteArray segment");
        sipRes = -1;
    }
    else
    {
        *sipPtrPtr = (void *)sipCpp->data();
        sipRes = sipCpp->size();
    }
%End

%PickleCode
    #if PY_MAJOR_VERSION >= 3
    sipRes = Py_BuildValue((char *)"(y#)", sipCpp->data(), sipCpp->size());
    #else
    sipRes = Py_BuildValue((char *)"(s#)", sipCpp->data(), sipCpp->size());
    #endif
%End

public:
    QByteArray();
    QByteArray(int size, char c);
    QByteArray(const QByteArray &a);
    ~QByteArray();
    void resize(int size);
    QByteArray &fill(char ch, int size = -1);
    void clear();
    int indexOf(const QByteArray &ba, int from = 0) const;
    int indexOf(const QString &str, int from = 0) const;
    int lastIndexOf(const QByteArray &ba, int from = -1) const;
    int lastIndexOf(const QString &str, int from = -1) const;
    int count(const QByteArray &a) const;
    QByteArray left(int len) const;
    QByteArray right(int len) const;
    QByteArray mid(int pos, int length = -1) const;
    bool startsWith(const QByteArray &a) const;
    bool endsWith(const QByteArray &a) const;
    void truncate(int pos);
    void chop(int n);
    QByteArray toLower() const;
    QByteArray toUpper() const;
    QByteArray trimmed() const;
    QByteArray simplified() const;
    QByteArray leftJustified(int width, char fill = ' ', bool truncate = false) const;
    QByteArray rightJustified(int width, char fill = ' ', bool truncate = false) const;
    QByteArray &prepend(const QByteArray &a);
    QByteArray &append(const QByteArray &a);
    QByteArray &append(const QString &s);
    QByteArray &insert(int i, const QByteArray &a);
    QByteArray &insert(int i, const QString &s);
    QByteArray &remove(int index, int len);
    QByteArray &replace(int index, int len, const QByteArray &s);
    QByteArray &replace(const QByteArray &before, const QByteArray &after);
    QByteArray &replace(const QString &before, const QByteArray &after);
    QList<QByteArray> split(char sep) const;
    QByteArray &operator+=(const QByteArray &a);
    QByteArray &operator+=(const QString &s);
    bool operator==(const QString &s2) const;
    bool operator!=(const QString &s2) const;
    bool operator<(const QString &s2) const;
    bool operator>(const QString &s2) const;
    bool operator<=(const QString &s2) const;
    bool operator>=(const QString &s2) const;
    short toShort(bool *ok = 0, int base = 10) const;
    ushort toUShort(bool *ok = 0, int base = 10) const;
    int toInt(bool *ok = 0, int base = 10) const;
    uint toUInt(bool *ok = 0, int base = 10) const;
    long toLong(bool *ok = 0, int base = 10) const;
    ulong toULong(bool *ok = 0, int base = 10) const;
    qlonglong toLongLong(bool *ok = 0, int base = 10) const;
    qulonglong toULongLong(bool *ok = 0, int base = 10) const;
    float toFloat(bool *ok = 0) const;
    double toDouble(bool *ok = 0) const;
    QByteArray toBase64() const;
    QByteArray &setNum(int n /Constrained/, int base = 10);
    QByteArray &setNum(double n /Constrained/, char format = 'g', int precision = 6);
    QByteArray &setNum(qlonglong n, int base = 10);
    QByteArray &setNum(qulonglong n, int base = 10);
    static QByteArray number(int n /Constrained/, int base = 10);
    static QByteArray number(double n /Constrained/, char format = 'g', int precision = 6);
    static QByteArray number(qlonglong n, int base = 10);
    static QByteArray number(qulonglong n, int base = 10);
    static QByteArray fromBase64(const QByteArray &base64);
    static QByteArray fromRawData(const char * /Array/, int size /ArraySize/);
%If (Qt_4_3_0 -)
    static QByteArray fromHex(const QByteArray &hexEncoded);
%End
    int count() const /__len__/;
    int length() const;
    bool isNull() const;
    int size() const;
    char at(int i) const;
    char operator[](int i) const;
%MethodCode
        SIP_SSIZE_T idx = sipConvertFromSequenceIndex(a0, sipCpp->count());
        
        if (idx < 0)
            sipIsErr = 1;
        else
            sipRes = sipCpp->operator[]((int)idx);
%End

    QByteArray operator[](SIP_PYSLICE slice) const;
%MethodCode
        SIP_SSIZE_T len, start, stop, step, slicelength, i;
        
        len = sipCpp->length();
        
        #if PY_VERSION_HEX >= 0x03020000
        if (PySlice_GetIndicesEx(a0, len, &start, &stop, &step, &slicelength) < 0)
        #else
        if (PySlice_GetIndicesEx((PySliceObject *)a0, len, &start, &stop, &step, &slicelength) < 0)
        #endif
            sipIsErr = 1;
        else
        {
            sipRes = new QByteArray();
        
            for (i = 0; i < slicelength; ++i)
            {
                sipRes -> append(sipCpp->at(start));
                start += step;
            }
        }
%End

    int __contains__(const QByteArray &a) const;
%MethodCode
        // It looks like you can't assign QBool to int.
        sipRes = bool(sipCpp->contains(*a0));
%End

    long __hash__() const;
%MethodCode
        sipRes = qHash(*sipCpp);
%End

    SIP_PYOBJECT __str__() const /DocType="str"/;
%MethodCode
        sipRes = QByteArrayToPyStr(sipCpp);
        
        #if PY_MAJOR_VERSION >= 3
        PyObject *repr = PyObject_Repr(sipRes);
        
        if (repr)
        {
            Py_DECREF(sipRes);
            sipRes = repr;
        }
        #endif
%End

    SIP_PYOBJECT __repr__() const /DocType="str"/;
%MethodCode
        if (sipCpp->isNull())
        {
        #if PY_MAJOR_VERSION >= 3
            sipRes = PyUnicode_FromString("PyQt4.QtCore.QByteArray()");
        #else
            sipRes = PyString_FromString("PyQt4.QtCore.QByteArray()");
        #endif
        }
        else
        {
            PyObject *str = QByteArrayToPyStr(sipCpp);
        
            if (str)
            {
        #if PY_MAJOR_VERSION >= 3
                sipRes = PyUnicode_FromFormat("PyQt4.QtCore.QByteArray(%R)", str);
        #else
                sipRes = PyString_FromString("PyQt4.QtCore.QByteArray(");
                PyString_ConcatAndDel(&sipRes, PyObject_Repr(str));
                PyString_ConcatAndDel(&sipRes, PyString_FromString(")"));
        #endif
        
                Py_DECREF(str);
            }
        }
%End

    QByteArray operator*(int m) const;
%MethodCode
        sipRes = new QByteArray();
        
        while (a0-- > 0)
            *sipRes += *sipCpp;
%End

    QByteArray &operator*=(int m);
%MethodCode
        QByteArray orig(*sipCpp);
        
        sipCpp->clear();
        
        while (a0-- > 0)
            *sipCpp += orig;
%End

    bool isEmpty() const;
    SIP_PYOBJECT data() /DocType="Py_v3:bytes;str"/;
%MethodCode
        // QByteArrays may contain embedded '\0's so set the size explicitly.
        
        char *res = sipCpp->data();
        int len = sipCpp->size();
        
        if (res)
        {
            if ((sipRes = SIPBytes_FromStringAndSize(res, len)) == NULL)
                sipIsErr = 1;
        }
        else
        {
            Py_INCREF(Py_None);
            sipRes = Py_None;
        }
%End

    int capacity() const;
    void reserve(int size);
    void squeeze();
    void push_back(const QByteArray &a);
    void push_front(const QByteArray &a);
%If (Qt_5_0_0 -)
    bool contains(const QByteArray &a) const;
%End
%If (- Qt_5_0_0)
    QBool contains(const QByteArray &a) const;
%End
%If (Qt_4_3_0 -)
    QByteArray toHex() const;
%End
%If (Qt_4_4_0 -)
    QByteArray toPercentEncoding(const QByteArray &exclude = QByteArray(), const QByteArray &include = QByteArray(), char percent = '%') const;
%End
%If (Qt_4_4_0 -)
    static QByteArray fromPercentEncoding(const QByteArray &input, char percent = '%');
%End
%If (Qt_4_5_0 -)
    QByteArray repeated(int times) const;
%End
%If (Qt_4_8_0 -)
    void swap(QByteArray &other);
%End
};

bool operator==(const QByteArray &a1, const QByteArray &a2);
bool operator!=(const QByteArray &a1, const QByteArray &a2);
bool operator<(const QByteArray &a1, const QByteArray &a2);
bool operator<=(const QByteArray &a1, const QByteArray &a2);
bool operator>(const QByteArray &a1, const QByteArray &a2);
bool operator>=(const QByteArray &a1, const QByteArray &a2);
const QByteArray operator+(const QByteArray &a1, const QByteArray &a2);
QDataStream &operator<<(QDataStream &, const QByteArray & /Constrained/);
QDataStream &operator>>(QDataStream &, QByteArray & /Constrained/);
QByteArray qCompress(const QByteArray &data, int compressionLevel = -1);
QByteArray qUncompress(const QByteArray &data);
%If (Qt_4_3_0 -)
void qSwap(QByteArray &value1, QByteArray &value2);
%End
