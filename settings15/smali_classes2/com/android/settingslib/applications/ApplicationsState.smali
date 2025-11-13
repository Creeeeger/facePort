.class public final Lcom/android/settingslib/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ALPHA_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$1;

.field public static final EXTERNAL_SIZE_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$2;

.field public static final FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$15;

.field public static final FILTER_APPS_EXCEPT_GAMES:Lcom/android/settingslib/applications/ApplicationsState$9;

.field public static final FILTER_APP_SETTING:Lcom/android/settingslib/applications/ApplicationsState$9;

.field public static final FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$9;

.field public static final FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$15;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$9;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER_AND_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$9;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER_NOT_QUIET:Lcom/android/settingslib/applications/ApplicationsState$12;

.field public static final FILTER_ENABLED_NOT_QUIET:Lcom/android/settingslib/applications/ApplicationsState$12;

.field public static final FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$9;

.field public static final FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$9;

.field public static final FILTER_INSTALLED_APP_BY_USER:Lcom/android/settingslib/applications/ApplicationsState$9;

.field public static final FILTER_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$9;

.field public static final FILTER_MANAGE_UNKNOWN_SOURCE_APPS:Lcom/android/settingslib/applications/ApplicationsState$30;

.field public static final FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$9;

.field public static final FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$24;

.field public static final FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$7;

.field public static final FILTER_PHOTOS:Lcom/android/settingslib/applications/ApplicationsState$9;

.field public static final FILTER_PRIVATE_PROFILE:Lcom/android/settingslib/applications/ApplicationsState$9;

.field public static final FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$9;

.field public static final FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$12;

.field public static final FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$9;

.field public static final INTERNAL_SIZE_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$2;

.field public static final LAST_UPDATED_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$2;

.field public static final LAST_USED_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$2;

.field public static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$2;

.field public static mAppLabelCache:Ljava/util/HashMap;

.field public static mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public static final mNewAppListForAppLabelCache:Ljava/util/ArrayList;

.field public static mPm:Landroid/content/pm/PackageManager;

.field public static mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

.field public static mUsbManager:Landroid/hardware/usb/IUsbManager;

.field static sInstance:Lcom/android/settingslib/applications/ApplicationsState;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public final mActiveSessions:Ljava/util/ArrayList;

.field public final mAdminRetrieveFlags:J

.field public final mAppEntries:Ljava/util/ArrayList;

.field public mAppLoadStartTime:J

.field public mApplications:Ljava/util/List;

.field public final mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

.field public mClonePackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

.field public final mContext:Landroid/content/Context;

.field public mCurComputingSizePkg:Ljava/lang/String;

.field public mCurComputingSizeUserId:I

.field public mCurComputingSizeUuid:Ljava/util/UUID;

.field public mCurId:J

.field public final mDrawableFactory:Landroid/util/IconDrawableFactory;

.field public final mEntriesMap:Landroid/util/SparseArray;

.field public mHaveDisabledApps:Z

.field public mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field public final mIpm:Landroid/content/pm/IPackageManager;

.field public final mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

.field public mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

.field public final mRebuildingSessions:Ljava/util/ArrayList;

.field public mRefreshCandidatePkgName:Ljava/lang/String;

.field public mResumed:Z

.field public final mRetrieveFlags:J

.field public final mSessions:Ljava/util/ArrayList;

.field public mSessionsChanged:Z

.field public final mStats:Landroid/app/usage/StorageStatsManager;

.field public final mSystemModules:Ljava/util/HashMap;

.field public final mThread:Landroid/os/HandlerThread;

.field public final mUm:Landroid/os/UserManager;

.field public mWorkHaveDisabledApp:Z

.field public mWorkUserId:I


