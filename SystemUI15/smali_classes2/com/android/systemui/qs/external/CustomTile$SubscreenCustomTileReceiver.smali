.class public final Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/external/CustomTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/CustomTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    iget-object p2, p2, Lcom/android/systemui/qs/external/CustomTile;->mIntentAction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    iget-object p1, p1, Lcom/android/systemui/qs/external/CustomTile;->mService:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onUnlockComplete()V

    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    iget-object p1, p1, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/external/TileServiceManager;->setWaitingUnlockState(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mStopUnlockAndRun:Lcom/android/systemui/qs/external/CustomTile$2;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
