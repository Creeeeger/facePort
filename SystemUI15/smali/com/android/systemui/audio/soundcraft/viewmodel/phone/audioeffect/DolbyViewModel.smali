.class public final Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;
.super Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

.field public final routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

.field public final soundAliveManager:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/audio/soundcraft/model/ModelProvider;Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;->soundAliveManager:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;

    iput-object p4, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;->routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

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

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyList:Ljava/util/List;

    if-eqz p0, :cond_0

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

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getTitle()Landroidx/lifecycle/MutableLiveData;
    .locals 2

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;->context:Landroid/content/Context;

    const v1, 0x7f131289

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final notifyChange()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;->getOptionNames()Landroidx/lifecycle/MutableLiveData;

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

    check-cast v4, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;

    iget-object v4, v4, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;->name:Ljava/lang/String;

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

    check-cast v3, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;

    iget-boolean v3, v3, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;->state:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;->name:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final onClick()V
    .locals 2

    const-string v0, "SoundCraft.DolbyViewModel"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->showChooser:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onItemSelected(I)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onItemSelected : position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundCraft.DolbyViewModel"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object v3, v2, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyList:Ljava/util/List;

    if-eqz v3, :cond_a

    sget-object v4, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Lkotlin/collections/AbstractList;

    new-instance v6, Lkotlin/collections/AbstractList$IteratorImpl;

    invoke-direct {v6, v4}, Lkotlin/collections/AbstractList$IteratorImpl;-><init>(Lkotlin/collections/AbstractList;)V

    :goto_0
    invoke-virtual {v6}, Lkotlin/collections/AbstractList$IteratorImpl;->hasNext()Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v6}, Lkotlin/collections/AbstractList$IteratorImpl;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;

    new-instance v8, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;

    iget-object v9, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;->context:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->getNameResId()I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4, v7}, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v5, v2, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyOldList:Ljava/util/List;

    move-object v2, v3

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;

    iget-boolean v6, v6, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;->state:Z

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    check-cast v4, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;

    const/4 v2, 0x1

    if-eqz v4, :cond_6

    if-nez p1, :cond_5

    iget-object v6, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object v6, v6, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyOldList:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;

    iget-object v9, v9, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;->name:Ljava/lang/String;

    iget-object v10, v4, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;->name:Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_4
    move-object v8, v5

    :goto_2
    check-cast v8, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;

    if-eqz v8, :cond_5

    iput-boolean v2, v8, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;->state:Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "previous dolby="

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v8, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-boolean v7, v4, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;->state:Z

    :cond_6
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;

    iput-boolean v2, v1, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;->state:Z

    if-eqz p1, :cond_7

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->dolbyOldList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;

    iput-boolean v2, v1, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;->state:Z

    :cond_7
    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iget-boolean v2, v1, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->readyToUpdateRoutine:Z

    if-eqz v2, :cond_9

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->playingAudioPackageName:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;->routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getRoutineId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v4, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->updateRoutine(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_8
    if-nez v5, :cond_a

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->createRoutine(Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    sget-object v0, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->getRealIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;->soundAliveManager:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->DOLBY_INDEX:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    invoke-virtual {v2}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->getSettingName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;->setState(ILjava/lang/String;)V

    :cond_a
    :goto_3
    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;

    sget-object v1, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->EID_PHONE_DETAIL_SETTING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->DOLBY_ATMOS:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->sendEventLog$default(Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;->notifyChange()V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/phone/audioeffect/DolbyViewModel;->dismiss()V

    return-void
.end method
