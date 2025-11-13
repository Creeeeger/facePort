.class public final Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;
.super Lcom/android/systemui/bixby2/controller/volume/VolumeType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final audioManagerWrapper$delegate:Lkotlin/Lazy;

.field private final streamTypeToString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;-><init>()V

    new-instance v0, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController$audioManagerWrapper$2;

    invoke-direct {v0, p1}, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController$audioManagerWrapper$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;->audioManagerWrapper$delegate:Lkotlin/Lazy;

    const-string p1, "Media"

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;->streamTypeToString:Ljava/lang/String;

    return-void
.end method

.method private final getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;->audioManagerWrapper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    return-object p0
.end method


# virtual methods
.method public getStatus()I
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isCurrentDeviceTypeBluetooth()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isCurrentDeviceTypeBluetooth()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "success"

    goto :goto_0

    :cond_0
    const-string p0, "BluetoothNotConnected"

    :goto_0
    return-object p0
.end method

.method public getStreamType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getStreamTypeToString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;->streamTypeToString:Ljava/lang/String;

    return-object p0
.end method
