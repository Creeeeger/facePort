.class public Lgov/nist/javax/sip/header/WarningList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "WarningList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList<",
        "Lgov/nist/javax/sip/header/Warning;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x13c080768c5c44dfL


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    const-class v0, Lgov/nist/javax/sip/header/Warning;

    const-string v1, "Warning"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 51
    new-instance v0, Lgov/nist/javax/sip/header/WarningList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/WarningList;-><init>()V

    .line 52
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object p0

    return-object p0
.end method
