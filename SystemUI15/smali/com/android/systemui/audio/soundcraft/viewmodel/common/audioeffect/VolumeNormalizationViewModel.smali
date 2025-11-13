.class public final Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/VolumeNormalizationViewModel;
.super Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;
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

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/VolumeNormalizationViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/VolumeNormalizationViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/audio/soundcraft/model/ModelProvider;Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/VolumeNormalizationViewModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/VolumeNormalizationViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/VolumeNormalizationViewModel;->soundAliveManager:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;

    iput-object p4, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/VolumeNormalizationViewModel;->wearableManager:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;

    iput-object p5, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/VolumeNormalizationViewModel;->routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    return-void
.end method


# virtual methods
.method public final notifyChange()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;->name:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/VolumeNormalizationViewModel;->context:Landroid/content/Context;

    const v2, 0x7f13129a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;->isSelected:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/VolumeNormalizationViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->volumeNormalization:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onClick()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/VolumeNormalizationViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->volumeNormalization:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->volumeNormalization:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;->isSelected:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iget-boolean v3, v2, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->readyToUpdateRoutine:Z

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->playingAudioPackageName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/VolumeNormalizationViewModel;->routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    invoke-virtual {v3, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getRoutineId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->updateRoutine(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->createRoutine(Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectOutDeviceType:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    sget-object v3, Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;->PHONE:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/VolumeNormalizationViewModel;->soundAliveManager:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->VOLUME_NORMALIZATION_EFFECT:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->getSettingName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;->setState(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->setVolumeNormalization(Ljava/lang/Boolean;)V

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/VolumeNormalizationViewModel;->wearableManager:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;

    invoke-virtual {v3, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;->updateBudsModel(Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;)V

    :cond_3
    :goto_1
    sget-object v2, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectOutDeviceType:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    sget-object v3, Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;->PHONE:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    if-ne v0, v3, :cond_4

    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->EID_PHONE_DETAIL_SETTING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->EID_BUDS_DETAIL_SETTING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    :goto_2
    sget-object v3, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->LOUDNESS_NORMALIZATION:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->ON:Ljava/lang/String;

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->OFF:Ljava/lang/String;

    :goto_3
    const/16 v4, 0x8

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->sendEventLog$default(Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;Ljava/lang/String;I)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/VolumeNormalizationViewModel;->notifyChange()V

    return-void
.end method