# direct methods
.method public static -$$Nest$mgetSizeStr(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {v0, p1, p2, p0}, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->mNewAppListForAppLabelCache:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$1;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$2;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$2;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$2;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$2;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$2;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$2;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$2;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$2;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->LAST_USED_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$2;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$2;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$2;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->LAST_UPDATED_COMPARATOR:Lcom/android/settingslib/applications/ApplicationsState$2;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$7;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$9;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$9;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PRIVATE_PROFILE:Lcom/android/settingslib/applications/ApplicationsState$9;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$9;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$12;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$12;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER_NOT_QUIET:Lcom/android/settingslib/applications/ApplicationsState$12;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER_AND_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$9;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$15;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$15;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$15;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$9;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$15;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$15;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$15;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$12;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$12;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ENABLED_NOT_QUIET:Lcom/android/settingslib/applications/ApplicationsState$12;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$9;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_INSTALLED_APP_BY_USER:Lcom/android/settingslib/applications/ApplicationsState$9;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_APP_SETTING:Lcom/android/settingslib/applications/ApplicationsState$9;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$12;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$12;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$12;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$24;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$24;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$9;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>(I)V

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>(I)V

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>(I)V

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$30;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$30;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_MANAGE_UNKNOWN_SOURCE_APPS:Lcom/android/settingslib/applications/ApplicationsState$30;

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_APPS_EXCEPT_GAMES:Lcom/android/settingslib/applications/ApplicationsState$9;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/content/pm/IPackageManager;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mWorkUserId:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRefreshCandidatePkgName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sput-object v2, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    const-class v2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/StorageStatsManager;

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mStats:Landroid/app/usage/StorageStatsManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object p1

    array-length p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_0

    aget v4, p1, v3

    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ApplicationsState.Loader"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const-wide p1, 0x100408280L

    iput-wide p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:J

    const-wide p1, 0x100008280L

    iput-wide p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:J

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ModuleInfo;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->isHidden()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->provideInfoOfApkInApex()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->getApkInApexPackageNames()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->isHidden()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    const-string p2, "usagestats"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    sput-object p1, Lcom/android/settingslib/applications/ApplicationsState;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    sput-object p1, Lcom/android/settingslib/applications/ApplicationsState;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const-string p1, "usb"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    sput-object p1, Lcom/android/settingslib/applications/ApplicationsState;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    :goto_2
    :try_start_1
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 1

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;Landroid/content/pm/IPackageManager;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/app/Application;Landroid/content/pm/IPackageManager;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 2

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;-><init>(Landroid/app/Application;Landroid/content/pm/IPackageManager;)V

    sput-object v1, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static hasFlag(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final addPackage(ILjava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->indexOfApplicationInfoLocked(ILjava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:J

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:J

    :goto_0
    invoke-interface {v1, p2, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    iget-boolean p2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v1, 0x1

    if-nez p2, :cond_5

    iget p2, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x3

    if-eq p2, v2, :cond_4

    monitor-exit v0

    return-void

    :cond_4
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    :cond_5
    iget-boolean p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    if-nez p2, :cond_7

    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isAutoDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isManualDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    :cond_7
    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_2
    return-void
.end method

.method public clearEntries()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final doPauseLocked()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mClonePackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mClonePackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    :cond_1
    return-void
.end method

.method public final doResumeIfNeededLocked()V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, -0x1

    iget-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v2, p0}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settingslib/applications/ApplicationsState;)V

    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mClonePackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/settingslib/applications/AppUtils;->sBrowserIntent:Landroid/content/Intent;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-eq v2, v1, :cond_4

    new-instance v4, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v4, p0}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settingslib/applications/ApplicationsState;)V

    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mClonePackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v6, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "package"

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_4
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v5

    if-eqz v5, :cond_5

    move v4, v0

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    :try_start_0
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_8

    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception v5

    goto/16 :goto_a

    :cond_8
    :goto_3
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-wide v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:J

    goto :goto_4

    :cond_9
    iget-wide v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:J

    :goto_4
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v6, v7, v8, v5}, Landroid/content/pm/IPackageManager;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v5, "persist.log.seclevel"

    invoke-static {v5, v3}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v0, :cond_a

    move v5, v0

    goto :goto_5

    :cond_a
    move v5, v3

    :goto_5
    move v6, v3

    :goto_6
    iget-object v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    iget-object v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/settingslib/applications/AppUtils;->isLanguagePackApk(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_c

    if-nez v5, :cond_b

    const-string v8, "ApplicationsState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doResumeIfNeededLocked: hidden language pack apk= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_7
    add-int/2addr v6, v1

    goto/16 :goto_9

    :cond_b
    const-string v8, "ApplicationsState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doResumeIfNeededLocked: don\'t hidden language pack apk= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " because secLevel"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.sec.android.app.dexonpc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v7, "ApplicationsState"

    const-string v8, "[com.sec.android.app.dexonpc] is removed"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_d
    iget-boolean v8, v7, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x800000

    invoke-static {v9, v10}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result v9

    if-nez v9, :cond_e

    if-nez v8, :cond_e

    const-string v8, "ApplicationsState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removed uninstalled app from mAppliations : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x40000

    and-int/2addr v8, v9

    if-eqz v8, :cond_f

    move v8, v0

    goto :goto_8

    :cond_f
    move v8, v3

    :goto_8
    if-nez v4, :cond_10

    if-eqz v8, :cond_10

    const-string v8, "ApplicationsState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Remove the app stored on the sd card when removing the sd card : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :cond_10
    :goto_9
    add-int/2addr v6, v0

    goto/16 :goto_6

    :goto_a
    const-string v6, "ApplicationsState"

    const-string v7, "Error during doResumeIfNeededLocked"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_11
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, v2, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v6

    iget v7, v2, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastDensity:I

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    const-string v9, "InterestingConfigChanges"

    if-eq v7, v8, :cond_12

    goto :goto_b

    :cond_12
    and-int/lit16 v6, v6, 0x304

    if-eqz v6, :cond_13

    :goto_b
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v5, v2, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastDensity:I

    const-string v2, "isConfigChanged=true"

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    goto :goto_c

    :cond_13
    move v2, v3

    :goto_c
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "settings_locale_changed"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v0, :cond_14

    const-string v2, "isLocaleChanged=true"

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v0

    :cond_14
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "current_sec_appicon_theme_package"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settingslib/applications/InterestingConfigChanges;->mCachedAppIconPkg:Ljava/lang/String;

    if-eqz v5, :cond_15

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    if-eqz v4, :cond_17

    sget-object v5, Lcom/android/settingslib/applications/InterestingConfigChanges;->mCachedAppIconPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    :cond_16
    const-string v2, "isIconThemeChanged=true"

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    :cond_17
    sput-object v4, Lcom/android/settingslib/applications/InterestingConfigChanges;->mCachedAppIconPkg:Ljava/lang/String;

    if-eqz v2, :cond_18

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->clearEntries()V

    goto :goto_e

    :cond_18
    move v2, v3

    :goto_d
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_19

    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iput-boolean v0, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    add-int/2addr v2, v0

    goto :goto_d

    :cond_19
    :goto_e
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mWorkHaveDisabledApp:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    move v4, v3

    :goto_f
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_23

    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_ConfigAppListForHidingAppMgr"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1b

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_ConfigAppListForHidingAppMgr"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_10
    if-ge v8, v7, :cond_1b

    aget-object v9, v6, v8

    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    const-string v5, "ApplicationsState"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "hideAppList : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is removed from mApplications"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_13

    :cond_1a
    add-int/2addr v8, v0

    goto :goto_10

    :cond_1b
    iget-boolean v6, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v6, :cond_1e

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1c

    const-string v6, "ApplicationsState"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "enabledSetting is not COMPONENT_ENABLED_STATE_DISABLED_USER : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v5, v6}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/2addr v4, v1

    goto :goto_13

    :cond_1c
    iget v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mWorkUserId:I

    if-lez v6, :cond_1d

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v6, v7, :cond_1d

    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mWorkHaveDisabledApp:Z

    goto :goto_11

    :cond_1d
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v2, v6, :cond_1e

    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    :cond_1e
    :goto_11
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-nez v6, :cond_1f

    move v6, v3

    goto :goto_12

    :cond_1f
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :goto_12
    if-eqz v6, :cond_20

    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v4, v6

    goto :goto_13

    :cond_20
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRefreshCandidatePkgName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    const-string v6, ""

    iput-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRefreshCandidatePkgName:Ljava/lang/String;

    :cond_21
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v6, :cond_22

    iput-object v5, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    :cond_22
    :goto_13
    add-int/2addr v4, v0

    goto/16 :goto_f

    :cond_23
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRefreshCandidatePkgName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x2

    if-lez v1, :cond_27

    :goto_14
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v3, v1, :cond_27

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRefreshCandidatePkgName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v6

    :try_start_1
    iget-object v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_24

    iget-object v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_15

    :catchall_0
    move-exception p0

    goto :goto_16

    :catch_1
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_24
    move-object v7, v2

    :goto_15
    if-eqz v7, :cond_25

    iget-object v8, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_25

    iget-object v8, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_25
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_26
    monitor-exit v6

    add-int/2addr v3, v0

    goto :goto_14

    :goto_16
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_27
    const-string v0, "ApplicationsState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mAppEntries.size() : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mApplications.size() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_28

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->clearEntries()V

    :cond_28
    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppLoadStartTime:J

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheManager;->isValidCache(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "AppListCacheManager"

    if-nez v2, :cond_29

    const-string v0, "getAppLabelCache : invalid cache!!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_29
    :try_start_3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheProviderContract;->URI_APP_LIST:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v0, :cond_2a

    :goto_17
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    new-instance v2, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-string v5, "package_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;->packageName:Ljava/lang/String;

    const-string v5, "app_title"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;->label:Ljava/lang/String;

    const-string v5, "last_updated"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;->lastUpdateTime:J

    iget-object v5, v2, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_17

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_18

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw v2

    :catch_2
    move-exception v0

    goto :goto_19

    :cond_2a
    if-eqz v0, :cond_2b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1a

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2b
    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getAppLabelCache data size: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    sput-object v1, Lcom/android/settingslib/applications/ApplicationsState;->mAppLabelCache:Ljava/util/HashMap;

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->mNewAppListForAppLabelCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2c
    return-void
.end method

.method public final ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 1

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {p1, v0, p0}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/util/IconDrawableFactory;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final ensureLabelDescription(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 2

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f140225

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getEntry(ILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "ApplicationsState"

    const-string p1, "packageName is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_5

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object v4, v1

    :goto_2
    if-nez v4, :cond_4

    :try_start_1
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    const-wide v4, 0x100000000L

    invoke-interface {v3, p2, v4, v5, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "ApplicationsState"

    const-string p2, "getEntry couldn\'t reach PackageManager"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return-object v1

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/settingslib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    :cond_5
    monitor-exit v0

    return-object v2

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 7

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_4

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object p0, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq p0, p1, :cond_4

    iput-object p1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    :cond_4
    :goto_2
    return-object v1
.end method

.method public final indexOfApplicationInfoLocked(ILjava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;
    .locals 1

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$Session;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)V

    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removePackage(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->indexOfApplicationInfoLocked(ILjava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_7

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-boolean p2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p2, :cond_4

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    goto :goto_2

    :cond_2
    iget-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isAutoDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isManualDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    invoke-static {p2}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_6
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setInterestingConfigChanges(Lcom/android/settingslib/applications/InterestingConfigChanges;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    return-void
.end method
