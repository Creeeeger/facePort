.class public Lgov/nist/javax/sip/header/TimeStamp;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "TimeStamp.java"


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

    .line 71
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 56
    iput-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    const/high16 v0, -0x40800000    # -1.0f

    .line 63
    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    .line 65
    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    return-void
.end method

.method private getDelayAsString()Ljava/lang/String;
    .locals 4

    .line 85
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-eq v0, v1, :cond_1

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_1
    iget p0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTimeStampAsString()Ljava/lang/String;
    .locals 6

    .line 76
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v4, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 81
    :cond_1
    iget p0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 4

    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    invoke-direct {p0}, Lgov/nist/javax/sip/header/TimeStamp;->getTimeStampAsString()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-direct {p0}, Lgov/nist/javax/sip/header/TimeStamp;->getDelayAsString()Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 104
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " "

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setDelay(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    const-string p1, "JAIN-SIP Exception, TimeStamp, setDelay(), the delay parameter is <0"

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 167
    :cond_1
    :goto_0
    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    const/4 p1, -0x1

    .line 168
    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    return-void
.end method

.method public setTime(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 183
    iput-wide p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    const/high16 p1, -0x40800000    # -1.0f

    .line 184
    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    return-void

    .line 182
    :cond_0
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    const-string p1, "Illegal timestamp"

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTimeStamp(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, -0x1

    .line 135
    iput-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    .line 136
    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    return-void

    .line 132
    :cond_0
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    const-string p1, "JAIN-SIP Exception, TimeStamp, setTimeStamp(), the timeStamp parameter is <0"

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
