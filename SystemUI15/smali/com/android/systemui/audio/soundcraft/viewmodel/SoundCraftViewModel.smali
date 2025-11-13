.class public final Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;
.super Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final audioPlaybackManager:Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;

.field public final bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

.field public final coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

.field public final context:Landroid/content/Context;

.field public final isActionBarVisible:Landroidx/lifecycle/MutableLiveData;

.field public final isBatteryInfoBoxVisible:Landroidx/lifecycle/MutableLiveData;

.field public final isFromCover:Landroidx/lifecycle/MutableLiveData;

.field public final isFromNowBar:Landroidx/lifecycle/MutableLiveData;

.field public final isNoiseControlBoxVisible:Landroidx/lifecycle/MutableLiveData;

.field public final modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

.field public final routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

.field public final settings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

.field public final soundAliveManager:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;

.field public final soundCraftManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

.field public final updateBatteryInfoBox:Landroidx/lifecycle/MutableLiveData;

.field public final updateEffectBox:Landroidx/lifecycle/MutableLiveData;

.field public final updateNoiseControlBox:Landroidx/lifecycle/MutableLiveData;

.field public final updateVolumeBar:Landroidx/lifecycle/MutableLiveData;

.field public final volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

.field public final wearableManager:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;Lcom/android/systemui/audio/soundcraft/model/ModelProvider;Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;Lcom/android/systemui/qs/bar/ColoredBGHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->wearableManager:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    iput-object p4, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    iput-object p5, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-object p6, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->settings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

    iput-object p7, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->audioPlaybackManager:Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;

    iput-object p8, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->soundAliveManager:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;

    iput-object p9, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    iput-object p10, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->soundCraftManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    iput-object p11, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isBatteryInfoBoxVisible:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isNoiseControlBoxVisible:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isActionBarVisible:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isFromNowBar:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isFromCover:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->updateBatteryInfoBox:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->updateEffectBox:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->updateNoiseControlBox:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->updateVolumeBar:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final getAppRoutineModel()Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;
    .locals 34

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    invoke-direct {v1}, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-object v1, v2, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->settings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

    iget-boolean v3, v1, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->isAppSettingEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "getAppRoutineModel : isAppSettingEnabled="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "SoundCraft.SoundCraftViewModel"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    iget-object v3, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->audioPlaybackManager:Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;

    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;->getPlayingAppPackage()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object v4, v2, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iput-object v3, v4, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->playingAudioPackageName:Ljava/lang/String;

    const-string v4, "getAppRoutineModel : playingAudioPackage="

    invoke-static {v4, v3, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_36

    iget-object v7, v2, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->readyToUpdateRoutine:Z

    const-string v7, "getAppRoutineModel : readyToUpdateRoutine=true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->budsPluginPackageName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->equalizerList:Ljava/util/List;

    iget-object v7, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "getEffectModel : packageName="

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "SoundCraft.RoutineManager"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;->Companion:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;->findProjectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v7, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    if-eqz v10, :cond_1a

    invoke-virtual {v7, v3}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getRoutineId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v7}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getService()Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService;

    move-result-object v0

    iget-object v12, v7, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getCurrentSystemRoutineType()Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    move-result-object v13

    check-cast v0, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    const-string v15, "getRoutineDetailByRoutineId: routineId:"

    invoke-virtual {v15, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v14, "AutomationServiceImpl@SDK"

    invoke-static {v14, v15}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v15, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->Companion:Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;

    invoke-static {v15, v12, v13}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;->access$isValidRequest(Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;Landroid/content/Context;Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;)Z

    move-result v15

    if-nez v15, :cond_2

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    move-object/from16 v23, v6

    move-object/from16 v19, v7

    move-object/from16 p0, v9

    move-object/from16 v20, v11

    const/4 v7, 0x0

    move v11, v8

    goto/16 :goto_1e

    :cond_2
    const-string v15, "enabled"

    const-string/jumbo v4, "tag"

    const-string v8, "instance_id"

    iget-object v5, v0, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->contentHandler:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ContentHandler;

    :try_start_0
    move-object v0, v5

    check-cast v0, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v0, "content://com.samsung.android.app.routines.routineinfoprovider/routine_info/routine/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v6

    :try_start_1
    invoke-virtual/range {v16 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_9

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-object/from16 v16, v2

    :try_start_3
    const-string v2, "name"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-nez v2, :cond_3

    move-object/from16 v17, v1

    :goto_2
    move-object/from16 v19, v7

    move-object/from16 p0, v9

    move-object/from16 v20, v11

    goto/16 :goto_9

    :cond_3
    move-object/from16 v17, v1

    :try_start_5
    const-string/jumbo v1, "uuid"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    :try_start_7
    sget-object v18, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->Companion:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType$Companion;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v19, v7

    :try_start_8
    const-string/jumbo v7, "type"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v18, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->$ENTRIES:Lkotlin/enums/EnumEntries;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v20, v11

    :try_start_a
    move-object/from16 v11, v18

    check-cast v11, Lkotlin/collections/AbstractList;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 p0, v9

    :try_start_b
    new-instance v9, Lkotlin/collections/AbstractList$IteratorImpl;

    invoke-direct {v9, v11}, Lkotlin/collections/AbstractList$IteratorImpl;-><init>(Lkotlin/collections/AbstractList;)V

    :goto_3
    invoke-virtual {v9}, Lkotlin/collections/AbstractList$IteratorImpl;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v9}, Lkotlin/collections/AbstractList$IteratorImpl;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    move-object/from16 v18, v9

    invoke-virtual {v11}, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v9, v18

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_4
    if-nez v11, :cond_7

    goto :goto_9

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;

    const/4 v7, 0x0

    invoke-direct {v0, v2, v1, v11, v7}, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :try_start_c
    invoke-static {v6, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    move-object v1, v0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :goto_5
    move-object v1, v0

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object/from16 p0, v9

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    :goto_6
    move-object/from16 p0, v9

    move-object/from16 v20, v11

    goto :goto_5

    :catchall_3
    move-exception v0

    :goto_7
    move-object/from16 v19, v7

    goto :goto_6

    :catchall_4
    move-exception v0

    :goto_8
    move-object/from16 v19, v7

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    goto :goto_7

    :cond_8
    move-object/from16 v17, v1

    move-object/from16 v16, v2

    goto/16 :goto_2

    :goto_9
    :try_start_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    const/4 v1, 0x0

    :try_start_e
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_d

    :catchall_8
    move-exception v0

    goto :goto_5

    :goto_a
    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    move-exception v0

    move-object v2, v0

    :try_start_10
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :cond_9
    move-object/from16 v17, v1

    move-object/from16 v16, v2

    move-object/from16 v19, v7

    move-object/from16 p0, v9

    move-object/from16 v20, v11

    goto :goto_d

    :catch_1
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    :goto_b
    move-object/from16 v19, v7

    move-object/from16 p0, v9

    move-object/from16 v20, v11

    goto :goto_c

    :catch_2
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    move-object/from16 v23, v6

    goto :goto_b

    :goto_c
    sget-object v1, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "queryRoutineInfo: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_a

    iget-object v0, v1, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->type:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    if-eq v0, v13, :cond_b

    :cond_a
    const/4 v11, 0x1

    goto/16 :goto_1c

    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_11
    move-object v0, v5

    check-cast v0, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v0, "content://com.samsung.android.app.routines.routineinfoprovider/core_service/condition_status/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v24 .. v30}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    if-eqz v6, :cond_f

    :try_start_12
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_e

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    :goto_f
    sget-object v11, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus$Companion;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v18, v9

    const/4 v9, 0x1

    if-ne v13, v9, :cond_c

    const/16 v27, 0x1

    goto :goto_10

    :cond_c
    const/16 v27, 0x0

    :goto_10
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static {v6}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->getParameterValues(Landroid/database/Cursor;)Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    move-result-object v29

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;

    const/16 v30, 0x0

    move-object/from16 v24, v9

    invoke-direct/range {v24 .. v30}, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;-><init>(JZLjava/lang/String;Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_11

    :cond_d
    move/from16 v9, v18

    goto :goto_f

    :catchall_a
    move-exception v0

    move-object v7, v0

    goto :goto_12

    :cond_e
    :goto_11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    const/4 v7, 0x0

    :try_start_13
    invoke-static {v6, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    goto :goto_14

    :catch_3
    move-exception v0

    goto :goto_13

    :goto_12
    :try_start_14
    throw v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    :catchall_b
    move-exception v0

    move-object v9, v0

    :try_start_15
    invoke-static {v6, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v9
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3

    :goto_13
    sget-object v6, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "queryConditionStatus: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_14
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_16
    check-cast v5, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v0, "content://com.samsung.android.app.routines.routineinfoprovider/core_service/action_status/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v24 .. v30}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_5

    if-eqz v5, :cond_13

    :try_start_17
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_12

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    :cond_10
    sget-object v8, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus$Companion;

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    const/4 v11, 0x1

    if-ne v9, v11, :cond_11

    move/from16 v27, v11

    goto :goto_15

    :cond_11
    const/16 v27, 0x0

    :goto_15
    :try_start_18
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static {v5}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->getParameterValues(Landroid/database/Cursor;)Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    move-result-object v29

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;

    const/16 v30, 0x0

    move-object/from16 v24, v8

    invoke-direct/range {v24 .. v30}, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;-><init>(JZLjava/lang/String;Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_17

    :catchall_c
    move-exception v0

    :goto_16
    move-object v4, v0

    goto :goto_18

    :catchall_d
    move-exception v0

    const/4 v11, 0x1

    goto :goto_16

    :cond_12
    const/4 v11, 0x1

    :goto_17
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    const/4 v4, 0x0

    :try_start_19
    invoke-static {v5, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4

    goto :goto_1a

    :catch_4
    move-exception v0

    goto :goto_19

    :goto_18
    :try_start_1a
    throw v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    :catchall_e
    move-exception v0

    move-object v7, v0

    :try_start_1b
    invoke-static {v5, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_4

    :cond_13
    const/4 v11, 0x1

    goto :goto_1a

    :catch_5
    move-exception v0

    const/4 v11, 0x1

    :goto_19
    sget-object v4, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "queryActionStatus: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_1b

    :cond_14
    new-instance v7, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;

    invoke-direct {v7, v1, v2, v6}, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;-><init>(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;Ljava/util/List;Ljava/util/List;)V

    sget-object v0, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRoutineDetailByRoutineUuid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v1}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_15
    :goto_1b
    const/4 v7, 0x0

    goto :goto_1e

    :goto_1c
    sget-object v0, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getRoutineDetailByRoutineUuid() routineInfo.type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_16

    iget-object v7, v1, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->type:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    goto :goto_1d

    :cond_16
    const/4 v7, 0x0

    :goto_1d
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v1}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :goto_1e
    if-eqz v7, :cond_19

    iget-object v0, v7, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->actions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;

    iget-object v4, v2, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;->tag:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v10, v5}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_17

    move v1, v11

    :cond_17
    iget-object v4, v2, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;->parameterValues:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->toJsonString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "- getRoutineDetailById : action: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;->tag:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, p0

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_18
    move-object/from16 v4, p0

    goto :goto_20

    :cond_19
    move-object/from16 v4, p0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_20
    const-string v0, "getRoutineDetailById : routineId="

    const-string v2, ", isRoutineExist="

    const-string v5, ", return RoutineDetail="

    invoke-static {v0, v3, v2, v5, v1}, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logCallbackSentFromUpdate$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, v20

    iget-object v0, v2, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iput-boolean v1, v0, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->routineExistOnPlugin:Z

    if-eqz v1, :cond_1b

    goto :goto_21

    :cond_1a
    move-object/from16 v17, v1

    move-object/from16 v16, v2

    move-object/from16 v23, v6

    move-object/from16 v19, v7

    move-object v4, v9

    move-object v2, v11

    move v11, v8

    :cond_1b
    const/4 v7, 0x0

    :goto_21
    if-eqz v7, :cond_35

    iget-object v0, v2, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectOutDeviceType:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    sget-object v1, Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;->PHONE:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    const/16 v2, 0xa

    if-ne v0, v1, :cond_28

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->EQUALIZER:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    sget-object v3, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->Balanced:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->getRoutineActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v1, v5}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->getPhoneActionValue(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, v3, Ljava/lang/Boolean;

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->Companion:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum$Companion;->getBooleanActionValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_22

    :cond_1c
    instance-of v1, v3, Ljava/lang/Integer;

    if-eqz v1, :cond_1d

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1d
    :goto_22
    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    check-cast v1, Lkotlin/collections/AbstractList;

    invoke-virtual {v1}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    invoke-virtual {v5}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->getRoutineActionValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_23

    :cond_1f
    const/4 v3, 0x0

    :goto_23
    check-cast v3, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->DOLBY:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    sget-object v5, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->Off:Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;

    invoke-virtual {v5}, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->getRoutineActionValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v1, v6}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->getPhoneActionValue(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, v5, Ljava/lang/Boolean;

    if-eqz v1, :cond_20

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->Companion:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum$Companion;->getBooleanActionValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_24

    :cond_20
    instance-of v1, v5, Ljava/lang/Integer;

    if-eqz v1, :cond_21

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_21
    :goto_24
    sget-object v1, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    check-cast v1, Lkotlin/collections/AbstractList;

    invoke-virtual {v1}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;

    invoke-virtual {v6}, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->getRoutineActionValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_25

    :cond_23
    const/4 v5, 0x0

    :goto_25
    check-cast v5, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Lkotlin/collections/AbstractList;

    invoke-virtual {v0}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;

    new-instance v8, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;

    move-object/from16 v9, v19

    iget-object v10, v9, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->getNameResId()I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-ne v6, v5, :cond_24

    move v6, v11

    goto :goto_27

    :cond_24
    const/4 v6, 0x0

    :goto_27
    invoke-direct {v8, v10, v6}, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v9

    goto :goto_26

    :cond_25
    move-object/from16 v9, v19

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Lkotlin/collections/AbstractList;

    invoke-virtual {v0}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    new-instance v6, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    iget-object v8, v9, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->getNameResId()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-ne v2, v3, :cond_26

    move v2, v11

    goto :goto_29

    :cond_26
    const/4 v2, 0x0

    :goto_29
    invoke-direct {v6, v8, v2}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_27
    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->VOICE_BOOST:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v2, v6}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->getPhoneActionValue(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->Companion:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum$Companion;->getBooleanActionValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->VOLUME_NORMALIZATION:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v0, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->getPhoneActionValue(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum$Companion;->getBooleanActionValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    new-instance v0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v32, 0x1a

    const/16 v33, 0x0

    move-object/from16 v24, v0

    move-object/from16 v25, v1

    move-object/from16 v27, v5

    invoke-direct/range {v24 .. v33}, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPhoneEffectModel : model="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    move-object v5, v0

    goto/16 :goto_3c

    :cond_28
    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->EQUALIZER:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :try_start_1c
    sget v1, Lkotlin/Result;->$r8$clinit:I

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;->Companion:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;->findProjectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    sget-object v5, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->getBudsActionValue(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, v3, Ljava/lang/Boolean;

    if-eqz v1, :cond_29

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_2c

    :catchall_f
    move-exception v0

    goto :goto_2b

    :cond_29
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    goto :goto_2c

    :goto_2b
    sget v1, Lkotlin/Result;->$r8$clinit:I

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2a
    move-object v0, v3

    :goto_2c
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->SPATIAL_AUDIO:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    :try_start_1d
    sget-object v5, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;->Companion:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;->findProjectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2c

    sget-object v6, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    invoke-virtual {v0, v5}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v0, v5}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->getBudsActionValue(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_2b

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_2e

    :catchall_10
    move-exception v0

    goto :goto_2d

    :cond_2b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    goto :goto_2e

    :goto_2d
    sget v5, Lkotlin/Result;->$r8$clinit:I

    new-instance v5, Lkotlin/Result$Failure;

    invoke-direct {v5, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2c
    move-object v0, v3

    :goto_2e
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_2d

    move v9, v11

    goto :goto_2f

    :cond_2d
    const/4 v9, 0x0

    :goto_2f
    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->SPATIAL_AUDIO:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    :try_start_1e
    sget-object v5, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;->Companion:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;->findProjectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2f

    sget-object v6, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    invoke-virtual {v0, v5}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v0, v5}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->getBudsActionValue(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_2e

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_30
    move-object v3, v0

    goto :goto_32

    :catchall_11
    move-exception v0

    goto :goto_31

    :cond_2e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    goto :goto_30

    :goto_31
    sget v5, Lkotlin/Result;->$r8$clinit:I

    new-instance v5, Lkotlin/Result$Failure;

    invoke-direct {v5, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2f
    :goto_32
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_30

    move v3, v11

    goto :goto_33

    :cond_30
    const/4 v3, 0x0

    :goto_33
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    new-instance v6, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    invoke-virtual {v2}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v10, v16

    invoke-interface {v10, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v1, :cond_31

    move v2, v11

    goto :goto_35

    :cond_31
    const/4 v2, 0x0

    :goto_35
    invoke-direct {v6, v8, v2}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v10

    goto :goto_34

    :cond_32
    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->VOICE_BOOST:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :try_start_1f
    sget v2, Lkotlin/Result;->$r8$clinit:I

    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;->Companion:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;->findProjectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_33

    sget-object v6, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    invoke-virtual {v0, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v0, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->getBudsActionValue(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    goto :goto_36

    :catchall_12
    move-exception v0

    goto :goto_37

    :cond_33
    :goto_36
    move-object/from16 v30, v1

    goto :goto_38

    :goto_37
    sget v2, Lkotlin/Result;->$r8$clinit:I

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_36

    :goto_38
    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->VOLUME_NORMALIZATION:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :try_start_20
    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;->Companion:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;->findProjectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_34

    sget-object v6, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    invoke-virtual {v0, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v0, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->getBudsActionValue(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_13

    goto :goto_39

    :catchall_13
    move-exception v0

    goto :goto_3a

    :cond_34
    :goto_39
    move-object/from16 v31, v1

    goto :goto_3b

    :goto_3a
    sget v2, Lkotlin/Result;->$r8$clinit:I

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_39

    :goto_3b
    new-instance v0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    const/16 v32, 0x3

    const/16 v33, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v0

    move-object/from16 v27, v5

    invoke-direct/range {v24 .. v33}, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getBudsEffectModel : model="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    :cond_35
    const/4 v5, 0x0

    :goto_3c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRoutineEffectModel : budsInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_36
    move-object v1, v6

    iget-object v0, v2, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->readyToUpdateRoutine:Z

    const-string v0, "getAppRoutineModel : readyToUpdateRoutine=false"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public final hasNoiseControl()Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->getNoiseControlsList()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    invoke-virtual {v2}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveNoiseControlTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    :goto_1
    move v1, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getAmbientSoundTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getAdaptiveTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_3
    return v1
.end method

.method public final notifyChange()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectOutDeviceType:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;->BUDS:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isActionBarVisible:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isBatteryInfoBoxVisible:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isNoiseControlBoxVisible:Landroidx/lifecycle/MutableLiveData;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->hasNoiseControl()Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isFromNowBar:Landroidx/lifecycle/MutableLiveData;

    iget-boolean v2, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->isFromNowBar:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->isFromCover:Landroidx/lifecycle/MutableLiveData;

    iget-boolean v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->isFromCover:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->updateEffectBox:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCleared()V
    .locals 3

    const-string v0, "SoundCraft.SoundCraftViewModel"

    const-string v1, "onCleared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getService()Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getCurrentSystemRoutineType()Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    check-cast v1, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;

    iget-object v0, v1, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->contentHandler:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ContentHandler;

    check-cast v0, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;->contentObserver:Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl$register$1;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    iget-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isRegister:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->bluetoothMetadataBroadcastReceiver:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isRegister:Z

    :cond_1
    return-void
.end method

.method public final updateModel()V
    .locals 22

    move-object/from16 v1, p0

    const/4 v2, 0x1

    iget-object v0, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getVolumeModel()Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    move-result-object v0

    iget-object v3, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-object v0, v3, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget-object v0, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->updateVolumeBar:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->settings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

    invoke-virtual {v4}, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->update()V

    iget-object v0, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getService()Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getCurrentSystemRoutineType()Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    move-result-object v7

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->changeObserver:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager$changeObserver$1;

    check-cast v5, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->Companion:Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;

    invoke-static {v8, v6, v7}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;->access$isValidRequest(Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;Landroid/content/Context;Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v5, v5, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->contentHandler:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ContentHandler;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->getValue()Ljava/lang/String;

    move-result-object v7

    check-cast v5, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;

    invoke-virtual {v5, v6, v7, v0}, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;->register(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/automationservice/interfaces/ChangeObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "registerObserver: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "AutomationServiceImpl@SDK"

    invoke-static {v5, v0}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "SoundCraftViewModel.updateModel : settings="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "SoundCraft.SoundCraftViewModel"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v4, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->isBudsActive:Z

    if-eqz v0, :cond_1

    sget-object v4, Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;->BUDS:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;->PHONE:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    :goto_1
    iput-object v4, v3, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectOutDeviceType:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    const-string v4, "isShowBudsSetting="

    invoke-static {v4, v5, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v4, 0x0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "updateBudsModels"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {v6}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isBuds3OrNextModel(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;

    iget-object v8, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->context:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "buds_plugin_package_name"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v7, ""

    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->soundCraftManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    invoke-virtual {v7, v6}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->requestGWPluginModel(Landroid/bluetooth/BluetoothDevice;)V

    :cond_3
    new-instance v6, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;

    invoke-direct {v6, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsEffectModel$isSuccess$1;-><init>(Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;)V

    iget-object v7, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->wearableManager:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/GetInfoRequester;

    iget-object v9, v7, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;->context:Landroid/content/Context;

    iget-object v7, v7, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;->settings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

    iget-object v7, v7, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->budsPluginPackageName:Ljava/lang/String;

    invoke-direct {v8, v9, v7, v6}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/GetInfoRequester;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v8}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/GetInfoRequester;->bindService()Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "connection failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v3, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v6}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;->setConnectionState()V

    iget-object v6, v3, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iput-boolean v4, v6, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->readyToUpdateRoutine:Z

    sget-object v6, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;

    iget-object v7, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->context:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v4}, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->isBudsPluginConnected(Landroid/content/Context;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->notifyChange()V

    :cond_4
    const-string v4, "init()"

    const-string v6, "SoundCraft.BluetoothDeviceManager"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    iget-object v7, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->noiseControlCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v0, v8}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getNoiseControlList(Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    move-result-object v8

    goto :goto_2

    :cond_5
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_2
    invoke-interface {v7, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v7, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->batteryInfoCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v7, :cond_7

    invoke-static {v4}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getBatteryInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    move-result-object v8

    invoke-interface {v7, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-nez v4, :cond_8

    const-string v4, "connected device is empty"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput-boolean v2, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isRegister:Z

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->context:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->bluetoothMetadataBroadcastReceiver:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;

    invoke-virtual {v2, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsNoiseControlModel$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsNoiseControlModel$1;-><init>(Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;)V

    iput-object v2, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->noiseControlCallback:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v0, v4}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getNoiseControlList(Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    move-result-object v4

    goto :goto_3

    :cond_9
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_3
    iput-object v4, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->currentNoiseControlList:Ljava/util/Set;

    invoke-virtual {v2, v4}, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBudsNoiseControlModel$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBatteryInfoModel$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBatteryInfoModel$1;-><init>(Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;)V

    iput-object v2, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->batteryInfoCallback:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getBatteryInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel$updateBatteryInfoModel$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    :cond_a
    const-string/jumbo v0, "updatePhoneEffectModel"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->soundAliveManager:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;->TAG:Ljava/lang/String;

    new-instance v15, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v14, 0x3f

    const/16 v16, 0x0

    move-object v7, v15

    move-object v2, v15

    move-object/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;-><init>(IIZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v7, 0xa

    :try_start_1
    sget v8, Lkotlin/Result;->$r8$clinit:I

    sget-object v8, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v8

    check-cast v10, Lkotlin/collections/AbstractList;

    invoke-virtual {v10}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    invoke-virtual {v11}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->getSettingName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v11, 0x1

    goto/16 :goto_c

    :cond_b
    iget-object v10, v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager;->uri:Landroid/net/Uri;

    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "query was failed.. soundAliveEffectModel="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    goto/16 :goto_e

    :cond_c
    move v9, v4

    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x6

    invoke-static {v10, v11, v4, v12}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    sget-object v12, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v12, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v11, :pswitch_data_0

    :goto_6
    const/4 v11, 0x1

    goto :goto_b

    :pswitch_0
    const/4 v11, 0x1

    if-ne v10, v11, :cond_d

    move v10, v11

    goto :goto_7

    :cond_d
    move v10, v4

    :goto_7
    :try_start_2
    iput-boolean v10, v2, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->spatialAudio:Z

    goto :goto_b

    :pswitch_1
    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    move v10, v11

    goto :goto_8

    :cond_e
    move v10, v4

    :goto_8
    iput-boolean v10, v2, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->uhqUpscaler:Z

    goto :goto_b

    :pswitch_2
    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    move v10, v11

    goto :goto_9

    :cond_f
    move v10, v4

    :goto_9
    iput-boolean v10, v2, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->volumeNormalization:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_b

    :pswitch_3
    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    const/4 v11, 0x1

    goto :goto_a

    :cond_10
    move v11, v4

    :goto_a
    :try_start_3
    iput-boolean v11, v2, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->voiceBoost:Z

    goto :goto_6

    :pswitch_4
    iput v10, v2, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->eqIndex:I

    goto :goto_6

    :pswitch_5
    iput v10, v2, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->dolbyIndex:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :goto_b
    add-int/2addr v9, v11

    goto :goto_5

    :cond_11
    const/4 v11, 0x1

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception v0

    :goto_c
    sget v8, Lkotlin/Result;->$r8$clinit:I

    new-instance v8, Lkotlin/Result$Failure;

    invoke-direct {v8, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v8

    :goto_d
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error, SoundAlive query : e="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "soundAliveEffectModel="

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    iput-object v2, v3, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->phoneModel:Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->getAppRoutineModel()Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    move-result-object v0

    if-eqz v0, :cond_13

    iput-object v0, v3, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_f

    :cond_13
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_18

    sget-object v0, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v13, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Lkotlin/collections/AbstractList;

    invoke-virtual {v0}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;

    new-instance v8, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;

    iget-object v9, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->context:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->getNameResId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/systemui/audio/soundcraft/model/phone/DolbyEnum;->getRealIndex()I

    move-result v6

    iget v10, v2, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->dolbyIndex:I

    if-ne v6, v10, :cond_14

    move v6, v11

    goto :goto_11

    :cond_14
    move v6, v4

    :goto_11
    invoke-direct {v8, v9, v6}, Lcom/android/systemui/audio/soundcraft/model/phone/Dolby;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_15
    iget-boolean v0, v2, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->voiceBoost:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    iget-boolean v0, v2, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->volumeNormalization:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    new-instance v0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x1e

    const/16 v21, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v21}, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v6, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Lkotlin/collections/AbstractList;

    invoke-virtual {v6}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    new-instance v9, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    iget-object v10, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->context:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->getNameResId()I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->getRealIndex()I

    move-result v7

    iget v12, v2, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->eqIndex:I

    if-ne v7, v12, :cond_16

    move v7, v11

    goto :goto_13

    :cond_16
    move v7, v4

    :goto_13
    invoke-direct {v9, v10, v7}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_17
    iput-object v8, v0, Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;->equalizerList:Ljava/util/List;

    iput-object v0, v3, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->notifyChange()V

    :goto_14
    iget-object v0, v3, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    iget-object v2, v3, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->phoneModel:Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;

    iget-object v3, v3, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "effectModel="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", [phoneModel="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "], [budsModel="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->notifyChange()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
