.class public final synthetic Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;I)V
    .locals 0

    iput p2, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    check-cast p1, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    const-string v1, "getConnectionState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result p0

    :goto_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    const-string v1, "getConnectionState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    const/4 v0, 0x0

    if-nez p0, :cond_2

    move p0, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result p0

    :goto_1
    const/4 p1, 0x2

    if-ne p0, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
