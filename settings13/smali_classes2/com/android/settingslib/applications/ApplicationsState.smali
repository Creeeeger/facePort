.class public Lcom/android/settingslib/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;,
        Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;,
        Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;,
        Lcom/android/settingslib/applications/ApplicationsState$AppFilter;,
        Lcom/android/settingslib/applications/ApplicationsState$AppEntry;,
        Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;,
        Lcom/android/settingslib/applications/ApplicationsState$ManageApplicationsCallbacks;,
        Lcom/android/settingslib/applications/ApplicationsState$UpdateTimeCallbacks;,
        Lcom/android/settingslib/applications/ApplicationsState$Callbacks;,
        Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/settingslib/applications/ApplicationsState$MainHandler;,
        Lcom/android/settingslib/applications/ApplicationsState$Session;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APPS_EXCEPT_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_SETTING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER_AND_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_MANAGE_UNKNOWN_SOURCE_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_OTHER_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_PHOTOS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_SEARCH:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_THIRD_PARTY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAST_UPDATED_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAST_USED_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static mAppLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;",
            ">;"
        }
    .end annotation
.end field

.field static mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field static mNewAppListForAppLabelCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field static mPm:Landroid/content/pm/PackageManager;

.field static mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

.field static mUsbManager:Landroid/hardware/usb/IUsbManager;

.field static sInstance:Lcom/android/settingslib/applications/ApplicationsState;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field final mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAdminRetrieveFlags:I

.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mAppLoadStartTime:J

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

.field mCheckDisabledApp:Z

.field final mContext:Landroid/content/Context;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurComputingSizeUserId:I

.field mCurComputingSizeUuid:Ljava/util/UUID;

.field mCurId:J

.field final mDrawableFactory:Landroid/util/IconDrawableFactory;

.field final mEntriesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mHaveDisabledApps:Z

.field mHaveInstantApps:Z

.field private mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field final mIpm:Landroid/content/pm/IPackageManager;

.field final mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

.field mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

.field final mRebuildingSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshCandidatePkgName:Ljava/lang/String;

.field mResumed:Z

.field final mRetrieveFlags:I

.field final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsChanged:Z

.field final mStats:Landroid/app/usage/StorageStatsManager;

.field final mSystemModules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mThread:Landroid/os/HandlerThread;

.field mTimeLoadStartTime:J

.field final mUm:Landroid/os/UserManager;

.field mWorkHaveDisabledApp:Z

.field mWorkUserId:I


