.class public final synthetic Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    check-cast p1, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->$r8$lambda$CPOCsyRGV5_yWvYf5F5MUdC-bSo(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    move-result p0

    return p0
.end method
