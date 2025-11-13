.class public Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# static fields
.field public static final mBlockList:Ljava/util/List;

.field public static final mBlockMap:Ljava/util/HashMap;


# instance fields
.field public mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

.field public mApps:Ljava/util/List;

.field public mEmptyView:Landroid/view/View;

.field public mHandler:Landroid/os/Handler;

.field public mIsRebuild:Z

.field public mLoadingContainer:Landroid/view/View;

.field public mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

.field public mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

.field public mRootView:Landroid/view/View;

.field public mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field public mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field public mWaitLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mBlockList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mBlockMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mIsRebuild:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mWaitLoading:Z

    return-void
.end method


# virtual methods
.method public final findSelectItem(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v0

    if-nez v0, :cond_0

    const p0, 0x7f0a11a4

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/net/ConnectivitySettingsManager;->getMobileDataPreferredUids(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0a0984

    goto :goto_0

    :cond_1
    const p0, 0x7f0a0239

    :goto_0
    return p0
.end method

.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f1422d1

    return p0
.end method

.method public final getListViewWithSpacing()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    return-object p0
.end method

.method public final getMenuName(I)Ljava/lang/String;
    .locals 1

    const v0, 0x7f0a11a4

    if-ne p1, v0, :cond_0

    const p1, 0x7f1430ca

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f0a0984

    if-ne p1, v0, :cond_1

    const p1, 0x7f1430c8

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p1, 0x7f1430c2

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1bef

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_connections"

    return-object p0
.end method

.method public final loadAppList()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mBlockMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mBlockList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "AllowedNetworksforApps"

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    sget-object v6, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mBlockMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "Blocked : "

    invoke-static {v4, v2, v3}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mApps:Ljava/util/List;

    iget-boolean v2, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mWaitLoading:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mWaitLoading:Z

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    sget-object v4, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$9;

    invoke-virtual {v4, v2}, Lcom/android/settingslib/applications/ApplicationsState$9;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v4

    const-string v5, " , App Name : "

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Not Downloaded and launcher AppEntry: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , AppName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-static {v4, v2, v3}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v4, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v6, 0x2710

    if-ge v4, v6, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "AppId under 10000 : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v2, v3}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Add App List Uid : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mApps:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    new-instance v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$AlphaComparator;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$AlphaComparator;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mApps:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mApps:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/settingslib/applications/AppUtils;->getIcon(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroidx/picker/model/AppData$ListAppDataBuilder;

    iget-object v6, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v7, Landroidx/picker/model/AppInfo;->Companion:Landroidx/picker/model/AppInfo$Companion;

    const-string v7, ""

    invoke-static {v3, v6, v7}, Landroidx/picker/model/AppInfo$Companion;->obtain(ILjava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/picker/model/AppData$ListAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    invoke-virtual {v5}, Landroidx/picker/model/AppData$ListAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->findSelectItem(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->getMenuName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Landroidx/picker/model/AppInfoData;->setSubLabel(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-interface {v5, v2}, Landroidx/picker/model/AppInfoData;->setLabel(Ljava/lang/String;)V

    invoke-interface {v5, v4}, Landroidx/picker/model/AppInfoData;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$4;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$4;-><init>(Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;Ljava/util/List;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mIsRebuild:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7f141e58

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p2, 0x7f0d07ef

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mRootView:Landroid/view/View;

    const p2, 0x7f0a08de

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mLoadingContainer:Landroid/view/View;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060738

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mLoadingContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f0a05b1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mEmptyView:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f0a05a9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/widget/TextView;->semSetRoundedCornerColor(II)V

    new-instance p1, Lcom/android/settingslib/net/UidDetailProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mRootView:Landroid/view/View;

    const p2, 0x7f0a011b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/picker/widget/SeslAppPickerListView;

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mRootView:Landroid/view/View;

    const p2, 0x7f0a011c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/picker/widget/SeslAppPickerView;->setAppListOrder(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a0cc6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v3, p1, v0, p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0xc

    invoke-virtual {v2, p1}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, p1, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    new-instance p2, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$2;-><init>(Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;)V

    invoke-virtual {p1, p2}, Landroidx/picker/widget/SeslAppPickerView;->setOnItemClickEventListener(Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d07f1

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {p2, p1}, Landroidx/picker/widget/SeslAppPickerView;->addFooter(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d07ee

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {p2, p1, v0}, Landroidx/picker/widget/SeslAppPickerView;->addHeader(Landroid/view/View;I)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isTmobileConcept()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mRootView:Landroid/view/View;

    const p2, 0x7f0a00d6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f1402fe

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public final onLauncherInfoChanged()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mIsRebuild:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mLoadingContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->loadAppList()V

    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mIsRebuild:Z

    const-string p0, "AllowedNetworksforApps"

    const-string/jumbo v0, "rebuild page"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mWaitLoading:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mWaitLoading:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->loadAppList()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->loadAppList()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public final onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public final onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mLoadingContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mWaitLoading:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->loadAppList()V

    :cond_0
    return-void
.end method

.method public final onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method
