// qxml.sip generated by MetaSIP on Sun Jun 16 16:06:27 2013
//
// This file is part of the QtXml Python extension module.
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


class QXmlNamespaceSupport
{
%TypeHeaderCode
#include <qxml.h>
%End

public:
    QXmlNamespaceSupport();
    ~QXmlNamespaceSupport();
    void setPrefix(const QString &, const QString &);
    QString prefix(const QString &) const;
    QString uri(const QString &) const;
    void splitName(const QString &, QString &, QString &) const;
    void processName(const QString &, bool, QString &, QString &) const;
    QStringList prefixes() const;
    QStringList prefixes(const QString &) const;
    void pushContext();
    void popContext();
    void reset();

private:
%If (Qt_4_2_0 -)
    QXmlNamespaceSupport(const QXmlNamespaceSupport &);
%End
};

class QXmlAttributes
{
%TypeHeaderCode
#include <qxml.h>
%End

public:
    QXmlAttributes();
    virtual ~QXmlAttributes();
    int index(const QString &qName) const;
    int index(const QString &uri, const QString &localPart) const;
    int length() const;
    QString localName(int index) const;
    QString qName(int index) const;
    QString uri(int index) const;
    QString type(int index) const;
    QString type(const QString &qName) const;
    QString type(const QString &uri, const QString &localName) const;
    QString value(int index) const;
    QString value(const QString &qName) const;
    QString value(const QString &uri, const QString &localName) const;
    void clear();
    void append(const QString &qName, const QString &uri, const QString &localPart, const QString &value);
    int count() const /__len__/;
};

class QXmlInputSource
{
%TypeHeaderCode
#include <qxml.h>
%End

public:
    QXmlInputSource();
%If (Qt_5_0_0 -)
    explicit QXmlInputSource(QIODevice *dev);
%End
%If (- Qt_5_0_0)
    QXmlInputSource(QIODevice *dev);
%End
    virtual ~QXmlInputSource();
    virtual void setData(const QString &dat);
    virtual void setData(const QByteArray &dat);
    virtual void fetchData();
    virtual QString data() const;
    virtual QChar next();
    virtual void reset();
    static const ushort EndOfData;
    static const ushort EndOfDocument;

protected:
    virtual QString fromRawData(const QByteArray &data, bool beginning = false);

private:
%If (- Qt_4_2_0)
    QXmlInputSource(const QXmlInputSource &);
%End
};

class QXmlParseException
{
%TypeHeaderCode
#include <qxml.h>
%End

public:
    QXmlParseException(const QString &name /DocValue="Py_v3:''"/ = QString(), int column = -1, int line = -1, const QString &publicId /DocValue="Py_v3:''"/ = QString(), const QString &systemId /DocValue="Py_v3:''"/ = QString());
    ~QXmlParseException();
    int columnNumber() const;
    int lineNumber() const;
    QString publicId() const;
    QString systemId() const;
    QString message() const;
%If (Qt_4_6_0 -)
    QXmlParseException(const QXmlParseException &other);
%End

private:
%If (- Qt_4_2_0)
    QXmlParseException(const QXmlParseException &);
%End
    QXmlParseException &operator=(const QXmlParseException &);
};

class QXmlReader
{
%TypeHeaderCode
#include <qxml.h>
%End

public:
    virtual ~QXmlReader();
    virtual bool feature(const QString &name, bool *ok = 0) const = 0;
    virtual void setFeature(const QString &name, bool value) = 0;
    virtual bool hasFeature(const QString &name) const = 0;
    virtual void *property(const QString &name, bool *ok = 0) const = 0;
    virtual void setProperty(const QString &name, void *value) = 0;
    virtual bool hasProperty(const QString &name) const = 0;
    virtual void setEntityResolver(QXmlEntityResolver *handler /KeepReference/) = 0;
    virtual QXmlEntityResolver *entityResolver() const = 0;
    virtual void setDTDHandler(QXmlDTDHandler *handler /KeepReference/) = 0;
    virtual QXmlDTDHandler *DTDHandler() const = 0;
    virtual void setContentHandler(QXmlContentHandler *handler /KeepReference/) = 0;
    virtual QXmlContentHandler *contentHandler() const = 0;
    virtual void setErrorHandler(QXmlErrorHandler *handler /KeepReference/) = 0;
    virtual QXmlErrorHandler *errorHandler() const = 0;
    virtual void setLexicalHandler(QXmlLexicalHandler *handler /KeepReference/) = 0;
    virtual QXmlLexicalHandler *lexicalHandler() const = 0;
    virtual void setDeclHandler(QXmlDeclHandler *handler /KeepReference/) = 0;
    virtual QXmlDeclHandler *declHandler() const = 0;
    virtual bool parse(const QXmlInputSource &input) = 0;
    virtual bool parse(const QXmlInputSource *input) = 0;
};

