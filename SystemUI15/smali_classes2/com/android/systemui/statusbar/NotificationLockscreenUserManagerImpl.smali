.class public final Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# static fields
.field public static final SHOW_LOCKSCREEN:Landroid/net/Uri;

.field public static final SHOW_PRIVATE_LOCKSCREEN:Landroid/net/Uri;


# instance fields
.field public final mAllUsersReceiver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBaseBroadcastReceiver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

.field public final mCommonNotifCollectionLazy:Ldagger/Lazy;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentManagedProfiles:Landroid/util/SparseArray;

.field public final mCurrentProfiles:Landroid/util/SparseArray;

.field public mCurrentUserId:I

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public mKeyguardAllowingNotifications:Z

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mKeyguardReceiver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mListeners:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockScreenUris:Ljava/util/Collection;

.field public final mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

.field public mLockscreenSettingsObserver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$5;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mNotifStateChangedListeners:Lcom/android/systemui/util/ListenerSet;

.field public final mOverviewProxyServiceLazy:Ldagger/Lazy;

.field public mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSettingsHelperLazy:Ldagger/Lazy;

.field public final mShouldHideNotifsLatestResult:Landroid/util/SparseBooleanArray;

.field public mShowLockscreenNotifications:Z

.field public mState:I

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

.field public final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field public final mUsersDpcAllowingNotifications:Landroid/util/SparseBooleanArray;

.field public final mUsersDpcAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field public final mUsersInLockdownLatestResult:Landroid/util/SparseBooleanArray;

.field public final mUsersUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

.field public final mUsersUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field public final mUsersWithSeparateWorkChallenge:Landroid/util/SparseBooleanArray;

