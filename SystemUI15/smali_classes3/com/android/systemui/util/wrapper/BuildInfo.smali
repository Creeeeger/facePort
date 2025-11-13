.class public Lcom/android/systemui/util/wrapper/BuildInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDebuggable()Z
    .locals 0

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    return p0
.end method
