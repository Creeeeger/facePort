.class public Lgov/nist/javax/sip/address/SipUri;
.super Lgov/nist/javax/sip/address/GenericURI;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljavax/sip/address/SipURI;


# static fields
.field private static final serialVersionUID:J = 0x6b8cc0d42713c224L


# instance fields
.field protected authority:Lgov/nist/javax/sip/address/Authority;

.field protected qheaders:Lgov/nist/core/NameValueList;

.field protected telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

.field protected uriParms:Lgov/nist/core/NameValueList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lgov/nist/javax/sip/address/GenericURI;-><init>()V

    const-string v0, "sip"

    iput-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    const-string p0, "&"

    invoke-virtual {v0, p0}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/Authority;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    :cond_2
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/TelephoneNumber;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/address/TelephoneNumber;

    iput-object p0, v0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    :cond_3
    return-object v0
.end method

.method public final encode()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_2
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljavax/sip/address/SipURI;

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    check-cast p1, Ljavax/sip/address/SipURI;

    iget-object v1, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    const-string v3, "sips"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    check-cast p1, Lgov/nist/javax/sip/address/SipUri;

    iget-object v4, p1, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v1, v3

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getUser()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->getUser()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    xor-int/2addr v1, v3

    if-eqz v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getUserPassword()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->getUserPassword()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v0

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    xor-int/2addr v1, v3

    if-eqz v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getUser()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getUserPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getUserPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->getUserPassword()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v0

    goto :goto_4

    :cond_a
    move v1, v2

    :goto_4
    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    move v3, v0

    goto :goto_5

    :cond_b
    move v3, v2

    :goto_5
    xor-int/2addr v1, v3

    if-eqz v1, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    iget-object v1, v1, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-nez v1, :cond_e

    move-object v1, v3

    goto :goto_6

    :cond_e
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_f

    goto :goto_7

    :cond_f
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    iget-object v1, v1, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    goto :goto_8

    :cond_10
    :goto_7
    move-object v1, v3

    :goto_8
    const/4 v4, -0x1

    if-nez v1, :cond_11

    move v1, v4

    goto :goto_9

    :cond_11
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getPort()I

    move-result v1

    :goto_9
    iget-object v5, p1, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v5, :cond_14

    iget-object v5, v5, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-nez v5, :cond_12

    move-object v5, v3

    goto :goto_a

    :cond_12
    invoke-virtual {v5}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    move-result-object v5

    :goto_a
    if-nez v5, :cond_13

    goto :goto_b

    :cond_13
    iget-object v5, p1, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    iget-object v5, v5, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    goto :goto_c

    :cond_14
    :goto_b
    move-object v5, v3

    :goto_c
    if-nez v5, :cond_15

    move v5, v4

    goto :goto_d

    :cond_15
    invoke-virtual {v5}, Lgov/nist/core/HostPort;->getPort()I

    move-result v5

    :goto_d
    if-eq v1, v5, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_17

    if-eqz v5, :cond_17

    invoke-static {v6}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    return v2

    :cond_18
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v5, "transport"

    if-eqz v1, :cond_19

    invoke-virtual {v1, v5}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_e

    :cond_19
    move-object v1, v3

    :goto_e
    if-nez v1, :cond_1a

    move v1, v0

    goto :goto_f

    :cond_1a
    move v1, v2

    :goto_f
    iget-object v6, p1, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v6, :cond_1b

    invoke-virtual {v6, v5}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_10

    :cond_1b
    move-object v5, v3

    :goto_10
    if-nez v5, :cond_1c

    move v5, v0

    goto :goto_11

    :cond_1c
    move v5, v2

    :goto_11
    xor-int/2addr v1, v5

    if-eqz v1, :cond_1d

    return v2

    :cond_1d
    const-string v1, "user"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1e

    move v5, v0

    goto :goto_12

    :cond_1e
    move v5, v2

    :goto_12
    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f

    move v1, v0

    goto :goto_13

    :cond_1f
    move v1, v2

    :goto_13
    xor-int/2addr v1, v5

    if-eqz v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v5, "ttl"

    invoke-virtual {v1, v5}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_14

    :cond_21
    move v1, v4

    :goto_14
    if-ne v1, v4, :cond_22

    move v1, v0

    goto :goto_15

    :cond_22
    move v1, v2

    :goto_15
    iget-object v6, p1, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v6, v5}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_16

    :cond_23
    move v5, v4

    :goto_16
    if-ne v5, v4, :cond_24

    move v4, v0

    goto :goto_17

    :cond_24
    move v4, v2

    :goto_17
    xor-int/2addr v1, v4

    if-eqz v1, :cond_25

    return v2

    :cond_25
    const-string v1, "method"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_26

    move v4, v0

    goto :goto_18

    :cond_26
    move v4, v2

    :goto_18
    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    move v1, v0

    goto :goto_19

    :cond_27
    move v1, v2

    :goto_19
    xor-int/2addr v1, v4

    if-eqz v1, :cond_28

    return v2

    :cond_28
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v4, "maddr"

    invoke-virtual {v1, v4}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v1

    if-nez v1, :cond_29

    move-object v1, v3

    goto :goto_1a

    :cond_29
    invoke-virtual {v1}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1a
    if-nez v1, :cond_2a

    move v1, v0

    goto :goto_1b

    :cond_2a
    move v1, v2

    :goto_1b
    iget-object v5, p1, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v5, v4}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v4

    if-nez v4, :cond_2b

    move-object v4, v3

    goto :goto_1c

    :cond_2b
    invoke-virtual {v4}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_1c
    if-nez v4, :cond_2c

    move v4, v0

    goto :goto_1d

    :cond_2c
    move v4, v2

    :goto_1d
    xor-int/2addr v1, v4

    if-eqz v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p1, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    :cond_2e
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p1, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    return v2

    :cond_2f
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p1, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    :try_start_0
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v1, Lgov/nist/javax/sip/header/HeaderFactoryImpl;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v5, v4}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_31

    iget-object v5, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v5, v4}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1f

    :cond_31
    move-object v5, v3

    :goto_1f
    iget-object v6, p1, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v6, v4}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_32

    iget-object v6, p1, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v6, v4}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_20

    :cond_32
    move-object v6, v3

    :goto_20
    if-nez v5, :cond_33

    if-eqz v6, :cond_33

    return v2

    :cond_33
    if-nez v6, :cond_34

    if-eqz v5, :cond_34

    return v2

    :cond_34
    if-nez v5, :cond_35

    if-nez v6, :cond_35

    goto :goto_1e

    :cond_35
    :try_start_2
    invoke-static {v5}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v5

    invoke-static {v6}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    invoke-interface {v5, v4}, Ljavax/sip/header/Header;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v4, :cond_30

    return v2

    :catch_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->encode()Ljava/lang/String;

    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->toString()Ljava/lang/String;

    return v2

    :catch_1
    move-exception p0

    :try_start_3
    instance-of p1, p0, Ljavax/sip/PeerUnavailableException;

    if-eqz p1, :cond_36

    check-cast p0, Ljavax/sip/PeerUnavailableException;

    throw p0

    :cond_36
    new-instance p1, Ljavax/sip/PeerUnavailableException;

    const-string v0, "Failed to create HeaderFactory"

    invoke-direct {p1, v0, p0}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return v2

    :cond_37
    return v0

    :cond_38
    return v2
