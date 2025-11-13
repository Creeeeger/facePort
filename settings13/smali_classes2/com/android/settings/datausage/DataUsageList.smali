.class public Lcom/android/settings/datausage/DataUsageList;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "DataUsageList.java"

# interfaces
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;
.implements Lcom/android/settings/datausage/DataUsageEditController;


# static fields
.field private static final LOADER_CHART_DATA:I = 0x2

.field private static final LOADER_SUMMARY:I = 0x3

.field private static final LOGD:Z

.field private static mCurrentSelection:I

.field private static mCycleInitialized:Z

.field private static sfTotalBytes:J


# instance fields
.field private final AID_OEM_RESERVED_2_END:I

.field private final AID_OEM_RESERVED_2_START:I

.field private final AID_OEM_RESERVED_END:I

.field private final AID_OEM_RESERVED_START:I

.field private mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

.field private mAlertTotalSentListener:Landroid/view/View$OnClickListener;

.field private mApps:Landroidx/preference/PreferenceGroup;

.field private mBound:Z

.field private mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleChartData;",
            ">;"
        }
    .end annotation
.end field

.field private final mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mCycleSpinner:Landroid/widget/Spinner;

.field private mCycles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

.field private mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

.field private mDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/view/View;

.field private mIsRoaming:Z

.field private mLastDisplayedCycle:Lcom/android/settings/datausage/CycleAdapter$CycleItem;

.field private mLifetime:Lcom/samsung/android/settings/datausage/MTRPreference;

.field mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field final mNetworkCycleDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleChartData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNetworkStatsDetailCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Landroid/app/usage/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkType:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field mSubId:I

.field mTemplate:Landroid/net/NetworkTemplate;

.field private mTotalReceive:Lcom/samsung/android/settings/datausage/MTRPreference;

.field private mTotalSent:Lcom/samsung/android/settings/datausage/MTRPreference;

.field private mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private mUsageAmount:Landroidx/preference/Preference;

.field private mlifetimeMessenger:Landroid/os/Messenger;

