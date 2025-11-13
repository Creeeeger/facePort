.class public Lgov/nist/javax/sip/header/ContentEncoding;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ContentEncoding.java"


# static fields
.field private static final serialVersionUID:J = 0x1c3b09a8a2de85c9L


# instance fields
.field protected contentEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Content-Encoding"

    .line 97
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 0

    .line 114
    iget-object p0, p0, Lgov/nist/javax/sip/header/ContentEncoding;->contentEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 133
    iput-object p1, p0, Lgov/nist/javax/sip/header/ContentEncoding;->contentEncoding:Ljava/lang/String;

    return-void

    .line 131
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "JAIN-SIP Exception,  encoding is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
