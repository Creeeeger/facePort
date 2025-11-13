.class public Lgov/nist/javax/sip/header/ProxyAuthenticate;
.super Lgov/nist/javax/sip/header/AuthenticationHeader;
.source "ProxyAuthenticate.java"


# static fields
.field private static final serialVersionUID:J = 0x35193379862f44acL


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Proxy-Authenticate"

    .line 57
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method
