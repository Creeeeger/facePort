.class Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;
.super Landroid/media/IVolumeController$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mWorker:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;

    invoke-direct {p0}, Landroid/media/IVolumeController$Stub;-><init>()V

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;->mWorker:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "[DSU]VolumeController "

    const-string v0, "dismiss volume panel"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public displayCsdWarning(II)V
    .locals 0

    return-void
.end method

.method public displaySafeVolumeWarning(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public displayVolumeLimiterToast()V
    .locals 0

    return-void
.end method

.method public masterMuteChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setA11yMode(I)V
    .locals 2

    const-string/jumbo v0, "setA11yMode"

    const-string v1, "[DSU]VolumeController "

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;->mWorker:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;->mWorker:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;->mWorker:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;->mWorker:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public volumeChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[DSU]VolumeController "

    const-string v1, "Volume changed in VC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;->mWorker:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;->mWorker:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
