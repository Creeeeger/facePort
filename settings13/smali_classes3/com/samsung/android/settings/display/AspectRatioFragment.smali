.class public Lcom/samsung/android/settings/display/AspectRatioFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AspectRatioFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;,
        Lcom/samsung/android/settings/display/AspectRatioFragment$FullScreenAppsListAdapter;,
        Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;,
        Lcom/samsung/android/settings/display/AspectRatioFragment$LoadAppIconTask;,
        Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;
    }
.end annotation


# instance fields
.field private mAppLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

.field private final mAppRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mAspectRatioLayout:Landroid/view/View;

.field private mAsyncTask:Landroid/os/AsyncTask;

.field private mContext:Landroid/content/Context;

.field private mEmptyViewText:Landroid/widget/TextView;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mHighlightKey:Ljava/lang/String;

.field private mHighlightPosition:I

.field private mHighlightRequest:Z

.field private mIsSupportAspectRatio:Z

.field private mItemCount:I

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mLoadingPanel:Landroid/view/View;

.field private mPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageListTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchMenu:Landroid/view/MenuItem;

.field private final mSystemDefaultValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mUserInfo:Landroid/content/pm/SemUserInfo;

.field mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public static synthetic $r8$lambda$-s7wapC-4hHmjl41CppB-CPw9sE(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->lambda$applyHighlight$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$axGcN7dX5oPmJ3I-YGuDO0WzPLA(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->lambda$applyHighlight$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppRows(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppRows:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAspectRatioLayout(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAspectRatioLayout:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExecutor(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHighlightKey(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHighlightPosition(Lcom/samsung/android/settings/display/AspectRatioFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHighlightRequest(Lcom/samsung/android/settings/display/AspectRatioFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightRequest:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSupportAspectRatio(Lcom/samsung/android/settings/display/AspectRatioFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemCount(Lcom/samsung/android/settings/display/AspectRatioFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mItemCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLauncherApps(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/content/pm/LauncherApps;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoadingPanel(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mLoadingPanel:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageList(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mPackageList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mPackageListTemp:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchMenu(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSearchMenu:Landroid/view/MenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemDefaultValues(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSystemDefaultValues:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserInfo(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/content/pm/SemUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHighlightKey(Lcom/samsung/android/settings/display/AspectRatioFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHighlightPosition(Lcom/samsung/android/settings/display/AspectRatioFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHighlightRequest(Lcom/samsung/android/settings/display/AspectRatioFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightRequest:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmItemCount(Lcom/samsung/android/settings/display/AspectRatioFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mItemCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmResultList(Lcom/samsung/android/settings/display/AspectRatioFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mResultList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyHighlight(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->applyHighlight(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAspectRatio(Lcom/samsung/android/settings/display/AspectRatioFragment;I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->getAspectRatio(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetAspectRatioCategory(Lcom/samsung/android/settings/display/AspectRatioFragment;F)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->getAspectRatioCategory(F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPackagePolicy(Lcom/samsung/android/settings/display/AspectRatioFragment;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->getPackagePolicy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misExceptionAppCase(Lcom/samsung/android/settings/display/AspectRatioFragment;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->isExceptionAppCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mkillPackageProcesses(Lcom/samsung/android/settings/display/AspectRatioFragment;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/AspectRatioFragment;->killPackageProcesses(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadAppRow(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/LauncherActivityInfo;)Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/AspectRatioFragment;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/LauncherActivityInfo;)Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetEmptyTextYPos(Lcom/samsung/android/settings/display/AspectRatioFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->setEmptyTextYPos()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMaxAspectRatioPolicy(Lcom/samsung/android/settings/display/AspectRatioFragment;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/AspectRatioFragment;->setMaxAspectRatioPolicy(Ljava/lang/String;IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroidx/apppickerview/widget/AppPickerView;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/AspectRatioFragment;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;Landroid/util/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupOnFoldBindListener(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroidx/apppickerview/widget/AppPickerView;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/AspectRatioFragment;->setupOnFoldBindListener(Landroidx/apppickerview/widget/AppPickerView;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mPackageList:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mResultList:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mPackageListTemp:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSystemDefaultValues:Ljava/util/Map;

    .line 130
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppRows:Landroid/util/ArrayMap;

    const/4 v0, -0x1

    .line 134
    iput v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightPosition:I

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightRequest:Z

    .line 137
    iput v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mItemCount:I

    .line 954
    new-instance v0, Lcom/samsung/android/settings/display/AspectRatioFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/AspectRatioFragment$5;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private applyHighlight(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;)V
    .locals 4

    .line 1002
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    monitor-enter v0

    .line 1003
    :try_start_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1004
    new-instance v1, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroid/view/View;)V

    const-wide/16 v2, 0x258

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1016
    new-instance p0, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1019
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getAspectRatio(I)F
    .locals 1

    const/high16 p0, -0x40800000    # -1.0f

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const p0, 0x3fe38e39

    return p0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const p0, 0x3faaaaab

    :cond_2
    return p0
.end method

.method private getAspectRatioCategory(F)I
    .locals 1

    const/high16 p0, -0x40800000    # -1.0f

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x3fe38e39

    sub-float p0, p1, p0

    .line 909
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const p0, 0x3faaaaab

    sub-float/2addr p1, p0

    .line 911
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getDropDownEntries(Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V
    .locals 7

    .line 786
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_set_aspect_ratio_for_each_app_full_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_set_aspect_ratio_for_each_app_app_16_to_9:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 788
    iget-object v2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sec_set_aspect_ratio_for_each_app_app_4_to_3:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 796
    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSystemDefaultValues:Ljava/util/Map;

    iget-object v6, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 797
    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSystemDefaultValues:Ljava/util/Map;

    iget-object v6, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-lez v6, :cond_0

    .line 800
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->getAspectRatioCategory(F)I

    move-result p0

    const/4 v6, 0x1

    if-ne p0, v6, :cond_0

    const/high16 p0, 0x41100000    # 9.0f

    mul-float/2addr v1, p0

    const/high16 p0, 0x41200000    # 10.0f

    mul-float/2addr v1, p0

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, p0

    .line 804
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ":9"

    .line 805
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v6

    :cond_0
    move p0, v5

    :goto_0
    if-ge p0, v3, :cond_3

    .line 812
    aget-object v0, v4, p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 813
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportHalfFoldedMode()Z

    move-result v0

    if-nez v0, :cond_1

    aget-object v0, v4, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip list = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " row.mPackage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AspectRatioFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 818
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    aget-object v1, v4, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    iget-object v0, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mValues:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 823
    :cond_3
    :goto_2
    iget-object p0, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v5, p0, :cond_4

    .line 824
    iget-object p0, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private getMaxAspectRatioPolicy(Ljava/lang/String;I)I
    .locals 3

    const-string v0, "AspectRatioFragment"

    const/4 v1, 0x0

    .line 860
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {p0, p1, p2}, Landroid/view/IWindowManager;->getMaxAspectRatioPolicy(Ljava/lang/String;I)I

    move-result v1

    .line 861
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxAspectRatioPolicy() : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for uid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "getMaxAspectRatioPolicy() RemoteException"

    .line 863
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private getPackagePolicy(Ljava/util/Map;)Ljava/util/Map;
    .locals 5

    .line 870
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    const/4 v1, 0x3

    .line 869
    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getFixedAspectRatioPackages(IILjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 873
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSystemDefaultValues:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 874
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 875
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_0

    .line 876
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 877
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 878
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_0

    .line 879
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 880
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/display/AspectRatioFragment;->getAspectRatioCategory(F)I

    move-result v4

    if-eqz v4, :cond_0

    sub-float/2addr v2, v3

    .line 883
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 884
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/display/AspectRatioFragment;->getAspectRatio(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method private isExceptionAppCase(Ljava/lang/String;)Z
    .locals 4

    .line 500
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->config_not_allow_fullScreen_packages:I

    .line 501
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 502
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 503
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 504
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private killPackageProcesses(Ljava/lang/String;I)V
    .locals 1

    .line 919
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const-string v0, "Display - Full screen apps menu kill by user"

    invoke-interface {p0, p1, p2, v0}, Landroid/app/IActivityTaskManager;->killPackageProcesses(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AspectRatioFragment"

    const-string p2, "Failed to killPackageProcesses"

    .line 921
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$applyHighlight$0(Landroid/view/View;)V
    .locals 4

    .line 1005
    iget v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1006
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1007
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1008
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 1009
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    const/4 v0, 0x1

    .line 1011
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1012
    iput v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightPosition:I

    :cond_1
    return-void
.end method

.method private static synthetic lambda$applyHighlight$1(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1017
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method private loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/LauncherActivityInfo;)Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;
    .locals 5

    const-string v0, "AspectRatioFragment"

    .line 724
    new-instance v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow-IA;)V

    .line 725
    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    .line 726
    iget v4, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mUid:I

    .line 727
    iput-object p3, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 729
    iget-boolean p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    if-nez p3, :cond_2

    .line 731
    :try_start_0
    iget-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppLabelCache:Ljava/util/HashMap;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Ljava/lang/CharSequence;

    .line 732
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 733
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    goto :goto_1

    .line 735
    :cond_1
    iput-object v2, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 738
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading application label for "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 739
    iget-object p1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    iput-object p1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    .line 742
    :goto_1
    iget-object p1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 743
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AppLabel is still empty, set packageName = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object p1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    iput-object p1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    .line 748
    :cond_2
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 749
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 751
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    iget-boolean p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    if-nez p2, :cond_3

    .line 754
    iget-object p1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    iget p2, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mUid:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/AspectRatioFragment;->getMaxAspectRatioPolicy(Ljava/lang/String;I)I

    move-result p0

    iput p0, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mType:I

    goto/16 :goto_4

    .line 756
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->getPackagePolicy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mRatio:F

    .line 758
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/settings/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-direct {p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 760
    new-instance p1, Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;)V

    iput-object p1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/16 p2, 0x8

    .line 761
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 762
    iget-object p1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    .line 763
    iget-object p1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p3, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 765
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->getDropDownEntries(Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V

    .line 767
    iget p1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mRatio:F

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->getAspectRatioCategory(F)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_4

    .line 769
    iput p0, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mType:I

    goto :goto_3

    .line 771
    :cond_4
    iget-object p0, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x3

    if-le p0, p1, :cond_5

    const/4 p0, 0x1

    goto :goto_2

    :cond_5
    move p0, p2

    .line 772
    :goto_2
    iput p0, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mType:I

    .line 775
    :goto_3
    iget-object p0, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mValues:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge p2, p0, :cond_7

    .line 776
    iget-object p0, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mValues:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 777
    iget p1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mType:I

    if-ne p0, p1, :cond_6

    .line 778
    iget-object p0, v1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-object v1
.end method

.method public static newInstance(Landroid/content/pm/SemUserInfo;Ljava/lang/String;)Lcom/samsung/android/settings/display/AspectRatioFragment;
    .locals 3

    .line 170
    new-instance v0, Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;-><init>()V

    .line 171
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "userInfo"

    .line 172
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, ":settings:fragment_args_key"

    .line 173
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setEmptyTextYPos()V
    .locals 2

    .line 1036
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAspectRatioLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/display/AspectRatioFragment$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/AspectRatioFragment$6;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private setMaxAspectRatioPolicy(Ljava/lang/String;IZ)V
    .locals 2

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMaxAspectPackage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " for uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AspectRatioFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v0, -0x1

    invoke-interface {p0, p1, p2, p3, v0}, Landroid/view/IWindowManager;->setMaxAspectRatioPolicy(Ljava/lang/String;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "setMaxAspectPackage() RemoteException"

    .line 853
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/apppickerview/widget/AppPickerView;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;",
            ">;)V"
        }
    .end annotation

    .line 643
    new-instance v0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/display/AspectRatioFragment$4;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroid/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    return-void
.end method

.method private setupOnFoldBindListener(Landroidx/apppickerview/widget/AppPickerView;Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/apppickerview/widget/AppPickerView;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;",
            ">;)V"
        }
    .end annotation

    .line 513
    new-instance v0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/display/AspectRatioFragment$3;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroid/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 152
    sget p0, Lcom/android/settings/R$string;->full_screen_apps_title:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 157
    const-class p0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0xbb81

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_display"

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 234
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 235
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 237
    new-instance p1, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAsyncTask:Landroid/os/AsyncTask;

    .line 238
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 281
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 283
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 285
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    .line 287
    iget-boolean v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    if-eq v3, p1, :cond_3

    if-eqz v2, :cond_3

    .line 288
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    .line 289
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mPackageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 291
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    .line 292
    invoke-interface {p1}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 295
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne p1, v2, :cond_2

    const-string p1, "AspectRatioFragment"

    const-string v2, "App list load canceled"

    .line 296
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 300
    :cond_2
    new-instance p1, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAsyncTask:Landroid/os/AsyncTask;

    .line 301
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 180
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "userInfo"

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SemUserInfo;

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->semGetSemUserInfo(I)Landroid/content/pm/SemUserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    :cond_0
    const-string v0, ":settings:fragment_args_key"

    .line 189
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHighlightKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AspectRatioFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    :cond_2
    const-string p1, "window"

    .line 196
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 195
    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mWindowManager:Landroid/view/IWindowManager;

    .line 197
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 198
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    .line 199
    invoke-static {p1}, Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheManager;->getAppLabelCache(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppLabelCache:Ljava/util/HashMap;

    .line 200
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    .line 202
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 307
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 308
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 309
    sget v0, Lcom/android/settings/R$menu;->sec_front_screen_apps:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 310
    sget p2, Lcom/android/settings/R$id;->search_apps:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSearchMenu:Landroid/view/MenuItem;

    .line 311
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->sec_search_magnifier_icon_tint_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 312
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    .line 313
    sget p2, Lcom/android/settings/R$id;->search_plate:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    .line 315
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    .line 316
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    .line 315
    invoke-virtual {p2, v2, v0, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 318
    :cond_0
    sget p2, Lcom/android/settings/R$string;->sec_app_search_title:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 319
    new-instance p2, Lcom/samsung/android/settings/display/AspectRatioFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/display/AspectRatioFragment$1;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 351
    new-instance p2, Lcom/samsung/android/settings/display/AspectRatioFragment$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/display/AspectRatioFragment$2;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 207
    sget p2, Lcom/android/settings/R$layout;->sec_aspect_ratio_view_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAspectRatioLayout:Landroid/view/View;

    .line 209
    sget p2, Lcom/android/settings/R$id;->sec_aspect_ratio_app_picker_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/apppickerview/widget/AppPickerView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 p2, 0x0

    .line 210
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 211
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/apppickerview/widget/AppPickerView;->setCustomViewItemEnabled(Z)V

    .line 212
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 213
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iget-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 214
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 216
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAspectRatioLayout:Landroid/view/View;

    const p2, 0x1020004

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 218
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    sget p2, Lcom/android/settings/R$string;->full_screen_apps_optimized_for_foldable:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    sget p2, Lcom/android/settings/R$string;->full_screen_apps_optimized_for_mobile:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 225
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAspectRatioLayout:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->loading_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mLoadingPanel:Landroid/view/View;

    const/4 p2, 0x3

    .line 226
    invoke-virtual {p1, p2}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 227
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mLoadingPanel:Landroid/view/View;

    iget-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    .line 228
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 227
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 229
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAspectRatioLayout:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 243
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const-string v0, "AspectRatioFragment"

    const-string v1, "App list load canceled"

    .line 246
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 249
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mResultList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 273
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mLoadingPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mLoadingPanel:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 378
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 379
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    .line 380
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mResultList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 257
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 260
    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 264
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 266
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1032
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1033
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    const-string v0, "userInfo"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    .line 1024
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "userInfo"

    .line 1025
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    const-class v1, Landroid/content/pm/SemUserInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/SemUserInfo;

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    :cond_0
    return-void
.end method
