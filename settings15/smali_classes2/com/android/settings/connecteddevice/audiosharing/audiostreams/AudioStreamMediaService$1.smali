.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$1;
.super Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    return-void
.end method


# virtual methods
.method public final onSourceLost(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onSourceLost(I)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    iget v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->mBroadcastId:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    return-void
.end method

.method public final onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;

    sget p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
