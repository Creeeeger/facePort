.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$2;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    return-void
.end method


# virtual methods
.method public final onBluetoothStateChanged(I)V
    .locals 1

    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$2;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    return-void
.end method

.method public final onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$2;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    if-nez p2, :cond_0

    const/16 p2, 0x1d

    if-ne p3, p2, :cond_0

    iget-object p2, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mDevices:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    iget-object p3, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$2;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object p0, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mDevices:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    :cond_2
    return-void
.end method
