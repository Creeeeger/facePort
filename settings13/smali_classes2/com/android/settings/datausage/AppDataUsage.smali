.class public Lcom/android/settings/datausage/AppDataUsage;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "AppDataUsage.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;,
        Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I

.field static mPackageName:Ljava/lang/String;

.field private static mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;


# instance fields
.field private mAppItem:Lcom/android/settingslib/AppItem;

.field private mAppList:Landroidx/preference/PreferenceCategory;

.field private mAppSettings:Landroidx/preference/Preference;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mBackgroundUsage:Landroidx/preference/Preference;

.field private mCycle:Lcom/android/settings/datausage/SpinnerPreference;

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCyclePosition:I

.field private mCycles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;

.field private mDialogUDS:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEnd:J

.field private mForegroundUsage:Landroidx/preference/Preference;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mInsetCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private final mIsCHNDataUsage:Z

.field private mIsLoading:Z

.field mLabel:Ljava/lang/CharSequence;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPcoSettingObserver:Landroid/database/ContentObserver;

.field private mRestrictBackgroundPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

.field private mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field private mSelectedCycle:J

.field private mStart:J

.field mTemplate:Landroid/net/NetworkTemplate;

.field private mTotalUsage:Landroidx/preference/Preference;

.field final mUidDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

.field private mUnrestrictedDataPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

