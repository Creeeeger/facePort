.class public Lgov/nist/javax/sip/header/WWWAuthenticate;
.super Lgov/nist/javax/sip/header/AuthenticationHeader;
.source "WWWAuthenticate.java"


# static fields
.field private static final serialVersionUID:J = 0x199e8450a455c1eL


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WWW-Authenticate"

    .line 59
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method
