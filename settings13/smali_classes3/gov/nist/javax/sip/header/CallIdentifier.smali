.class public final Lgov/nist/javax/sip/header/CallIdentifier;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "CallIdentifier.java"


# static fields
.field private static final serialVersionUID:J = 0x65834be26eebb7f1L


# instance fields
.field protected host:Ljava/lang/String;

.field protected localId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 80
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;->setCallID(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CallIdentifier;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 92
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "@"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 107
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 110
    :cond_1
    check-cast p1, Lgov/nist/javax/sip/header/CallIdentifier;

    .line 111
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    iget-object v2, p1, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 114
    :cond_2
    iget-object p0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    iget-object p1, p1, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    const/4 v1, 0x1

    if-ne p0, p1, :cond_3

    return v1

    :cond_3
    if-nez p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    if-eqz p0, :cond_6

    if-nez p1, :cond_6

    :cond_5
    return v0

    .line 119
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 127
    iget-object p0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Hash code called before id is set"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCallID(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const/16 v0, 0x40

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 165
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 166
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 168
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    .line 170
    iget-object p0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 171
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CallID  must be token@token or token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 162
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NULL!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
