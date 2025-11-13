.class public Lgov/nist/javax/sip/header/Reason;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "Reason.java"


# static fields
.field private static final serialVersionUID:J = -0x7b8f262d9617f9acL


# instance fields
.field public final CAUSE:Ljava/lang/String;

.field public final TEXT:Ljava/lang/String;

.field protected protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Reason"

    .line 125
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    const-string v0, "text"

    .line 62
    iput-object v0, p0, Lgov/nist/javax/sip/header/Reason;->TEXT:Ljava/lang/String;

    const-string v0, "cause"

    .line 63
    iput-object v0, p0, Lgov/nist/javax/sip/header/Reason;->CAUSE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    iget-object v1, p0, Lgov/nist/javax/sip/header/Reason;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "Reason"

    return-object p0
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lgov/nist/javax/sip/header/Reason;->protocol:Ljava/lang/String;

    return-void
.end method
