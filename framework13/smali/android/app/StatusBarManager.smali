.class public Landroid/app/StatusBarManager;
.super Ljava/lang/Object;
.source "StatusBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;,
        Landroid/app/StatusBarManager$UndoCallback;,
        Landroid/app/StatusBarManager$RequestResultCallback;,
        Landroid/app/StatusBarManager$DisableInfo;,
        Landroid/app/StatusBarManager$MediaTransferReceiverState;,
        Landroid/app/StatusBarManager$MediaTransferSenderState;,
        Landroid/app/StatusBarManager$NavBarMode;,
        Landroid/app/StatusBarManager$RequestResult;,
        Landroid/app/StatusBarManager$SessionFlags;,
        Landroid/app/StatusBarManager$WindowVisibleState;,
        Landroid/app/StatusBarManager$WindowType;,
        Landroid/app/StatusBarManager$Disable2Flags;,
        Landroid/app/StatusBarManager$DisableFlags;
    }
.end annotation


# static fields
.field public static final blacklist ALL_SESSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o CAMERA_LAUNCH_SOURCE_LIFT_TRIGGER:I = 0x2

.field public static final greylist-max-o CAMERA_LAUNCH_SOURCE_POWER_DOUBLE_TAP:I = 0x1

.field public static final greylist-max-o CAMERA_LAUNCH_SOURCE_WIGGLE:I = 0x0

.field public static final blacklist DEFAULT_SETUP_DISABLE2_FLAGS:I = 0x0

.field public static final blacklist DEFAULT_SETUP_DISABLE_FLAGS:I = 0x3a50000

.field private static final blacklist DEFAULT_SIM_LOCKED_DISABLED_FLAGS:I = 0x10000

.field public static final greylist-max-o DISABLE2_GLOBAL_ACTIONS:I = 0x8

.field public static final greylist-max-o DISABLE2_MASK:I = 0x1f

.field public static final greylist-max-o DISABLE2_NONE:I = 0x0

.field public static final greylist-max-o DISABLE2_NOTIFICATION_SHADE:I = 0x4

.field public static final greylist-max-o DISABLE2_QUICK_SETTINGS:I = 0x1

.field public static final greylist-max-o DISABLE2_ROTATE_SUGGESTIONS:I = 0x10

.field public static final greylist-max-o DISABLE2_SYSTEM_ICONS:I = 0x2

.field public static final greylist-max-o DISABLE_BACK:I = 0x400000

.field public static final greylist-max-o DISABLE_CLOCK:I = 0x800000

.field public static final blacklist DISABLE_EXPAND:I = 0x10000

.field public static final greylist-max-o DISABLE_HOME:I = 0x200000

.field public static final greylist-max-o DISABLE_MASK:I = 0x7ff0000

.field public static final greylist-max-o DISABLE_NAVIGATION:I = 0x1200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist DISABLE_NONE:I = 0x0

.field public static final greylist-max-o DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final greylist-max-o DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final greylist-max-r DISABLE_NOTIFICATION_TICKER:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist DISABLE_ONGOING_CALL_CHIP:I = 0x4000000

.field public static final greylist-max-o DISABLE_RECENT:I = 0x1000000

.field public static final greylist-max-o DISABLE_SEARCH:I = 0x2000000

.field public static final greylist-max-o DISABLE_SYSTEM_INFO:I = 0x100000

.field private static final blacklist MEDIA_CONTROL_SESSION_ACTIONS:J = 0xc25bf22L

.field public static final whitelist MEDIA_TRANSFER_RECEIVER_STATE_CLOSE_TO_SENDER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_RECEIVER_STATE_FAR_FROM_SENDER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_ALMOST_CLOSE_TO_END_CAST:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_ALMOST_CLOSE_TO_START_CAST:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_FAR_FROM_RECEIVER:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_RECEIVER_FAILED:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_RECEIVER_SUCCEEDED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_RECEIVER_TRIGGERED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_THIS_DEVICE_FAILED:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_THIS_DEVICE_SUCCEEDED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_THIS_DEVICE_TRIGGERED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o NAVIGATION_HINT_BACK_ALT:I = 0x1

.field public static final greylist-max-o NAVIGATION_HINT_IME_SHOWN:I = 0x2

.field public static final blacklist NAVIGATION_HINT_IME_SWITCHER_SHOWN:I = 0x4

.field public static final whitelist NAV_BAR_MODE_DEFAULT:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAV_BAR_MODE_KIDS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SESSION_BIOMETRIC_PROMPT:I = 0x2

.field public static final blacklist SESSION_KEYGUARD:I = 0x1

.field public static final blacklist STATUS_BAR_BAIDU_CARLIFE:I = 0x2

