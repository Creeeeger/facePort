.class public final Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mAodPowerSave:Z

.field public mBatteryHealth:I

.field public mBatteryOnline:I

.field public mBatteryStatus:I

.field public final mBgHandler:Landroid/os/Handler;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mChangeCallbacks:Ljava/util/ArrayList;

.field public mCharged:Z

.field public mCharging:Z

.field public final mContext:Landroid/content/Context;

.field public final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public mEstimate:Lcom/android/settingslib/fuelgauge/Estimate;

.field public final mEstimateLock:Ljava/lang/Object;

.field public final mEstimates:Lcom/android/systemui/power/EnhancedEstimates;

.field public final mFetchCallbacks:Ljava/util/ArrayList;

.field public mFetchingEstimate:Z

.field mHasReceivedBattery:Z

.field public mIsBatteryDefender:Z

.field public mIsDirectPowerMode:Z

.field public mIsIncompatibleCharging:Z

.field public mLevel:I

.field public final mLogger:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;

.field public final mMainHandler:Landroid/os/Handler;

.field public mMiscEvent:I

.field public mPluggedIn:Z

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mPowerSave:Z

.field public final mPowerSaverStartExpandable:Ljava/util/concurrent/atomic/AtomicReference;

.field public mStateUnknown:Z

.field public mTestMode:Z

