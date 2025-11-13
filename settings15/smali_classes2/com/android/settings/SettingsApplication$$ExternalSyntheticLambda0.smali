.class public final synthetic Lcom/android/settings/SettingsApplication$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/SettingsApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/SettingsApplication;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/SettingsApplication$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/SettingsApplication$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/SettingsApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 31

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget v2, v0, Lcom/android/settings/SettingsApplication$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v0, v0, Lcom/android/settings/SettingsApplication$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/SettingsApplication;

    packed-switch v2, :pswitch_data_0

    sget v1, Lcom/android/settings/SettingsApplication;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SettingsApplication#initializeClasses"

    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SettingsApplication#Rune_Init"

    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v1, "SettingsApplication#Utils_Init"

    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v1, "SettingsApplication#LockUtils_Init"

    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isCameraCoverAttached(Landroid/content/Context;)Z

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v1, "SettingsApplication#KnoxUtils_Init"

    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const/16 v1, 0x400

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->checkKnoxCustomSettingsHiddenItem(I)Z

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v1, "SettingsApplication#BT_Init"

    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    :pswitch_0
    sget v2, Lcom/android/settings/SettingsApplication;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "SettingsApplication#ElapsedTimeUtils"

    invoke-static {v2}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/android/settings/core/instrumentation/ElapsedTimeUtils;->sSuwFinishedTimeStamp:Ljava/util/Optional;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "elapsed_time_info"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "suw_finished_time_ms"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/settings/core/instrumentation/ElapsedTimeUtils;->sSuwFinishedTimeStamp:Ljava/util/Optional;

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Lcom/android/settings/core/instrumentation/ElapsedTimeUtils;->getSuwFinishedTimestamp(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    sput-object v2, Lcom/android/settings/core/instrumentation/ElapsedTimeUtils;->sSuwFinishedTimeStamp:Ljava/util/Optional;

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v2, "SettingsApplication#setSpaEnvironment"

    invoke-static {v2}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v2, Lcom/android/settings/spa/SettingsSpaEnvironment;

    invoke-direct {v2, v0}, Lcom/android/settings/spa/SettingsSpaEnvironment;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->spaEnvironment:Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    const-string v2, "SpaEnvironment"

    const-string v4, "reset"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v2, "SettingsApplication#CommandSdk.setHandler"

    invoke-static {v2}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/command/CommandSdk$LazyHolder;->INSTANCE:Lcom/samsung/android/sdk/command/CommandSdk;

    new-instance v4, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mCachedCommandMap:Ljava/util/Map;

    iput-object v0, v4, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/sdk/command/CommandSdk;->sWaitLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iput-object v4, v2, Lcom/samsung/android/sdk/command/CommandSdk;->mActionHandler:Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;

    const-string v2, "set the action handler"

    const-string v4, "[CmdL-2.0.8]CommandSdk"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v2, "SettingsApplication#BixbyRoutineActionHandler"

    invoke-static {v2}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl$LazyHolder;->a:Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setHandler - conditionHandler=null, actionHandler="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RoutineSdkImpl"

    invoke-static {v7, v6}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v2, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->d:Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;

    iput-object v5, v6, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;->a:Ljava/lang/Object;

    iget-object v7, v6, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider$$ExternalSyntheticLambda1;

    invoke-direct {v8, v6}, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;)V

    invoke-interface {v7, v8}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    iget-object v6, v2, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->e:Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;

    iput-object v4, v6, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;->a:Ljava/lang/Object;

    iget-object v4, v6, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    new-instance v7, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider$$ExternalSyntheticLambda1;

    invoke-direct {v7, v6}, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;)V

    invoke-interface {v4, v7}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    const-string v4, "hotspot_condition_tag"

    new-instance v6, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;

    invoke-direct {v6}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setConditionHandler - tag=hotspot_condition_tag, conditionHandler="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "RoutineSdkImpl"

    invoke-static {v8, v7}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->d:Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;

    iget-object v7, v2, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;->b:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v2, "SettingsApplication#printSamsungAnalytics"

    invoke-static {v2}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v2, "Settings_SA"

    const-string v4, "Settings LoggingHelper init"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, v2, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    const/4 v4, -0x1

    iput v4, v2, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->auidType:I

    const-string v4, "759-399-5199102"

    iput-object v4, v2, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    sget v4, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    div-int/lit16 v6, v4, 0x2710

    rem-int/lit16 v4, v4, 0x2710

    div-int/lit8 v4, v4, 0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->version:Ljava/lang/String;

    iput-boolean v1, v2, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    sget-object v4, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    if-eqz v4, :cond_6

    iget-object v6, v4, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_c

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    iget-object v6, v6, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    iget-object v6, v6, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isSendingAppCommonSupported(Landroid/content/Context;)Z

    move-result v4

    xor-int/2addr v4, v1

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    if-nez v6, :cond_c

    :cond_6
    :goto_0
    const-class v4, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    monitor-enter v4

    :try_start_1
    sget-object v6, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    if-eqz v6, :cond_9

    iget-object v6, v6, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    iget-object v7, v7, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    iget-object v7, v7, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isSendingAppCommonSupported(Landroid/content/Context;)Z

    move-result v6

    xor-int/2addr v6, v1

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    if-nez v7, :cond_9

    sget-object v6, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalyticsHolder;->diagnosticInstance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    sput-object v6, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_9
    :goto_1
    sget-object v6, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    if-eqz v6, :cond_a

    iget-object v6, v6, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    if-nez v6, :cond_b

    :cond_a
    new-instance v6, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    invoke-direct {v6, v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;-><init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object v6, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    sput-object v6, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalyticsHolder;->diagnosticInstance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    :cond_b
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    :goto_2
    invoke-static {v0}, Lcom/samsung/android/settings/logging/SALogging;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/logging/SALogging;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Lcom/samsung/android/settings/logging/status/StatusLoggingUtils;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "last_status_logging"

    const-wide/16 v7, 0x0

    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v11, "status_logging_cnt"

    invoke-static {v4, v11, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    cmp-long v7, v9, v7

    const-string v8, "Settings_SA_Utils"

    if-nez v7, :cond_d

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v6, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v15, "Status Logging time is not set : "

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v15, "user_setup_complete"

    invoke-static {v7, v15, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v1, :cond_f

    sub-long v15, v12, v9

    sget-wide v17, Lcom/samsung/android/settings/logging/status/StatusLoggingUtils;->A_WEEK_TO_MILLISECOND:J

    cmp-long v7, v15, v17

    if-lez v7, :cond_e

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v6, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    add-int/2addr v4, v1

    int-to-long v12, v4

    invoke-static {v6, v11, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move v4, v1

    goto :goto_3

    :cond_e
    move v4, v3

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkLoggingInternal current time : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " saved time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_f
    const-string v4, "SetupWizard is not completed"

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    :goto_4
    if-eqz v4, :cond_10

    new-instance v4, Lcom/samsung/android/settings/logging/SALogging$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/samsung/android/settings/logging/SALogging$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/logging/SALogging;)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_10
    const-string v2, "Settings_SA_SALogging"

    const-string v4, "It has not been a week since last logging"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v2, "SettingsApplication#Sbixby.initialize"

    invoke-static {v2}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getInstance()Lcom/samsung/android/sdk/bixby2/Sbixby;

    move-result-object v2

    const-string v4, "ro.build.version.oneui"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "com.android.settings"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_18

    sget-object v6, Lcom/samsung/android/sdk/bixby2/Sbixby;->appMetaInfoMap:Ljava/util/Map;

    if-nez v6, :cond_11

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/samsung/android/sdk/bixby2/Sbixby;->appMetaInfoMap:Ljava/util/Map;

    :cond_11
    sget-object v6, Lcom/samsung/android/sdk/bixby2/Sbixby;->appMetaInfoMap:Ljava/util/Map;

    new-instance v7, Lcom/samsung/android/sdk/bixby2/AppMetaInfo;

    invoke-direct {v7, v2, v4}, Lcom/samsung/android/sdk/bixby2/AppMetaInfo;-><init>(Ljava/lang/String;I)V

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v2, "SettingsApplication#Sbixby.initializeBixbyActionHandler"

    invoke-static {v2}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getInstance()Lcom/samsung/android/sdk/bixby2/Sbixby;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/settings/bixby/actionhandler/AODActionHandler;

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcom/samsung/android/settings/bixby/actionhandler/AODActionHandler;->ACTIONS:[Ljava/lang/String;

    move v7, v3

    :goto_6
    const/4 v8, 0x3

    if-ge v7, v8, :cond_12

    aget-object v8, v6, v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    add-int/2addr v7, v1

    goto :goto_6

    :cond_12
    new-instance v4, Lcom/samsung/android/settings/bixby/actionhandler/EdgeActionHandler;

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcom/samsung/android/settings/bixby/actionhandler/EdgeActionHandler;->ACTIONS:[Ljava/lang/String;

    move v7, v3

    :goto_7
    if-ge v7, v8, :cond_13

    aget-object v9, v6, v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    add-int/2addr v7, v1

    goto :goto_7

    :cond_13
    new-instance v4, Lcom/samsung/android/settings/bixby/actionhandler/SettingsActionHandler;

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcom/samsung/android/settings/bixby/actionhandler/SettingsActionHandler;->ACTIONS:[Ljava/lang/String;

    move v7, v3

    :goto_8
    const/16 v9, 0x71

    if-ge v7, v9, :cond_14

    aget-object v9, v6, v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    add-int/2addr v7, v1

    goto :goto_8

    :cond_14
    new-instance v4, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->mParamBundle:Landroid/os/Bundle;

    sget-object v6, Lcom/samsung/android/settings/bixby/actionhandler/ConnectivityActionHandler;->ACTIONS:[Ljava/lang/String;

    move v7, v3

    :goto_9
    const/16 v9, 0x1a

    if-ge v7, v9, :cond_15

    aget-object v9, v6, v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    add-int/2addr v7, v1

    goto :goto_9

    :cond_15
    new-instance v4, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mParamBundle:Landroid/os/Bundle;

    iput-object v5, v4, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mFeatureKey:Ljava/lang/String;

    iput-object v5, v4, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mFeatureValue:Ljava/lang/String;

    iput-object v5, v4, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mAccessibilityMenu:Ljava/lang/String;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mActionHashMap:Ljava/util/HashMap;

    const-string v6, "viv.accessibilityApp.EnableAccessibilityMenu"

    const-string v7, "enable"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "viv.accessibilityApp.DisableAccessibilityMenu"

    const-string v9, "disable"

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "viv.accessibilityApp.TurnOnClickAfterPointerStops"

    const-string v10, "turn_on"

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "viv.accessibilityApp.TurnOnDirectAccess"

    invoke-virtual {v5, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "viv.accessibilityApp.TurnOnDirectAccessOptions"

    invoke-virtual {v5, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "viv.accessibilityApp.TurnOnFlashNotification"

    invoke-virtual {v5, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "viv.accessibilityApp.TurnOnUniversalSwitch"

    invoke-virtual {v5, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "viv.accessibilityApp.TurnOnVoiceAssistant"

    invoke-virtual {v5, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "viv.accessibilityApp.TurnOnAccessibilityMenuWithConfirmation"

    invoke-virtual {v5, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "viv.accessibilityApp.TurnOnMuteAllSounds"

    invoke-virtual {v5, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "viv.accessibilityApp.TurnOffFlashNotification"

    const-string v1, "turn_off"

    invoke-virtual {v5, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viv.accessibilityApp.GetColorAdjustmentCurrentValue"

    move-object/from16 v18, v0

    const-string v0, "get"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v1

    const-string v1, "viv.accessibilityApp.GetCurrentColor"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v20, v1

    const-string v1, "viv.accessibilityApp.GetCurrentStatus"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v1

    const-string v1, "viv.accessibilityApp.GetDirectAccessOptionsCurrentStatus"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v22, v1

    const-string v1, "viv.accessibilityApp.GetDoorBellRecordStatus"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v23, v1

    const-string v1, "viv.accessibilityApp.GetExclusivePopup"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v24, v1

    const-string v1, "viv.accessibilityApp.GetPermissionPopup"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v25, v1

    const-string v1, "viv.accessibilityApp.GetPersonalizedColorSetUpStatus"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v26, v1

    const-string v1, "viv.accessibilityApp.GetSupportFeature"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v27, v1

    const-string v1, "viv.accessibilityApp.GetUniversalSwitchCurrentstatus"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v28, v1

    const-string v1, "viv.accessibilityApp.GetVoiceRecorderStatus"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "set"

    move-object/from16 v29, v1

    const-string v1, "viv.accessibilityApp.SetAccessibilityMenuValue"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adjust"

    move-object/from16 v30, v1

    const-string v1, "viv.accessibilityApp.AdjustAccessibilityMenuValue"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    invoke-static {v7, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    invoke-static {v9, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    invoke-static {v11, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    invoke-static {v12, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    invoke-static {v13, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    invoke-static {v8, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    invoke-static {v14, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    invoke-static {v15, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    invoke-static {v10, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    move-object/from16 v0, v28

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    move-object/from16 v0, v29

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    move-object/from16 v0, v30

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    const-string v0, "viv.accessibilityApp.TurnOnSoundDetector"

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    const-string v0, "viv.accessibilityApp.GetDisclaimerPopup"

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    const-string v0, "viv.accessibilityApp.CheckSoundDetectorCondition"

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    new-instance v0, Lcom/samsung/android/settings/bixby/actionhandler/SystemUIActionHandler;

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/samsung/android/settings/bixby/actionhandler/SystemUIActionHandler;->ACTIONS:[Ljava/lang/String;

    const/4 v3, 0x0

    :goto_a
    const/16 v4, 0x63

    if-ge v3, v4, :cond_16

    aget-object v4, v2, v3

    invoke-static {v4, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    const/4 v4, 0x1

    add-int/2addr v3, v4

    goto :goto_a

    :cond_16
    const/4 v4, 0x1

    new-instance v0, Lcom/samsung/android/settings/bixby/actionhandler/NotificationActionHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/samsung/android/settings/bixby/actionhandler/NotificationActionHandler;->ACTIONS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x3

    :goto_b
    if-ge v3, v5, :cond_17

    aget-object v6, v2, v3

    invoke-static {v6, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    add-int/2addr v3, v4

    goto :goto_b

    :cond_17
    new-instance v0, Lcom/samsung/android/settings/bixby/actionhandler/DeviceQnAActionHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;-><init>(Landroid/content/Context;)V

    const-string v1, "CheckAvailableDeeplink"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    const-string v1, "LaunchQnADeeplink"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capsuleId cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_c
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_1
    sget v1, Lcom/android/settings/SettingsApplication;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SettingsApplication#LoadTopLevelPreferenceXmlMeta"

    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->loadTopLevelPreferenceXmlMeta(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
