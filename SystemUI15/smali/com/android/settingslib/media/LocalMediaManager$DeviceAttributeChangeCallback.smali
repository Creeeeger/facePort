.class Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/media/LocalMediaManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/media/LocalMediaManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceAttributesChanged()V
    .locals 3

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/settingslib/media/BluetoothMediaDevice;

    iget-object v0, v0, Lcom/android/settingslib/media/BluetoothMediaDevice;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/settingslib/media/MediaDevice;->mState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getCallbacks()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onRequestFailed(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getCallbacks()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    invoke-interface {v0}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onDeviceAttributesChanged()V

    goto :goto_1

    :cond_1
    return-void
.end method