.end method

.method public final getHost()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of p1, p0, Lgov/nist/core/GenericObject;

    if-eqz p1, :cond_1

    check-cast p0, Lgov/nist/core/GenericObject;

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getParameterNames()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final getPort()I
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getPort()I

    move-result p0

    return p0
.end method

.method public final getScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public final getUser()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getUserPassword()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final removeHeaders()V
    .locals 1

    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    return-void
.end method

.method public final removeParameter(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public final removeParameters()V
    .locals 1

    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    return-void
.end method

.method public final setHostPort(Lgov/nist/core/HostPort;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    iput-object p1, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    return-void
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ttl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/text/ParseException;

    const-string p1, "bad parameter "

    invoke-static {p1, p2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_0
    :goto_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p2, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setQHeader(Lgov/nist/core/NameValue;)V
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    return-void
.end method

.method public final setScheme(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sips"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad scheme "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    return-void
.end method

.method public final setUriParameter(Lgov/nist/core/NameValue;)V
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    return-void
.end method

.method public final setUser(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-nez v0, :cond_1

    new-instance v0, Lgov/nist/javax/sip/address/UserInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/UserInfo;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    :cond_1
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    iput-object p1, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    iput p1, p0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    iput p1, p0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    :goto_0
    return-void
.end method

.method public final setUserParam(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v0, "user"

    invoke-virtual {p0, p1, v0}, Lgov/nist/core/NameValueList;->set(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setUserPassword(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-nez v0, :cond_1

    new-instance v0, Lgov/nist/javax/sip/address/UserInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/UserInfo;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    :cond_1
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    iput-object p1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
