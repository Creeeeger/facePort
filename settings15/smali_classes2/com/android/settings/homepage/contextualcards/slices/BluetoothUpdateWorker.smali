.class public Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field public static sLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# instance fields
.field public final mLoadBtManagerHandler:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->-$$Nest$smgetInstance(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->mLoadBtManagerHandler:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    sget-object p2, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->sLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p2, :cond_0

    iput-object p0, p1, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->mWorker:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;

    iget-object p0, p1, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->mLoadBtManagerTask:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public final onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public final onBluetoothStateChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public final onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public final onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public final onSlicePinned()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->mLoadBtManagerHandler:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    sget-object v1, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->sHandler:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->getLocalBtManager()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    return-void
.end method

.method public final onSliceUnpinned()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->mLoadBtManagerHandler:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    sget-object v1, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->sHandler:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->getLocalBtManager()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    return-void
.end method
