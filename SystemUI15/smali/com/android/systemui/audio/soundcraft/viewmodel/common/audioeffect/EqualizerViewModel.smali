.class public final Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;
.super Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

.field public final routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

.field public final soundAliveManager:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;

.field public final wearableManager:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/audio/soundcraft/model/ModelProvider;Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;->soundAliveManager:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;

    iput-object p4, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;->wearableManager:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;

    iput-object p5, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;->routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->showChooser:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getOptionNames()Landroidx/lifecycle/MutableLiveData;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->equalizerList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getTitle()Landroidx/lifecycle/MutableLiveData;
    .locals 2

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;->context:Landroid/content/Context;

    const v1, 0x7f131292

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final notifyChange()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->equalizerList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;->getOptionNames()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    invoke-virtual {v4}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->selectedOptionName:Landroidx/lifecycle/MutableLiveData;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;->getState()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {p0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onClick()V
    .locals 2

    const-string v0, "SoundCraft.EqualizerViewModel"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->showChooser:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onItemSelected(I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onItemSelected : position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundCraft.EqualizerViewModel"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->equalizerList:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    invoke-virtual {v5}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;->getState()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    check-cast v3, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;->setState(Z)V

    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;->setState(Z)V

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iget-boolean v2, v1, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->readyToUpdateRoutine:Z

    if-eqz v2, :cond_4

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->playingAudioPackageName:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;->routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getRoutineId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->updateRoutine(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_3
    if-nez v4, :cond_6

    iget-object v3, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->createRoutine(Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectOutDeviceType:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;->PHONE:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->getRealIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;->soundAliveManager:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->EQ_INDEX:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->getSettingName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;->setState(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->equalizerList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->setEqualizerList(Ljava/util/List;)V

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;->wearableManager:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;->updateBudsModel(Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;)V

    :cond_6
    :goto_1
    sget-object v1, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectOutDeviceType:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;->PHONE:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    if-ne v0, v2, :cond_7

    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->EID_PHONE_DETAIL_SETTING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->EID_BUDS_DETAIL_SETTING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    :goto_2
    sget-object v2, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->EQUALIZER:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x8

    invoke-static {v1, v0, v2, p1, v3}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->sendEventLog$default(Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;->notifyChange()V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/EqualizerViewModel;->dismiss()V

    return-void
.end method
