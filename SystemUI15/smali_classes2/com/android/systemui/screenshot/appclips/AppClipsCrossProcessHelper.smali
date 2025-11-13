.class public final Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mProxyConnector:Lcom/android/internal/infra/ServiceConnector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/android/internal/infra/ServiceConnector$Impl;

    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/android/systemui/screenshot/appclips/AppClipsScreenshotHelperService;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v5, Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const v3, 0x40000021    # 2.0000079f

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    iput-object v6, p0, Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;->mProxyConnector:Lcom/android/internal/infra/ServiceConnector;

    iput-object p2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    return-void
.end method
