.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsCategoryController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsCategoryController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsCategoryController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsCategoryController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsCategoryController;

    return-void
.end method


# virtual methods
.method public final onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    const/16 p1, 0x16

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsCategoryController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsCategoryController;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsCategoryController;->updateVisibility()V

    :cond_0
    return-void
.end method
