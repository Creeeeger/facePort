.class public Lgov/nist/javax/sip/header/RSeq;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "RSeq.java"

# interfaces
.implements Ljavax/sip/header/RSeqHeader;


# static fields
.field private static final serialVersionUID:J = 0x79a63e78c9b0a382L


# instance fields
.field protected sequenceNumber:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "RSeq"

    .line 47
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 2

    .line 63
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RSeq;->sequenceNumber:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    if-lez v0, :cond_0

    const-wide v0, 0x80000000L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 75
    iput-wide p1, p0, Lgov/nist/javax/sip/header/RSeq;->sequenceNumber:J

    return-void

    .line 73
    :cond_0
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad seq number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
