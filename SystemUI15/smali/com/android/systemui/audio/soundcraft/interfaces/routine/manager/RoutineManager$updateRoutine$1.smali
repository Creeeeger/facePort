.class final Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $routineId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$routineId:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectOutDeviceType:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;->PHONE:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;->buildPhoneActions(Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->settings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->budsPluginPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;->buildBudsActions(Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineConditionBuilder;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineConditionBuilder;

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    iget-object v3, v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$packageName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v5, v2, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectOutDeviceType:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    sget-object v6, Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;->BUDS:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_2

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v2}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getConnectionState()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v7

    :goto_1
    if-eqz v2, :cond_2

    move v7, v8

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v7}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineConditionBuilder;->buildConditions(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    iget-object v4, v4, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->tag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getService()Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    iget-object v4, v4, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    check-cast v3, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->filterSupportedTags(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    iget-object v6, v6, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->tag:Ljava/lang/String;

    move-object v7, v2

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v8

    const/4 v5, -0x1

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    invoke-virtual {v4}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getService()Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    iget-object v7, v6, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getCurrentSystemRoutineType()Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    move-result-object v6

    iget-object v9, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$routineId:Ljava/lang/String;

    check-cast v4, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    const-string/jumbo v11, "updateRoutineByRoutineId: routineId:"

    const-string v12, ", conditions:"

    invoke-static {v11, v9, v12}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", actions:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "AutomationServiceImpl@SDK"

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->Companion:Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;

    invoke-static {v10, v7, v6}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;->access$isValidRequest(Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;Landroid/content/Context;Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;)Z

    move-result v10

    if-nez v10, :cond_6

    goto/16 :goto_6

    :cond_6
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    invoke-static {v11}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->createContentValue(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    invoke-static {v11}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->createContentValue(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v6}, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v4, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->contentHandler:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ContentHandler;

    check-cast v4, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "content://com.samsung.android.app.routines.routineinfoprovider/core_service/condition_status/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v4, v6, v5, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://com.samsung.android.app.routines.routineinfoprovider/core_service/action_status/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v1, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int v5, v1, v4

    if-lez v5, :cond_9

    invoke-static {v7, v3, v9}, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;->notifyChange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$routineId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$packageName:Ljava/lang/String;

    const-string/jumbo v4, "updateRoutine : routineId="

    const-string v6, ", packageName="

    const-string v7, ", supportedTags="

    invoke-static {v4, v1, v6, v3, v7}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", actions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", updateRoutine result="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SoundCraft.RoutineManager"

    invoke-static {v5, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iput-boolean v8, p0, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->routineExistOnPlugin:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
