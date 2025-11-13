.class public Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RotateAppsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$CustomViewHolder;,
        Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppPickerCustomListAdapter;,
        Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;,
        Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppPickerCustomListAdapter;

.field private mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

.field private mAppRows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEmptyViewText:Landroid/widget/TextView;

.field private mProgressBar:Landroid/view/ViewGroup;

.field private mRefreshPosition:I

.field private mSearchMenu:Landroid/view/MenuItem;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppPickerCustomListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mAdapter:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppPickerCustomListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroidx/apppickerview/widget/AppPickerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mAppRows:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mEmptyViewText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mProgressBar:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRefreshPosition(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mRefreshPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmRefreshPosition(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mRefreshPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSummaryResId(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->getSummaryResId(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mAppRows:Ljava/util/Map;

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mRefreshPosition:I

    return-void
.end method

.method private getSummaryResId(I)I
    .locals 0

    const/4 p0, 0x7

    if-eq p1, p0, :cond_0

    .line 384
    sget p0, Lcom/android/settings/R$string;->sec_set_aspect_ratio_for_each_app_app_default:I

    return p0

    .line 382
    :cond_0
    sget p0, Lcom/android/settings/R$string;->sec_set_aspect_ratio_for_each_app_full_screen:I

    return p0
.end method

.method private setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 1

    .line 288
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)V

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 87
    sget p0, Lcom/android/settings/R$string;->sec_rotate_all_apps_title:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 92
    const-class p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0x10a72

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_advanced_features"

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 136
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 138
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;-><init>(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader-IA;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 163
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 164
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isFrontDisplay(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isFrontDisplay(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 172
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 173
    sget v0, Lcom/android/settings/R$menu;->sec_labs_applist_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 174
    sget p2, Lcom/android/settings/R$id;->search_apps:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mSearchMenu:Landroid/view/MenuItem;

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->sec_search_magnifier_icon_tint_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 176
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    .line 177
    sget p2, Lcom/android/settings/R$id;->search_plate:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    .line 179
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 181
    :cond_0
    sget p2, Lcom/android/settings/R$string;->sec_app_search_title:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 182
    new-instance p2, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 112
    sget p2, Lcom/android/settings/R$layout;->sec_labs_app_picker_view_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 114
    sget p2, Lcom/android/settings/R$id;->sec_labs_app_picker_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/apppickerview/widget/AppPickerView;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 p3, 0x1

    .line 115
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 116
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 117
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 118
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 119
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p2, p3}, Landroidx/apppickerview/widget/AppPickerView;->setCustomViewItemEnabled(Z)V

    .line 120
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 122
    new-instance p2, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppPickerCustomListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p3}, Landroidx/apppickerview/widget/AppPickerView;->getAppPickerIconLoader()Landroidx/apppickerview/widget/AppPickerIconLoader;

    move-result-object v8

    const/4 v6, 0x5

    const/4 v7, 0x2

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppPickerCustomListAdapter;-><init>(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;)V

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mAdapter:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppPickerCustomListAdapter;

    const p2, 0x1020004

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mEmptyViewText:Landroid/widget/TextView;

    .line 126
    sget p2, Lcom/android/settings/R$id;->loading_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mProgressBar:Landroid/view/ViewGroup;

    const/4 p3, 0x3

    .line 127
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 128
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mProgressBar:Landroid/view/ViewGroup;

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 128
    invoke-virtual {p2, p3, p0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 155
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mProgressBar:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 209
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isFrontDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void

    .line 148
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mRefreshPosition:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 149
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p0, v0}, Landroidx/apppickerview/widget/AppPickerView;->refreshUI(I)V

    :cond_1
    return-void
.end method