class QXmlSimpleReader : QXmlReader
{
%TypeHeaderCode
#include <qxml.h>
%End

public:
    QXmlSimpleReader();
    virtual ~QXmlSimpleReader();
    virtual bool feature(const QString &name, bool *ok = 0) const;
    virtual void setFeature(const QString &name, bool value);
    virtual bool hasFeature(const QString &name) const;
    virtual void *property(const QString &name, bool *ok = 0) const;
    virtual void setProperty(const QString &name, void *value);
    virtual bool hasProperty(const QString &name) const;
    virtual void setEntityResolver(QXmlEntityResolver *handler /KeepReference/);
    virtual QXmlEntityResolver *entityResolver() const;
    virtual void setDTDHandler(QXmlDTDHandler *handler /KeepReference/);
    virtual QXmlDTDHandler *DTDHandler() const;
    virtual void setContentHandler(QXmlContentHandler *handler /KeepReference/);
    virtual QXmlContentHandler *contentHandler() const;
    virtual void setErrorHandler(QXmlErrorHandler *handler /KeepReference/);
    virtual QXmlErrorHandler *errorHandler() const;
    virtual void setLexicalHandler(QXmlLexicalHandler *handler /KeepReference/);
    virtual QXmlLexicalHandler *lexicalHandler() const;
    virtual void setDeclHandler(QXmlDeclHandler *handler /KeepReference/);
    virtual QXmlDeclHandler *declHandler() const;
    virtual bool parse(const QXmlInputSource *input);
    virtual bool parse(const QXmlInputSource *input, bool incremental);
    virtual bool parseContinue();

private:
    QXmlSimpleReader(const QXmlSimpleReader &);
};

class QXmlLocator
{
%TypeHeaderCode
#include <qxml.h>
%End

public:
    QXmlLocator();
    virtual ~QXmlLocator();
    virtual int columnNumber() const = 0;
    virtual int lineNumber() const = 0;
};

class QXmlContentHandler
{
%TypeHeaderCode
#include <qxml.h>
%End

public:
    virtual ~QXmlContentHandler();
    virtual void setDocumentLocator(QXmlLocator *locator /KeepReference/) = 0;
    virtual bool startDocument() = 0;
    virtual bool endDocument() = 0;
    virtual bool startPrefixMapping(const QString &prefix, const QString &uri) = 0;
    virtual bool endPrefixMapping(const QString &prefix) = 0;
    virtual bool startElement(const QString &namespaceURI, const QString &localName, const QString &qName, const QXmlAttributes &atts) = 0;
    virtual bool endElement(const QString &namespaceURI, const QString &localName, const QString &qName) = 0;
    virtual bool characters(const QString &ch) = 0;
    virtual bool ignorableWhitespace(const QString &ch) = 0;
    virtual bool processingInstruction(const QString &target, const QString &data) = 0;
    virtual bool skippedEntity(const QString &name) = 0;
    virtual QString errorString() const = 0;
};

class QXmlErrorHandler
{
%TypeHeaderCode
#include <qxml.h>
%End

public:
    virtual ~QXmlErrorHandler();
    virtual bool warning(const QXmlParseException &exception) = 0;
    virtual bool error(const QXmlParseException &exception) = 0;
    virtual bool fatalError(const QXmlParseException &exception) = 0;
    virtual QString errorString() const = 0;
};

