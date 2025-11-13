.class public Lgov/nist/javax/sip/header/MimeVersion;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "MimeVersion.java"


# static fields
.field private static final serialVersionUID:J = -0x6e59b8a2cb581754L


# instance fields
.field protected majorVersion:I

.field protected minorVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "MIME-Version"

    .line 66
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lgov/nist/javax/sip/header/MimeVersion;->majorVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lgov/nist/javax/sip/header/MimeVersion;->minorVersion:I

    .line 126
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setMajorVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 116
    iput p1, p0, Lgov/nist/javax/sip/header/MimeVersion;->majorVersion:I

    return-void

    .line 113
    :cond_0
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    const-string p1, "JAIN-SIP Exception, MimeVersion, setMajorVersion(), the majorVersion parameter is null"

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinorVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 100
    iput p1, p0, Lgov/nist/javax/sip/header/MimeVersion;->minorVersion:I

    return-void

    .line 97
    :cond_0
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    const-string p1, "JAIN-SIP Exception, MimeVersion, setMinorVersion(), the minorVersion parameter is null"

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
