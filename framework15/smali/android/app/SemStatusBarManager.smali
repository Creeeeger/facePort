.class public Landroid/app/SemStatusBarManager;
.super Ljava/lang/Object;
.source "SemStatusBarManager.java"


# static fields
.field public static final whitelist DISABLE2_NONE:I = 0x0

.field public static final whitelist DISABLE2_ROTATE_SUGGESTIONS:I = 0x10

.field public static final whitelist DISABLE_BACK:I = 0x400000

.field public static final whitelist DISABLE_CLOCK:I = 0x800000

.field public static final whitelist DISABLE_EXPAND:I = 0x10000

.field public static final blacklist DISABLE_EXPAND_AND_TOUCH:I = 0x20000000

.field public static final whitelist DISABLE_EXPAND_ON_KEYGUARD:I = 0x10000000

.field public static final whitelist DISABLE_HOME:I = 0x200000

.field public static final whitelist DISABLE_NONE:I = 0x0

.field public static final whitelist DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final whitelist DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final whitelist DISABLE_RECENT:I = 0x1000000

.field public static final whitelist DISABLE_SEARCH:I = 0x2000000

.field public static final whitelist DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final whitelist NAVIGATION_BAR_POSITION_LEFT:I = 0x0

.field public static final whitelist NAVIGATION_BAR_POSITION_RIGHT:I = 0x1

.field private static final blacklist NAVIGATION_BAR_SHORTCUT_NORMAL_PRIORITY:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "SemStatusBarManager"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Lcom/android/internal/statusbar/IStatusBarService;

.field private blacklist mToken:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/SemStatusBarManager;->mToken:Landroid/os/IBinder;

    iput-object p1, p0, Landroid/app/SemStatusBarManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist enforceStatusBarService()V
    .locals 3

    iget-object v0, p0, Landroid/app/SemStatusBarManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getBarTypeFromContext()I
    .locals 1

    iget-object v0, p0, Landroid/app/SemStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized blacklist getService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/SemStatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SemStatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    nop

    :cond_0
    iget-object v0, p0, Landroid/app/SemStatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist getTag()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "[.]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length v3, v2

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public whitelist collapsePanels()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getBarTypeFromContext()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanelsToType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist disable(I)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/SemStatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/app/SemStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getBarTypeFromContext()I

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disableToType(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist disable2(I)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/SemStatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/app/SemStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getBarTypeFromContext()I

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ToType(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist expandNotificationsPanel()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getBarTypeFromContext()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanelToType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist expandQuickSettingsPanel()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getBarTypeFromContext()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanelToType(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getDisableFlags()I
    .locals 5

    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getBarTypeFromContext()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4, v2}, Lcom/android/internal/statusbar/IStatusBarService;->getDisableFlagsToType(Landroid/os/IBinder;II)[I

    move-result-object v2

    aget v1, v2, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    nop

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isPanelExpanded()Z
    .locals 2

    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getBarTypeFromContext()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->getPanelExpandStateToType(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    nop

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setIndicatorBgColor(I)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setIndicatorBgColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/SemStatusBarManager;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    return-void
.end method

.method public whitelist setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    .locals 3

    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->enforceStatusBarService()V

    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist setPanelExpandState(Z)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getBarTypeFromContext()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/statusbar/IStatusBarService;->setPanelExpandStateToType(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