# direct methods
.method public static synthetic $r8$lambda$ZHaUpcUSg-QUX8NqqtM9jF_arwQ(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/applications/ApplicationsState;->lambda$requestSize$0(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddUser(Lcom/android/settingslib/applications/ApplicationsState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->addUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbulkInsertNewAppLabelList(Lcom/android/settingslib/applications/ApplicationsState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState;->bulkInsertNewAppLabelList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetEntryLocked(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSizeStr(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTotalExternalSize(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mgetTotalInternalSize(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mremoveRemovedAppLabelList(Lcom/android/settingslib/applications/ApplicationsState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState;->removeRemovedAppLabelList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveUser(Lcom/android/settingslib/applications/ApplicationsState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->removeUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smhasFlag(II)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisAppIconCacheEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settingslib/applications/ApplicationsState;->isAppIconCacheEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    .line 126
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->mNewAppListForAppLabelCache:Ljava/util/ArrayList;

    .line 2293
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 2314
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 2324
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 2334
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 2345
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->LAST_USED_COMPARATOR:Ljava/util/Comparator;

    .line 2355
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->LAST_UPDATED_COMPARATOR:Ljava/util/Comparator;

    .line 2376
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$7;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$7;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2395
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$8;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$8;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2408
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2430
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$10;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$10;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2455
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$11;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$11;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER_AND_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2469
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$12;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$12;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_THIRD_PARTY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2485
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$13;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$13;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2536
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$14;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$14;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2547
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$15;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$15;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2599
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$16;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$16;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2611
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$17;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$17;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_SEARCH:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2631
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$18;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$18;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_APP_SETTING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2644
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$19;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$19;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2670
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$20;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$20;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2698
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$21;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$21;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2759
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$22;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$22;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2774
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$23;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$23;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2789
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$24;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$24;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PHOTOS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2806
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$25;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$25;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_OTHER_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2827
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$26;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$26;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_MANAGE_UNKNOWN_SOURCE_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2856
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$27;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$27;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_APPS_EXCEPT_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Landroid/content/pm/IPackageManager;)V
    .locals 7

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    .line 172
    iput v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mWorkUserId:I

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    const-string v0, ""

    .line 181
    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRefreshCandidatePkgName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCheckDisabledApp:Z

    .line 184
    new-instance v1, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 186
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    const-wide/16 v1, 0x1

    .line 189
    iput-wide v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    .line 195
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    .line 205
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    .line 209
    new-instance v3, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 256
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sput-object v3, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "usagestats"

    .line 259
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManager;

    sput-object v3, Lcom/android/settingslib/applications/ApplicationsState;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 261
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 262
    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 263
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    .line 264
    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/StorageStatsManager;

    iput-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mStats:Landroid/app/usage/StorageStatsManager;

    .line 266
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    sput-object p1, Lcom/android/settingslib/applications/ApplicationsState;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const-string/jumbo p1, "usb"

    .line 267
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 268
    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    sput-object p1, Lcom/android/settingslib/applications/ApplicationsState;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 270
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object p1

    array-length p2, p1

    move v3, v0

    :goto_0
    if-ge v3, p2, :cond_0

    aget v4, p1, v3

    .line 271
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ApplicationsState.Loader"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    .line 275
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 276
    new-instance p2, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const p1, 0x408200

    .line 279
    iput p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    const p1, 0x8200

    .line 282
    iput p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:I

    .line 285
    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object p1

    .line 286
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ModuleInfo;

    .line 287
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->isHidden()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 304
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p1

    .line 306
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 309
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

.method private addUser(I)V
    .locals 3

    .line 920
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    .line 921
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 922
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 923
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 924
    iget-boolean p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-eqz p1, :cond_0

    .line 928
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doPauseLocked()V

    .line 929
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 931
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 932
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 934
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method private bulkInsertNewAppLabelList()V
    .locals 3

    .line 2967
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->mNewAppListForAppLabelCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "ApplicationsState"

    if-eqz v0, :cond_0

    const-string p0, "bulkInsertAppLabelList : contentValuesList is empty"

    .line 2968
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2973
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bulkInsertAppLabelList : build count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->mNewAppListForAppLabelCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->mNewAppListForAppLabelCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 2975
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->mNewAppListForAppLabelCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    .line 2977
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->mNewAppListForAppLabelCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2979
    array-length v2, v0

    if-nez v2, :cond_1

    const-string p0, "bulkInsertAppLabelList : contentValuesArray is empty"

    .line 2980
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2985
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheProviderContract;->URI_APP_LIST:Landroid/net/Uri;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0

    .line 2986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bulkInsertAppLabelList : insert count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2988
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3

    const/4 v0, 0x0

    .line 689
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 690
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 691
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 692
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne p2, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 7

    .line 955
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 958
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 962
    :cond_0
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_2

    .line 968
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->isHiddenModule(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 977
    :cond_1
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 978
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 980
    :cond_2
    iget-object p0, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq p0, p1, :cond_3

    .line 981
    iput-object p1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 1

    .line 137
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;Landroid/content/pm/IPackageManager;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p0

    return-object p0
.end method

.method static getInstance(Landroid/app/Application;Landroid/content/pm/IPackageManager;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 2

    .line 142
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;-><init>(Landroid/app/Application;Landroid/content/pm/IPackageManager;)V

    sput-object v1, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;

    .line 146
    :cond_0
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 147
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1012
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4

    if-eqz p1, :cond_0

    .line 1001
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide p0, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/16 p0, -0x2

    return-wide p0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4

    if-eqz p1, :cond_0

    .line 992
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    iget-wide p0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    sub-long/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/16 p0, -0x2

    return-wide p0
.end method

.method private static hasFlag(II)Z
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

.method private static isAppIconCacheEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 1019
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.settings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$requestSize$0(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 3

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 740
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 737
    invoke-virtual {v0, v1, p2, v2}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    .line 741
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 743
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 742
    invoke-virtual {v1, v2, p1}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v1

    .line 744
    new-instance p1, Landroid/content/pm/PackageStats;

    invoke-direct {p1, p2, p3}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 745
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide p2

    iput-wide p2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 746
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide p2

    iput-wide p2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 747
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide p2

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :try_start_1
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 754
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to query stats: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApplicationsState"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :try_start_2
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1038
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    .line 1039
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    .line 1040
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private removeRemovedAppLabelList()V
    .locals 6

    .line 2938
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 2939
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2940
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2943
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2944
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->mAppLabelCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2945
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;

    .line 2946
    iget-object v4, v3, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2947
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " maybe deleted, so remove from applist label cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ApplicationsState"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    iget-object v3, v3, Lcom/samsung/android/settingslib/applications/cachedb/AppListCachePackageData;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2952
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2953
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2954
    sget-object v3, Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheProviderContract;->URI_APP_LIST:Landroid/net/Uri;

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2956
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2960
    :cond_3
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "com.samsung.android.settings.applist"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 2962
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private removeUser(I)V
    .locals 4

    .line 939
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 940
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 942
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 943
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 944
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 946
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 947
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 948
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 951
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method addPackage(Ljava/lang/String;I)V
    .locals 4

    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :try_start_1
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    .line 801
    monitor-exit v0

    return-void

    .line 803
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 806
    monitor-exit v0

    return-void

    .line 808
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 809
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p2}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    :goto_0
    int-to-long v2, v2

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:I

    goto :goto_0

    .line 808
    :goto_1
    invoke-interface {v1, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_3

    .line 812
    monitor-exit v0

    return-void

    .line 814
    :cond_3
    iget-boolean p2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v1, 0x1

    if-nez p2, :cond_5

    .line 815
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x3

    if-eq p2, v2, :cond_4

    .line 817
    monitor-exit v0

    return-void

    .line 819
    :cond_4
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 822
    :cond_5
    iget-boolean p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    if-nez p2, :cond_7

    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isAutoDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isManualDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 823
    :cond_6
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 826
    :cond_7
    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 827
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 829
    :cond_8
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 831
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 833
    :cond_9
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_a

    .line 834
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 837
    :cond_a
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

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

.method public addRefreshCandidatePkgName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1045
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1046
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRefreshCandidatePkgName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1047
    iput-boolean p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCheckDisabledApp:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1050
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method clearEntries()V
    .locals 2

    const/4 v0, 0x0

    .line 589
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 592
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method doPauseIfNeededLocked()V
    .locals 2

    .line 630
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 633
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 634
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-boolean v1, v1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doPauseLocked()V

    return-void
.end method

.method doPauseLocked()V
    .locals 1

    const/4 v0, 0x0

    .line 645
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    .line 646
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    const/4 v0, 0x0

    .line 648
    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    :cond_0
    return-void
.end method

.method doResumeIfNeededLocked()V
    .locals 12

    .line 332
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    .line 336
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 337
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver-IA;)V

    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 338
    invoke-virtual {v1}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    .line 342
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 343
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "ApplicationsState"

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 346
    :try_start_0
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_3

    .line 347
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    :cond_3
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 352
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    :goto_1
    int-to-long v7, v7

    goto :goto_2

    :cond_4
    iget v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:I

    goto :goto_1

    :goto_2
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 351
    invoke-interface {v6, v7, v8, v3}, Landroid/content/pm/IPackageManager;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 354
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 363
    :goto_3
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_2

    .line 364
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 365
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800000

    invoke-static {v3, v6}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result v3

    if-nez v3, :cond_5

    .line 367
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, -0x1

    :cond_5
    add-int/2addr v5, v0

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v5, "Error during doResumeIfNeededLocked"

    .line 374
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 380
    :cond_6
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 384
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->clearEntries()V

    goto :goto_5

    :cond_7
    move v1, v5

    .line 386
    :goto_4
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 387
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iput-boolean v0, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 391
    :cond_8
    :goto_5
    iput-boolean v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 392
    iput-boolean v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 394
    iput-boolean v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mWorkHaveDisabledApp:Z

    .line 398
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    move v3, v5

    .line 400
    :goto_6
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_14

    .line 404
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 407
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_ConfigAppListForHidingAppMgr"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    .line 408
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    .line 409
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 410
    array-length v8, v7

    move v9, v5

    :goto_7
    if-ge v9, v8, :cond_a

    aget-object v10, v7, v9

    .line 411
    iget-object v11, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hideAppList : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is removed from mApplications"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v7, v0

    goto :goto_8

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_a
    move v7, v5

    :goto_8
    if-eqz v7, :cond_b

    goto/16 :goto_a

    .line 426
    :cond_b
    iget-boolean v7, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v7, :cond_e

    .line 427
    iget v7, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_c

    .line 428
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    .line 434
    :cond_c
    iget v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mWorkUserId:I

    if-lez v7, :cond_d

    iget v8, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 435
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-ne v7, v8, :cond_d

    .line 436
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mWorkHaveDisabledApp:Z

    goto :goto_9

    .line 437
    :cond_d
    iget v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v1, v7, :cond_e

    .line 439
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 442
    :cond_e
    :goto_9
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/settingslib/applications/ApplicationsState;->isHiddenModule(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 443
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v3, v7

    goto :goto_a

    .line 447
    :cond_f
    iget-object v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRefreshCandidatePkgName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    iget-boolean v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCheckDisabledApp:Z

    if-eqz v7, :cond_12

    .line 448
    :cond_10
    iget-boolean v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    if-nez v7, :cond_11

    invoke-static {v6}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 449
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    :cond_11
    const-string v7, ""

    .line 456
    iput-object v7, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRefreshCandidatePkgName:Ljava/lang/String;

    .line 460
    :cond_12
    iget v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 461
    iget-object v8, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v7, :cond_13

    .line 463
    iput-object v6, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    :cond_13
    :goto_a
    add-int/2addr v3, v0

    goto/16 :goto_6

    .line 468
    :cond_14
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRefreshCandidatePkgName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    move v0, v5

    .line 470
    :goto_b
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 471
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRefreshCandidatePkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/settingslib/applications/ApplicationsState;->removePackageForEntryOnly(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 483
    :cond_15
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_16

    .line 485
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->clearEntries()V

    .line 489
    :cond_16
    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppLoadStartTime:J

    .line 494
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheManager;->getAppLabelCachePackageData(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->mAppLabelCache:Ljava/util/HashMap;

    .line 495
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->mNewAppListForAppLabelCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 498
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 502
    :cond_17
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCheckDisabledApp:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    if-nez v0, :cond_18

    .line 503
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;

    invoke-direct {v0, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask-IA;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_18
    return-void
.end method

.method public ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 1

    .line 703
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    .line 706
    :cond_0
    monitor-enter p1

    .line 709
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {p1, v0, p0}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/util/IconDrawableFactory;)Z

    .line 711
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public ensureLabelDescription(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 1

    .line 720
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 723
    :cond_0
    monitor-enter p1

    .line 724
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabelDescriptionLocked(Landroid/content/Context;)V

    .line 725
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBackgroundLooper()Landroid/os/Looper;
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 6

    .line 655
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "ApplicationsState"

    const-string/jumbo p1, "packageName is empty"

    .line 656
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 663
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 665
    monitor-exit v0

    return-object v1

    .line 667
    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v2, :cond_3

    .line 670
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 673
    :try_start_1
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    const-wide/16 v4, 0x0

    invoke-interface {v3, p1, v4, v5, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "ApplicationsState"

    const-string p2, "getEntry couldn\'t reach PackageManager"

    .line 675
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    monitor-exit v0

    return-object v1

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 680
    invoke-direct {p0, v3}, Lcom/android/settingslib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    .line 684
    :cond_3
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 685
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getIconDrawableFactory()Landroid/util/IconDrawableFactory;
    .locals 0

    .line 2934
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    return-object p0
.end method

.method public haveDisabledApps()Z
    .locals 0

    .line 596
    iget-boolean p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    return p0
.end method

.method public haveWorkDisabledApps()Z
    .locals 0

    .line 605
    iget-boolean p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mWorkHaveDisabledApp:Z

    return p0
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;I)I
    .locals 3

    .line 781
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 782
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 783
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 784
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public invalidatePackage(Ljava/lang/String;I)V
    .locals 0

    .line 915
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->removePackage(Ljava/lang/String;I)V

    .line 916
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    return-void
.end method

.method isHiddenModule(Ljava/lang/String;)Z
    .locals 0

    .line 614
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 619
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method isSystemModule(Ljava/lang/String;)Z
    .locals 0

    .line 623
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;
    .locals 1

    const/4 v0, 0x0

    .line 317
    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p0

    return-object p0
.end method

.method public newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;
    .locals 1

    .line 321
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$Session;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)V

    .line 322
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p1

    .line 323
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method rebuildActiveSessions()V
    .locals 5

    .line 1023
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1024
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessionsChanged:Z

    if-nez v1, :cond_0

    .line 1025
    monitor-exit v0

    return-void

    .line 1027
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 1028
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1029
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 1030
    iget-boolean v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v3, :cond_1

    .line 1031
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1034
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removePackage(Ljava/lang/String;I)V
    .locals 5

    .line 870
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 872
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_7

    .line 875
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v2, :cond_0

    .line 878
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 881
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 882
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 883
    iget-boolean p2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_4

    .line 884
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 885
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 886
    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_2

    .line 887
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    goto :goto_1

    .line 891
    :cond_2
    iget-boolean v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isAutoDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isManualDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 892
    :cond_3
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    goto :goto_0

    .line 897
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 898
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 899
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

    .line 900
    invoke-static {p2}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 901
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 906
    :cond_6
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 907
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 911
    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removePackageForEntryOnly(Ljava/lang/String;I)V
    .locals 3

    .line 844
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 849
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 850
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 853
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 857
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 858
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 861
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 862
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 865
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public requestSize(Ljava/lang/String;I)V
    .locals 4

    .line 730
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_0

    .line 732
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    invoke-static {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 733
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    new-instance v3, Lcom/android/settingslib/applications/ApplicationsState$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 764
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setInterestingConfigChanges(Lcom/android/settingslib/applications/InterestingConfigChanges;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    return-void
.end method

.method public setWorkUserId(I)V
    .locals 0

    .line 601
    iput p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mWorkUserId:I

    return-void
.end method
