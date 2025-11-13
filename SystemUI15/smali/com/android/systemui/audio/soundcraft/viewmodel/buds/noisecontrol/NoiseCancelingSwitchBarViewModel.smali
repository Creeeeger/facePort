.class public final Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;
.super Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

.field public final context:Landroid/content/Context;

.field public final modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/audio/soundcraft/model/ModelProvider;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    return-void
.end method


# virtual methods
.method public final checkWearingOn()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->isWearingL()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->isWearingR()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getOneEarbudNoiseControls()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->isWearingL()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->isWearingR()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    sget-object v1, Lcom/android/systemui/audio/soundcraft/utils/ToastUtil;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/ToastUtil;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f131280

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v2}, Lcom/android/systemui/audio/soundcraft/utils/ToastUtil;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method public final isWearingL()Z
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getNoiseControlsList()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wearing_l"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getState()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public final isWearingR()Z
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getNoiseControlsList()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wearing_r"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getState()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public final notifyChange()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getNoiseControlsList()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    invoke-virtual {v4}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveNoiseControlTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;->isSelected:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getState()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final onClick()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getNoiseControlsList()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;->isSelected:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    invoke-virtual {v6}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveNoiseControlTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    move v4, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    move v4, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getState()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_4
    move v3, v4

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveNoiseControlTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getNoiseControlOffTitle()Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v4, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    invoke-direct {v4, v0, v2}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->updateNoiseControlList(Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 p0, 0x0

    const/16 v0, 0xc

    if-eqz v3, :cond_7

    sget-object v1, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->EID_BUDS_DETAIL_SETTING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    sget-object v3, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->ACTIVE_NOISE_CANCELING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    invoke-static {v1, v2, v3, p0, v0}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->sendEventLog$default(Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;Ljava/lang/String;I)V

    goto :goto_4

    :cond_7
    sget-object v1, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->EID_BUDS_DETAIL_SETTING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    sget-object v3, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->NOISE_CONTROL_OFF:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    invoke-static {v1, v2, v3, p0, v0}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->sendEventLog$default(Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;Ljava/lang/String;I)V

    :goto_4
    return-void
.end method
