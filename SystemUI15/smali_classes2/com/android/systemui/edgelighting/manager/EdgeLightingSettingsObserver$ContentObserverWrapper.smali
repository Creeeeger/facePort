.class public final Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mObservers:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;

    invoke-interface {v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper$1;-><init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;->onChange()V

    goto :goto_0

    :cond_1
    return-void
.end method
