.class public final Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final mListeners:Ljava/util/Map;

.field public static final mTiles:Ljava/util/Map;


# instance fields
.field public final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public final mBackupManager:Landroid/app/backup/BackupManager;

.field public final mBaseBroadcastReceiver:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3;

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBubblesOptional:Ljava/util/Optional;

.field public final mContext:Landroid/content/Context;

.field public final mINotificationManager:Landroid/app/INotificationManager;

.field public final mIPeopleManager:Landroid/app/people/IPeopleManager;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mLauncherApps:Landroid/content/pm/LauncherApps;

.field public final mListener:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;

.field public final mLock:Ljava/lang/Object;

.field public final mManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

.field public final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final mNotificationKeyToWidgetIdsMatchedByUri:Ljava/util/Map;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPeopleManager:Landroid/app/people/PeopleManager;

.field public mRegisteredReceivers:Z

.field public final mSharedPrefs:Landroid/content/SharedPreferences;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUpdatedPreviews:Landroid/util/SparseBooleanArray;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListeners:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mTiles:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/app/people/IPeopleManager;Landroid/app/people/PeopleManager;Landroid/content/pm/LauncherApps;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Landroid/content/pm/PackageManager;Ljava/util/Optional;Landroid/os/UserManager;Landroid/app/backup/BackupManager;Landroid/app/INotificationManager;Landroid/app/NotificationManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/settings/UserTracker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            "Landroid/app/people/IPeopleManager;",
            "Landroid/app/people/PeopleManager;",
            "Landroid/content/pm/LauncherApps;",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Landroid/os/UserManager;",
            "Landroid/app/backup/BackupManager;",
            "Landroid/app/INotificationManager;",
            "Landroid/app/NotificationManager;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/settings/UserTracker;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationKeyToWidgetIdsMatchedByUri:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUpdatedPreviews:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListener:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;

    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBaseBroadcastReceiver:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3;

    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iput-object p3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    iput-object p4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPeopleManager:Landroid/app/people/PeopleManager;

    iput-object p5, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iput-object p6, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    iput-object p7, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p8, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBubblesOptional:Ljava/util/Optional;

    iput-object p9, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserManager:Landroid/os/UserManager;

    iput-object p10, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBackupManager:Landroid/app/backup/BackupManager;

    iput-object p11, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mINotificationManager:Landroid/app/INotificationManager;

    iput-object p12, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    iput-object p13, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p14, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Landroid/content/pm/PackageManager;Ljava/util/Optional;Landroid/os/UserManager;Landroid/app/NotificationManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/LauncherApps;",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Landroid/os/UserManager;",
            "Landroid/app/NotificationManager;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationKeyToWidgetIdsMatchedByUri:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUpdatedPreviews:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    iput-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListener:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;

    new-instance v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    iput-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBaseBroadcastReceiver:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3;

    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const-string v1, "people"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/people/IPeopleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-class p2, Landroid/app/people/PeopleManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/people/PeopleManager;

    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPeopleManager:Landroid/app/people/PeopleManager;

    iput-object p3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    iput-object p4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p2, "notification"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mINotificationManager:Landroid/app/INotificationManager;

    iput-object p5, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBubblesOptional:Ljava/util/Optional;

    iput-object p6, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserManager:Landroid/os/UserManager;

    new-instance p2, Landroid/app/backup/BackupManager;

    invoke-direct {p2, p1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBackupManager:Landroid/app/backup/BackupManager;

    iput-object p7, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    iput-object p8, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p9, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    const-string p1, "PeopleSpaceWidgetMgr"

    invoke-virtual {p10, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iput-object p11, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-virtual {p12, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public static getNewWidgets(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Set;
    .locals 1

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda4;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final addNewWidget(ILcom/android/systemui/people/widget/PeopleTileKey;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileFromPersistentStorage(Lcom/android/systemui/people/widget/PeopleTileKey;IZ)Landroid/app/people/PeopleSpaceTile;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->augmentTileFromNotificationEntryManager(Landroid/app/people/PeopleSpaceTile;Ljava/util/Optional;)Landroid/app/people/PeopleSpaceTile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getKeyFromStorageByWidgetId(I)Lcom/android/systemui/people/widget/PeopleTileKey;

    move-result-object v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    filled-new-array {p1}, [I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->deleteWidgets([I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/people/PeopleSpaceUtils$PeopleSpaceWidgetEvent;->PEOPLE_SPACE_WIDGET_ADDED:Lcom/android/systemui/people/PeopleSpaceUtils$PeopleSpaceWidgetEvent;

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-static {v1, p2, p1, v3, v4}, Lcom/android/systemui/people/PeopleSpaceUtils;->setSharedPreferencesStorageForTile(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleTileKey;ILandroid/net/Uri;Landroid/app/backup/BackupManager;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->registerConversationListenerIfNeeded(ILcom/android/systemui/people/widget/PeopleTileKey;)V

    :try_start_3
    iget-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/content/pm/LauncherApps;->cacheShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v1, "PeopleSpaceWidgetMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to cache shortcut for widget "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;ILandroid/app/people/PeopleSpaceTile;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catch_1
    const-string p0, "PeopleSpaceWidgetMgr"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot add widget "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " since app was uninstalled"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final augmentTileFromNotificationEntryManager(Landroid/app/people/PeopleSpaceTile;Ljava/util/Optional;)Landroid/app/people/PeopleSpaceTile;
    .locals 6

    new-instance v2, Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-direct {v2, p1}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Landroid/app/people/PeopleSpaceTile;)V

    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->groupConversationNotifications(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->augmentTileFromNotifications(Landroid/app/people/PeopleSpaceTile;Lcom/android/systemui/people/widget/PeopleTileKey;Ljava/lang/String;Ljava/util/Map;Ljava/util/Optional;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method

.method public final augmentTileFromNotifications(Landroid/app/people/PeopleSpaceTile;Lcom/android/systemui/people/widget/PeopleTileKey;Ljava/lang/String;Ljava/util/Map;Ljava/util/Optional;)Landroid/app/people/PeopleSpaceTile;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v3, Lcom/android/systemui/people/PeopleSpaceUtils;->EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move-object v3, p3

    goto :goto_2

    :cond_1
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, p3}, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    goto :goto_1

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    :cond_2
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    :cond_3
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeNotificationFields(Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-interface {p2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object p3, Lcom/android/systemui/people/PeopleSpaceUtils;->EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move p4, v2

    :cond_5
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/people/NotificationHelper;->isMissedCall(Landroid/app/Notification;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v0}, Lcom/android/systemui/people/NotificationHelper;->getMessagingStyleMessages(Landroid/app/Notification;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p4

    move p4, v0

    goto :goto_3

    :cond_7
    sget-object p3, Lcom/android/systemui/people/NotificationHelper;->notificationEntryComparator:Lcom/android/systemui/people/NotificationHelper$1;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_8

    move-object p2, v0

    goto :goto_4

    :cond_8
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/people/NotificationHelper$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object p3, Lcom/android/systemui/people/NotificationHelper;->notificationEntryComparator:Lcom/android/systemui/people/NotificationHelper$1;

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :goto_4
    iget-object p3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz p2, :cond_12

    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    if-nez v3, :cond_9

    goto/16 :goto_a

    :cond_9
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v4

    invoke-static {p2}, Lcom/android/systemui/people/NotificationHelper;->getContactUri(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_a

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-direct {v6, p1}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Landroid/app/people/PeopleSpaceTile;)V

    invoke-virtual {p5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p3, v6, p1, v5, p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->setSharedPreferencesStorageForTile(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleTileKey;ILandroid/net/Uri;Landroid/app/backup/BackupManager;)V

    invoke-virtual {v4, v5}, Landroid/app/people/PeopleSpaceTile$Builder;->setContactUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    :cond_a
    invoke-static {v3}, Lcom/android/systemui/people/NotificationHelper;->isMissedCall(Landroid/app/Notification;)Z

    move-result p0

    invoke-static {v3}, Lcom/android/systemui/people/NotificationHelper;->getMessagingStyleMessages(Landroid/app/Notification;)Ljava/util/List;

    move-result-object p1

    if-nez p0, :cond_b

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p5

    if-eqz p5, :cond_b

    invoke-virtual {v4}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeNotificationFields(Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    goto/16 :goto_b

    :cond_b
    if-eqz p1, :cond_c

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Notification$MessagingStyle$Message;

    goto :goto_5

    :cond_c
    move-object p1, v0

    :goto_5
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_d

    goto :goto_6

    :cond_d
    move v1, v2

    :goto_6
    if-eqz p0, :cond_e

    if-nez v1, :cond_e

    const p0, 0x7f130c11

    invoke-virtual {p3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_e
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_7
    if-eqz p1, :cond_f

    invoke-static {p1}, Lcom/android/internal/widget/MessagingMessage;->hasImage(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object p3

    goto :goto_8

    :cond_f
    move-object p3, v0

    :goto_8
    iget-object p5, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.isGroupConversation"

    invoke-virtual {p5, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p5

    if-nez p5, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_9
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setLastInteractionTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationKey(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p1

    iget-object p2, v3, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationCategory(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationContent(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationSender(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationDataUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/app/people/PeopleSpaceTile$Builder;->setMessagesCount(I)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    goto :goto_b

    :cond_12
    :goto_a
    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeNotificationFields(Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    :goto_b
    return-object p0
.end method

.method public final deleteWidgets([I)V
    .locals 11

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget v3, p1, v2

    iget-object v4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/people/PeopleSpaceUtils$PeopleSpaceWidgetEvent;->PEOPLE_SPACE_WIDGET_DELETED:Lcom/android/systemui/people/PeopleSpaceUtils$PeopleSpaceWidgetEvent;

    invoke-interface {v4, v5}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object v4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/people/widget/PeopleTileKey;

    const-string/jumbo v7, "shortcut_id"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "user_id"

    const/4 v10, -0x1

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "package_name"

    invoke-interface {v5, v10, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v9, v5}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v6}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string p0, "PeopleSpaceWidgetMgr"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid tile key trying to remove widget "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    new-instance v5, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v6}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v7, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v8, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v3, v7}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeSharedPreferencesStorageForTile(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleTileKey;ILjava/lang/String;)V

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListeners:Ljava/util/Map;

    monitor-enter v3

    :try_start_2
    move-object v4, v3

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;

    if-nez v4, :cond_1

    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    move-object v5, v3

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPeopleManager:Landroid/app/people/PeopleManager;

    invoke-virtual {v3, v4}, Landroid/app/people/PeopleManager;->unregisterConversationListener(Landroid/app/people/PeopleManager$ConversationListener;)V

    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v4, v6, Lcom/android/systemui/people/widget/PeopleTileKey;->mPackageName:Ljava/lang/String;

    iget-object v5, v6, Lcom/android/systemui/people/widget/PeopleTileKey;->mShortcutId:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget v6, v6, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/pm/LauncherApps;->uncacheShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v4, "PeopleSpaceWidgetMgr"

    const-string v5, "failed to uncache shortcut"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :goto_4
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :cond_3
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string p2, "PeopleSpaceWidgetMgr.dump"

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p2

    const-string v2, "People widget list:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/systemui/people/widget/PeopleBackupHelper;->getEntryType(Ljava/util/Map$Entry;)Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$4;->$SwitchMap$com$android$systemui$people$widget$PeopleBackupHelper$SharedFileEntryType:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "Extra data ["

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " : "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "People widget (valid) ["

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "] shortcut id: \""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "shortcut_id"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "\", user id: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "user_id"

    const/4 v5, -0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ", package: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "package_name"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final getKeyFromStorageByWidgetId(I)Lcom/android/systemui/people/widget/PeopleTileKey;
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/people/widget/PeopleTileKey;

    const-string/jumbo v0, "shortcut_id"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "user_id"

    const/4 v3, -0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "package_name"

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v2, p0}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method

.method public final getMatchingKeyWidgetIds(Lcom/android/systemui/people/widget/PeopleTileKey;)Ljava/util/Set;
    .locals 2

    invoke-static {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getMatchingUriWidgetIds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;)Ljava/util/Set;
    .locals 4

    sget-object v0, Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;->POSTED:Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/android/systemui/people/NotificationHelper;->notificationEntryComparator:Lcom/android/systemui/people/NotificationHelper$1;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/systemui/people/NotificationHelper;->isMissedCall(Landroid/app/Notification;)Z

    move-result p2

    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/people/NotificationHelper;->getContactUri(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, p2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationKeyToWidgetIdsMatchedByUri:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationKeyToWidgetIdsMatchedByUri:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    return-object p0

    :cond_5
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public final getNotificationPolicyState()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v1, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result p0

    if-eq p0, v2, :cond_8

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowConversations()Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, v0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    if-ne p0, v2, :cond_2

    return v2

    :cond_2
    if-ne p0, v1, :cond_3

    const/4 p0, 0x4

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result v0

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    or-int/lit8 p0, p0, 0x8

    return p0

    :cond_5
    or-int/lit8 p0, p0, 0x10

    return p0

    :cond_6
    if-eqz p0, :cond_7

    return p0

    :cond_7
    :goto_1
    return v1

    :cond_8
    return v2
.end method

.method public final getPackageSuspended(Landroid/app/people/PeopleSpaceTile;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->isPackageSuspended(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/people/PeopleSpaceUtils;->EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    return v0
.end method

.method public final getPreview(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v1, p3, p2, p1}, Landroid/app/people/IPeopleManager;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    sget-object p3, Lcom/android/systemui/people/PeopleSpaceUtils;->EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;

    const-string p3, "PeopleSpaceUtils"

    if-nez p1, :cond_0

    const-string p1, "ConversationChannel is null"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/app/people/PeopleSpaceTile$Builder;

    invoke-direct {v1, p1, p2}, Landroid/app/people/PeopleSpaceTile$Builder;-><init>(Landroid/app/people/ConversationChannel;Landroid/content/pm/LauncherApps;)V

    invoke-virtual {v1}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "PeopleSpaceTile is not valid"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->augmentTileFromNotificationEntryManager(Landroid/app/people/PeopleSpaceTile;Ljava/util/Optional;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-direct {p2, p1}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Landroid/app/people/PeopleSpaceTile;)V

    const/4 p3, 0x0

    invoke-static {p0, p1, p3, p4, p2}, Lcom/android/systemui/people/PeopleTileViewHelper;->createRemoteViews(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILandroid/os/Bundle;Lcom/android/systemui/people/widget/PeopleTileKey;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "PeopleSpaceWidgetMgr"

    const-string p2, "failed to get conversation or tile"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public final getTileForExistingWidget(I)Landroid/app/people/PeopleSpaceTile;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileForExistingWidgetThrowing(I)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to retrieve tile for existing widget "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PeopleSpaceWidgetMgr"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTileForExistingWidgetThrowing(I)Landroid/app/people/PeopleSpaceTile;
    .locals 6

    sget-object v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mTiles:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/people/PeopleSpaceTile;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/people/widget/PeopleTileKey;

    const-string/jumbo v2, "shortcut_id"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "package_name"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileFromPersistentStorage(Lcom/android/systemui/people/widget/PeopleTileKey;IZ)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getTileFromPersistentStorage(Lcom/android/systemui/people/widget/PeopleTileKey;IZ)Landroid/app/people/PeopleSpaceTile;
    .locals 5

    invoke-static {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    move-result v0

    const-string v1, "PeopleSpaceWidgetMgr"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Invalid tile key finding tile for existing widget "

    invoke-static {p2, p0, v1}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    iget-object v3, p1, Lcom/android/systemui/people/widget/PeopleTileKey;->mPackageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    iget-object p1, p1, Lcom/android/systemui/people/widget/PeopleTileKey;->mShortcutId:Ljava/lang/String;

    invoke-interface {v0, v3, v4, p1}, Landroid/app/people/IPeopleManager;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    new-instance v0, Landroid/app/people/PeopleSpaceTile$Builder;

    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-direct {v0, p1, v3}, Landroid/app/people/PeopleSpaceTile$Builder;-><init>(Landroid/app/people/ConversationChannel;Landroid/content/pm/LauncherApps;)V

    iget-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    move-result-object p3

    if-nez p3, :cond_3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/people/PeopleSpaceTile$Builder;->setContactUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p1

    const-string p3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileWithCurrentState(Landroid/app/people/PeopleSpaceTile;Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "getTileFromPersistentStorage failing for widget "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_4
    :goto_2
    const-string p0, "System services are null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final getTileWithCurrentState(Landroid/app/people/PeopleSpaceTile;Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile;
    .locals 4

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v3

    goto :goto_1

    :sswitch_1
    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_3
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    goto :goto_1

    :sswitch_4
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_1

    :sswitch_5
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_6
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_1

    :sswitch_7
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsUserQuieted(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getPackageSuspended(Landroid/app/people/PeopleSpaceTile;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsPackageSuspended(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getNotificationPolicyState()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationPolicyState(I)Landroid/app/people/PeopleSpaceTile$Builder;

    goto :goto_4

    :pswitch_0
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsUserQuieted(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    goto :goto_4

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getPackageSuspended(Landroid/app/people/PeopleSpaceTile;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsPackageSuspended(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    goto :goto_4

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getNotificationPolicyState()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationPolicyState(I)Landroid/app/people/PeopleSpaceTile$Builder;

    :goto_4
    :pswitch_3
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x49d08e2b -> :sswitch_7
        -0x3bb3e592 -> :sswitch_6
        -0x33813a72 -> :sswitch_5
        -0x122164c -> :sswitch_4
        0x2f94f923 -> :sswitch_3
        0x31af1c32 -> :sswitch_2
        0x4cef8b35 -> :sswitch_1
        0x7d95a11b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final groupConversationNotifications(Ljava/util/Collection;)Ljava/util/Map;
    .locals 2

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final registerConversationListenerIfNeeded(ILcom/android/systemui/people/widget/PeopleTileKey;)V
    .locals 6

    invoke-static {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "PeopleSpaceWidgetMgr"

    const-string p2, "Invalid tile key registering listener for widget "

    invoke-static {p1, p2, p0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v4, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;

    invoke-direct {v4, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    sget-object p1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListeners:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPeopleManager:Landroid/app/people/PeopleManager;

    iget-object v1, p2, Lcom/android/systemui/people/widget/PeopleTileKey;->mPackageName:Ljava/lang/String;

    iget v2, p2, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    iget-object v3, p2, Lcom/android/systemui/people/widget/PeopleTileKey;->mShortcutId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/app/people/PeopleManager;->registerConversationListener(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/PeopleManager$ConversationListener;Ljava/util/concurrent/Executor;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V
    .locals 3

    if-nez p2, :cond_0

    const-string v0, "PeopleSpaceWidgetMgr"

    const-string v1, "Storing null tile for widget "

    invoke-static {p1, v1, v0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mTiles:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getKeyFromStorageByWidgetId(I)Lcom/android/systemui/people/widget/PeopleTileKey;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "Invalid tile key updating widget "

    const-string p2, "PeopleSpaceWidgetMgr"

    invoke-static {p1, p0, p2}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, p1, v0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->createRemoteViews(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILandroid/os/Bundle;Lcom/android/systemui/people/widget/PeopleTileKey;)Landroid/widget/RemoteViews;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

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

.method public updateGeneratedPreviewForUser(Landroid/os/UserHandle;)V
    .locals 5

    invoke-static {}, Landroid/appwidget/flags/Flags;->generatedPreviews()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUpdatedPreviews:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d028d

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3, v2}, Landroid/appwidget/AppWidgetManager;->setWidgetPreview(Landroid/content/ComponentName;ILandroid/widget/RemoteViews;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUpdatedPreviews:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateSingleConversationWidgets([I)V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileForExistingWidget(I)Landroid/app/people/PeopleSpaceTile;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v5, "Matching conversation not found for widget "

    const-string v6, "PeopleSpaceWidgetMgr"

    invoke-static {v3, v5, v6}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_1

    new-instance v5, Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-direct {v5, v4}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Landroid/app/people/PeopleSpaceTile;)V

    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->registerConversationListenerIfNeeded(ILcom/android/systemui/people/widget/PeopleTileKey;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/people/PeopleSpaceUtils;->EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;

    new-instance v2, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda2;

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-direct {v2, v1, p0, v0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Map;[I)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final updateStorageAndViewWithConversationData(Landroid/app/people/ConversationChannel;I)V
    .locals 6

    invoke-virtual {p0, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileForExistingWidget(I)Landroid/app/people/PeopleSpaceTile;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setUserName(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/app/people/PeopleSpaceTile;->convertDrawableToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setUserIcon(Landroid/graphics/drawable/Icon;)Landroid/app/people/PeopleSpaceTile$Builder;

    :cond_4
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsImportantConversation(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    :cond_5
    invoke-virtual {v0, v4}, Landroid/app/people/PeopleSpaceTile$Builder;->setContactUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getStatuses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setStatuses(Ljava/util/List;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getLastEventTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/people/PeopleSpaceTile$Builder;->setLastInteractionTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V

    return-void
.end method

.method public final updateWidgetIdsBasedOnNotifications(Ljava/util/Set;Ljava/util/Collection;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->groupConversationNotifications(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Map;)V

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance p2, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    invoke-interface {p1, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PeopleSpaceWidgetMgr"

    const-string/jumbo p2, "updateWidgetIdsBasedOnNotifications failing"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public updateWidgetsFromBroadcastInBackground(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, v0, v2

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileForExistingWidgetThrowing(I)Landroid/app/people/PeopleSpaceTile;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, "PeopleSpaceWidgetMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Matching conversation not found for widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v6, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileWithCurrentState(Landroid/app/people/PeopleSpaceTile;Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V

    monitor-exit v5

    goto :goto_2

    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v5

    const-string v6, "PeopleSpaceWidgetMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Package no longer found for widget "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v5, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/job/JobScheduler;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobScheduler;

    if-eqz v5, :cond_2

    const v6, 0x475b8c1

    invoke-virtual {v5, v6}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->deleteWidgets([I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_3
    return-void
.end method
