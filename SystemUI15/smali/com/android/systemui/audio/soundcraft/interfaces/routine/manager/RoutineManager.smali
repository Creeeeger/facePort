.class public final Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final changeObserver:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$changeObserver$1;

.field public final context:Landroid/content/Context;

.field public final modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

.field public final service$delegate:Lkotlin/Lazy;

.field public final settings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/audio/soundcraft/model/ModelProvider;Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->settings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$changeObserver$1;

    invoke-direct {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$changeObserver$1;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->changeObserver:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$changeObserver$1;

    sget-object p1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$service$2;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$service$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->service$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final createRoutine(Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;-><init>(Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;Ljava/lang/String;Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;)V

    sget-object p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineUpdateThread;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineUpdateThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineUpdateThread;->handler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineUpdateThread$sam$java_lang_Runnable$0;

    invoke-direct {p1, v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineUpdateThread$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getCurrentSystemRoutineType()Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectOutDeviceType:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;->PHONE:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->SOUND_CRAFT_FOR_PHONE:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->SOUND_CRAFT_FOR_BUDS:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    :goto_0
    return-object p0
.end method

.method public final getRoutineId(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getService()Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getCurrentSystemRoutineType()Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    move-result-object v2

    check-cast v0, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "findRoutineIdsByMonitoredPackage: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "AutomationServiceImpl@SDK"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->Companion:Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;

    invoke-static {v4, v1, v2}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;->access$isValidRequest(Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;Landroid/content/Context;Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto/16 :goto_4

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->contentHandler:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ContentHandler;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->getValue()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v0, "content://com.samsung.android.app.routines.routineinfoprovider/core_service/monitor/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :goto_1
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    sget-object v1, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "getRoutineUuidByMonitoredPackageAsConditionParam: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    move-object v0, v4

    :goto_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "getRoutineId : packageName="

    const-string v2, ", return id="

    const-string v3, " (sdk=v1.1.4)"

    invoke-static {v1, p1, v2, v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SoundCraft.RoutineManager"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->routineId:Ljava/lang/String;

    return-object v0
.end method

.method public final getService()Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->service$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService;

    return-object p0
.end method

.method public final updateRoutine(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;-><init>(Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineUpdateThread;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineUpdateThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineUpdateThread;->handler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineUpdateThread$sam$java_lang_Runnable$0;

    invoke-direct {p1, v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineUpdateThread$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
