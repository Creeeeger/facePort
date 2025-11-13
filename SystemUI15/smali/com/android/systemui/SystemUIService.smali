.class public Lcom/android/systemui/SystemUIService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBatteryStateNotifier:Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;

.field public final mBinderProxyDumpHelper:Lcom/android/systemui/BinderProxyDumpHelper;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

.field public final mLogBufferEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

.field public final mLogBufferFreezer:Lcom/android/systemui/dump/LogBufferFreezer;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMemoryMonitor:Lcom/android/systemui/util/MemoryMonitor;

.field public final mUncaughtExceptionPreHandlerManager:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/dump/DumpHandler;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/LogBufferEulogizer;Lcom/android/systemui/dump/LogBufferFreezer;Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;Lcom/android/systemui/BinderProxyDumpHelper;Lcom/android/systemui/util/MemoryMonitor;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SystemUIService;->mMainHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/SystemUIService;->mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

    iput-object p3, p0, Lcom/android/systemui/SystemUIService;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p4, p0, Lcom/android/systemui/SystemUIService;->mLogBufferEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    iput-object p5, p0, Lcom/android/systemui/SystemUIService;->mLogBufferFreezer:Lcom/android/systemui/dump/LogBufferFreezer;

    iput-object p6, p0, Lcom/android/systemui/SystemUIService;->mBatteryStateNotifier:Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;

    iput-object p7, p0, Lcom/android/systemui/SystemUIService;->mUncaughtExceptionPreHandlerManager:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    sget-boolean p1, Lcom/android/systemui/ScRune;->ENHANCEMENT_DUMP_HELPER:Z

    if-eqz p1, :cond_0

    iput-object p8, p0, Lcom/android/systemui/SystemUIService;->mBinderProxyDumpHelper:Lcom/android/systemui/BinderProxyDumpHelper;

    :cond_0
    sget-boolean p1, Lcom/android/systemui/ScRune;->ENHANCEMENT_DEBUG_MEMORY_LOG:Z

    if-eqz p1, :cond_1

    iput-object p9, p0, Lcom/android/systemui/SystemUIService;->mMemoryMonitor:Lcom/android/systemui/util/MemoryMonitor;

    :cond_1
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    array-length v0, p3

    if-nez v0, :cond_0

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "--dump-priority"

    aput-object v1, p3, v0

    const/4 v0, 0x1

    const-string v1, "CRITICAL"

    aput-object v1, p3, v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/SystemUIService;->mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()V
    .locals 9

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIApplication;->startSystemUserServicesIfNeeded()V

    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mLogBufferFreezer:Lcom/android/systemui/dump/LogBufferFreezer;

    iget-object v1, p0, Lcom/android/systemui/SystemUIService;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/dump/LogBufferFreezer$attach$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/dump/LogBufferFreezer$attach$1;-><init>(Lcom/android/systemui/dump/LogBufferFreezer;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.internal.intent.action.BUGREPORT_STARTED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, v0, Lcom/android/systemui/dump/LogBufferFreezer;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const/16 v8, 0x30

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mUncaughtExceptionPreHandlerManager:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    new-instance v1, Lcom/android/systemui/SystemUIService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/SystemUIService;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->registerHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mBatteryStateNotifier:Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;->controller:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2

    const-string v1, "debug.crash_sysui"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    invoke-static {}, Landroid/graphics/Typeface;->setFlipFonts()V

    sget-boolean v1, Lcom/android/systemui/ScRune;->ENHANCEMENT_DEBUG_MEMORY_LOG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/SystemUIService;->mMemoryMonitor:Lcom/android/systemui/util/MemoryMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/util/MemoryMonitor;->registerUncaughtException()V

    :cond_3
    sget-boolean v1, Lcom/android/systemui/ScRune;->ENHANCEMENT_DUMP_HELPER:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountEnabled(Z)V

    const/16 v0, 0x1612

    const/16 v1, 0x170c

    const/16 v2, 0x1518

    invoke-static {v1, v2, v0}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountWatermarks(III)V

    new-instance v0, Lcom/android/systemui/SystemUIService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SystemUIService$1;-><init>(Lcom/android/systemui/SystemUIService;)V

    iget-object v1, p0, Lcom/android/systemui/SystemUIService;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/internal/os/BinderInternal;->setBinderProxyCountCallback(Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;Landroid/os/Handler;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountEnabled(Z)V

    const/16 v0, 0x3b6

    const/16 v1, 0x3e8

    const/16 v2, 0x384

    invoke-static {v1, v2, v0}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountWatermarks(III)V

    new-instance v0, Lcom/android/systemui/SystemUIService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/SystemUIService$2;-><init>(Lcom/android/systemui/SystemUIService;)V

    iget-object v1, p0, Lcom/android/systemui/SystemUIService;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/internal/os/BinderInternal;->setBinderProxyCountCallback(Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;Landroid/os/Handler;)V

    :cond_5
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public final declared-synchronized onTrimMemory(I)V
    .locals 3

    const-string v0, "onTrimMemory : "

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/android/systemui/ScRune;->ENHANCEMENT_DEBUG_MEMORY_LOG:Z

    if-eqz v1, :cond_1

    const-string v1, "SystemUIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/SystemUIService;->mMemoryMonitor:Lcom/android/systemui/util/MemoryMonitor;

    invoke-virtual {p1}, Lcom/android/systemui/util/MemoryMonitor;->dispatchTrimMemory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