class QXmlDTDHandler
{
%TypeHeaderCode
#include <qxml.h>
%End

public:
    virtual ~QXmlDTDHandler();
    virtual bool notationDecl(const QString &name, const QString &publicId, const QString &systemId) = 0;
    virtual bool unparsedEntityDecl(const QString &name, const QString &publicId, const QString &systemId, const QString &notationName) = 0;
    virtual QString errorString() const = 0;
};

class QXmlEntityResolver
{
%TypeHeaderCode
#include <qxml.h>
%End

public:
    virtual ~QXmlEntityResolver();
    virtual bool resolveEntity(const QString &publicId, const QString &systemId, QXmlInputSource *&ret) = 0;
    virtual QString errorString() const = 0;
};

class QXmlLexicalHandler
{
%TypeHeaderCode
#include <qxml.h>
%End

public:
    virtual ~QXmlLexicalHandler();
    virtual bool startDTD(const QString &name, const QString &publicId, const QString &systemId) = 0;
    virtual bool endDTD() = 0;
    virtual bool startEntity(const QString &name) = 0;
    virtual bool endEntity(const QString &name) = 0;
    virtual bool startCDATA() = 0;
    virtual bool endCDATA() = 0;
    virtual bool comment(const QString &ch) = 0;
    virtual QString errorString() const = 0;
};

class QXmlDeclHandler
{
%TypeHeaderCode
#include <qxml.h>
%End

public:
    virtual ~QXmlDeclHandler();
    virtual bool attributeDecl(const QString &eName, const QString &aName, const QString &type, const QString &valueDefault, const QString &value) = 0;
    virtual bool internalEntityDecl(const QString &name, const QString &value) = 0;
    virtual bool externalEntityDecl(const QString &name, const QString &publicId, const QString &systemId) = 0;
    virtual QString errorString() const = 0;
};

class QXmlDefaultHandler : QXmlContentHandler, QXmlErrorHandler, QXmlDTDHandler, QXmlEntityResolver, QXmlLexicalHandler, QXmlDeclHandler
{
%TypeHeaderCode
#include <qxml.h>
%End

public:
    QXmlDefaultHandler();
    virtual ~QXmlDefaultHandler();
    virtual void setDocumentLocator(QXmlLocator *locator /KeepReference/);
    virtual bool startDocument();
    virtual bool endDocument();
    virtual bool startPrefixMapping(const QString &prefix, const QString &uri);
    virtual bool endPrefixMapping(const QString &prefix);
    virtual bool startElement(const QString &namespaceURI, const QString &localName, const QString &qName, const QXmlAttributes &atts);
    virtual bool endElement(const QString &namespaceURI, const QString &localName, const QString &qName);
    virtual bool characters(const QString &ch);
    virtual bool ignorableWhitespace(const QString &ch);
    virtual bool processingInstruction(const QString &target, const QString &data);
    virtual bool skippedEntity(const QString &name);
    virtual bool warning(const QXmlParseException &exception);
    virtual bool error(const QXmlParseException &exception);
    virtual bool fatalError(const QXmlParseException &exception);
    virtual bool notationDecl(const QString &name, const QString &publicId, const QString &systemId);
    virtual bool unparsedEntityDecl(const QString &name, const QString &publicId, const QString &systemId, const QString &notationName);
    virtual bool resolveEntity(const QString &publicId, const QString &systemId, QXmlInputSource *&ret);
    virtual bool startDTD(const QString &name, const QString &publicId, const QString &systemId);
    virtual bool endDTD();
    virtual bool startEntity(const QString &name);
    virtual bool endEntity(const QString &name);
    virtual bool startCDATA();
    virtual bool endCDATA();
    virtual bool comment(const QString &ch);
    virtual bool attributeDecl(const QString &eName, const QString &aName, const QString &type, const QString &valueDefault, const QString &value);
    virtual bool internalEntityDecl(const QString &name, const QString &value);
    virtual bool externalEntityDecl(const QString &name, const QString &publicId, const QString &systemId);
    virtual QString errorString() const;

private:
%If (Qt_4_2_0 -)
    QXmlDefaultHandler(const QXmlDefaultHandler &);
%End
};
