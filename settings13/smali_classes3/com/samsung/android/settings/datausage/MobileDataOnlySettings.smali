.class public Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MobileDataOnlySettings.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;,
        Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$SeparatorViewHolder;,
        Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;,
        Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$AlphaComparator;
    }
.end annotation


# static fields
.field private static final mBlockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBlockMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFilterLabels:[I


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

.field private mEmptyView:Landroid/view/View;

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mHandler:Landroid/os/Handler;

.field private mIsRebuild:Z

.field private mLoadingContainer:Landroid/view/View;

.field private mMDOAdapter:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRootView:Landroid/view/View;

.field private mSelectedFilter:I

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private mVpnCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWaitLoading:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroidx/apppickerview/widget/AppPickerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApps(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmptyView(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mEmptyView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilterSpinner(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mFilterSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoadingContainer(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mLoadingContainer:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMDOAdapter(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mMDOAdapter:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnItemSelectedListener(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootView(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedFilter(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSelectedFilter:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSpinnerAdapter(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/widget/ArrayAdapter;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getSpinnerAdapter()Landroid/widget/ArrayAdapter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadAppList(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->loadAppList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmBlockMap()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mBlockMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 102
    sget v1, Lcom/android/settings/R$string;->sec_datausage_mdo_filter_all:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->sec_datausage_mdo_filter_selected:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->sFilterLabels:[I

    .line 108
    new-instance v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mBlockList:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mBlockMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mIsRebuild:Z

    .line 134
    iput v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSelectedFilter:I

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mWaitLoading:Z

    .line 140
    new-instance v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$2;-><init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$3;-><init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 162
    new-instance v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$4;-><init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mVpnCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 186
    new-instance v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$5;-><init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method private getSpinnerAdapter()Landroid/widget/ArrayAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 312
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    const v2, 0x1090008

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 313
    sget v1, Lcom/android/settings/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const/4 v1, 0x0

    .line 314
    :goto_0
    sget-object v2, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->sFilterLabels:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 315
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    aget v2, v2, v1

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->games_category:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method private loadAppList()V
    .locals 6

    .line 328
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->makeBlockListMap()V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    .line 338
    iget-boolean v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mWaitLoading:Z

    if-eqz v2, :cond_2

    .line 339
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 342
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mWaitLoading:Z

    :cond_2
    move v0, v1

    .line 345
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 346
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 347
    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v3, v2}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 348
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 352
    :cond_3
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v5, 0x2710

    if-ge v3, v5, :cond_4

    .line 353
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 357
    :cond_4
    iget v3, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSelectedFilter:I

    if-ne v3, v4, :cond_5

    .line 358
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/ConnectivitySettingsManager;->getMobileDataPreferredUids(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 359
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 365
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSelectedFilter:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    .line 366
    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 367
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    :goto_2
    add-int/2addr v0, v4

    goto :goto_0

    .line 375
    :cond_7
    new-instance v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$AlphaComparator;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$AlphaComparator;-><init>()V

    .line 376
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 377
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 378
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mHandler:Landroid/os/Handler;

    .line 379
    new-instance v1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;-><init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private makeBlockListMap()V
    .locals 5

    .line 491
    sget-object v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mBlockMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 492
    sget-object v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mBlockList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 494
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 495
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 496
    sget-object v4, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mBlockMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobileDataOnlySettings"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 432
    sget p0, Lcom/android/settings/R$string;->sec_datausage_mdo_title:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1be9

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_connections"

    return-object p0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 228
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 233
    new-instance v0, Lcom/android/settings/network/MobileDataEnabledListener;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    .line 235
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "isFromGame"

    .line 238
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 240
    iput v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSelectedFilter:I

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 245
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mIsRebuild:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 210
    sget v0, Lcom/android/settings/R$string;->refresh_app_list_option:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 211
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 251
    sget p2, Lcom/android/settings/R$layout;->sec_mobile_data_only_settings:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    .line 253
    sget p2, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mLoadingContainer:Landroid/view/View;

    const/16 p2, 0xf

    .line 254
    invoke-virtual {p1, p2}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 255
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 256
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mLoadingContainer:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->empty_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mEmptyView:Landroid/view/View;

    .line 260
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->filter_spinner:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mFilterSpinner:Landroid/widget/Spinner;

    .line 261
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getSpinnerAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 262
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 264
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->filter_spinner_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 265
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 266
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 268
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->empty:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 269
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->semSetRoundedCorners(I)V

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/widget/TextView;->semSetRoundedCornerColor(II)V

    .line 272
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->apppickerview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/apppickerview/widget/AppPickerView;

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    .line 273
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(ILjava/util/List;)V

    .line 276
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 278
    new-instance p1, Lcom/android/settingslib/net/UidDetailProvider;

    iget-object p3, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 280
    new-instance p3, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    invoke-direct {p3, p0, v1, p1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;-><init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;Ljava/util/List;Lcom/android/settingslib/net/UidDetailProvider;)V

    iput-object p3, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mMDOAdapter:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    .line 282
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 283
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    .line 284
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    .line 285
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 286
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 287
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 288
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 290
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 767
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 768
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    if-eqz p0, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/android/settingslib/net/UidDetailProvider;->clearCache()V

    :cond_0
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 2

    .line 465
    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mIsRebuild:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mLoadingContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->loadAppList()V

    .line 467
    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mIsRebuild:Z

    const-string p0, "MobileDataOnlySettings"

    const-string v0, "rebuild page"

    .line 468
    invoke-static {p0, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 469
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mWaitLoading:Z

    if-eqz v0, :cond_1

    .line 470
    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mWaitLoading:Z

    .line 471
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->loadAppList()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public onMobileDataEnabledChange()V
    .locals 2

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->loadAppList()V

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1bee

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 223
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 295
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 297
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 405
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 407
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 410
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mLoadingContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mWaitLoading:Z

    if-nez v0, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->loadAppList()V

    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 417
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 419
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 420
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 419
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 422
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    .line 424
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x4

    .line 425
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xf

    .line 426
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mVpnCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 424
    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 305
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 306
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 307
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mVpnCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public setSelectedFilter(I)V
    .locals 0

    .line 436
    iput p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSelectedFilter:I

    return-void
.end method
