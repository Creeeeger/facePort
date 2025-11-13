.class public final synthetic Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/external/CustomTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/external/CustomTile;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/external/CustomTile;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mInitialized:Z

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStartListening()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->refreshDetailInfo()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileServices:Lcom/android/systemui/qs/external/TileServices;

    iget-boolean v0, v0, Lcom/android/systemui/qs/external/TileServices;->mIsBootCompleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mInitialized:Z

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStartListening()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->refreshDetailInfo()V

    :cond_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onUnlockComplete()V

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/external/TileServiceManager;->setWaitingUnlockState(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mStopUnlockAndRun:Lcom/android/systemui/qs/external/CustomTile$2;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->updateDefaultTileAndIcon()V

    return-void

    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/external/CustomTile;I)V

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0xc8

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
