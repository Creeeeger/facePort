.class public final Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;
.super Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public currentPosition:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

.field public final modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

.field public final routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

.field public final wearableManager:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/audio/soundcraft/model/ModelProvider;Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->wearableManager:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;

    iput-object p4, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    sget-object p1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->OFF:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->currentPosition:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

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

.method public final notifyChange()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->spatialAudio:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->spatialAudio:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->headTracking:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_2
    const-string v0, "spatialAudio="

    const-string v3, ", headTracking="

    const-string v4, "SoundCraft.SpatialAudioViewModel"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    sget-object v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->SPATIAL_AND_HEAD_TRACKING:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    sget-object v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->SPATIAL_ONLY:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->OFF:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    :goto_2
    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->currentPosition:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_5
    if-nez v2, :cond_6

    sget-object v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->OFF:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->currentPosition:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->context:Landroid/content/Context;

    const v2, 0x7f131298

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->selectedOptionName:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->currentPosition:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->getTitleResId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onClick()V
    .locals 6

    const-string v0, "onClick"

    const-string v1, "SoundCraft.SpatialAudioViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->values()[Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v2}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getHeadTracking()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->SPATIAL_AND_HEAD_TRACKING:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->optionNames:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    iget-object v5, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->context:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->getTitleResId()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "options="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->showChooser:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onItemSelected(I)V
    .locals 5

    const-string v0, "onItemSelected : position="

    const-string v1, "SoundCraft.SpatialAudioViewModel"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->OFF:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->setSpatialAudio(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->setHeadTracking(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->SPATIAL_ONLY:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->getPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->setSpatialAudio(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->setHeadTracking(Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->SPATIAL_AND_HEAD_TRACKING:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->getPosition()I

    move-result v0

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->setSpatialAudio(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->setHeadTracking(Z)V

    :cond_2
    :goto_0
    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;

    sget-object v1, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->EID_BUDS_DETAIL_SETTING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->SPATIAL_AUDIO:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->sendEventLog$default(Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iget-boolean v2, v1, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->readyToUpdateRoutine:Z

    if-eqz v2, :cond_4

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->playingAudioPackageName:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getRoutineId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->updateRoutine(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_5

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->createRoutine(Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->wearableManager:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;->updateBudsModel(Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->selectedOptionName:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->context:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->getTitleResId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->dismiss()V

    return-void
.end method

.method public final setHeadTracking(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getHeadTracking()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->setHeadTracking(Ljava/lang/Boolean;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->headTracking:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->headTracking:Ljava/lang/Boolean;

    :cond_1
    return-void
.end method

.method public final setSpatialAudio(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->setSpatialAudio(Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->spatialAudio:Ljava/lang/Boolean;

    return-void
.end method
