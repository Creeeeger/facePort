.class public Lgov/nist/javax/sip/header/ims/SecurityVerify;
.super Lgov/nist/javax/sip/header/ims/SecurityAgree;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;
.implements Ljavax/sip/header/Header;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Security-Verify"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;-><init>(Ljava/lang/String;)V

    return-void
.end method
