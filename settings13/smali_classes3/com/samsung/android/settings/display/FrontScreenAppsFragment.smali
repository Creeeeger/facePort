.class public Lcom/samsung/android/settings/display/FrontScreenAppsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FrontScreenAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;,
        Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;,
        Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;,
        Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isPreviewVisible:Z

.field private mAllAppsChecked:Z

.field private final mAllAppsCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mAllAppsUiChecked:Z

.field private mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mEmptyViewText:Landroid/widget/TextView;

.field private mEnabledCount:I

.field private mFragmentVisible:Z

.field private mImageLayout:Landroid/widget/LinearLayout;

.field mIsFirst:Z

.field private mIsFirstLoading:Z

.field private mItemCount:I

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListContainer:Landroid/view/ViewGroup;

.field private final mPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreview:Lcom/android/settingslib/widget/LayoutPreference;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchMenu:Landroid/view/MenuItem;

.field mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

.field private final mStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mValidItemCount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetisPreviewVisible(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->isPreviewVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllAppsChecked(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mAllAppsChecked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllAppsCheckedChangeListener(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mAllAppsCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllAppsUiChecked(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mAllAppsUiChecked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mEmptyViewText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnabledCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mEnabledCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFirstLoading(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mIsFirstLoading:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mItemCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLauncherApps(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/content/pm/LauncherApps;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListContainer(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mListContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageList(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mPackageList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mPackageListTemp:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreview(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Lcom/android/settingslib/widget/LayoutPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mPreview:Lcom/android/settingslib/widget/LayoutPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRows(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mRows:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mStateMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmValidItemCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mValidItemCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisPreviewVisible(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->isPreviewVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAllAppsChecked(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mAllAppsChecked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAllAppsUiChecked(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mAllAppsUiChecked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnabledCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mEnabledCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmImageLayout(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mImageLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFirstLoading(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mIsFirstLoading:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmItemCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mItemCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreview(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mPreview:Lcom/android/settingslib/widget/LayoutPreference;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmValidItemCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mValidItemCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$misFragmentVisible(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->isFragmentVisible()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetContinuityModePackage(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->setContinuityModePackage(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 336
    new-instance v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    .line 672
    new-instance v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$8;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$8;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mRowComparator:Ljava/util/Comparator;

    .line 781
    new-instance v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$9;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$9;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mFragmentVisible:Z

    .line 104
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mRows:Landroid/util/ArrayMap;

    .line 108
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mIsFirstLoading:Z

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mPackageList:Ljava/util/List;

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mPackageListTemp:Ljava/util/List;

    .line 118
    iput v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mItemCount:I

    .line 119
    iput v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mValidItemCount:I

    .line 120
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->isPreviewVisible:Z

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mStateMap:Ljava/util/HashMap;

    .line 429
    new-instance v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;-><init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mCollectAppsRunnable:Ljava/lang/Runnable;

    .line 549
    new-instance v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$6;-><init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mAllAppsCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static getPackageType(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Lcom/samsung/android/view/SemWindowManager;)I
    .locals 3

    const-string v0, "FrontScreenAppsFragment"

    const/4 v1, 0x5

    .line 379
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {p0, p2, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 388
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p3, p1, p0, p2}, Lcom/samsung/android/view/SemWindowManager;->getAppContinuityMode(Ljava/lang/String;Landroid/content/pm/ActivityInfo;I)I

    move-result p0

    .line 389
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPackageType #2 : appContinuityMode : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const-string p0, "getPackageType #2 : unknown type"

    .line 400
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 404
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    .line 382
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPackageType #2 : getActivityInfo() NameNotFoundException : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getPackageType(Ljava/lang/String;Landroid/content/ComponentName;)I
    .locals 4

    const-string v0, "FrontScreenAppsFragment"

    const/4 v1, 0x5

    .line 693
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/samsung/android/view/SemWindowManager;->getAppContinuityMode(Ljava/lang/String;Landroid/content/pm/ActivityInfo;I)I

    move-result p0

    .line 700
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "appContinuityMode : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const-string p0, "unknown type"

    .line 712
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 695
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getActivityInfo() NameNotFoundException : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private declared-synchronized isFragmentVisible()Z
    .locals 1

    monitor-enter p0

    .line 418
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadAppsList()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x1

    .line 423
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mIsFirst:Z

    .line 424
    iput v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mEnabledCount:I

    .line 425
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mPackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 426
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setContinuityModePackage(Ljava/lang/String;Z)V
    .locals 2

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setContinuityModePackage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrontScreenAppsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/view/SemWindowManager;->setAppContinuityMode(Ljava/lang/String;IZ)V

    return-void
.end method

.method private setEmptyTextYPos()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mListContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$1;-><init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized setFragmentVisibleState(Z)V
    .locals 0

    monitor-enter p0

    .line 414
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 1

    .line 577
    new-instance v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;-><init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    return-void
.end method


# virtual methods
.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "com.android.settings.DisplaySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d08

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_display"

    return-object p0
.end method

.method public loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;)Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;
    .locals 4

    .line 644
    new-instance v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;-><init>()V

    .line 645
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mPackage:Ljava/lang/String;

    .line 646
    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mUid:I

    .line 647
    iput-object p3, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mComponentName:Landroid/content/ComponentName;

    .line 648
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAppRow >> Package Name : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Uid : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mUid:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " componentName : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "FrontScreenAppsFragment"

    invoke-static {v1, p3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading application label for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    iget-object p3, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mPackage:Ljava/lang/String;

    iput-object p3, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    :goto_0
    const/4 p3, 0x1

    .line 655
    invoke-virtual {p2, p1, p3, p3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 656
    iget-object p1, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mPackage:Ljava/lang/String;

    iget-object p2, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->getPackageType(Ljava/lang/String;Landroid/content/ComponentName;)I

    move-result p0

    iput p0, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mType:I

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 195
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    .line 198
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 228
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 229
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->setEmptyTextYPos()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mContext:Landroid/content/Context;

    const-string v0, "launcherapps"

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "user_used_app_continuity_setting"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 243
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 244
    sget v0, Lcom/android/settings/R$menu;->sec_front_screen_apps:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 246
    sget p2, Lcom/android/settings/R$id;->search_apps:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mSearchMenu:Landroid/view/MenuItem;

    .line 247
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->sec_search_magnifier_icon_tint_color:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 249
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    .line 251
    sget p2, Lcom/android/settings/R$id;->search_plate:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    .line 253
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    .line 254
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    .line 253
    invoke-virtual {p2, v2, v0, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 257
    :cond_0
    sget p2, Lcom/android/settings/R$string;->sec_app_search_title:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 258
    new-instance p2, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;-><init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 303
    new-instance p2, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$3;-><init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 158
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x102003f

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mListContainer:Landroid/view/ViewGroup;

    .line 160
    new-instance p2, Landroid/widget/ProgressBar;

    iget-object p3, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 p3, 0x1

    .line 161
    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 162
    iget-object p2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    sget p3, Lcom/android/settings/R$style;->LoadingTheme:I

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setScrollBarStyle(I)V

    .line 163
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 v0, -0x2

    invoke-direct {p2, p3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x11

    .line 164
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 165
    iget-object p3, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mListContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object p2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const p2, 0x1020004

    .line 167
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mEmptyViewText:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 170
    iget-object p3, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$style;->no_item_text_style:I

    invoke-virtual {p2, p3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 171
    iget-object p2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mEmptyViewText:Landroid/widget/TextView;

    sget p3, Lcom/android/settings/R$string;->sec_app_search_no_result:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->setEmptyTextYPos()V

    :cond_0
    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 234
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->setFragmentVisibleState(Z)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 207
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mSearchMenu:Landroid/view/MenuItem;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mEmptyViewText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 210
    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mEmptyViewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 222
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->loadAppsList()V

    .line 223
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->setFragmentVisibleState(Z)V

    return-void
.end method
