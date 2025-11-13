.class public final Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;
.super Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;->this$0:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCoverAttachStateChanged(Z)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->DEBUG:Z

    const-string v1, "EdgeLightingCoverManager"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCoverAttachStateChanged : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;->this$0:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v2, :cond_1

    const-string p0, "onCoverAttachStateChanged : coverManager is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p1, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverType:I

    if-eqz v0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateCoverType : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverType:I

    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final onCoverSwitchStateChanged(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCoverSwitchStateChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgeLightingCoverManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;->this$0:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSwitchState:Z

    iget-object p0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/EdgeLightingService$7;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->notifyScreenOff()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->notifyScreenOn()V

    goto :goto_0

    :cond_3
    return-void
.end method
