.class public final Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final bgHandlerProvider:Ljavax/inject/Provider;

.field public final broadcastDispatcherProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final demoModeControllerProvider:Ljavax/inject/Provider;

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final enhancedEstimatesProvider:Ljavax/inject/Provider;

.field public final loggerProvider:Ljavax/inject/Provider;

.field public final mainHandlerProvider:Ljavax/inject/Provider;

.field public final powerManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->enhancedEstimatesProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->powerManagerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->demoModeControllerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->loggerProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->bgHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideBatteryController(Landroid/content/Context;Lcom/android/systemui/power/EnhancedEstimates;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;Landroid/os/Handler;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;
    .locals 11

    new-instance v10, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/power/EnhancedEstimates;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;Landroid/os/Handler;Landroid/os/Handler;)V

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLogger:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHasReceivedBattery:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logBatteryControllerInit$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logBatteryControllerInit$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "BatteryControllerLog"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/log/LogMessageImpl;

    iput v3, v4, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-boolean v1, v4, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->registerReceiver$1()V

    iget-boolean v0, v10, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHasReceivedBattery:Z

    if-nez v0, :cond_0

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHasReceivedBattery:Z

    if-nez v1, :cond_0

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v1, v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    invoke-virtual {v0, v10}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "BatteryController"

    invoke-static {v0, v1, v10}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->updatePowerSave()V

    iget-boolean v0, v10, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mFetchingEstimate:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mFetchingEstimate:Z

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-object v10
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->enhancedEstimatesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/power/EnhancedEstimates;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->powerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->demoModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/demomode/DemoModeController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/dump/DumpManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->bgHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Landroid/os/Handler;

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/statusbar/policy/AospPolicyModule_ProvideBatteryControllerFactory;->provideBatteryController(Landroid/content/Context;Lcom/android/systemui/power/EnhancedEstimates;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;Landroid/os/Handler;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    move-result-object p0

    return-object p0
.end method
