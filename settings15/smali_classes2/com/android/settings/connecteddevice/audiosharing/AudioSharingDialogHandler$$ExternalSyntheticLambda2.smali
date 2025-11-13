.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mLocalBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->hasConnectedBroadcastSource(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Z

    move-result p0

    return p0
.end method
