.class public Lcom/android/systemui/SystemUIApplication;
.super Landroid/app/Application;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBootAnimationFinishedTrigger:Lcom/android/systemui/BootAnimationFinishedTrigger;

.field public mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

.field public mContextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

.field public mFlipfont:I

.field public mInitializer:Lcom/android/systemui/SystemUIInitializer;

.field public mPostServices:[Lcom/android/systemui/CoreStartable;

.field public mPostServicesStarted:Z

.field public mProcessWrapper:Lcom/android/systemui/process/ProcessWrapper;

.field public mServices:[Lcom/android/systemui/CoreStartable;

.field public mServicesStarted:Z

.field public mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

.field public final mThemeHelper:Lcom/android/systemui/SystemUIApplication$SystemUIThemeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isAlreadyBooted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "LooperSlow"

    const-string v2, "enable looper log on boot"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x1e

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/SystemUIApplication;->mFlipfont:I

    new-instance v1, Lcom/android/systemui/SystemUIApplication$SystemUIThemeHelper;

    invoke-direct {v1, v0}, Lcom/android/systemui/SystemUIApplication$SystemUIThemeHelper;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mThemeHelper:Lcom/android/systemui/SystemUIApplication$SystemUIThemeHelper;

    invoke-static {}, Landroid/os/Trace;->registerWithPerfetto()V

    sput-boolean v0, Lcom/android/internal/protolog/common/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    return-void
.end method

.method public static notifyBootCompleted(Lcom/android/systemui/CoreStartable;)V
    .locals 3

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".onBootCompleted()"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/CoreStartable;->onBootCompleted()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public static overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    const p2, 0x10408ff

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p2, 0x10408fe

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p2, "android.substName"

    invoke-virtual {v0, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public static startStartable(Lcom/android/systemui/CoreStartable;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "running: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".start()"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/CoreStartable;->start()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public static timeInitialization(Ljava/lang/String;Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Initialization of "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " took "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUIService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mThemeHelper:Lcom/android/systemui/SystemUIApplication$SystemUIThemeHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    const/high16 v1, -0x7fff0000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/SysUIComponent;->getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-result-object v0

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".onConfigurationChanged()"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget v0, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v0, :cond_3

    iget v1, p0, Lcom/android/systemui/SystemUIApplication;->mFlipfont:I

    if-eq v1, v0, :cond_3

    invoke-static {}, Landroid/graphics/Typeface;->setFlipFonts()V

    iget p1, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput p1, p0, Lcom/android/systemui/SystemUIApplication;->mFlipfont:I

    :cond_3
    return-void
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemUIBootTiming"

    const-wide/16 v2, 0x1000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v1, "DependencyInjection"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mContextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

    invoke-interface {v1, p0}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;->onContextAvailable(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mInitializer:Lcom/android/systemui/SystemUIInitializer;

    invoke-virtual {v1}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {v1}, Lcom/android/systemui/dagger/SysUIComponent;->provideBootCacheImpl()Lcom/android/systemui/BootCompleteCacheImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mInitializer:Lcom/android/systemui/SystemUIInitializer;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIInitializer;->getRootComponent()Lcom/android/systemui/dagger/GlobalRootComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/dagger/GlobalRootComponent;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/os/Looper;->setTraceTag(J)V

    invoke-interface {v0}, Lcom/android/systemui/dagger/GlobalRootComponent;->getProcessWrapper()Lcom/android/systemui/process/ProcessWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mProcessWrapper:Lcom/android/systemui/process/ProcessWrapper;

    const v1, 0x7f140600

    invoke-virtual {p0, v1}, Landroid/app/Application;->setTheme(I)V

    invoke-interface {v0}, Lcom/android/systemui/dagger/GlobalRootComponent;->getSystemPropertiesHelper()Lcom/android/systemui/flags/SystemPropertiesHelper;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "persist.debug.trace_layouts"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Landroid/view/View;->setTraceLayoutSteps(Z)V

    invoke-interface {v0}, Lcom/android/systemui/dagger/GlobalRootComponent;->getSystemPropertiesHelper()Lcom/android/systemui/flags/SystemPropertiesHelper;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "persist.debug.trace_request_layout_class"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/View;->setTracedRequestLayoutClassClass(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mProcessWrapper:Lcom/android/systemui/process/ProcessWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/process/ProcessWrapper;->isSystemUser()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/SysUIComponent;->provideBootAnimationFinishedImpl()Lcom/android/systemui/BootAnimationFinishedCacheImpl;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->addListener(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-static {}, Landroid/view/SurfaceControl;->getGPUContextPriority()I

    move-result v1

    const-string v2, "Found SurfaceFlinger\'s GPU Priority: "

    const-string v3, "SystemUIService"

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_REALTIME_NV:I

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting SysUI\'s GPU Context priority to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_HIGH_IMG:I

    invoke-static {v2, v3, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    sget v1, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_HIGH_IMG:I

    invoke-static {v1}, Landroid/view/ThreadedRenderer;->setContextPriority(I)V

    :cond_0
    new-instance v1, Lcom/android/systemui/SystemUIApplication$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIApplication$1;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/SystemUIApplication$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIApplication$2;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->startSecondaryUserServicesIfNeeded()V

    :goto_0
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 4

    const-string v0, "SYSUI_RAM_OPTIMIZATION onTrimMemory="

    const-string v1, "SystemUIService"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    array-length v0, v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Lcom/android/systemui/CoreStartable;->onTrimMemory(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mPostServicesStarted:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mPostServices:[Lcom/android/systemui/CoreStartable;

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mPostServices:[Lcom/android/systemui/CoreStartable;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Lcom/android/systemui/CoreStartable;->onTrimMemory(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final setContextAvailableCallback(Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication;->mContextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

    return-void
.end method

.method public final startSecondaryUserServicesIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mProcessWrapper:Lcom/android/systemui/process/ProcessWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/process/ProcessWrapper;->isSystemUser()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {v1}, Lcom/android/systemui/dagger/SysUIComponent;->getPerUserStartables()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    const-string v1, "StartSecondaryServices"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final startServicesIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p3

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    add-int/2addr v0, v3

    new-array v0, v0, [Lcom/android/systemui/CoreStartable;

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    iget-object v0, v0, Lcom/android/systemui/BootCompleteCacheImpl;->bootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mInitializer:Lcom/android/systemui/SystemUIInitializer;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIInitializer;->getRootComponent()Lcom/android/systemui/dagger/GlobalRootComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/dagger/GlobalRootComponent;->getSystemPropertiesHelper()Lcom/android/systemui/flags/SystemPropertiesHelper;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    invoke-virtual {v0}, Lcom/android/systemui/BootCompleteCacheImpl;->setBootComplete()V

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/SysUIComponent;->provideBootAnimationFinishedTrigger()Lcom/android/systemui/BootAnimationFinishedTrigger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootAnimationFinishedTrigger:Lcom/android/systemui/BootAnimationFinishedTrigger;

    invoke-virtual {p0}, Landroid/app/Application;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->initSystemUIAnalyticsStates(Landroid/app/Application;)V

    :cond_2
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v3, "SystemUIBootTiming "

    const-wide/16 v4, 0x1000

    invoke-direct {v0, v3, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, p1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v7, p2

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/SystemUIApplication;->startServicesImpl(Ljava/util/Map;Ljava/lang/String;[Lcom/android/systemui/CoreStartable;Ljava/lang/String;Landroid/util/TimingsTraceLog;)V

    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {p1}, Lcom/android/systemui/dagger/SysUIComponent;->getInitController()Lcom/android/systemui/InitController;

    move-result-object p1

    :goto_1
    iget-object p2, p1, Lcom/android/systemui/InitController;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p1, Lcom/android/systemui/InitController;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    iput-boolean v2, p1, Lcom/android/systemui/InitController;->mTasksExecuted:Z

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iput-boolean v2, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return-void
.end method

.method public final startServicesImpl(Ljava/util/Map;Ljava/lang/String;[Lcom/android/systemui/CoreStartable;Ljava/lang/String;Landroid/util/TimingsTraceLog;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    iget-object v5, v0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {v5}, Lcom/android/systemui/dagger/SysUIComponent;->createDumpManager()Lcom/android/systemui/dump/DumpManager;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const-string v7, "Topologically start Core Startables"

    invoke-virtual {v4, v7}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayDeque;

    move-object/from16 v8, p1

    check-cast v8, Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    new-instance v12, Ljava/util/ArrayDeque;

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayDeque;-><init>(I)V

    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/Class;

    iget-object v15, v0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {v15}, Lcom/android/systemui/dagger/SysUIComponent;->getStartableDependencies()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    if-eqz v15, :cond_1

    invoke-virtual {v6, v15}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v15

    if-eqz v15, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v12, v14}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;

    invoke-direct {v15, v2, v11, v13, v14}, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;-><init>([Lcom/android/systemui/CoreStartable;ILjava/lang/String;Ljava/util/Map$Entry;)V

    invoke-static {v13, v15, v4, v1}, Lcom/android/systemui/SystemUIApplication;->timeInitialization(Ljava/lang/String;Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    add-int/2addr v10, v9

    if-eqz v13, :cond_4

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move-object v7, v12

    goto :goto_0

    :cond_4
    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    const-string v8, "SystemUIService"

    if-nez v7, :cond_8

    :goto_4
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v2, v0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {v2}, Lcom/android/systemui/dagger/SysUIComponent;->getStartableDependencies()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    new-instance v3, Ljava/util/StringJoiner;

    const-string v4, ", "

    invoke-direct {v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_5

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to start "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Missing dependencies: ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to start all CoreStartables. Check logcat!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Topological CoreStartables completed in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " iterations"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p5 .. p5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v3, :cond_9

    new-instance v6, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda4;

    invoke-direct {v6, v2, v3}, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda4;-><init>([Lcom/android/systemui/CoreStartable;Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v1}, Lcom/android/systemui/SystemUIApplication;->timeInitialization(Ljava/lang/String;Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;Ljava/lang/String;)V

    :cond_9
    const/4 v9, 0x0

    :goto_6
    array-length v1, v2

    if-ge v9, v1, :cond_c

    aget-object v1, v2, v9

    iget-object v3, v0, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    iget-object v3, v3, Lcom/android/systemui/BootCompleteCacheImpl;->bootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v1}, Lcom/android/systemui/SystemUIApplication;->notifyBootCompleted(Lcom/android/systemui/CoreStartable;)V

    :cond_a
    invoke-interface {v1}, Lcom/android/systemui/CoreStartable;->isDumpCritical()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v1}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v5, v1}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Lcom/android/systemui/Dumpable;)V

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_c
    return-void
.end method

.method public final startSystemUserServicesIfNeeded()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mProcessWrapper:Lcom/android/systemui/process/ProcessWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/process/ProcessWrapper;->isSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "SystemUIService"

    const-string v0, "Tried starting SystemUser services on non-SystemUser"

    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mInitializer:Lcom/android/systemui/SystemUIInitializer;

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIInitializer;->getVendorComponent(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/TreeMap;

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    if-eqz v2, :cond_1

    new-instance v3, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    :goto_0
    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {v3}, Lcom/android/systemui/dagger/SysUIComponent;->getSafeUIStartables()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {v3}, Lcom/android/systemui/dagger/SysUIComponent;->getStartables()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {v3}, Lcom/android/systemui/dagger/SysUIComponent;->getPreStartables()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {v3}, Lcom/android/systemui/dagger/SysUIComponent;->getPerUserStartables()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    :goto_1
    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    const-string v2, "StartServices"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
