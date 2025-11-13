.class public final Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final audioCastProfileListener:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$audioCastProfileListener$1;

.field public service:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$audioCastProfileListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$audioCastProfileListener$1;-><init>(Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;)V

    invoke-static {p1, v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getProxy(Landroid/content/Context;Lcom/samsung/android/bluetooth/SemBluetoothCastProfile$BluetoothCastProfileListener;)Z

    return-void
.end method


# virtual methods
.method public final getCastDeviceConnectedName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->service:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method