.field public final mVisibilityProviderLazy:Ldagger/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lock_screen_show_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->SHOW_LOCKSCREEN:Landroid/net/Uri;

    const-string v0, "lock_screen_allow_private_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->SHOW_PRIVATE_LOCKSCREEN:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/NotificationClickNotifier;Ldagger/Lazy;Landroid/app/KeyguardManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/dump/DumpManager;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/flags/FeatureFlagsClassic;Ldagger/Lazy;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Landroid/app/admin/DevicePolicyManager;",
            "Landroid/os/UserManager;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            "Ldagger/Lazy;",
            "Landroid/app/KeyguardManager;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/flags/FeatureFlagsClassic;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeparateWorkChallenge:Landroid/util/SparseBooleanArray;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersDpcAllowingNotifications:Landroid/util/SparseBooleanArray;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardAllowingNotifications:Z

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersDpcAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersInLockdownLatestResult:Landroid/util/SparseBooleanArray;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShouldHideNotifsLatestResult:Landroid/util/SparseBooleanArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mListeners:Ljava/util/List;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mState:I

    new-instance v3, Lcom/android/systemui/util/ListenerSet;

    invoke-direct {v3}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mNotifStateChangedListeners:Lcom/android/systemui/util/ListenerSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockScreenUris:Ljava/util/Collection;

    new-instance v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardReceiver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;

    new-instance v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mAllUsersReceiver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;

    new-instance v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBaseBroadcastReceiver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;

    new-instance v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    iput v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    move-object v2, p1

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserManager:Landroid/os/UserManager;

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mVisibilityProviderLazy:Ldagger/Lazy;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mOverviewProxyServiceLazy:Ldagger/Lazy;

    move-object/from16 v1, p11

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    sget-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    if-eqz v1, :cond_0

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSettingsHelperLazy:Ldagger/Lazy;

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->SHOW_LOCKSCREEN:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->SHOW_PRIVATE_LOCKSCREEN:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p17

    invoke-virtual {v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    invoke-static {}, Landroid/app/Flags;->keyguardPrivateNotifications()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->init$11$1()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string p2, "NotificationLockscreenUserManager state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  mCurrentUserId="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "  mShowLockscreenNotifications="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mCurrentProfiles="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "  mCurrentManagedProfiles="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "  mLockscreenPublicMode="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "  mUsersWithSeparateWorkChallenge="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeparateWorkChallenge:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "  mUsersAllowingPrivateNotifications="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "  mUsersAllowingNotifications="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "  mUsersInLockdownLatestResult="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersInLockdownLatestResult:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "  mShouldHideNotifsLatestResult="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShouldHideNotifsLatestResult:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "  mUsersDpcAllowingNotifications="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersDpcAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "  mUsersUsersAllowingNotifications="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "  mKeyguardAllowingNotifications="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardAllowingNotifications:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mUsersDpcAllowingPrivateNotifications="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersDpcAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "  mUsersUsersAllowingPrivateNotifications="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_3
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final init$11$1()V
    .locals 11

    new-instance v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$5;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$5;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenSettingsObserver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$5;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$6;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$6;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->SHOW_LOCKSCREEN:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenSettingsObserver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$5;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->SHOW_PRIVATE_LOCKSCREEN:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenSettingsObserver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$5;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mAllUsersReceiver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    invoke-static {}, Landroid/app/Flags;->keyguardPrivateNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.KEYGUARD_PRIVATE_NOTIFICATIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardReceiver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.action.PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBaseBroadcastReceiver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v0, v4, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    const/4 v10, 0x2

    const-string v8, "com.android.systemui.permission.SELF"

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBaseBroadcastReceiver:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updateCurrentProfilesCache()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final isAnyProfilePublicMode()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isCurrentProfile(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isLockscreenPublicMode(I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {p1, p0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public final isProfileAvailable(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 7

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-static {}, Landroid/app/Flags;->redactSensitiveContentNotificationsOnLockscreen()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->hasSensitiveContent()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    if-nez v3, :cond_1

    if-nez v1, :cond_3

    :cond_1
    if-nez v4, :cond_3

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v6

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    sget-boolean v3, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSettingsHelperLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3, v0}, Lcom/android/systemui/util/SettingsHelper;->isAllowPrivateNotificationsWhenUnsecure(I)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->visibility:I

    if-nez v0, :cond_6

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v6

    :goto_3
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result p1

    invoke-static {}, Landroid/app/Flags;->keyguardPrivateNotifications()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardAllowingNotifications:Z

    if-eqz p0, :cond_8

    if-nez v5, :cond_8

    if-nez p1, :cond_8

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v2, v6

    :cond_8
    :goto_4
    return v2

    :cond_9
    if-nez p1, :cond_b

    if-nez v5, :cond_b

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    move v2, v6

    :cond_b
    :goto_5
    return v2
.end method

.method public final notifyNotificationStateChanged()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mNotifStateChangedListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p0}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$notifStateChangedListener$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$notifStateChangedListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->dirtyListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mState:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updatePublicMode()V

    return-void
.end method

.method public final packageHasVisibilityOverride(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "LockscreenUserManager"

    const-string v0, "mEntryManager was null!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_0
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getLockscreenVisibilityOverride()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setLockscreenPublicMode(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public final updateCurrentProfilesCache()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/multiuser/Flags;->supportCommunalProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfilesIncludingCommunal(I)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v3, "android.os.usertype.profile.MANAGED"

    iget-object v4, v2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateDpcSettings(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersDpcAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersDpcAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v2

    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersDpcAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersDpcAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-ne v0, v3, :cond_2

    if-eq v1, v2, :cond_3

    :cond_2
    move v4, v5

    :cond_3
    return v4
.end method

.method public final updateLockscreenNotificationSetting()Z
    .locals 5

    invoke-static {}, Landroid/app/Flags;->keyguardPrivateNotifications()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardAllowingNotifications:Z

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersDpcAllowingNotifications:Landroid/util/SparseBooleanArray;

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    if-eq v4, v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public final updatePublicMode()V
    .locals 10

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeparateWorkChallenge:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeparateWorkChallenge:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_2
    if-ltz v6, :cond_5

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    new-instance v8, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v7}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;I)V

    invoke-static {v8}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v0, :cond_4

    iget v9, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    if-eq v7, v9, :cond_4

    if-eqz v8, :cond_4

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v9

    if-eqz v9, :cond_4

    if-nez v0, :cond_3

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v9, v7}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    move v9, v1

    goto :goto_4

    :cond_3
    :goto_3
    move v9, v2

    goto :goto_4

    :cond_4
    move v9, v0

    :goto_4
    invoke-virtual {p0, v9, v7}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->setLockscreenPublicMode(ZI)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeparateWorkChallenge:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeparateWorkChallenge:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->notifyNotificationStateChanged()V

    :cond_7
    return-void
.end method

.method public final updateUserShowSettings(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v2, "lock_screen_show_notifications"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, p1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-static {}, Landroid/app/Flags;->keyguardPrivateNotifications()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    return v3

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardAllowingNotifications:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->getPrivateNotificationsAllowed()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardAllowingNotifications:Z

    if-eq p1, v4, :cond_3

    move p0, v3

    goto :goto_2

    :cond_3
    move p0, v2

    :goto_2
    if-ne v1, v0, :cond_5

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    :cond_5
    :goto_3
    return v3
.end method

.method public final userAllowsNotificationsInPublic(I)Z
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    const-string v1, "LockscreenUserManager"

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Asking for show notifs setting too early"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updateUserShowSettings(I)Z

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersDpcAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Asking for show notifs dpm override too early"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updateDpcSettings(I)Z

    :cond_3
    invoke-static {}, Landroid/app/Flags;->keyguardPrivateNotifications()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersDpcAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersDpcAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardAllowingNotifications:Z

    if-eqz p0, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method

.method public final userAllowsPrivateNotificationsInPublic(I)Z
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    const-string v1, "LockscreenUserManager"

    const/4 v2, 0x0

    if-gez v0, :cond_1

    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "Asking for redact notifs setting too early"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersDpcAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_2

    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "Asking for redact notifs dpm override too early"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_2
    invoke-static {}, Landroid/app/Flags;->keyguardPrivateNotifications()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersDpcAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardAllowingNotifications:Z

    if-eqz p0, :cond_3

    move v2, v1

    :cond_3
    return v2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersDpcAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_5

    move v2, v1

    :cond_5
    return v2
.end method