.field public static final blacklist STATUS_BAR_DEX:I = 0x1

.field public static final blacklist STATUS_BAR_PHONE:I = 0x0

.field public static final whitelist TILE_ADD_REQUEST_ERROR_APP_NOT_IN_FOREGROUND:I = 0x3ec

.field public static final whitelist TILE_ADD_REQUEST_ERROR_BAD_COMPONENT:I = 0x3ea

.field public static final whitelist TILE_ADD_REQUEST_ERROR_MISMATCHED_PACKAGE:I = 0x3e8

.field public static final whitelist TILE_ADD_REQUEST_ERROR_NOT_CURRENT_USER:I = 0x3eb

.field public static final whitelist TILE_ADD_REQUEST_ERROR_NO_STATUS_BAR_SERVICE:I = 0x3ed

.field public static final whitelist TILE_ADD_REQUEST_ERROR_REQUEST_IN_PROGRESS:I = 0x3e9

.field private static final blacklist TILE_ADD_REQUEST_FIRST_ERROR_CODE:I = 0x3e8

.field public static final blacklist TILE_ADD_REQUEST_RESULT_DIALOG_DISMISSED:I = 0x3

.field public static final whitelist TILE_ADD_REQUEST_RESULT_TILE_ADDED:I = 0x2

.field public static final whitelist TILE_ADD_REQUEST_RESULT_TILE_ALREADY_ADDED:I = 0x1

.field public static final whitelist TILE_ADD_REQUEST_RESULT_TILE_NOT_ADDED:I = 0x0

.field public static final greylist-max-o WINDOW_NAVIGATION_BAR:I = 0x2

.field public static final greylist-max-o WINDOW_STATE_HIDDEN:I = 0x2

.field public static final greylist-max-o WINDOW_STATE_HIDING:I = 0x1

.field public static final greylist-max-o WINDOW_STATE_SHOWING:I = 0x0

.field public static final greylist-max-o WINDOW_STATUS_BAR:I = 0x1


# instance fields
.field private greylist mContext:Landroid/content/Context;

.field private greylist-max-o mService:Lcom/android/internal/statusbar/IStatusBarService;

.field private greylist mToken:Landroid/os/IBinder;

.field private final blacklist nearbyMediaDevicesProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/NearbyMediaDevicesProvider;",
            "Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 251
    nop

    .line 252
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 253
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 251
    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/app/StatusBarManager;->ALL_SESSIONS:Ljava/util/Set;

    return-void
.end method

.method constructor greylist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    .line 554
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    .line 559
    iput-object p1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 560
    return-void
.end method

