.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method public synthetic constructor <init>(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$$ExternalSyntheticLambda1;->f$1:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$$ExternalSyntheticLambda1;->f$0:I

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$$ExternalSyntheticLambda1;->f$1:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-static {v0, p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->$r8$lambda$OkFu7nfXCaVjOR4YS3BxwB_EjeY(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result p0

    return p0
.end method