.field private rilHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$QKkfp4bGf-obWVpXdrxRVfyZhJs(Lcom/android/settings/datausage/DataUsageList;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmApps(Lcom/android/settings/datausage/DataUsageList;)Landroidx/preference/PreferenceGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroidx/preference/PreferenceGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChart(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDesc(Lcom/android/settings/datausage/DataUsageList;)Lcom/samsung/android/settings/widget/SecUnclickablePreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeader(Lcom/android/settings/datausage/DataUsageList;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsageAmount(Lcom/android/settings/datausage/DataUsageList;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBound(Lcom/android/settings/datausage/DataUsageList;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCycleData(Lcom/android/settings/datausage/DataUsageList;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServiceMessenger(Lcom/android/settings/datausage/DataUsageList;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic -$$Nest$mbindStats(Lcom/android/settings/datausage/DataUsageList;Landroid/app/usage/NetworkStats;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageList;->bindStats(Landroid/app/usage/NetworkStats;[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTimeData(Lcom/android/settings/datausage/DataUsageList;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageList;->getTimeData(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetTimeData(Lcom/android/settings/datausage/DataUsageList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->resetTimeData(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSummaryfortimedata(Lcom/android/settings/datausage/DataUsageList;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->setSummaryfortimedata([B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSelectedCycle(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateSelectedCycle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUsageTitle(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateUsageTitle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOGD()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/datausage/DataUsageList;->LOGD:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 144
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/datausage/DataUsageList;->LOGD:Z

    const-wide/16 v0, 0x0

    .line 155
    sput-wide v0, Lcom/android/settings/datausage/DataUsageList;->sfTotalBytes:J

    const/4 v0, 0x0

    .line 210
    sput-boolean v0, Lcom/android/settings/datausage/DataUsageList;->mCycleInitialized:Z

    .line 211
    sput v0, Lcom/android/settings/datausage/DataUsageList;->mCurrentSelection:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 126
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 167
    iput v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mServiceMessenger:Landroid/os/Messenger;

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    const/16 v1, 0xb54

    .line 203
    iput v1, p0, Lcom/android/settings/datausage/DataUsageList;->AID_OEM_RESERVED_START:I

    const/16 v1, 0xbb7

    .line 204
    iput v1, p0, Lcom/android/settings/datausage/DataUsageList;->AID_OEM_RESERVED_END:I

    const/16 v1, 0x1388

    .line 205
    iput v1, p0, Lcom/android/settings/datausage/DataUsageList;->AID_OEM_RESERVED_2_START:I

    const/16 v1, 0x176f

    .line 206
    iput v1, p0, Lcom/android/settings/datausage/DataUsageList;->AID_OEM_RESERVED_2_END:I

    .line 218
    new-instance v1, Lcom/android/settings/datausage/DataUsageList$1;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/DataUsageList$1;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mIsRoaming:Z

    .line 997
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$5;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$5;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1009
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$6;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$6;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mNetworkCycleDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 1043
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$7;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$7;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mNetworkStatsDetailCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 1145
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$8;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$8;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    .line 1176
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$9;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$9;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->rilHandler:Landroid/os/Handler;

    .line 1208
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mlifetimeMessenger:Landroid/os/Messenger;

    .line 1233
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$10;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$10;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

    .line 1250
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$11;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$11;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalSentListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private static accumulate(ILandroid/util/SparseArray;Landroid/app/usage/NetworkStats$Bucket;ILjava/util/ArrayList;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/settingslib/AppItem;",
            ">;",
            "Landroid/app/usage/NetworkStats$Bucket;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/AppItem;",
            ">;J)J"
        }
    .end annotation

    .line 974
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v0

    .line 975
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/AppItem;

    if-nez v1, :cond_0

    .line 977
    new-instance v1, Lcom/android/settingslib/AppItem;

    invoke-direct {v1, p0}, Lcom/android/settingslib/AppItem;-><init>(I)V

    .line 978
    iput p3, v1, Lcom/android/settingslib/AppItem;->category:I

    .line 979
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    iget p0, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 982
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settingslib/AppItem;->addUid(I)V

    .line 983
    iget-wide p0, v1, Lcom/android/settingslib/AppItem;->total:J

    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide p3

    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v2

    add-long/2addr p3, v2

    add-long/2addr p0, p3

    iput-wide p0, v1, Lcom/android/settingslib/AppItem;->total:J

    .line 986
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 987
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    .line 988
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-ne p0, p1, :cond_1

    .line 989
    sget-wide p0, Lcom/android/settings/datausage/DataUsageList;->sfTotalBytes:J

    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide p3

    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v2

    add-long/2addr p3, v2

    add-long/2addr p0, p3

    sput-wide p0, Lcom/android/settings/datausage/DataUsageList;->sfTotalBytes:J

    .line 994
    :cond_1
    iget-wide p0, v1, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {p5, p6, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private declared-synchronized bindStats(Landroid/app/usage/NetworkStats;[I)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 737
    :try_start_0
    iget-object v3, v1, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const-wide/16 v3, 0x0

    .line 740
    sput-wide v3, Lcom/android/settings/datausage/DataUsageList;->sfTotalBytes:J

    if-nez v0, :cond_1

    .line 744
    sget-boolean v0, Lcom/android/settings/datausage/DataUsageList;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "DataUsageList"

    const-string v2, "No network stats data. App list cleared."

    .line 745
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    :cond_0
    monitor-exit p0

    return-void

    .line 750
    :cond_1
    :try_start_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 753
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v13

    .line 754
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v14

    .line 755
    invoke-virtual {v14}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v15

    .line 756
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 759
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, -0x1

    const/4 v9, 0x0

    :try_start_2
    const-string v6, "com.att.iqi"

    .line 762
    invoke-virtual {v11, v6, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move v8, v5

    .line 770
    :try_start_3
    new-instance v7, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v7}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    move-wide/from16 v16, v3

    .line 771
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v0, v7}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 773
    invoke-virtual {v7}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v6

    .line 776
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v6, v8, :cond_2

    move-object/from16 v18, v7

    move/from16 v21, v8

    move/from16 v19, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    goto/16 :goto_6

    .line 786
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v18

    const/16 v3, 0xbb7

    const/16 v9, 0xb54

    const/4 v4, -0x4

    if-nez v18, :cond_d

    .line 788
    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v18

    const/16 v20, 0x2

    if-nez v18, :cond_8

    invoke-static {v6}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v18

    if-eqz v18, :cond_3

    goto :goto_3

    :cond_3
    if-eq v6, v4, :cond_7

    const/16 v4, 0x425

    if-eq v6, v4, :cond_7

    const/16 v4, -0x64

    if-eq v6, v4, :cond_7

    if-lt v6, v9, :cond_4

    if-le v6, v3, :cond_7

    :cond_4
    const/16 v3, 0x1388

    if-lt v6, v3, :cond_5

    const/16 v3, 0x176f

    if-gt v6, v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, -0x5

    if-ne v6, v3, :cond_6

    move v5, v6

    move-object/from16 v18, v7

    move/from16 v21, v8

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-wide/from16 v10, v16

    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v18, v7

    move/from16 v21, v8

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-wide/from16 v10, v16

    move/from16 v8, v20

    const/16 v5, 0x3e8

    goto :goto_2

    :cond_7
    :goto_1
    move v5, v6

    move-object/from16 v18, v7

    move/from16 v21, v8

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-wide/from16 v10, v16

    move/from16 v8, v20

    :goto_2
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 789
    :cond_8
    :goto_3
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v15, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eq v5, v13, :cond_9

    .line 792
    invoke-static {v5}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v3

    const/4 v4, 0x0

    move v9, v5

    move v5, v3

    move v3, v6

    move-object v6, v10

    move-object/from16 v18, v7

    move/from16 v21, v8

    move v8, v4

    move v4, v9

    const/16 v19, 0x0

    move-object v9, v12

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-wide/from16 v10, v16

    .line 793
    invoke-static/range {v5 .. v11}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/app/usage/NetworkStats$Bucket;ILjava/util/ArrayList;J)J

    move-result-wide v16

    .line 797
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_6

    :cond_9
    move v3, v6

    move-object/from16 v18, v7

    move/from16 v21, v8

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    const/16 v19, 0x0

    :cond_a
    move v5, v3

    move-wide/from16 v10, v16

    move/from16 v8, v20

    goto :goto_5

    :cond_b
    move-object/from16 v18, v7

    move/from16 v21, v8

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    const/16 v19, 0x0

    .line 809
    invoke-virtual {v14, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-nez v3, :cond_c

    move/from16 v9, v20

    goto :goto_4

    .line 815
    :cond_c
    invoke-static {v5}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v4

    move/from16 v9, v19

    :goto_4
    move v5, v4

    move v8, v9

    move-wide/from16 v10, v16

    :goto_5
    move-object/from16 v6, v22

    move-object/from16 v7, v18

    move-object v9, v12

    .line 838
    invoke-static/range {v5 .. v11}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/app/usage/NetworkStats$Bucket;ILjava/util/ArrayList;J)J

    move-result-wide v16

    goto/16 :goto_6

    :cond_d
    move-object/from16 v18, v7

    move/from16 v21, v8

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    const/16 v19, 0x0

    .line 842
    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 843
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-ne v5, v7, :cond_10

    if-eq v6, v4, :cond_15

    const/4 v4, -0x5

    if-eq v6, v4, :cond_15

    const/16 v4, 0x3e8

    if-eq v6, v4, :cond_15

    if-lt v6, v9, :cond_e

    if-le v6, v3, :cond_15

    :cond_e
    const/16 v3, 0x1388

    if-lt v6, v3, :cond_f

    const/16 v3, 0x176f

    if-gt v6, v3, :cond_f

    goto :goto_6

    :cond_f
    const/4 v8, 0x2

    move v5, v6

    move-object/from16 v6, v22

    move-object/from16 v7, v18

    move-object v9, v12

    move-wide/from16 v10, v16

    .line 853
    invoke-static/range {v5 .. v11}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/app/usage/NetworkStats$Bucket;ILjava/util/ArrayList;J)J

    move-result-wide v16

    goto :goto_6

    .line 855
    :cond_10
    invoke-virtual {v14, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-nez v7, :cond_11

    goto :goto_6

    .line 859
    :cond_11
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_12

    goto :goto_6

    :cond_12
    if-eq v6, v4, :cond_15

    const/4 v4, -0x5

    if-eq v6, v4, :cond_15

    const/16 v4, 0x3e8

    if-eq v6, v4, :cond_15

    if-lt v6, v9, :cond_13

    if-le v6, v3, :cond_15

    :cond_13
    const/16 v3, 0x1388

    if-lt v6, v3, :cond_14

    const/16 v3, 0x176f

    if-gt v6, v3, :cond_14

    goto :goto_6

    .line 870
    :cond_14
    invoke-static {v5}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v5

    const/4 v8, 0x0

    move-object/from16 v6, v22

    move-object/from16 v7, v18

    move-object v9, v12

    move-wide/from16 v10, v16

    invoke-static/range {v5 .. v11}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/app/usage/NetworkStats$Bucket;ILjava/util/ArrayList;J)J

    move-result-wide v16

    :cond_15
    :goto_6
    move-object/from16 v7, v18

    move/from16 v9, v19

    move/from16 v8, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    const-wide/16 v3, 0x0

    goto/16 :goto_0

    :cond_16
    move/from16 v19, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    .line 878
    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/NetworkStats;->close()V

    .line 880
    array-length v0, v2

    move/from16 v9, v19

    :goto_7
    if-ge v9, v0, :cond_1d

    .line 882
    aget v3, v2, v9

    .line 884
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 887
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v15, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    :cond_17
    :goto_8
    move-object/from16 v4, v22

    move-object/from16 v6, v23

    goto :goto_a

    .line 892
    :cond_18
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-nez v5, :cond_17

    .line 893
    :cond_19
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_8

    :cond_1a
    move-object/from16 v4, v22

    .line 897
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/AppItem;

    if-nez v5, :cond_1b

    .line 899
    new-instance v5, Lcom/android/settingslib/AppItem;

    invoke-direct {v5, v3}, Lcom/android/settingslib/AppItem;-><init>(I)V

    const-wide/16 v6, -0x1

    .line 900
    iput-wide v6, v5, Lcom/android/settingslib/AppItem;->total:J

    .line 901
    invoke-virtual {v5, v3}, Lcom/android/settingslib/AppItem;->addUid(I)V

    .line 902
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    iget v6, v5, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1b
    const/4 v6, 0x1

    .line 905
    iput-boolean v6, v5, Lcom/android/settingslib/AppItem;->restricted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v6, v23

    .line 908
    :try_start_4
    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 909
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    const/4 v3, 0x0

    goto :goto_9

    :cond_1c
    aget-object v3, v3, v19

    :goto_9
    iput-object v3, v5, Lcom/android/settingslib/AppItem;->restrictedPackageName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    :catch_1
    :try_start_5
    const-string v3, "DataUsageList"

    const-string v5, "Attempt to read from null array Exception"

    .line 911
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v22, v4

    move-object/from16 v23, v6

    goto :goto_7

    .line 916
    :cond_1d
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move/from16 v9, v19

    .line 917
    :goto_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_20

    const-wide/16 v2, 0x0

    cmp-long v0, v16, v2

    if-eqz v0, :cond_1e

    .line 918
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/AppItem;

    iget-wide v4, v0, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    div-long v4, v4, v16

    long-to-int v0, v4

    goto :goto_c

    :cond_1e
    move/from16 v0, v19

    .line 919
    :goto_c
    new-instance v4, Lcom/android/settings/datausage/AppDataUsagePreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 920
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/AppItem;

    iget-object v7, v1, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v4, v5, v6, v0, v7}, Lcom/android/settings/datausage/AppDataUsagePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;)V

    .line 921
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$4;

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/DataUsageList$4;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 931
    sget-boolean v0, Lcom/android/settings/datausage/DataUsageList;->LOGD:Z

    if-eqz v0, :cond_1f

    const-string v0, "DataUsageList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppItem : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/AppItem;

    iget v6, v6, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/AppItem;

    iget-wide v6, v6, Lcom/android/settingslib/AppItem;->total:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_1f
    iget-object v0, v1, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 935
    :cond_20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private buildArgs(Landroid/net/NetworkTemplate;)Landroid/os/Bundle;
    .locals 1

    .line 543
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "template"

    .line 544
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "app"

    const/4 v0, 0x0

    .line 545
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method private connectToRilService_lifetime()V
    .locals 3

    const-string v0, "DataUsageList"

    const-string v1, "connect To Secphone service"

    .line 1097
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    .line 1099
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private getTimeData(II)V
    .locals 3

    const-string v0, "DataUsageList"

    .line 1104
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1105
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1107
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1108
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 p1, 0x0

    .line 1109
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 p1, 0x4

    .line 1110
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1112
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1113
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getOemData with "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageList;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    .line 1115
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getOemData(int, int).. exception occured during operation"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 2

    .line 1161
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "request"

    .line 1162
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1164
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1165
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mlifetimeMessenger:Landroid/os/Messenger;

    iput-object p1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1168
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz p0, :cond_0

    .line 1169
    invoke-virtual {p0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    const-string p0, "DataUsageList"

    const-string p1, "mServiceMessenger is null. Do nothing."

    .line 1171
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 2

    .line 333
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 334
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    const-string/jumbo v1, "network_template"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 335
    iget v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    const-string/jumbo v1, "subscriptionid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 336
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    .line 337
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->billing_cycle:I

    .line 338
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 340
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private resetTimeData(I)V
    .locals 5

    .line 1123
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1124
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x51

    .line 1126
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0xb

    .line 1127
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x0

    .line 1128
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x5

    .line 1129
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    if-nez p1, :cond_0

    .line 1131
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 1133
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1136
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1137
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " resetTimeData with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DataUsageList"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datausage/DataUsageList;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :catch_0
    return-void
.end method

.method private setSummaryfortimedata([B)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1221
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v2

    const/16 v0, 0x8

    .line 1222
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v4

    const/16 v1, 0x10

    .line 1223
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v6

    const/16 v0, 0x18

    .line 1224
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v0

    .line 1225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSummaryfortimedata :"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v8, "DataUsageList"

    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalReceive:Lcom/samsung/android/settings/datausage/MTRPreference;

    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageList;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-interface {v8, v9, v2, v3}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1228
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalSent:Lcom/samsung/android/settings/datausage/MTRPreference;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v2, v3, v4, v5}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-wide/16 v2, 0x0

    cmp-long p1, v6, v2

    if-lez p1, :cond_0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 1230
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mLifetime:Lcom/samsung/android/settings/datausage/MTRPreference;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    add-long/2addr v6, v0

    invoke-interface {v2, p0, v6, v7}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static smallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V
    .locals 5

    .line 708
    invoke-static {p0, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/16 v3, 0x12

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 710
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {p1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    .line 713
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v4, v1, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 715
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr p1, v0

    .line 716
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v4

    if-ge p1, v4, :cond_2

    .line 717
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {p0, v4, p1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    const-string/jumbo v2, "sans-serif-medium"

    .line 719
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 720
    invoke-virtual {p0, v1, v0, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-void
.end method

.method private updateBody()V
    .locals 5

    .line 516
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 518
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 521
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 523
    sget v1, Lcom/android/settings/R$color;->sim_noitification:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 524
    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 525
    invoke-static {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 526
    invoke-virtual {v0, v2}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 529
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v1

    :cond_1
    const/16 v0, 0x7f

    .line 533
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 534
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 533
    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 536
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    if-eqz p0, :cond_2

    .line 537
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setColors(II)V

    :cond_2
    return-void
.end method

.method private updateDetailData()V
    .locals 3

    .line 665
    sget-boolean v0, Lcom/android/settings/datausage/DataUsageList;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "DataUsageList"

    const-string/jumbo v1, "updateDetailData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mNetworkStatsDetailCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method private updateSelectedCycle()V
    .locals 6

    .line 590
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 601
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_a

    if-gez v0, :cond_2

    goto/16 :goto_1

    .line 604
    :cond_2
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 605
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mLastDisplayedCycle:Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 609
    :cond_3
    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mLastDisplayedCycle:Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 611
    sget-boolean v2, Lcom/android/settings/datausage/DataUsageList;->LOGD:Z

    if-eqz v2, :cond_4

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showing cycle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", [start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataUsageList"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_4
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->sec_data_usage_summary_preference_cycle_dropdown_tts:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 622
    iget-boolean v1, v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isSetCycle:Z

    if-eqz v1, :cond_5

    .line 623
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->show(Lcom/android/settings/datausage/DataUsageList;Landroid/net/NetworkTemplate;)Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;

    .line 624
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result p0

    const/16 v0, 0x1be3    # 1.0004E-41f

    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void

    .line 632
    :cond_5
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    if-eqz v1, :cond_6

    .line 633
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkCycleData(Lcom/android/settingslib/net/NetworkCycleChartData;)V

    .line 637
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    .line 640
    sget-boolean v1, Lcom/android/settings/datausage/DataUsageList;->mCycleInitialized:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    sget v1, Lcom/android/settings/datausage/DataUsageList;->mCurrentSelection:I

    if-eq v1, v0, :cond_9

    .line 641
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    if-ne v1, v2, :cond_8

    .line 642
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageList;->mIsRoaming:Z

    if-nez v1, :cond_7

    .line 643
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result p0

    const/16 v1, 0x1bc7

    invoke-static {p0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    .line 646
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result p0

    const/16 v1, 0x1be2    # 1.0002E-41f

    invoke-static {p0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    .line 649
    :cond_8
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_9

    .line 650
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result p0

    const/16 v1, 0x1bdc

    invoke-static {p0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 654
    :cond_9
    :goto_0
    sput v0, Lcom/android/settings/datausage/DataUsageList;->mCurrentSelection:I

    .line 655
    sput-boolean v2, Lcom/android/settings/datausage/DataUsageList;->mCycleInitialized:Z

    :cond_a
    :goto_1
    return-void
.end method

.method private updateUsageTitle()V
    .locals 13

    .line 673
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {v0}, Lcom/android/settingslib/net/NetworkCycleData;->getTotalUsage()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 677
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "totalBytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataUsageList"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 681
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-wide v1, Lcom/android/settings/datausage/DataUsageList;->sfTotalBytes:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-wide v2, Lcom/android/settings/datausage/DataUsageList;->sfTotalBytes:J

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 687
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 691
    :goto_1
    sget v1, Lcom/android/settings/R$string;->data_used_template:I

    .line 692
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->fileSizeSuffix:I

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const-string v11, ""

    aput-object v11, v9, v4

    const/4 v12, 0x2

    aput-object v11, v9, v12

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 694
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v10

    aput-object v11, v3, v4

    aput-object v11, v3, v12

    invoke-virtual {v1, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/datausage/DataUsageList;->smallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V

    .line 695
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method byteToLong([BII)J
    .locals 4

    .line 1212
    array-length p0, p1

    const-wide/16 v0, 0x0

    if-ge p0, p3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_1

    const/16 p0, 0x8

    shl-long/2addr v0, p0

    .line 1215
    aget-byte p0, p1, p3

    and-int/lit16 p0, p0, 0xff

    int-to-long v2, p0

    add-long/2addr v0, v2

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DataUsageList"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 3

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->processArgument()V

    .line 239
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    const/16 v1, 0x155

    if-nez v0, :cond_0

    return v1

    .line 241
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const/16 p0, 0x157

    return p0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 244
    iget-boolean p0, p0, Lcom/android/settings/datausage/DataUsageList;->mIsRoaming:Z

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/16 p0, 0x1be0    # 1.0E-41f

    return p0

    :cond_3
    return v1
.end method

.method public getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;
    .locals 0

    .line 1271
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 468
    sget p0, Lcom/android/settings/R$xml;->data_usage_list:I

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_connections"

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 257
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isBandwidthControlEnabled()Z

    move-result v0

    const-string v1, "DataUsageList"

    if-nez v0, :cond_0

    const-string p0, "No bandwidth control; leaving"

    .line 261
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 266
    :cond_0
    new-instance v0, Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v0, p1}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    const-string/jumbo v0, "usage_amount"

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroidx/preference/Preference;

    const-string v2, "chart_data"

    .line 268
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/ChartDataUsagePreference;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    const-string v3, "apps_group"

    .line 269
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroidx/preference/PreferenceGroup;

    const-string v4, "data_operator_warning"

    .line 272
    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroidx/preference/Preference;

    .line 275
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/ChartDataUsagePreference;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    .line 276
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroidx/preference/PreferenceGroup;

    .line 279
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->processArgument()V

    .line 293
    sget-boolean v0, Lcom/android/settings/datausage/DataUsageList;->LOGD:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Template : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMetroPCS()Z

    move-result v0

    const-string v1, "lifetime_data"

    const-string/jumbo v2, "total_sent_data"

    const-string/jumbo v3, "total_received_data"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 298
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    .line 300
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 302
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHandler:Landroid/os/Handler;

    .line 303
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->connectToRilService_lifetime()V

    .line 304
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/MTRPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalReceive:Lcom/samsung/android/settings/datausage/MTRPreference;

    .line 305
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/datausage/MTRPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/MTRPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalSent:Lcom/samsung/android/settings/datausage/MTRPreference;

    .line 307
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalSentListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/datausage/MTRPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/MTRPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mLifetime:Lcom/samsung/android/settings/datausage/MTRPreference;

    goto :goto_0

    .line 310
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 311
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 312
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 313
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 318
    :goto_0
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getDataUsageFeatureProvider()Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    .line 320
    new-instance v0, Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settingslib/net/UidDetailProvider;->clearCache()V

    const/4 v0, 0x0

    .line 455
    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 457
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    const-string v0, "DataUsageList"

    const-string/jumbo v1, "onDestroy: unbindService"

    .line 460
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onMobileDataEnabledChange()V
    .locals 0

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->updatePolicy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 439
    sget-boolean v0, Lcom/android/settings/datausage/DataUsageList;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "DataUsageList"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 442
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 445
    :cond_1
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 446
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    .line 448
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    .line 449
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 413
    sget-boolean v0, Lcom/android/settings/datausage/DataUsageList;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "DataUsageList"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 416
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    :cond_1
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    .line 422
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {v0}, Lcom/android/settings/widget/LoadingViewController;->showLoadingViewDelayed()V

    .line 423
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    const/4 v0, 0x0

    .line 424
    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    .line 425
    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mLastDisplayedCycle:Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 430
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 431
    invoke-direct {p0, v2}, Lcom/android/settings/datausage/DataUsageList;->buildArgs(Landroid/net/NetworkTemplate;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mNetworkCycleDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 430
    invoke-virtual {v0, v1, v2, v3}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 433
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateBody()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 325
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 328
    sget p1, Lcom/android/settings/R$layout;->sec_apps_filter_spinner:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    .line 332
    sget p2, Lcom/android/settings/R$id;->filter_settings:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/settings/datausage/DataUsageList$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/datausage/DataUsageList$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 345
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 347
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->filter_spinner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    const/16 v0, 0x8

    .line 348
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 350
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 352
    new-instance p1, Lcom/android/settings/datausage/CycleAdapter;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/android/settings/datausage/DataUsageList$2;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/DataUsageList$2;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p1, v0, v2, v3}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    .line 373
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$3;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 385
    iget-boolean p1, p0, Lcom/android/settings/datausage/DataUsageList;->mIsRoaming:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 386
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/CycleAdapter;->addCycleSetItem(Z)V

    .line 390
    :cond_0
    new-instance p1, Lcom/android/settings/widget/LoadingViewController;

    .line 391
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-direct {p1, v2, v4}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    .line 394
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 395
    invoke-virtual {p1, p2}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 396
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 397
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 398
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    :cond_1
    const/4 p1, 0x0

    .line 402
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 403
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_list_item_padding_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 404
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_app_list_item_icon_min_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int v3, p1

    .line 405
    new-instance p1, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/android/settings/R$id;->icon_frame:I

    const v5, 0x1020006

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;III)V

    .line 406
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method processArgument()V
    .locals 6

    .line 478
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    if-eqz v0, :cond_0

    return-void

    .line 482
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_roaming"

    const/4 v2, 0x0

    const-string/jumbo v3, "network_template"

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    const-string/jumbo v5, "sub_id"

    .line 484
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 485
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    const-string/jumbo v5, "network_type"

    .line 486
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/datausage/DataUsageList;->mNetworkType:I

    .line 489
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mIsRoaming:Z

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    if-ne v0, v4, :cond_2

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "android.provider.extra.SUB_ID"

    .line 494
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 496
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 499
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mIsRoaming:Z

    :cond_2
    return-void
.end method

.method startAppDataUsage(Lcom/android/settingslib/AppItem;)V
    .locals 5

    .line 939
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app_item"

    .line 940
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 941
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    const-string/jumbo v1, "network_template"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 942
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 943
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    .line 944
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/net/NetworkCycleChartData;

    .line 945
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 946
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/settingslib/net/NetworkCycleData;->getEndTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/settingslib/net/NetworkCycleData;->getStartTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 951
    :cond_1
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    const-string/jumbo v1, "network_cycles"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 952
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    .line 953
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleData;->getEndTime()J

    move-result-wide v1

    const-string/jumbo p1, "selected_cycle"

    .line 952
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 955
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/datausage/AppDataUsage;

    .line 956
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->data_usage_app_summary_title:I

    .line 957
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 958
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 959
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 960
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public updateDataUsage()V
    .locals 2

    .line 1281
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1282
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->updatePolicy()V

    .line 1283
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateBody()V

    return-void
.end method

.method updatePolicy()V
    .locals 4

    .line 555
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->filter_settings:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 558
    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;I)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isMobileDataAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 560
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    if-eqz v2, :cond_0

    .line 561
    invoke-virtual {v2, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 563
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mIsRoaming:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 564
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 567
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 574
    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 577
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 581
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->updateCycleList(Ljava/util/List;)V

    .line 582
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateSelectedCycle()V

    return-void
.end method
