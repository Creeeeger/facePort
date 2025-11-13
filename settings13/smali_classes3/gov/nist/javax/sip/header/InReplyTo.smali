.class public Lgov/nist/javax/sip/header/InReplyTo;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "InReplyTo.java"

# interfaces
.implements Ljavax/sip/header/CallIdHeader;


# static fields
.field private static final serialVersionUID:J = 0x1759ce6d8e492f1aL


# instance fields
.field protected callId:Lgov/nist/javax/sip/header/CallIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "In-Reply-To"

    .line 56
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 104
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/InReplyTo;

    .line 105
    iget-object p0, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/CallIdentifier;

    iput-object p0, v0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CallIdentifier;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CallIdentifier;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 77
    :try_start_0
    new-instance v0, Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 79
    new-instance p1, Ljava/text/ParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method
