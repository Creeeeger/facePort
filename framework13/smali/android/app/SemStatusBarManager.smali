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
    .param p1, "context"    # Landroid/content/Context;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/SemStatusBarManager;->mToken:Landroid/os/IBinder;

    .line 157
    iput-object p1, p0, Landroid/app/SemStatusBarManager;->mContext:Landroid/content/Context;

    .line 158
    return-void
.end method

.method private blacklist enforceStatusBarService()V
    .locals 3

    .line 172
    iget-object v0, p0, Landroid/app/SemStatusBarManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method private blacklist getBarTypeFromContext()I
    .locals 2

    .line 178
    iget-object v0, p0, Landroid/app/SemStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 179
    return v1

    .line 181
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized blacklist getService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/app/SemStatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 162
    const-string/jumbo v0, "statusbar"

    .line 163
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 162
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SemStatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 168
    .end local p0    # "this":Landroid/app/SemStatusBarManager;
    :cond_0
    iget-object v0, p0, Landroid/app/SemStatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist getTag()Ljava/lang/String;
    .locals 5

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "tag":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "stack":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 190
    const-string v2, "[.]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "st":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    .end local v3    # "i":I
    :cond_0
    array-length v3, v2

    if-lez v3, :cond_1

    .line 194
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

    .line 197
    .end local v2    # "st":[Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private blacklist resetScheduleAutoHide()V
    .locals 3

    .line 434
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->enforceStatusBarService()V

    .line 435
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 436
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 438
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->resetScheduleAutoHide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    .line 441
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 444
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist collapsePanels()V
    .locals 2

    .line 286
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 287
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getBarTypeFromContext()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanelsToType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 298
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 296
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist disable(I)V
    .locals 4
    .param p1, "what"    # I

    .line 220
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 221
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Landroid/app/SemStatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/app/SemStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getBarTypeFromContext()I

    move-result v3

    .line 225
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disableToType(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 233
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 231
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist disable2(I)V
    .locals 4
    .param p1, "what"    # I

    .line 247
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 248
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 252
    iget-object v1, p0, Landroid/app/SemStatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/app/SemStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 253
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getBarTypeFromContext()I

    move-result v3

    .line 252
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ToType(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 260
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 258
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist expandNotificationsPanel()V
    .locals 2

    .line 267
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 268
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getBarTypeFromContext()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanelToType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 279
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 277
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist expandQuickSettingsPanel()V
    .locals 3

    .line 305
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 306
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 310
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getBarTypeFromContext()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanelToType(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 317
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 315
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getDisableFlags()I
    .locals 5

    .line 384
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 385
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 389
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getBarTypeFromContext()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->getDisableFlagsToType(Landroid/os/IBinder;II)[I

    move-result-object v2

    aget v1, v2, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 395
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 396
    return v1

    .line 392
    :catch_0
    move-exception v0

    .line 394
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isPanelExpanded()Z
    .locals 2

    .line 347
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 348
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 352
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getBarTypeFromContext()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->getPanelExpandStateToType(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 358
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 359
    const/4 v0, 0x0

    return v0

    .line 355
    :catch_0
    move-exception v0

    .line 357
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setIndicatorBgColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 368
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 369
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setIndicatorBgColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 376
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 374
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "position"    # I

    .line 405
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/SemStatusBarManager;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    .line 406
    return-void
.end method

.method public whitelist setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    .locals 3
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "position"    # I
    .param p4, "priority"    # I

    .line 414
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->enforceStatusBarService()V

    .line 415
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 416
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_2

    .line 418
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 419
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :cond_1
    goto :goto_0

    .line 421
    :catch_0
    move-exception v1

    .line 423
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 426
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist setPanelExpandState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 326
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 327
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getBarTypeFromContext()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/statusbar/IStatusBarService;->setPanelExpandStateToType(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 338
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 336
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
