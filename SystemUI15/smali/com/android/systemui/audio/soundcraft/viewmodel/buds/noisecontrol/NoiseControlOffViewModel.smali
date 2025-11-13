.class public final Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlOffViewModel;
.super Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

.field public final context:Landroid/content/Context;

.field public final modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/audio/soundcraft/model/ModelProvider;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlOffViewModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlOffViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlOffViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    return-void
.end method


# virtual methods
.method public final checkWearingOn()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getBluetoothDeviceManager()Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlOffViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    return-object p0
.end method

.method public final getDisplayItemName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlOffViewModel;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f13127f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDrawableOff()I
    .locals 0

    const p0, 0x7f08126b

    return p0
.end method

.method public final getDrawableOn()I
    .locals 0

    const p0, 0x7f08126a

    return p0
.end method

.method public final getItemName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlOffViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getNoiseControlOffTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getModelProvider()Lcom/android/systemui/audio/soundcraft/model/ModelProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlOffViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    return-object p0
.end method

.method public final getSALoggingEvent()Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;
    .locals 0

    sget-object p0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->NOISE_CONTROL_OFF:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    return-object p0
.end method
