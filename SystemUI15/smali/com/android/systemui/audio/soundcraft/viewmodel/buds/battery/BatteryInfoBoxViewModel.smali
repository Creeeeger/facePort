.class public final Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;
.super Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final batteryLevelCradle:Landroidx/lifecycle/MutableLiveData;

.field public final batteryLevelLeft:Landroidx/lifecycle/MutableLiveData;

.field public final batteryLevelRight:Landroidx/lifecycle/MutableLiveData;

.field public final bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

.field public final modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/model/ModelProvider;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->batteryLevelLeft:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->batteryLevelRight:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->batteryLevelCradle:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public final notifyChange()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->batteryInfo:Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->getBatteryLeft()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->batteryLevelLeft:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->batteryInfo:Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->getBatteryRight()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->batteryLevelRight:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->batteryInfo:Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->getBatteryCradle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->batteryLevelCradle:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->batteryLevelLeft:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->batteryLevelRight:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/battery/BatteryInfoBoxViewModel;->batteryLevelCradle:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[BatteryL="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", BatteryR="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", BatteryC="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
