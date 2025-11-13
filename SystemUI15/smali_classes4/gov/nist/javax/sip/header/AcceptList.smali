.class public Lgov/nist/javax/sip/header/AcceptList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList<",
        "Lgov/nist/javax/sip/header/Accept;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x18fdc630b7aed5dfL


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Lgov/nist/javax/sip/header/Accept;

    const-string v1, "Accept"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lgov/nist/javax/sip/header/AcceptList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptList;-><init>()V

    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->clonehlist(Ljava/util/List;)V

    return-object v0
.end method
