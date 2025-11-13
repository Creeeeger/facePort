.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    return-void
.end method


# virtual methods
.method public final onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1

    const/16 p1, 0x16

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->-$$Nest$fgetmExecutor(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda3;

    const/4 v0, 0x5

    invoke-direct {p2, v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
