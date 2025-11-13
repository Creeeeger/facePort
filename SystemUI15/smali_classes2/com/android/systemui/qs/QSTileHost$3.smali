.class public final Lcom/android/systemui/qs/QSTileHost$3;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$3;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdateQuickPanelButtons()V
    .locals 8

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost$3;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const-string v2, ","

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mBrightnessVolumeBarTileList:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mBrightnessVolumeBarTileList:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1310fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mBrightnessVolumeBarTileList:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/qs/QSTileHost;->addTile(ILjava/lang/String;)V

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/qs/QSTileHost;->addTile(ILjava/lang/String;)V

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->refreshTileList()V

    goto :goto_6

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f13105a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mBrightnessVolumeBarTileList:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_a

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "custom("

    if-eqz v5, :cond_7

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v4}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    invoke-virtual {p0, v5, v1, v6}, Lcom/android/systemui/qs/QSTileHost;->setTileAdded(Landroid/content/ComponentName;ZI)V

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda4;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v4, v7}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v4}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    invoke-virtual {p0, v5, v1, v6}, Lcom/android/systemui/qs/QSTileHost;->setTileAdded(Landroid/content/ComponentName;ZI)V

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda4;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v4, v7}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    :goto_6
    return-void
.end method

.method public final onUpdateQuickPanelItems()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost$3;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getQuickPanelItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpdateQuickPanelItems : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSTileHost"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mComponentNameTable:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->makeCustomTileComponentNameTable()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->updateHiddenBarTilesListByKnox()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->refreshTileList()V

    return-void
.end method

.method public final onUpdateQuickPanelUnavailableButtons()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost$3;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getQuickPanelUnavailableButtons()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxUnavailableQsTileList:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpdateQuickPanelItems : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mKnoxUnavailableQsTileList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSTileHost"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mComponentNameTable:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->makeCustomTileComponentNameTable()V

    :cond_0
    return-void
.end method
