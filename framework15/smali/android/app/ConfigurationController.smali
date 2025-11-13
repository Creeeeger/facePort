.class Landroid/app/ConfigurationController;
.super Ljava/lang/Object;
.source "ConfigurationController.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ConfigurationController"


# instance fields
.field private final blacklist mActivityThread:Landroid/app/ActivityThreadInternal;

.field private blacklist mCompatConfiguration:Landroid/content/res/Configuration;

.field private blacklist mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mPendingConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mResourcesManager:Landroid/app/ResourcesManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThreadInternal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    iput-object p1, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    return-void
.end method

.method static blacklist createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    nop

    invoke-static {v0, p0, p1}, Lcom/samsung/android/core/CompatSandbox;->updateConfigWithoutWindowConfigurationIfNeeded(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-object v0
.end method

.method private blacklist handleConfigurationChangedInner(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 10

    iget-object v0, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v0}, Landroid/app/ActivityThreadInternal;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v1}, Landroid/app/ActivityThreadInternal;->getSystemUiContextNoCreate()Landroid/app/ContextImpl;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object v4, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object p1, v5

    iget v5, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0, v5}, Landroid/app/ConfigurationController;->updateDefaultDensity(I)V

    :cond_1
    iput-object v2, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    :cond_2
    if-nez p1, :cond_3

    monitor-exit v4

    return-void

    :cond_3
    iget-object v2, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v5

    :goto_1
    iget-object v6, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v6}, Landroid/app/ActivityThreadInternal;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v8, p1, p2}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    invoke-virtual {v6}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/app/ConfigurationController;->updateLocaleListFromAppContext(Landroid/content/Context;)V

    iget-object v8, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v8, :cond_5

    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    iput-object v8, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    :cond_5
    iget-object v8, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v8

    if-nez v8, :cond_6

    if-nez p2, :cond_6

    monitor-exit v4

    return-void

    :cond_6
    iget-object v8, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v8

    invoke-virtual {p0}, Landroid/app/ConfigurationController;->applyCompatConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    move-object p1, v9

    invoke-static {p1}, Landroid/graphics/HardwareRenderer;->sendDeviceConfigurationForDebugging(Landroid/content/res/Configuration;)V

    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v9

    and-int/2addr v9, v8

    if-eqz v9, :cond_7

    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->rebase()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v9

    and-int/2addr v9, v8

    if-eqz v9, :cond_8

    invoke-virtual {v3}, Landroid/content/res/Resources$Theme;->rebase()V

    :cond_8
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v4, v5}, Landroid/app/ActivityThreadInternal;->collectComponentCallbacks(Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v8}, Landroid/window/ConfigurationHelper;->freeTextLayoutCachesIfNeeded(I)V

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_a

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentCallbacks2;

    if-nez v2, :cond_9

    invoke-virtual {p0, v7, p1}, Landroid/app/ConfigurationController;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_a
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method final blacklist applyCompatConfiguration()Landroid/content/res/Configuration;
    .locals 4

    iget-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v2, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    :cond_0
    iget-object v2, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v3, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1, v3}, Landroid/app/ResourcesManager;->applyCompatConfiguration(ILandroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    :cond_1
    return-object v0
.end method

.method blacklist getCompatConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method blacklist getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method blacklist getCurDefaultDisplayDpi()I
    .locals 1

    iget-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    return v0
.end method

.method blacklist getPendingConfiguration(Z)Landroid/content/res/Configuration;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v0, v2

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method blacklist handleConfigurationChanged(Landroid/content/res/CompatibilityInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, p1}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->reportNewConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method blacklist handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "configChanged"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method blacklist handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 3

    invoke-static {}, Landroid/app/servertransaction/ClientTransactionListenerController;->getInstance()Landroid/app/servertransaction/ClientTransactionListenerController;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPreChanged(Landroid/content/Context;)V

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/app/ConfigurationController;->handleConfigurationChangedInner(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPostChanged(Landroid/content/Context;)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPostChanged(Landroid/content/Context;)V

    throw v2
.end method

.method blacklist performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :cond_0
    invoke-static {p2, v0}, Landroid/app/ConfigurationController;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/ComponentCallbacks2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method blacklist setCompatConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method blacklist setConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method blacklist updateDefaultDensity(I)V
    .locals 1

    iget-object v0, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v0}, Landroid/app/ActivityThreadInternal;->isInDensityCompatMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    if-eq p1, v0, :cond_0

    sput p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-static {p1}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    :cond_0
    return-void
.end method

.method blacklist updateLocaleListFromAppContext(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v1}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1, v3}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/os/LocaleList;

    invoke-direct {v3, v0, v1}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    invoke-static {v3}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    return-void
.end method

.method blacklist updatePendingConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 2

    iget-object v0, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
