.class public final Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;
.super Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

.field public final modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

.field public final showActiveNoiseCanceling:Landroidx/lifecycle/MutableLiveData;

.field public final showActiveNoiseCancelingSeekBar:Landroidx/lifecycle/MutableLiveData;

.field public final showAdaptive:Landroidx/lifecycle/MutableLiveData;

.field public final showAmbientSound:Landroidx/lifecycle/MutableLiveData;

.field public final showAmbientVolumeSeekBar:Landroidx/lifecycle/MutableLiveData;

.field public final showNoiseControlOff:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/audio/soundcraft/model/ModelProvider;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showNoiseControlOff:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAmbientSound:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAdaptive:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showActiveNoiseCanceling:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showActiveNoiseCancelingSeekBar:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAmbientVolumeSeekBar:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final notifyChange()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getNoiseControlsList()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getNoiseCancelingLevel()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getAmbientSoundVolume()Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "notifyChange : modelProvider.budsInfo.noiseControlsList="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", noiseCancelingLevel: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ambientSoundVolume: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoundCraft.NoiseControlEffectBoxViewModel"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getNoiseControlsList()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAmbientSound:Landroidx/lifecycle/MutableLiveData;

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showActiveNoiseCanceling:Landroidx/lifecycle/MutableLiveData;

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v6, v5

    move v7, v6

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    invoke-virtual {v8}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    invoke-virtual {v10}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getNoiseControlOffTitle()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v8, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showNoiseControlOff:Landroidx/lifecycle/MutableLiveData;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveNoiseControlTitle()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getState()Z

    move-result v6

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getAmbientSoundTitle()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getState()Z

    move-result v7

    goto :goto_0

    :cond_3
    invoke-virtual {v10}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getAdaptiveTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAdaptive:Landroidx/lifecycle/MutableLiveData;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v6, v5

    move v7, v6

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showActiveNoiseCancelingSeekBar:Landroidx/lifecycle/MutableLiveData;

    iget-object v8, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v8}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getConnectionState()Ljava/lang/Boolean;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, 0x1

    if-eqz v8, :cond_6

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getNoiseCancelingLevel()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v6, :cond_6

    move v4, v10

    goto :goto_1

    :cond_6
    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAmbientVolumeSeekBar:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v2}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getConnectionState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getAmbientSoundVolume()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v7, :cond_7

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getHearingEnhancement()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v5, v10

    :cond_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showNoiseControlOff:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAmbientSound:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAdaptive:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showActiveNoiseCanceling:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showActiveNoiseCancelingSeekBar:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAmbientVolumeSeekBar:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[showNoiseControlOff="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", showAmbientSound="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", showAdaptive="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", showActiveNoiseCanceling="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", showActiveNoiseCancelingSeekBar="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", showAmbientVolumeSeekBar="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
