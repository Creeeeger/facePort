.class public Lgov/nist/javax/sip/header/ProxyAuthenticate;
.super Lgov/nist/javax/sip/header/AuthenticationHeader;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field private static final serialVersionUID:J = 0x35193379862f44acL


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Proxy-Authenticate"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method
