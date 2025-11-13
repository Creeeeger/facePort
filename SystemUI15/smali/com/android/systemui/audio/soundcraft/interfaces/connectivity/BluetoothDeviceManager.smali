.class public final Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public batteryInfoCallback:Lkotlin/jvm/functions/Function1;

.field public final bluetoothMetadataBroadcastReceiver:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;

.field public final context:Landroid/content/Context;

.field public currentBatteryInfo:Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

.field public currentNoiseControlList:Ljava/util/Set;

.field public isChanged:Z

.field public isRegister:Z

.field public noiseControlCallback:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->context:Landroid/content/Context;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->currentBatteryInfo:Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->currentNoiseControlList:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isChanged:Z

    new-instance p1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;-><init>(Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->bluetoothMetadataBroadcastReceiver:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;

    return-void
.end method

.method public static getBatteryInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;
    .locals 9

    if-eqz p0, :cond_0

    new-instance v0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->BATTERY_LEFT:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->getBattery(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->BATTERY_RIGHT:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    invoke-static {p0, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->getBattery(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->BATTERY_CRADLE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    invoke-static {p0, v3}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->getBattery(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public static isBuds3OrNextModel(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isBudsSeries(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->getDeviceId(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    const/16 v0, 0x14d

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public final getActiveNoiseControlTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f13127d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAdaptiveTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f131279

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAmbientSoundTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f13127a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNoiseControlList(Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;
    .locals 7

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->ANC:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    invoke-static {p1, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->isSupported(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {p1, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->getState(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;)Z

    move-result v1

    new-instance v2, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveNoiseControlTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->AMBIENT:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    invoke-static {p1, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->isSupported(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->getState(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;)Z

    move-result v2

    new-instance v4, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getAmbientSoundTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    sget-object v4, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->ADAPTIVE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    invoke-static {p1, v4}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->isSupported(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p1, v4}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->getState(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;)Z

    move-result v4

    new-instance v5, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getAdaptiveTitle()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    if-eqz v5, :cond_4

    new-instance v5, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getNoiseControlOffTitle()Ljava/lang/String;

    move-result-object p0

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-nez v4, :cond_3

    move v3, v6

    :cond_3
    invoke-direct {v5, p0, v3}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance p0, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->WEARING_L:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    invoke-static {p1, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->getState(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;)Z

    move-result v1

    const-string/jumbo v2, "wearing_l"

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->WEARING_R:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    invoke-static {p1, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->getState(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;)Z

    move-result p1

    const-string/jumbo v1, "wearing_r"

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getNoiseControlOffTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f131282

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateNoiseControlList(Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveNoiseControlTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->ANC:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    invoke-static {v0, p1, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->setState(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getAmbientSoundTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->AMBIENT:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    invoke-static {v0, p1, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->setState(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getAdaptiveTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->ADAPTIVE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    invoke-static {v0, p1, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->setState(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getNoiseControlOffTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->ANC:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->setState(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;Z)V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->AMBIENT:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->setState(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;Z)V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->ADAPTIVE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->setState(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;Z)V

    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isChanged:Z

    :cond_4
    return-void
.end method
