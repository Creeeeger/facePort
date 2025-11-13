.class final Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;
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

.field final synthetic this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;Ljava/lang/String;Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;->$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;->$effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;->$packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineConditionBuilder;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineConditionBuilder;

    iget-object v3, v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v5, v4, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectOutDeviceType:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    sget-object v6, Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;->BUDS:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_1

    iget-object v5, v4, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v5}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getConnectionState()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v8

    :goto_0
    if-eqz v5, :cond_1

    move v8, v7

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1, v8}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineConditionBuilder;->buildConditions(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    iget-object v5, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;->$effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object v6, v3, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v6, v6, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectOutDeviceType:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    sget-object v8, Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;->PHONE:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    if-ne v6, v8, :cond_2

    sget-object v3, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;->buildPhoneActions(Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;)Ljava/util/HashMap;

    move-result-object v3

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;

    iget-object v3, v3, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->settings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

    iget-object v3, v3, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->budsPluginPackageName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v3}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineActionBuilder;->buildBudsActions(Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    iget-object v8, v8, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getService()Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService;

    move-result-object v6

    iget-object v8, v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    check-cast v6, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;

    invoke-virtual {v6, v8, v5}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->filterSupportedTags(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    iget-object v10, v10, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->tag:Ljava/lang/String;

    move-object v11, v6

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    move-object v9, v6

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-string v10, "createRoutine : packageName="

    const-string v11, ", tag size=("

    const-string v12, " -> "

    invoke-static {v3, v10, v1, v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "), tags="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", supportedTags="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", filteredActions="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SoundCraft.RoutineManager"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v0, "createRoutine failed. action is none"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getService()Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getCurrentSystemRoutineType()Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    move-result-object v0

    check-cast v3, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "createRoutine: name:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", conditions:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", actions:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "AutomationServiceImpl@SDK"

    invoke-static {v6, v9}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->Companion:Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;

    invoke-static {v6, v5, v0}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;->access$isValidRequest(Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;Landroid/content/Context;Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_9

    :cond_7
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v9, "condition_size"

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "action_size"

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    const-string v9, "condition_keys"

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    const-string v9, "action_keys"

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v9, "name"

    invoke-virtual {v6, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "type"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    invoke-static {v10}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->createContentValue(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    invoke-static {v9}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->createContentValue(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v3, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->contentHandler:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ContentHandler;

    check-cast v2, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.samsung.android.app.routines.routineinfoprovider/core_service"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    goto :goto_8

    :cond_c
    const-string v1, ""

    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    invoke-static {v5, v0, v1}, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;->notifyChange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_9
    iget-object v0, v4, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iput-boolean v7, v0, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->routineExistOnPlugin:Z

    :goto_a
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;->$packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getRoutineId(Ljava/lang/String;)Ljava/lang/String;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
