.class public final Lcom/android/systemui/qs/external/TileServices$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/external/TileServices;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileServices;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices$3;->this$0:Lcom/android/systemui/qs/external/TileServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestTileServiceListeningState(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices$3;->this$0:Lcom/android/systemui/qs/external/TileServices;

    iget-boolean v1, v0, Lcom/android/systemui/qs/external/TileServices;->mIsDexStandAloneMode:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/qs/external/TileServices;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/external/CustomTileInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/qs/external/CustomTileInterface;->isSecActiveTile()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "requestListening is ignored in standaloneMode - "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TileServices"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/external/TileServices$3;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
