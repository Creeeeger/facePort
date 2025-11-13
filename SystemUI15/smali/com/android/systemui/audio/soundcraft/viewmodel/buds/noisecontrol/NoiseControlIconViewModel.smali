.class public abstract Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;
.super Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final background:Landroidx/lifecycle/MutableLiveData;

.field public final iconColor:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->background:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->iconColor:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public abstract checkWearingOn()Z
.end method

.method public getBluetoothDeviceManager()Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getDisplayItemName()Ljava/lang/String;
.end method

.method public abstract getDrawableOff()I
.end method

.method public abstract getDrawableOn()I
.end method

.method public abstract getItemName()Ljava/lang/String;
.end method

.method public getModelProvider()Lcom/android/systemui/audio/soundcraft/model/ModelProvider;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getSALoggingEvent()Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;
.end method

.method public final isWearingBoth$1()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->isWearingL$1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->isWearingR$1()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->getModelProvider()Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getOneEarbudNoiseControls()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->isWearingL$1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->isWearingR$1()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isWearingL$1()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->getModelProvider()Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    move-result-object p0

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

.method public final isWearingR$1()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->getModelProvider()Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    move-result-object p0

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
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;->name:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->getDisplayItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->getModelProvider()Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getNoiseControlsList()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getState()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->background:Landroidx/lifecycle/MutableLiveData;

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->iconColor:Landroidx/lifecycle/MutableLiveData;

    iget-object v5, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;->icon:Landroidx/lifecycle/MutableLiveData;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->getDrawableOn()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const v2, 0x7f060947

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const v2, 0x7f081273

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->getDrawableOff()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const v2, 0x7f060949

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const v2, 0x7f081274

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;->isSelected:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getState()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onClick()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->checkWearingOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->getModelProvider()Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getNoiseControlsList()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getState()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->EID_BUDS_DETAIL_SETTING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->getSALoggingEvent()Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    move-result-object v3

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v5, v4}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->sendEventLog$default(Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->getBluetoothDeviceManager()Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->updateNoiseControlList(Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;)V

    :cond_1
    return-void
.end method
