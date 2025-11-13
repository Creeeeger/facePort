.class public Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field public static enableCount:I

.field public static mAllAppsChecked:Z


# instance fields
.field public final mAllAppsCheckedChangeListener:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$5;

.field public mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

.field public final mCollectAppsRunnable:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;

.field public mEmptyViewText:Landroid/widget/TextView;

.field public mFragmentVisible:Z

.field public mIsFirstLoading:Z

.field public mLauncherApps:Landroid/content/pm/LauncherApps;

.field public mListContainer:Landroid/view/ViewGroup;

.field public final mPackageList:Ljava/util/List;

.field public final mPackageListTemp:Ljava/util/List;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public final mRows:Landroid/util/ArrayMap;

.field public mSearchMenu:Landroid/view/MenuItem;

.field public mSearchView:Landroidx/appcompat/widget/SearchView;

.field public mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

.field public final mStateMap:Ljava/util/HashMap;

.field public mValidItemCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mFragmentVisible:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mRows:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mPackageList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mPackageListTemp:Ljava/util/List;

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mValidItemCount:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mIsFirstLoading:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mStateMap:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mCollectAppsRunnable:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$5;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mAllAppsCheckedChangeListener:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$5;

    return-void
.end method


# virtual methods
.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f142410

    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const p0, 0x10ba7

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_advanced_features"

    return-object p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mListContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0f0018

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v0, 0x7f0a0068

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/Toolbar;->setBackInvokedCallbackEnabled(Z)V

    const p2, 0x7f0a0d29

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f06067c

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const p2, 0x7f0a0d36

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, v0, p2, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const p2, 0x7f1420c7

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    new-instance p2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$2;-><init>(Ljava/lang/Object;)V

    iput-object p2, p1, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;)V

    invoke-interface {p1, p2}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const p3, 0x7f150298

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setScrollBarStyle(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const p2, 0x102003f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mListContainer:Landroid/view/ViewGroup;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 v0, -0x2

    invoke-direct {p2, p3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x11

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mListContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const p2, 0x1020004

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mEmptyViewText:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f15094f

    invoke-virtual {p2, p3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mEmptyViewText:Landroid/widget/TextView;

    const p3, 0x7f1420c6

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mListContainer:Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const p2, 0x7f17019e

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-object p1
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mSearchMenu:Landroid/view/MenuItem;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mEmptyViewText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mEmptyViewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mPackageList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sput-boolean v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mAllAppsChecked:Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mCollectAppsRunnable:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    monitor-enter p0

    :try_start_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