.field private mUsageData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiTotal:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppItem(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppList(Lcom/android/settings/datausage/AppDataUsage;)Landroidx/preference/PreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCycle(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCycleAdapter(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCyclePosition(Lcom/android/settings/datausage/AppDataUsage;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCyclePosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCycles(Lcom/android/settings/datausage/AppDataUsage;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCHNDataUsage(Lcom/android/settings/datausage/AppDataUsage;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mIsCHNDataUsage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRestrictBackgroundPco(Lcom/android/settings/datausage/AppDataUsage;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedCycle(Lcom/android/settings/datausage/AppDataUsage;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mSelectedCycle:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmUnrestrictedData(Lcom/android/settings/datausage/AppDataUsage;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnrestrictedDataPco(Lcom/android/settings/datausage/AppDataUsage;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedDataPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCyclePosition(Lcom/android/settings/datausage/AppDataUsage;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCyclePosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnd(Lcom/android/settings/datausage/AppDataUsage;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsLoading(Lcom/android/settings/datausage/AppDataUsage;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mIsLoading:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStart(Lcom/android/settings/datausage/AppDataUsage;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUnrestrictedData(Lcom/android/settings/datausage/AppDataUsage;Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsageData(Lcom/android/settings/datausage/AppDataUsage;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUsageData:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$mbindDataCHN(Lcom/android/settings/datausage/AppDataUsage;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->bindDataCHN(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mqueryNetworkAsyncCHN(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->queryNetworkAsyncCHN()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mqueryNetworkStatsData(Lcom/android/settings/datausage/AppDataUsage;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->queryNetworkStatsData()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetmRestrictBackground()Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;
    .locals 1

    sget-object v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmRestrictBackground(Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;)V
    .locals 0

    sput-object p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetSubFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 201
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->CPU_COUNT:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    .line 202
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/android/settings/datausage/AppDataUsage;->CORE_POOL_SIZE:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 203
    sput v0, Lcom/android/settings/datausage/AppDataUsage;->MAXIMUM_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 113
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCyclePosition:I

    .line 152
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mIsCHNDataUsage:Z

    .line 159
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 197
    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 210
    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDialogUDS:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    .line 215
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/AppDataUsage$1;-><init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPcoSettingObserver:Landroid/database/ContentObserver;

    .line 985
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$2;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;

    .line 1003
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$3;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1052
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$4;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$4;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUidDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/AppDataUsage;I)V
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private addUid(I)V
    .locals 3

    .line 773
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p1

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 779
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 782
    aget-object v1, p1, v0

    const-string v2, "com.carrieriq.iqagent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 787
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private bindDataCHN(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/app/usage/NetworkStats$Bucket;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "AppDataUsage"

    const-string v1, "bindDataCHN"

    .line 850
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUsageData:Ljava/util/List;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 854
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    .line 855
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/settings/datausage/SpinnerPreference;->setHasCycles(Z)V

    .line 856
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mInsetCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v1, "bindDataCHN setVisible true"

    .line 857
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 859
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 860
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    move-wide v5, v3

    .line 861
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 862
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/NetworkStats$Bucket;

    .line 863
    invoke-virtual {v7}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v8

    invoke-virtual {v7}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v10

    add-long/2addr v8, v10

    add-long/2addr v5, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :cond_1
    if-eqz p1, :cond_2

    .line 869
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 870
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 871
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStats$Bucket;

    .line 872
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v0

    add-long/2addr v7, v0

    add-long/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 877
    :cond_2
    new-instance p1, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;

    invoke-direct {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;-><init>()V

    .line 878
    invoke-virtual {p1, v5, v6}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;->setBackgroundUsage(J)Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;

    .line 879
    invoke-virtual {p1, v3, v4}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;->setForegroundUsage(J)Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;

    .line 880
    iget-wide v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setStartTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    .line 881
    iget-wide v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setEndTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    .line 882
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUsageData:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;->build()Lcom/android/settingslib/net/NetworkCycleDataForUid;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v0, v3

    move-wide v3, v5

    goto :goto_2

    .line 884
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindDataCHN size = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUsageData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    invoke-virtual {p1, v2}, Lcom/android/settings/datausage/SpinnerPreference;->setHasCycles(Z)V

    .line 887
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mInsetCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string p1, "bindDataCHN setVisible false"

    .line 888
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "cycle"

    .line 889
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string p1, "inset_category_1"

    .line 890
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    move-wide v0, v3

    :goto_2
    add-long v5, v3, v0

    .line 894
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 895
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 896
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3, v4}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private collectHistoryForUid(Landroid/net/NetworkTemplate;IILjava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "II",
            "Ljava/util/List<",
            "Landroid/app/usage/NetworkStats$Bucket;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/usage/NetworkStats$Bucket;",
            ">;"
        }
    .end annotation

    .line 1261
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1265
    :cond_0
    iget-wide v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    iget-wide v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    const/4 v8, 0x0

    move-object v2, p1

    move v7, p2

    move v9, p3

    .line 1266
    invoke-virtual/range {v1 .. v9}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(Landroid/net/NetworkTemplate;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object p1

    .line 1265
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->convertToBuckets(Landroid/app/usage/NetworkStats;)Ljava/util/List;

    move-result-object p0

    if-eqz p4, :cond_1

    .line 1270
    invoke-interface {p4, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p4

    :cond_1
    return-object p0
.end method

.method private convertToBuckets(Landroid/app/usage/NetworkStats;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/usage/NetworkStats;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/usage/NetworkStats$Bucket;",
            ">;"
        }
    .end annotation

    .line 1300
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    :goto_0
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    new-instance v0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 1303
    invoke-virtual {p1, v0}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 1304
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private getAppRestrictBackground()Z
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    .line 902
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p0, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1192
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1193
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getUnrestrictData()Z
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 908
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget p0, p0, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->isAllowlisted(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private initCycle()V
    .locals 8

    const-string v0, "cycle"

    .line 655
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/SpinnerPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v1, 0x0

    .line 658
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "inset_category_1"

    .line 659
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mInsetCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 660
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 661
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    .line 666
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iput v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCyclePosition:I

    .line 668
    new-instance v0, Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;ZZ)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    const-string/jumbo v0, "unrestricted_data_saver"

    .line 669
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v0, :cond_1

    .line 672
    sget v1, Lcom/android/settings/R$string;->unrestricted_app_summary_chn:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 673
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    sget v1, Lcom/android/settings/R$string;->unrestricted_app_title_chn:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 677
    :cond_0
    new-instance v0, Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    .line 681
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycles:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 684
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    iget-wide v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mSelectedCycle:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/datausage/CycleAdapter;->setInitialCycleList(Ljava/util/List;J)V

    .line 685
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/SpinnerPreference;->setHasCycles(Z)V

    :cond_2
    return-void
.end method

.method private queryNetworkAsyncCHN()V
    .locals 1

    .line 1310
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$5;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$5;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 1323
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private queryNetworkStatsData()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/app/usage/NetworkStats$Bucket;",
            ">;>;"
        }
    .end annotation

    .line 1278
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 1279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move-object v3, v2

    :goto_0
    if-ge v4, v0, :cond_0

    .line 1283
    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v5, v5, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 1285
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    const/4 v7, 0x1

    invoke-direct {p0, v6, v5, v7, v2}, Lcom/android/settings/datausage/AppDataUsage;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILjava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1287
    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    const/4 v7, 0x2

    invoke-direct {p0, v6, v5, v7, v3}, Lcom/android/settings/datausage/AppDataUsage;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILjava/util/List;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "AppDataUsage"

    const-string/jumbo v7, "queryNetworkStatsData"

    .line 1290
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1293
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1294
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static resizeIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    .line 1161
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/widget/SecIconResizer;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/SecIconResizer;-><init>(Landroid/content/Context;)V

    .line 1163
    sget p0, Lcom/android/settings/R$dimen;->sec_widget_list_app_icon_size:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecIconResizer;->setIconSize(I)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 1166
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/SecIconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private setBackPreferenceListAnimatorIfLoaded()V
    .locals 1

    .line 697
    iget-boolean v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mIsLoading:Z

    if-eqz v0, :cond_0

    return-void

    .line 700
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    .line 701
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 702
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_1
    return-void
.end method

.method private updatePrefs(ZZ)V
    .locals 5

    .line 708
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 709
    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 710
    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 711
    :goto_0
    sget-object v3, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 712
    :cond_1
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    :cond_2
    if-nez v0, :cond_5

    .line 714
    sget-object v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v0, :cond_3

    xor-int/2addr p1, v2

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 715
    :cond_3
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    return-void

    .line 721
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->setBackPreferenceListAnimatorIfLoaded()V

    .line 723
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 722
    invoke-static {v0, v3, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 724
    sget-object v3, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v3, :cond_6

    xor-int/lit8 v4, p1, 0x1

    .line 725
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 726
    sget-object v3, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 728
    :cond_6
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v3, :cond_8

    if-eqz p1, :cond_7

    .line 731
    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 737
    :cond_7
    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 738
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 746
    :goto_1
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 752
    :cond_8
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result p2

    if-eqz p2, :cond_a

    sget-object p2, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz p2, :cond_a

    .line 753
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget p2, p2, Lcom/android/settingslib/AppItem;->key:I

    .line 754
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p2}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result p2

    if-nez p2, :cond_9

    .line 756
    sget-object p1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 757
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz p0, :cond_a

    .line 758
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_2

    .line 761
    :cond_9
    sget-object p2, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p2, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 762
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz p0, :cond_a

    xor-int/2addr p1, v2

    .line 763
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    :cond_a
    :goto_2
    return-void
.end method


# virtual methods
.method addEntityHeader()V
    .locals 9

    .line 916
    sget-object v0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 922
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    .line 923
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 922
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 925
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping UID because cannot find package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppDataUsage"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v3, v2

    .line 929
    :goto_1
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    const/4 v5, 0x1

    if-lez v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, v2

    .line 931
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    .line 933
    invoke-static {v6, p0, v1}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 934
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 935
    invoke-virtual {v1, v3}, Lcom/android/settings/widget/EntityHeaderController;->setUid(I)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 936
    invoke-virtual {v1, v4}, Lcom/android/settings/widget/EntityHeaderController;->setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 937
    invoke-virtual {v1, v2, v2}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 939
    invoke-virtual {v1, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 940
    invoke-virtual {v1, v3}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 941
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 943
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Landroid/content/pm/PackageInfo;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 945
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object v0

    .line 947
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v3, "pref_app_header"

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_3

    .line 948
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 950
    :cond_3
    new-instance v1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    .line 951
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    const/4 v2, 0x3

    .line 952
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 953
    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 954
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method bindData(I)V
    .locals 10

    .line 795
    iget-boolean v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mIsCHNDataUsage:Z

    if-eqz v0, :cond_0

    .line 796
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->queryNetworkAsyncCHN()V

    return-void

    .line 802
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindData pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppDataUsage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUsageData:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/SpinnerPreference;->setHasCycles(Z)V

    .line 821
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mInsetCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "bindData setVisible true"

    .line 822
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUsageData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/net/NetworkCycleDataForUid;

    .line 825
    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUid;->getBackgroudUsage()J

    move-result-wide v2

    .line 826
    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUid;->getForegroudUsage()J

    move-result-wide v4

    goto :goto_1

    .line 808
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindData size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUsageData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    .line 811
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/SpinnerPreference;->setHasCycles(Z)V

    .line 813
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mInsetCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string p1, "bindData setVisible false"

    .line 814
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "cycle"

    .line 815
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string p1, "inset_category_1"

    .line 816
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    move-wide v4, v2

    :goto_1
    add-long v6, v2, v4

    .line 835
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->isWifiTeampate()Z

    move-result p1

    const-string v0, " ,foreground : "

    if-eqz p1, :cond_3

    iget-wide v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mWifiTotal:J

    cmp-long p1, v8, v6

    if-lez p1, :cond_3

    sub-long v4, v8, v2

    .line 838
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wifi total : "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v6, v8

    goto :goto_2

    .line 840
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "total : "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :goto_2
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 844
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 845
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2, v3}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AppDataUsage"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x157

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 636
    sget p0, Lcom/android/settings/R$xml;->sec_app_data_usage:I

    return p0
.end method

.method getUidDetailProvider()Lcom/android/settingslib/net/UidDetailProvider;
    .locals 1

    .line 651
    new-instance v0, Lcom/android/settingslib/net/UidDetailProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isWifiTeampate()Z
    .locals 1

    .line 1155
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAllowlistStatusChanged(IZ)V
    .locals 2

    .line 1178
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1179
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v1, p0

    .line 260
    invoke-super/range {p0 .. p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 262
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->data_usage_app_summary_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 266
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "app_item"

    .line 268
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/AppItem;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    if-eqz v0, :cond_1

    const-string/jumbo v3, "network_template"

    .line 269
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 270
    :goto_1
    iput-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-eqz v0, :cond_2

    const-string/jumbo v3, "network_cycles"

    .line 271
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    move-object v3, v2

    .line 272
    :goto_2
    iput-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mCycles:Ljava/util/ArrayList;

    .line 275
    iget-boolean v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mIsCHNDataUsage:Z

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    move v3, v7

    .line 276
    :goto_3
    iget-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 277
    iget-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    cmp-long v4, v8, v10

    if-lez v4, :cond_3

    .line 278
    iget-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    .line 281
    :cond_3
    iget-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    cmp-long v4, v8, v10

    if-gez v4, :cond_4

    iget-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    cmp-long v4, v8, v10

    if-lez v4, :cond_4

    .line 282
    iget-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 285
    :cond_5
    iget-wide v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    iget-wide v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    cmp-long v8, v3, v5

    if-eqz v8, :cond_6

    .line 286
    iput-wide v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    :cond_6
    if-eqz v0, :cond_7

    const-string/jumbo v3, "selected_cycle"

    .line 290
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    :cond_7
    iput-wide v5, v1, Lcom/android/settings/datausage/AppDataUsage;->mSelectedCycle:J

    .line 292
    iget-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v3, :cond_8

    .line 293
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 294
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    .line 293
    invoke-static {v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    .line 296
    :cond_8
    iget-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    if-nez v3, :cond_d

    const-string/jumbo v3, "uid"

    const/4 v4, -0x1

    if-eqz v0, :cond_9

    .line 297
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_4

    .line 298
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    :goto_4
    if-ne v3, v4, :cond_a

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_8

    .line 306
    :cond_a
    new-instance v4, Lcom/android/settingslib/AppItem;

    invoke-direct {v4, v3}, Lcom/android/settingslib/AppItem;-><init>(I)V

    iput-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    if-eqz v0, :cond_b

    const-string/jumbo v4, "uids"

    .line 308
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_5

    :cond_b
    move-object v4, v2

    .line 309
    :goto_5
    iget-boolean v5, v1, Lcom/android/settings/datausage/AppDataUsage;->mIsCHNDataUsage:Z

    if-eqz v5, :cond_c

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_c

    move v3, v7

    .line 310
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_f

    .line 311
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v1, v5}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    .line 312
    iget-object v5, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settingslib/AppItem;->addUid(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 315
    :cond_c
    invoke-direct {v1, v3}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    .line 316
    iget-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/AppItem;->addUid(I)V

    goto :goto_8

    :cond_d
    move v3, v7

    .line 323
    :goto_7
    iget-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v4, v4, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 324
    iget-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v4, v4, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 327
    :cond_e
    iget-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-wide v3, v3, Lcom/android/settingslib/AppItem;->total:J

    iput-wide v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mWifiTotal:J

    .line 331
    :cond_f
    :goto_8
    iget-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v3, v3, Lcom/android/settingslib/AppItem;->key:I

    if-lez v3, :cond_10

    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 334
    iget-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v3, v3, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v3}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result v3

    .line 335
    iget-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v4, v4, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_10

    .line 336
    iget-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/AppItem;->addUid(I)V

    :cond_10
    const-string/jumbo v3, "total_usage"

    .line 339
    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroidx/preference/Preference;

    const-string v3, "foreground_usage"

    .line 340
    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroidx/preference/Preference;

    const-string v3, "background_usage"

    .line 341
    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroidx/preference/Preference;

    .line 343
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->initCycle()V

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getUidDetailProvider()Lcom/android/settingslib/net/UidDetailProvider;

    move-result-object v3

    .line 347
    iget-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    const-string v5, "divider_1"

    const-string v6, "app_list"

    const-string v8, "app_settings"

    const-string v9, "data_restrict"

    const-string/jumbo v10, "restrict_background"

    const-string/jumbo v11, "unrestricted_data_saver"

    const/4 v12, 0x1

    if-lez v4, :cond_19

    .line 348
    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_11

    .line 349
    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v3, v0, v12}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    .line 350
    iget-object v3, v0, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 351
    iget-object v0, v0, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 353
    invoke-virtual {v1, v9}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 355
    invoke-virtual {v1, v11}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 356
    invoke-virtual {v1, v10}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_a

    .line 358
    :cond_11
    iget-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-eqz v3, :cond_14

    const-string/jumbo v3, "package"

    if-eqz v0, :cond_12

    .line 361
    :try_start_0
    iget-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 362
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string v3, ""

    .line 364
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 365
    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 367
    :cond_13
    iget-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, v0, v7, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 371
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 372
    iget-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 373
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    .line 376
    iget-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :catch_0
    :cond_14
    invoke-virtual {v1, v10}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    sput-object v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    .line 382
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 383
    invoke-virtual {v1, v11}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    .line 384
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 386
    :goto_a
    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 387
    invoke-virtual {v1, v8}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroidx/preference/Preference;

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    .line 390
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 394
    iget-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 395
    iget-object v13, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v13, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    iget-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_15

    move v0, v12

    goto :goto_b

    :cond_16
    move v0, v7

    :goto_b
    if-nez v0, :cond_17

    .line 402
    invoke-virtual {v1, v8}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 403
    invoke-virtual {v1, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 404
    iput-object v2, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroidx/preference/Preference;

    .line 407
    :cond_17
    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-le v0, v12, :cond_18

    .line 408
    invoke-virtual {v1, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroidx/preference/PreferenceCategory;

    .line 410
    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 411
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 412
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v14, Lcom/android/settings/datausage/AppDataUsage;->CORE_POOL_SIZE:I

    sget v15, Lcom/android/settings/datausage/AppDataUsage;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v16, 0x1e

    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v13, v4

    move-object/from16 v19, v3

    invoke-direct/range {v13 .. v19}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    move v3, v12

    .line 414
    :goto_c
    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_1a

    .line 416
    :try_start_1
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;-><init>(Lcom/android/settings/datausage/AppDataUsage;Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader-IA;)V

    new-array v5, v12, [Ljava/lang/String;

    .line 417
    iget-object v6, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    .line 419
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RejectedExecutionException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AppDataUsage"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 426
    :cond_18
    invoke-virtual {v1, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_e

    .line 429
    :cond_19
    invoke-virtual {v3, v4, v12}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    .line 430
    iget-object v3, v0, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 431
    iget-object v0, v0, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 432
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    .line 435
    invoke-virtual {v1, v9}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 436
    invoke-virtual {v1, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 438
    invoke-virtual {v1, v11}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 439
    invoke-virtual {v1, v8}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 440
    invoke-virtual {v1, v10}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 441
    invoke-virtual {v1, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 445
    :cond_1a
    :goto_e
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportPco()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 446
    invoke-virtual {v1, v10}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    .line 447
    invoke-virtual {v1, v11}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedDataPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    .line 450
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "background_data_by_pco"

    .line 449
    invoke-static {v0, v3, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v12, :cond_1b

    move v7, v12

    :cond_1b
    if-eqz v7, :cond_1e

    .line 454
    sget-object v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v0, :cond_1c

    .line 455
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    sget-object v3, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 456
    sput-object v2, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    .line 458
    :cond_1c
    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v0, :cond_1d

    .line 459
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, v1, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 461
    :cond_1d
    invoke-virtual {v1, v9}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 468
    :cond_1e
    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_1f

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 471
    :cond_1f
    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v0, :cond_20

    .line 472
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 478
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->addEntityHeader()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 971
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 972
    new-instance v7, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    .line 973
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;

    const/4 p0, 0x1

    .line 975
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 p0, 0x2

    .line 976
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 p0, 0x5

    .line 977
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;IIII)V

    .line 978
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v7

    .line 981
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDenylistStatusChanged(IZ)V
    .locals 2

    .line 1185
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1186
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 542
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 543
    sget-object v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 544
    sput-object v1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v0, :cond_1

    .line 548
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v0, :cond_2

    .line 552
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedDataPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v0, :cond_3

    .line 556
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedDataPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 529
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 530
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 534
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportPco()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPcoSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 562
    sget-object v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-ne p1, v0, :cond_5

    const-string p1, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string v0, "UDS"

    .line 564
    invoke-static {p1, v0}, Lcom/android/settings/datausage/AppDataUsage;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 565
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "udsState"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v6, :cond_0

    .line 566
    new-instance p1, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    invoke-direct {p1}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDialogUDS:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    .line 567
    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->show(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;

    return v1

    .line 572
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    sget-object v1, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    xor-int/2addr v7, v6

    invoke-virtual {p1, v0, v1, v7}, Lcom/android/settings/datausage/DataSaverBackend;->setIsDenylisted(ILjava/lang/String;Z)V

    .line 574
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 576
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$integer;->data_usage_application_data_usage_cn_screen_id:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 577
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$integer;->data_usage_application_data_usage_cn_restrict_background_event_id:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 578
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {v1, p1, v0, p2}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    goto :goto_2

    .line 581
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->isWifiTeampate()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 582
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0x1bdd

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move-wide v2, v4

    :goto_0
    invoke-static {p1, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_2

    .line 584
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0x1bca

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move-wide v2, v4

    :goto_1
    invoke-static {p1, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 589
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    return v6

    .line 591
    :cond_5
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-ne p1, v0, :cond_a

    .line 592
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    sget-object v1, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {p1, v0, v1, v7}, Lcom/android/settings/datausage/DataSaverBackend;->setIsAllowlisted(ILjava/lang/String;Z)V

    .line 594
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 596
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$integer;->data_usage_application_data_usage_cn_screen_id:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 597
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$integer;->data_usage_application_data_usage_cn_use_data_without_restriction_event_id:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 598
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    goto :goto_5

    .line 601
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->isWifiTeampate()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 602
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x1bde

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    move-wide v2, v4

    :goto_3
    invoke-static {p0, p1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_5

    .line 604
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x1bcb

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_4

    :cond_9
    move-wide v2, v4

    :goto_4
    invoke-static {p0, p1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :goto_5
    return v6

    :cond_a
    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 620
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 621
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$integer;->data_usage_application_data_usage_cn_screen_id:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 622
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$integer;->data_usage_application_data_usage_cn_view_app_setting_event_id:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 623
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    .line 627
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    new-instance v1, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget p0, p0, Lcom/android/settingslib/AppItem;->key:I

    .line 628
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 627
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0

    .line 631
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 5

    .line 484
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    const-string v0, "AppDataUsage"

    const-string/jumbo v1, "onResume"

    .line 486
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 496
    iput-boolean v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mIsLoading:Z

    .line 497
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 498
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 502
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportPco()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "background_data_by_pco"

    .line 504
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mPcoSettingObserver:Landroid/database/ContentObserver;

    .line 503
    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 509
    :cond_1
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mUidDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v3, v1, v4}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    .line 515
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 516
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$integer;->data_usage_application_data_usage_cn_screen_id:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->sendSmartManagerFlowLog(Landroid/content/Context;I)V

    :cond_2
    const-string v0, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string v1, "UDS"

    .line 519
    invoke-static {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "udsState"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDialogUDS:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDialogUDS:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->close(Lcom/android/settings/datausage/AppDataUsage;)V

    :cond_3
    return-void
.end method

.method updatePrefs()V
    .locals 2

    .line 646
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    return-void
.end method
