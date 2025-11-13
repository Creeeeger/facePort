.class public Lgov/nist/javax/sip/header/TimeStamp;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field private static final serialVersionUID:J = -0x3381440765137350L


# instance fields
.field protected delay:I

.field protected delayFloat:F

.field protected timeStamp:J

.field private timeStampFloat:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Timestamp"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    return-void
.end method


# virtual methods
.method public final encodeBody()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-wide v1, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    const/high16 v4, -0x40800000    # -1.0f

    const-string v5, ""

    if-nez v3, :cond_0

    iget v6, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    cmpl-float v6, v6, v4

    if-nez v6, :cond_0

    move-object v1, v5

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget v2, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iget v6, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    cmpl-float v4, v6, v4

    if-nez v4, :cond_2

    move-object p0, v5

    goto :goto_1

    :cond_2
    if-eq v2, v3, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget p0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v5

    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setDelay(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    const-string p1, "JAIN-SIP Exception, TimeStamp, setDelay(), the delay parameter is <0"

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    const/4 p1, -0x1

    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    return-void
.end method

.method public final setTime(J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    return-void

    :cond_0
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    const-string p1, "Illegal timestamp"

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setTimeStamp(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    return-void

    :cond_0
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    const-string p1, "JAIN-SIP Exception, TimeStamp, setTimeStamp(), the timeStamp parameter is <0"

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