.method private blacklist clickNotificationInternal(Ljava/lang/String;IIZ)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "count"    # I
    .param p4, "visible"    # Z

    .line 688
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 689
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 690
    nop

    .line 691
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v1

    .line 690
    invoke-interface {v0, p1, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 696
    return-void

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getBarTypeFromContext()I
    .locals 2

    .line 586
    iget-object v0, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 587
    return v1

    .line 589
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "barType":I
    if-nez p1, :cond_0

    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 602
    const/4 v0, 0x1

    goto :goto_0

    .line 604
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 605
    const/4 v0, 0x1

    .line 607
    :cond_1
    :goto_0
    return v0
.end method

.method private declared-synchronized greylist getService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    monitor-enter p0

    .line 564
    :try_start_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 565
    const-string/jumbo v0, "statusbar"

    .line 566
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 565
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 567
    if-nez v0, :cond_0

    .line 568
    const-string v0, "StatusBarManager"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .end local p0    # "this":Landroid/app/StatusBarManager;
    :cond_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist getTag()Ljava/lang/String;
    .locals 5

    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, "tag":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "stack":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 616
    const-string v2, "[.]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, "st":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 619
    .end local v3    # "i":I
    :cond_0
    array-length v3, v2

    if-lez v3, :cond_1

    .line 620
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

    .line 623
    .end local v2    # "st":[Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method static synthetic blacklist lambda$requestAddTileService$0(Ljava/util/function/Consumer;)V
    .locals 1
    .param p0, "resultCallback"    # Ljava/util/function/Consumer;

    .line 1048
    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist useMediaSessionActionsForApp(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 1279
    const-wide/32 v0, 0xc25bf22

    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o windowStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 1284
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "WINDOW_STATE_HIDING"

    return-object v0

    .line 1285
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "WINDOW_STATE_HIDDEN"

    return-object v0

    .line 1286
    :cond_1
    if-nez p0, :cond_2

    const-string v0, "WINDOW_STATE_SHOWING"

    return-object v0

    .line 1287
    :cond_2
    const-string v0, "WINDOW_STATE_UNKNOWN"

    return-object v0
.end method


# virtual methods
.method public blacklist cancelRequestAddTile(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1074
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1077
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelRequestAddTile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1080
    goto :goto_0

    .line 1078
    :catch_0
    move-exception v1

    .line 1079
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1081
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist clickNotification(Ljava/lang/String;IIZ)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "count"    # I
    .param p4, "visible"    # Z

    .line 683
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/StatusBarManager;->clickNotificationInternal(Ljava/lang/String;IIZ)V

    .line 684
    return-void
.end method

.method public greylist-max-r collapsePanels()V
    .locals 2

    .line 754
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 755
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 759
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getBarTypeFromContext()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanelsToType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 765
    return-void

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist disable(I)V
    .locals 7
    .param p1, "what"    # I

    .line 636
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 637
    .local v5, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 638
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 642
    iget-object v3, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 643
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Landroid/app/StatusBarManager;->getBarTypeFromContext()I

    move-result v6

    .line 642
    move-object v1, v0

    move v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v5    # "userId":I
    :cond_0
    nop

    .line 649
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o disable2(I)V
    .locals 7
    .param p1, "what"    # I

    .line 661
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 662
    .local v5, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 663
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 667
    iget-object v3, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 668
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Landroid/app/StatusBarManager;->getBarTypeFromContext()I

    move-result v6

    .line 667
    move-object v1, v0

    move v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v5    # "userId":I
    :cond_0
    nop

    .line 674
    return-void

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist disable2ToType(II)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "barType"    # I

    .line 857
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 858
    .local v5, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 859
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 860
    iget-object v3, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 861
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 860
    move-object v1, v0

    move v2, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v5    # "userId":I
    :cond_0
    nop

    .line 866
    return-void

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist disableToType(II)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "barType"    # I

    .line 841
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 842
    .local v5, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 843
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 844
    iget-object v3, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 845
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 844
    move-object v1, v0

    move v2, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v5    # "userId":I
    :cond_0
    nop

    .line 850
    return-void

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist expandNotificationsPanel()V
    .locals 2

    .line 724
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 725
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 729
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getBarTypeFromContext()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanelToType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 735
    return-void

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist expandSettingsPanel()V
    .locals 1

    .line 810
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->expandSettingsPanel(Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method public greylist-max-r expandSettingsPanel(Ljava/lang/String;)V
    .locals 2
    .param p1, "subPanel"    # Ljava/lang/String;

    .line 822
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 823
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 827
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getBarTypeFromContext()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanelToType(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 833
    return-void

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDisableInfo()Landroid/app/StatusBarManager$DisableInfo;
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 970
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 971
    .local v0, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 972
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 973
    .local v2, "flags":[I
    if-eqz v1, :cond_0

    .line 974
    iget-object v5, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v5, v0}, Lcom/android/internal/statusbar/IStatusBarService;->getDisableFlags(Landroid/os/IBinder;I)[I

    move-result-object v5

    move-object v2, v5

    .line 977
    :cond_0
    new-instance v5, Landroid/app/StatusBarManager$DisableInfo;

    aget v3, v2, v3

    aget v4, v2, v4

    invoke-direct {v5, v3, v4}, Landroid/app/StatusBarManager$DisableInfo;-><init>(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 978
    .end local v0    # "userId":I
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v2    # "flags":[I
    :catch_0
    move-exception v0

    .line 979
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNavBarMode()I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1115
    const/4 v0, 0x0

    .line 1117
    .local v0, "navBarMode":I
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1118
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 1119
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->getNavBarMode()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1123
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 1124
    return v0

    .line 1121
    :catch_0
    move-exception v1

    .line 1122
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist handleSystemKey(I)V
    .locals 2
    .param p1, "key"    # I

    .line 794
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 795
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 796
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 801
    return-void

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerNearbyMediaDevicesProvider(Landroid/media/NearbyMediaDevicesProvider;)V
    .locals 3
    .param p1, "provider"    # Landroid/media/NearbyMediaDevicesProvider;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1222
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    iget-object v0, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    return-void

    .line 1227
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1228
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    new-instance v1, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;

    invoke-direct {v1, p1}, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;-><init>(Landroid/media/NearbyMediaDevicesProvider;)V

    .line 1230
    .local v1, "providerWrapper":Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;
    iget-object v2, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v1    # "providerWrapper":Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;
    nop

    .line 1235
    return-void

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r removeIcon(Ljava/lang/String;)V
    .locals 2
    .param p1, "slot"    # Ljava/lang/String;

    .line 887
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 888
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 889
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->removeIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 894
    return-void

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestAddTileService(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 8
    .param p1, "tileServiceComponentName"    # Landroid/content/ComponentName;
    .param p2, "tileLabel"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Icon;
    .param p4, "resultExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1041
    .local p5, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    new-instance v0, Landroid/app/StatusBarManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p5}, Landroid/app/StatusBarManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1049
    return-void

    .line 1051
    :cond_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 1052
    .local v0, "userId":I
    new-instance v6, Landroid/app/StatusBarManager$RequestResultCallback;

    invoke-direct {v6, p4, p5}, Landroid/app/StatusBarManager$RequestResultCallback;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1054
    .local v6, "callbackProxy":Landroid/app/StatusBarManager$RequestResultCallback;
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    .line 1056
    .local v7, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v0

    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;ILcom/android/internal/statusbar/IAddTileResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    goto :goto_0

    .line 1063
    :catch_0
    move-exception v1

    .line 1064
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1066
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist requestTileServiceListeningState(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 993
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/statusbar/IStatusBarService;->requestTileServiceListeningState(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    nop

    .line 999
    return-void

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist sendNotificationFeedback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "feedback"    # Landroid/os/Bundle;

    .line 706
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 707
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 708
    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 713
    return-void

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDisabledForSetup(Z)V
    .locals 7
    .param p1, "disabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 921
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 922
    .local v0, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 923
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_2

    .line 924
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/high16 v3, 0x3a50000

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v4, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 925
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Landroid/app/StatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 924
    invoke-interface {v1, v3, v4, v5, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 926
    if-eqz p1, :cond_1

    :cond_1
    iget-object v3, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 927
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/app/StatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 926
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    .end local v0    # "userId":I
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2
    nop

    .line 932
    return-void

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setExpansionDisabledForSimNetworkLock(Z)V
    .locals 6
    .param p1, "disabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 947
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 948
    .local v0, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 949
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_1

    .line 950
    if-eqz p1, :cond_0

    const/high16 v2, 0x10000

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 951
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/app/StatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 950
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    .end local v0    # "userId":I
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    nop

    .line 956
    return-void

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r setIcon(Ljava/lang/String;IILjava/lang/String;)V
    .locals 7
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .param p3, "iconLevel"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;

    .line 873
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 874
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 875
    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 881
    return-void

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r setIconVisibility(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 900
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 901
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 902
    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 907
    return-void

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setNavBarMode(I)V
    .locals 3
    .param p1, "navBarMode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1093
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1094
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied navBarMode not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1098
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1099
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_2

    .line 1100
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setNavBarMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2
    nop

    .line 1105
    return-void

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist togglePanel()V
    .locals 2

    .line 776
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 777
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 778
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->togglePanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    nop

    .line 783
    return-void

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterNearbyMediaDevicesProvider(Landroid/media/NearbyMediaDevicesProvider;)V
    .locals 3
    .param p1, "provider"    # Landroid/media/NearbyMediaDevicesProvider;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1252
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    iget-object v0, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    return-void

    .line 1257
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1258
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    iget-object v1, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    .line 1259
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;

    .line 1260
    .local v1, "providerWrapper":Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;
    iget-object v2, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v1    # "providerWrapper":Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;
    nop

    .line 1265
    return-void

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "displayState"    # I
    .param p2, "routeInfo"    # Landroid/media/MediaRoute2Info;
    .param p3, "appIcon"    # Landroid/graphics/drawable/Icon;
    .param p4, "appName"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1197
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1200
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    goto :goto_0

    .line 1201
    :catch_0
    move-exception v1

    .line 1202
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1204
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "displayState"    # I
    .param p2, "routeInfo"    # Landroid/media/MediaRoute2Info;
    .param p3, "undoExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "undoCallback"    # Ljava/lang/Runnable;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1156
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 1160
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The undoCallback should only be provided when the state is a transfer succeeded state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1164
    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 1165
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass an executor when you pass an undo callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1168
    :cond_3
    :goto_1
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1170
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    const/4 v1, 0x0

    .line 1171
    .local v1, "callbackProxy":Landroid/app/StatusBarManager$UndoCallback;
    if-eqz p3, :cond_4

    .line 1172
    :try_start_0
    new-instance v2, Landroid/app/StatusBarManager$UndoCallback;

    invoke-direct {v2, p3, p4}, Landroid/app/StatusBarManager$UndoCallback;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    move-object v1, v2

    .line 1174
    :cond_4
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/statusbar/IStatusBarService;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    .end local v1    # "callbackProxy":Landroid/app/StatusBarManager$UndoCallback;
    goto :goto_2

    .line 1175
    :catch_0
    move-exception v1

    .line 1176
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1178
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method
