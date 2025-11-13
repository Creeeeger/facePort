.class public Lgov/nist/javax/sip/header/MinExpires;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "MinExpires.java"


# static fields
.field private static final serialVersionUID:J = 0x612b7da8cbe173b9L


# instance fields
.field protected expires:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Min-Expires"

    .line 59
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 0

    .line 67
    iget p0, p0, Lgov/nist/javax/sip/header/MinExpires;->expires:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setExpires(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 96
    iput p1, p0, Lgov/nist/javax/sip/header/MinExpires;->expires:I

    return-void

    .line 95
    :cond_0
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad argument "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
