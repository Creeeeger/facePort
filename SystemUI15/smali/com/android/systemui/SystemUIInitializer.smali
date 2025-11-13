.class public abstract Lcom/android/systemui/SystemUIInitializer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemUIFactory"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInitializationChecker:Lcom/android/systemui/util/InitializationChecker;

.field private mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

.field private mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

.field private mWMComponent:Lcom/android/systemui/dagger/WMComponent;


# direct methods
.method public static $r8$lambda$fBfwJ9DNI3xhFIGRtch-IdPgV14(Lcom/android/systemui/SystemUIInitializer;Lcom/android/systemui/dagger/WMComponent$Builder;Landroid/os/HandlerThread;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;

    iput-object p2, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;->setShellMainThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;->build()Lcom/android/systemui/dagger/WMComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract getGlobalRootComponentBuilder()Lcom/android/systemui/dagger/GlobalRootComponent$Builder;
.end method

.method public getRootComponent()Lcom/android/systemui/dagger/GlobalRootComponent;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/SystemUIInitializer;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    return-object p0
.end method

.method public getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/SystemUIInitializer;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    return-object p0
.end method

.method public getVendorComponent(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f13040c

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWMComponent()Lcom/android/systemui/dagger/WMComponent;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    return-object p0
.end method

.method public init(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIInitializer;->getGlobalRootComponentBuilder()Lcom/android/systemui/dagger/GlobalRootComponent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->context:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->instrumentationTest:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->build()Lcom/android/systemui/dagger/ReferenceGlobalRootComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    invoke-interface {p1}, Lcom/android/systemui/dagger/GlobalRootComponent;->getInitializationChecker()Lcom/android/systemui/util/InitializationChecker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mInitializationChecker:Lcom/android/systemui/util/InitializationChecker;

    invoke-virtual {p1}, Lcom/android/systemui/util/InitializationChecker;->initializeComponents()Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    invoke-interface {v1}, Lcom/android/systemui/dagger/GlobalRootComponent;->getWMComponentBuilder()Lcom/android/systemui/dagger/WMComponent$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mInitializationChecker:Lcom/android/systemui/util/InitializationChecker;

    invoke-virtual {v2}, Lcom/android/systemui/util/InitializationChecker;->initializeComponents()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule;->createShellMainThread()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/SystemUIInitializer;Lcom/android/systemui/dagger/WMComponent$Builder;Landroid/os/HandlerThread;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "SystemUIFactory"

    const-string p1, "Failed to initialize WMComponent"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent$Builder;->build()Lcom/android/systemui/dagger/WMComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    check-cast v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->getSysUIComponent()Lcom/android/systemui/dagger/ReferenceSysUIComponent$Builder;

    move-result-object v0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/SystemUIInitializer;->prepareSysUIComponentBuilder(Lcom/android/systemui/dagger/SysUIComponent$Builder;Lcom/android/systemui/dagger/WMComponent;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->getShell()Lcom/android/wm/shell/sysui/ShellInterface;

    move-result-object v0

    check-cast p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setShell:Lcom/android/wm/shell/sysui/ShellInterface;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->getPip()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setPip:Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->getSplitScreen()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->getOneHanded()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->getBubbles()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->getTaskViewFactory()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->getShellTransitions()Lcom/android/wm/shell/shared/ShellTransitions;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setShellTransitions:Lcom/android/wm/shell/shared/ShellTransitions;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->getKeyguardTransitions()Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->getStartingSurface()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setStartingSurface:Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->getDisplayAreaHelper()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDisplayAreaHelper:Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->getRecentTasks()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setRecentTasks:Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->getBackAnimation()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setBackAnimation:Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->getDesktopMode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDesktopMode:Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->getEnterSplitGestureHandler()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setEnterSplitGestureHandler:Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->getSplitScreenController()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setSplitScreenController:Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->getDisplayController()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDisplayController:Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->init()V

    goto/16 :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/SystemUIInitializer;->prepareSysUIComponentBuilder(Lcom/android/systemui/dagger/SysUIComponent$Builder;Lcom/android/systemui/dagger/WMComponent;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/SystemUIInitializer$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/SystemUIInitializer$3;-><init>(Lcom/android/systemui/SystemUIInitializer;)V

    check-cast p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setShell:Lcom/android/wm/shell/sysui/ShellInterface;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setPip:Ljava/util/Optional;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/SystemUIInitializer$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIInitializer$2;-><init>(Lcom/android/systemui/SystemUIInitializer;)V

    iput-object v1, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setShellTransitions:Lcom/android/wm/shell/shared/ShellTransitions;

    new-instance v1, Lcom/android/systemui/SystemUIInitializer$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIInitializer$1;-><init>(Lcom/android/systemui/SystemUIInitializer;)V

    iput-object v1, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDisplayAreaHelper:Ljava/util/Optional;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setStartingSurface:Ljava/util/Optional;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setRecentTasks:Ljava/util/Optional;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setBackAnimation:Ljava/util/Optional;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDesktopMode:Ljava/util/Optional;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setEnterSplitGestureHandler:Ljava/util/Optional;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setSplitScreenController:Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/WMComponent;->getDisplayController()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDisplayController:Ljava/util/Optional;

    :goto_2
    invoke-virtual {p1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->build()Lcom/android/systemui/dagger/ReferenceSysUIComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {p1}, Lcom/android/systemui/dagger/SysUIComponent;->createDependency()Lcom/android/systemui/Dependency;

    move-result-object p0

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mTimeTickHandler:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    sget-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMainHandler:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mBgLooper:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mBroadcastDispatcher:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mBluetoothController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDeviceProvisionedController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mPluginManager:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAssistManager:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSecurityController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mTunerService:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDarkIconDispatcher:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mFragmentService:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/fragments/FragmentService;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mVolumeDialogController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mVolumeManager:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mMetricsLogger:Ldagger/Lazy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mTunablePaddingService:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mUiOffloadThread:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mLightBarController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mOverviewProxyService:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mShadeController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/shade/ShadeController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNavBarModeController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNavigationBarController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mStatusBarStateController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationLockscreenUserManager:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationMediaManager:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mINotificationManager:Ldagger/Lazy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSysUiStateFlagsContainer:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/model/SysUiState;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Landroid/app/IWallpaperManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mWallpaperManager:Ldagger/Lazy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mCommandQueue:Ldagger/Lazy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Lcom/android/internal/logging/UiEventLogger;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mUiEventLogger:Ldagger/Lazy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Lcom/android/systemui/flags/FeatureFlags;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mFeatureFlagsLazy:Ldagger/Lazy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mContentInsetsProviderLazy:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationSectionsManagerLazy:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mScreenOffAnimationController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAmbientStateLazy:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mGroupMembershipManagerLazy:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mGroupExpansionManagerLazy:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSystemUIDialogManagerLazy:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDialogTransitionAnimatorLazy:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mUserTrackerLazy:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/settings/UserTracker;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Landroid/hardware/SensorPrivacyManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mSensorPrivacyManager:Ldagger/Lazy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSPluginManager:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mSPluginDependencyProvider:Ldagger/Lazy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/samsung/systemui/splugins/SPluginDependencyProvider;

    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mStatusBarWindowControllerLazy:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLooperSlowLogController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDesktopManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSettingsHelper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSearcleManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/searcle/SearcleManager;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mWallpaperEventNotifier:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mWallpaperChangeNotifier:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mPluginLockManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mPluginWallpaperManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mPluginWallController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mPluginLockStarManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mQSClockBellTower:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSecQuickSettingsAffordanceInteractor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSecHideNotificationShadeInMirrorInteractor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/shade/domain/interactor/SecHideNotificationShadeInMirrorInteractor;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSecQSPanelResourcePicker:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mShadeHeaderController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/shade/ShadeHeaderController;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mShadeRepository:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/shade/data/repository/ShadeRepository;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSecNotificationShadeWindowStateInteractor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/qs/bar/ColoredBGHelper;

    iget-object v3, p0, Lcom/android/systemui/Dependency;->mColoredBGHelper:Ldagger/Lazy;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSecQpBlurController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/blur/SecQpBlurController;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mActivityStarter:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSecPanelExpansionStateInteractor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mQuickPanelExternalLogger:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/log/QuickPanelExternalLogger;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSecQSExpansionStateInteractor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mPanelSplitHelper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSecPanelTouchBlockHelper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSecPanelTouchProximityInteractor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/shade/domain/interactor/SecPanelTouchProximityInteractor;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mQSScrimViewSwitch:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSecPanelSAStatusLogInteractor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSecQSCoverResourcePicker:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/qs/SecQSCoverResourcePicker;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSubscreenUtil:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSubscreenMusicWidgetController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/media/SubscreenMusicWidgetController;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mPrivacyDialogController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/privacy/PrivacyDialogController;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSecQSDetailController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/qs/SecQSDetailController;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mFalsingManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/plugins/FalsingManager;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mResetSettingsManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/util/QsResetSettingsManager;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mQSBackupRestoreManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/qs/QSBackupRestoreManager;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mKnoxStateMonitor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSystemUIIndexMediator:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mFullExpansionPanelNotiAlphaController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNavBarStore:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNavBarBgHandler:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    sget-object v2, Lcom/android/systemui/Dependency;->NAVBAR_BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mTaskbarDelegate:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mRotationLockController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mVibratorHelper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_SETTINGS:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNetworkController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/statusbar/connectivity/NetworkController;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSubscreenQsPanelController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSecRotationWatcher:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/keyguard/SecRotationWatcher;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mUserInfoController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mUserSwitcherController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mUserSwitcherInteractor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSelectedUserInteractor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mPluginFaceWidgetManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mFaceWidgetController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mExternalClockProvider:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDisplayLifecycle:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mCoverUtilWrapper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSubScreenManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mCoverScreenManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mGlobalActionsComponent:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v2, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSPluginManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSPluginDependencyProvider:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mOnUserInteractionCallback:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mChannelEditorDialogController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mHighPriorityProvider:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAssistantFeedbackController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mPeopleSpaceWidgetManager:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mUserContextProvider:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/settings/UserContextProvider;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mBubblesManagerOptional:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    sget-object v0, Lcom/android/systemui/Dependency;->BUBBLE_MANAGER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mBgHandler:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    sget-object v0, Lcom/android/systemui/Dependency;->BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mLauncherApps:Ldagger/Lazy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_ALL:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mSubscreenNotificationController:Ldagger/Lazy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotifCollection:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardShortcutManager:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mFlashlightController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardMonitor:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mWakefulnessLifecycle:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mKeyguardVisibilityMonitor:Ldagger/Lazy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationShelfManager:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mPanelScreenShotBufferLogger:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/logging/PanelScreenShotBufferLogger;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotiCinemaLogger:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/logging/NotiCinemaLogger;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationBackupRestoreManager:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mShelfToolTipManager:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/ShelfToolTipManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationGutsManager:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationColorPicker:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotifLiveDataStore:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSensitiveNotificationProtectionController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mHeadsUpManager:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAllowedOngoingActivityListManager:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/notification/AllowedOngoingActivityListManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mFastUnlockController:Ldagger/Lazy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mCentralSurfaces:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mQuickSettingsController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/shade/QuickSettingsController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mConfigurationController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mFoldController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/keyguard/KeyguardFoldController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mUnlockedScreenOffAnimationHelper:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMultiSIMControllerLazy:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mStatusBarIconControllerLazy:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAiBriefManagerLazy:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/aibrief/AiBriefManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mSecSTQuickControlRequestReceiver:Ldagger/Lazy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAppLockNotificationController:Ldagger/Lazy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mKeyguardStatusBarNioLayoutRepository:Ldagger/Lazy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->setInstance(Lcom/android/systemui/Dependency;)V

    return-void
.end method

.method public prepareSysUIComponentBuilder(Lcom/android/systemui/dagger/SysUIComponent$Builder;Lcom/android/systemui/dagger/WMComponent;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    return-object p1
.end method
