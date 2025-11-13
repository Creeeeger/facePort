.class public final Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mClockCallbacks:Ljava/util/List;

.field public mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockCallbacks:Ljava/util/List;

    return-void
.end method
