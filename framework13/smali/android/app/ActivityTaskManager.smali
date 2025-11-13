.class public Landroid/app/ActivityTaskManager;
.super Ljava/lang/Object;
.source "ActivityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityTaskManager$BoundsCompatAlignmentConstants;,
        Landroid/app/ActivityTaskManager$OrientationControlPolicy;,
        Landroid/app/ActivityTaskManager$RootTaskInfo;,
        Landroid/app/ActivityTaskManager$SplitCreateMode;
    }
.end annotation


# static fields
.field public static final blacklist APP_CONTINUITY_PACKAGES:I = 0x1

.field public static final blacklist CUSTOM_ASPECT_RATIO_LEGACY_PACKAGES:I = 0x200

.field public static final blacklist CUSTOM_ASPECT_RATIO_PACKAGES:I = 0x2

.field public static final blacklist DEFAULT_MINIMAL_SPLIT_SCREEN_DISPLAY_SIZE_DP:I = 0x1b8

.field public static final blacklist DISPLAY_COMPAT_PACKAGES:I = 0x4

.field public static final blacklist DISPLAY_CUTOUT_PACKAGES:I = 0x80

.field public static final blacklist EMBED_ACTIVITY_PACKAGES:I = 0x400

.field public static final blacklist EXTRA_IGNORE_TARGET_SECURITY:Ljava/lang/String; = "android.app.extra.EXTRA_IGNORE_TARGET_SECURITY"

.field public static final blacklist EXTRA_OPTIONS:Ljava/lang/String; = "android.app.extra.OPTIONS"

.field public static final blacklist FIXED_ASPECT_RATIO_PACKAGES:I = 0x8

.field private static final greylist IActivityTaskManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/IActivityTaskManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INVALID_STACK_ID:I = -0x1

.field public static final blacklist INVALID_TASK_ID:I = -0x1

.field public static final blacklist NO_WAIT_ROTATION_PACKAGES:I = 0x100

.field public static final blacklist ORIENTATION_CONTROL_PACKAGES:I = 0x40

.field public static final blacklist RESET_ALL_PACKAGES_SETTINGS:I = 0x6ff

.field public static final blacklist RESIZE_MODE_FORCED:I = 0x2

.field public static final blacklist RESIZE_MODE_PRESERVE_WINDOW:I = 0x1

.field public static final blacklist RESIZE_MODE_SYSTEM:I = 0x0

.field public static final blacklist RESIZE_MODE_SYSTEM_SCREEN_ROTATION:I = 0x1

.field public static final blacklist RESIZE_MODE_USER:I = 0x1

.field public static final blacklist RESIZE_MODE_USER_FORCED:I = 0x3

.field public static final blacklist SPLIT_ACTIVITY_PACKAGES:I = 0x20

.field public static final blacklist SPLIT_SCREEN_CREATE_MODE_BOTTOM:I = 0x5

.field public static final blacklist SPLIT_SCREEN_CREATE_MODE_LEFT:I = 0x2

.field public static final blacklist SPLIT_SCREEN_CREATE_MODE_RIGHT:I = 0x4

.field public static final blacklist SPLIT_SCREEN_CREATE_MODE_TOP:I = 0x3

.field public static final blacklist SPLIT_SCREEN_CREATE_MODE_UNDEFINED:I = -0x1

.field public static final blacklist SUPPORTS_FLEX_PANEL_PACKAGES:I = 0x10

.field private static final blacklist sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/ActivityTaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sMaxRecentTasks:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 228
    const/4 v0, -0x1

    sput v0, Landroid/app/ActivityTaskManager;->sMaxRecentTasks:I

    .line 230
    new-instance v0, Landroid/app/ActivityTaskManager$1;

    invoke-direct {v0}, Landroid/app/ActivityTaskManager$1;-><init>()V

    sput-object v0, Landroid/app/ActivityTaskManager;->sInstance:Landroid/util/Singleton;

    .line 252
    new-instance v0, Landroid/app/ActivityTaskManager$2;

    invoke-direct {v0}, Landroid/app/ActivityTaskManager$2;-><init>()V

    sput-object v0, Landroid/app/ActivityTaskManager;->IActivityTaskManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityTaskManager-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityTaskManager;-><init>()V

    return-void
.end method

