#ifndef P1SIGNACTION_H
#define P1SIGNACTION_H
#include <QWidgetAction>

#include "openssl/x509.h"

#define ECCref_MAX_BITS 256
#define ECCref_MAX_LEN ((ECCref_MAX_BITS+7) / 8)
typedef struct ECCrefPublicKey_st
{
     unsigned int bits;
     unsigned char x[ECCref_MAX_LEN];
     unsigned char y[ECCref_MAX_LEN];
} ECCrefPublicKey;

typedef struct ASN_ECCPUBLICKEY_st
{
       ASN1_OCTET_STRING *X;
       ASN1_OCTET_STRING *Y;
}ASN_ECCPUBLICKEY;
DECLARE_ASN1_FUNCTIONS(ASN_ECCPUBLICKEY)

class P1SignAction : public QWidgetAction
{
public:
    P1SignAction(QObject *parent);
protected:

    QWidget * createWidget(QWidget *parent);
};

#endif // P1SIGNACTION_H
