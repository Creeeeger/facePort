.class public Lgov/nist/javax/sip/header/CSeq;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "CSeq.java"

# interfaces
.implements Ljavax/sip/header/CSeqHeader;


# static fields
.field private static final serialVersionUID:J = -0x4b0540b6704c4dfeL


# instance fields
.field protected method:Ljava/lang/String;

.field protected seqno:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CSeq"

    .line 67
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CSeq;->encodeBody()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CSeq;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 116
    iget-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->seqno:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/javax/sip/header/CSeq;->method:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 90
    instance-of v0, p1, Ljavax/sip/header/CSeqHeader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Ljavax/sip/header/CSeqHeader;

    .line 92
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CSeq;->getSeqNumber()J

    move-result-wide v2

    invoke-interface {p1}, Ljavax/sip/header/RSeqHeader;->getSeqNumber()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljavax/sip/header/AllowHeader;->getMethod()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lgov/nist/javax/sip/header/CSeq;->method:Ljava/lang/String;

    return-object p0
.end method

.method public getSeqNumber()J
    .locals 2

    .line 179
    iget-object p0, p0, Lgov/nist/javax/sip/header/CSeq;->seqno:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 161
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/javax/sip/header/CSeq;->method:Ljava/lang/String;

    return-void

    .line 158
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "JAIN-SIP Exception, CSeq, setMethod(), the meth parameter is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSeqNumber(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x80000000L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 142
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/javax/sip/header/CSeq;->seqno:Ljava/lang/Long;

    return-void

    .line 138
    :cond_0
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JAIN-SIP Exception, CSeq, setSequenceNumber(), the sequence number parameter is too large : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :cond_1
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JAIN-SIP Exception, CSeq, setSequenceNumber(), the sequence number parameter is < 0 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
