.class public Lgov/nist/javax/sip/header/extensions/Replaces;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "Replaces.java"


# static fields
.field private static final serialVersionUID:J = 0x79a63e78c9b0a324L


# instance fields
.field public callId:Ljava/lang/String;

.field public callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Replaces"

    .line 43
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 2

    .line 60
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->callId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->callId:Ljava/lang/String;

    return-void
.end method
