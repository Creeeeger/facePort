.class public Lgov/nist/javax/sip/header/SIPDateHeader;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "SIPDateHeader.java"


# static fields
.field private static final serialVersionUID:J = 0x1811114988a6e228L


# instance fields
.field protected date:Lgov/nist/javax/sip/header/SIPDate;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Date"

    .line 57
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 99
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPDateHeader;

    .line 100
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPDate;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/SIPDate;

    iput-object p0, v0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPDate;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setDate(Ljava/util/Calendar;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 83
    new-instance v0, Lgov/nist/javax/sip/header/SIPDate;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/header/SIPDate;-><init>(J)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    :cond_0
    return-void
.end method