.method public static blacklist currentUiModeSupportsErrorDialogs(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 499
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 500
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {v0}, Landroid/app/ActivityTaskManager;->currentUiModeSupportsErrorDialogs(Landroid/content/res/Configuration;)Z

    move-result v1

    return v1
.end method

.method public static blacklist currentUiModeSupportsErrorDialogs(Landroid/content/res/Configuration;)Z
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 490
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    .line 491
    .local v0, "modeType":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static blacklist deviceSupportsMultiWindow(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 347
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist deviceSupportsSplitScreenMultiWindow(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 383
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist getDefaultAppRecentsLimitStatic()I
    .locals 1

    .line 329
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public static blacklist getInstance()Landroid/app/ActivityTaskManager;
    .locals 1

    .line 243
    sget-object v0, Landroid/app/ActivityTaskManager;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityTaskManager;

    return-object v0
.end method

.method public static blacklist getMaxAppRecentsLimitStatic()I
    .locals 1

    .line 337
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static blacklist getMaxNumPictureInPictureActions(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 505
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getMaxRecentTasksStatic()I
    .locals 1

    .line 302
    sget v0, Landroid/app/ActivityTaskManager;->sMaxRecentTasks:I

    if-gez v0, :cond_1

    .line 303
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    :goto_0
    sput v0, Landroid/app/ActivityTaskManager;->sMaxRecentTasks:I

    return v0

    .line 305
    :cond_1
    return v0
.end method

.method public static blacklist getService()Landroid/app/IActivityTaskManager;
    .locals 1

    .line 248
    sget-object v0, Landroid/app/ActivityTaskManager;->IActivityTaskManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityTaskManager;

    return-object v0
.end method

.method public static blacklist splitCreateModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "splitCreateMode"    # I

    .line 211
    packed-switch p0, :pswitch_data_0

    .line 223
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    :pswitch_1
    const-string v0, "SPLIT_SCREEN_CREATE_MODE_BOTTOM"

    return-object v0

    .line 219
    :pswitch_2
    const-string v0, "SPLIT_SCREEN_CREATE_MODE_RIGHT"

    return-object v0

    .line 217
    :pswitch_3
    const-string v0, "SPLIT_SCREEN_CREATE_MODE_TOP"

    return-object v0

    .line 215
    :pswitch_4
    const-string v0, "SPLIT_SCREEN_CREATE_MODE_LEFT"

    return-object v0

    .line 213
    :pswitch_5
    const-string v0, "SPLIT_SCREEN_CREATE_MODE_UNDEFINED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist supportsMultiWindow(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 357
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist supportsMultiWindow(Landroid/content/Context;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ignoreCoreState"    # Z

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 366
    .local v0, "isWatch":Z
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    .line 367
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 366
    :goto_0
    return v1
.end method

.method public static blacklist supportsSplitScreenMultiWindow(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 396
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist supportsSplitScreenMultiWindow(Landroid/content/Context;Z)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ignoreCoreState"    # Z

    .line 401
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 402
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 404
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 405
    .local v1, "widthDp":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 406
    .local v2, "heightDp":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x1b8

    if-ge v3, v5, :cond_0

    .line 407
    return v4

    .line 410
    :cond_0
    invoke-static {p0, p1}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 414
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x11101da

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 410
    :goto_0
    return v4
.end method


# virtual methods
.method public blacklist clearLaunchParamsForPackages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 479
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->clearLaunchParamsForPackages(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 483
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist detachNavigationBarFromApp(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "transition"    # Landroid/os/IBinder;

    .line 619
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->detachNavigationBarFromApp(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    nop

    .line 623
    return-void

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRecentTasks(III)Ljava/util/List;
    .locals 2
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 547
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityTaskManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTaskBounds(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "taskId"    # I

    .line 574
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTasks(I)Ljava/util/List;
    .locals 1
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTasks(IZ)Ljava/util/List;
    .locals 1
    .param p1, "maxNum"    # I
    .param p2, "filterOnlyVisibleRecents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 523
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ActivityTaskManager;->getTasks(IZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTasks(IZZ)Ljava/util/List;
    .locals 2
    .param p1, "maxNum"    # I
    .param p2, "filterOnlyVisibleRecents"    # Z
    .param p3, "keepIntentExtra"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 534
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityTaskManager;->getTasks(IZZ)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isInLockTaskMode()Z
    .locals 2

    .line 596
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist moveTaskToRootTask(IIZ)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "rootTaskId"    # I
    .param p3, "toTop"    # Z

    .line 452
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityTaskManager;->moveTaskToRootTask(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    nop

    .line 456
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "parcelable"    # Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    .line 318
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    nop

    .line 322
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 587
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    nop

    .line 591
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerTaskStackListener(Landroid/app/TaskStackListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/TaskStackListener;

    .line 556
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    nop

    .line 560
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeAllVisibleRecentTasks()V
    .locals 2

    .line 291
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->removeAllVisibleRecentTasks()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    nop

    .line 295
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeRootTasksInWindowingModes([I)V
    .locals 2
    .param p1, "windowingModes"    # [I

    .line 268
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->removeRootTasksInWindowingModes([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    nop

    .line 272
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeRootTasksWithActivityTypes([I)V
    .locals 2
    .param p1, "activityTypes"    # [I

    .line 278
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->removeRootTasksWithActivityTypes([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    nop

    .line 282
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeTask(I)Z
    .locals 2
    .param p1, "taskId"    # I

    .line 606
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->removeTask(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist resizeTask(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 466
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/app/IActivityTaskManager;->resizeTask(ILandroid/graphics/Rect;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    nop

    .line 470
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist rotateDexCompatTask(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 882
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->rotateDexCompatTask(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    nop

    .line 886
    return-void

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setCustomSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "themeName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 869
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityTaskManager;->setCustomSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    nop

    .line 873
    return-void

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startSystemLockTaskMode(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 425
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    nop

    .line 429
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist stopSystemLockTaskMode()V
    .locals 2

    .line 437
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    nop

    .line 441
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterTaskStackListener(Landroid/app/TaskStackListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/TaskStackListener;

    .line 565
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    nop

    .line 569
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
