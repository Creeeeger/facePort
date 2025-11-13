.class public Lgov/nist/javax/sip/header/InReplyTo;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

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

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/header/CallIdentifier;)V
    .locals 1

    const-string v0, "In-Reply-To"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/InReplyTo;

    iget-object p0, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/CallIdentifier;

    iput-object p0, v0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    :cond_0
    return-object v0
.end method

.method public final encodeBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CallIdentifier;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCallId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CallIdentifier;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setCallId(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/InReplyTo;->callId:Lgov/nist/javax/sip/header/CallIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/text/ParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method