.field public mWirelessCharging:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/power/EnhancedEstimates;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mFetchCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStatus:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryHealth:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryOnline:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mIsDirectPowerMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mStateUnknown:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mIsBatteryDefender:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mIsIncompatibleCharging:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mTestMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHasReceivedBattery:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mEstimateLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mFetchingEstimate:Z

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mMiscEvent:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSaverStartExpandable:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mMainHandler:Landroid/os/Handler;

    iput-object p9, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBgHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLogger:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object p2, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logBatteryControllerInstance$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logBatteryControllerInstance$2;

    const-string p3, "BatteryControllerLog"

    iget-object p4, p7, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const/4 p5, 0x0

    invoke-virtual {p4, p3, p1, p2, p5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput p0, p2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p4, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 9

    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHasReceivedBattery:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharging:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    iget v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharging:Z

    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStatus:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryHealth:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryOnline:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mIsDirectPowerMode:Z

    iget v8, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mMiscEvent:I

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZIIIZI)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onPowerSaveChanged(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mStateUnknown:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryUnknownStateChanged(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mWirelessCharging:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onWirelessChargingChanged(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mIsBatteryDefender:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onIsBatteryDefenderChanged(Z)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mIsIncompatibleCharging:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onIsIncompatibleChargingChanged(Z)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final demoCommands()Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "battery"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final dispatchSafeChange(Ljava/util/function/Consumer;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    const-string v0, "BatteryController state:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "mHasReceivedBattery="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHasReceivedBattery:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mLevel="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mPluggedIn="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mCharging="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharging:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mCharged="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharged:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mIsBatteryDefender="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mIsBatteryDefender:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mIsIncompatibleCharging="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mIsIncompatibleCharging:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mPowerSave="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mStateUnknown="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mStateUnknown:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "  mBatteryOnline="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryOnline:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "  mBatteryStatus="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStatus:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "  mBatteryHealth="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryHealth:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "  mMiscEvent="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mMiscEvent:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "  mIsDirectPowerMode="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mIsDirectPowerMode:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "Callbacks:------------------"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-interface {v3, p1, p2}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p0, "------------------"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onDemoModeFinished()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->registerReceiver$1()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->updatePowerSave()V

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLogger:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logIntentReceived$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logIntentReceived$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "BatteryControllerLog"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, v4, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLogger:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logBatteryChangedIntent$2;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logBatteryChangedIntent$2;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v1, "BatteryControllerLog"

    invoke-virtual {p1, v1, v2, v0, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    const-string v1, "level"

    const/16 v8, -0xb

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/log/LogMessageImpl;

    iput v1, v9, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    const-string/jumbo v1, "scale"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v9, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mTestMode:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "testmode"

    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLogger:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logBatteryChangedSkipBecauseTest$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logBatteryChangedSkipBecauseTest$2;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string p2, "BatteryControllerLog"

    invoke-virtual {p0, p2, v2, p1, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHasReceivedBattery:Z

    const-string p1, "level"

    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    const-string/jumbo v0, "scale"

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    const-string/jumbo p1, "plugged"

    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v7

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    const-string/jumbo p1, "status"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v6, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v7

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharged:Z

    if-nez v0, :cond_4

    if-ne p1, v4, :cond_3

    goto :goto_2

    :cond_3
    move v0, v7

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharging:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mWirelessCharging:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_5

    const-string/jumbo v0, "plugged"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_5

    move v0, v3

    goto :goto_4

    :cond_5
    move v0, v7

    :goto_4
    if-eq v1, v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mWirelessCharging:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mWirelessCharging:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda1;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v0

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_5
    const-string/jumbo v0, "present"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mStateUnknown:Z

    if-eq v0, v1, :cond_7

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mStateUnknown:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->dispatchSafeChange(Ljava/util/function/Consumer;)V

    :cond_7
    const-string v0, "android.os.extra.CHARGING_STATUS"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_8

    move v0, v3

    goto :goto_6

    :cond_8
    move v0, v7

    :goto_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mIsBatteryDefender:Z

    if-eq v0, v1, :cond_9

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mIsBatteryDefender:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda1;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->dispatchSafeChange(Ljava/util/function/Consumer;)V

    :cond_9
    const-string v0, "health"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStatus:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryHealth:I

    const-string p1, "online"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryOnline:I

    const-string p1, "misc_event"

    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mMiscEvent:I

    const/16 p2, 0x4000

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_a

    goto :goto_7

    :cond_a
    move v3, v7

    :goto_7
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mIsDirectPowerMode:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLogger:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;

    iget p2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharging:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logBatteryLevelChangedCallback$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logBatteryLevelChangedCallback$2;

    const-string v4, "BatteryControllerLog"

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput p2, v3, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-boolean v0, v3, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v1, v3, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {p1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    new-instance p1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda1;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->dispatchSafeChange(Ljava/util/function/Consumer;)V

    new-instance p1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda1;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->dispatchSafeChange(Ljava/util/function/Consumer;)V

    goto/16 :goto_e

    :cond_b
    const-string p2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->updatePowerSave()V

    goto/16 :goto_e

    :cond_c
    const-string p2, "android.hardware.usb.action.USB_PORT_COMPLIANCE_CHANGED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    const-string p2, "BatteryController"

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incompatible_charger_warning_disabled"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_e

    const-string p1, "containsIncompatibleChargers: disabled"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_d
    :goto_8
    move v3, v7

    goto/16 :goto_d

    :catch_0
    move-exception p1

    goto/16 :goto_c

    :cond_e
    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    if-nez p1, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getPorts()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_8

    :cond_10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbPort;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "usbPort: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->supportsComplianceWarnings()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_9

    :cond_13
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getComplianceWarnings()[I

    move-result-object v0

    if-eqz v0, :cond_11

    array-length v1, v0

    if-nez v1, :cond_14

    goto :goto_9

    :cond_14
    array-length v1, v0

    move v2, v7

    :goto_a
    if-ge v2, v1, :cond_11

    aget v5, v0, v2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->enableUsbDataComplianceWarning()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->enableInputPowerLimitedWarning()Z

    move-result v8

    if-eqz v8, :cond_15

    if-eq v5, v4, :cond_16

    if-eq v5, v6, :cond_16

    goto :goto_b

    :cond_15
    if-eq v5, v3, :cond_16

    if-eq v5, v4, :cond_16

    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :goto_c
    const-string v0, "containsIncompatibleChargers()"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    :cond_16
    :goto_d
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mIsIncompatibleCharging:Z

    if-eq v3, p1, :cond_18

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mIsIncompatibleCharging:Z

    new-instance p1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda1;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->dispatchSafeChange(Ljava/util/function/Consumer;)V

    goto :goto_e

    :cond_17
    const-string p2, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLogger:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logEnterTestMode$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logEnterTestMode$2;

    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v1, "BatteryControllerLog"

    invoke-virtual {p2, v1, v2, v0, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mTestMode:Z

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_18
    :goto_e
    return-void
.end method

.method public final registerReceiver$1()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_PORT_COMPLIANCE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setPowerSaveMode(ZLcom/android/systemui/animation/Expandable;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSaverStartExpandable:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    const-class p2, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v3, "extra_confirm_only"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "low_power_warning_acknowledged"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "extra_low_power_warning_acknowledged"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "PNW.startSaverConfirmation"

    invoke-static {p0, p1, v1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->sendSystemUiBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    goto :goto_2

    :cond_2
    :goto_0
    :try_start_1
    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {v3, p1}, Landroid/os/PowerManager;->setPowerSaveModeEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p1, :cond_3

    const-string v3, "low_power_manual_activation_count"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, "low_power_manual_activation_count"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;

    invoke-direct {v2, p0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;-><init>(Landroid/content/Context;)V

    iget v5, v2, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->startNth:I

    if-lt v3, v5, :cond_3

    iget v2, v2, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->endNth:I

    if-gt v3, v2, :cond_3

    const-string v2, "low_power_trigger_level"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "suppress_auto_battery_saver_suggestion"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PNW.autoSaverSuggestion"

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->sendSystemUiBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "extra_power_save_mode_manual_enabled_reason"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "extra_power_save_mode_manual_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "com.android.settingslib.fuelgauge.ACTION_SAVER_STATE_MANUAL_UPDATE"

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->sendSystemUiBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p2

    goto :goto_2

    :cond_4
    monitor-exit p2

    :goto_2
    return-void

    :goto_3
    monitor-exit p2

    throw p0
.end method

.method public final updatePowerSave()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mAodPowerSave:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLogger:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logPowerSaveChangedCallback$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logPowerSaveChangedCallback$2;

    const-string v4, "BatteryControllerLog"

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v1, v3, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->dispatchSafeChange(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method
