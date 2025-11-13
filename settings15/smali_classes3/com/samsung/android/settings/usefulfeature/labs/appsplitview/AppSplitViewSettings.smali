.class public Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAdapter:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppPickerCustomListAdapter;

.field public mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

.field public final mAppRows:Ljava/util/Map;

.field public mEmptyViewText:Landroid/widget/TextView;

.field public mProgressBar:Landroid/view/ViewGroup;

.field public mSearchMenu:Landroid/view/MenuItem;

.field public mSupportEmbedActivityPackages:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppRows:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f1420d1

    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/samsung/android/settings/usefulfeature/labs/LabsSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const p0, 0x10b3a

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_advanced_features"

    return-object p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    new-instance p1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    sget-boolean p0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAccessibilityEnabled:Z

    sget-object p0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    sget-object p0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    sget-boolean p0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAccessibilityEnabled:Z

    sget-object p0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    sget-object p0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mSearchMenu:Landroid/view/MenuItem;

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

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    const p2, 0x7f0a0d36

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p2, v0, v1, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    const p2, 0x7f1420c7

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;-><init>(Ljava/lang/Object;)V

    iput-object p2, p1, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;Landroidx/appcompat/widget/SearchView;)V

    invoke-interface {p2, v0}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p2, 0x7f0d08e4

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0d68

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/apppickerview/widget/AppPickerView;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060738

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iput-boolean p3, p2, Landroidx/apppickerview/widget/AppPickerView;->mIsCustomViewItemEnabled:Z

    new-instance p2, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppPickerCustomListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v0, v0, Landroidx/apppickerview/widget/AppPickerView;->mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

    invoke-direct {p2, p0, p3, v0}, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppPickerCustomListAdapter;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;Landroid/content/Context;Landroidx/apppickerview/widget/AppPickerIconLoader;)V

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAdapter:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppPickerCustomListAdapter;

    const p2, 0x1020004

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mEmptyViewText:Landroid/widget/TextView;

    const p2, 0x7f0a08df

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mProgressBar:Landroid/view/ViewGroup;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p3, p0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    return-object p1
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mProgressBar:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    sget-boolean p0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAccessibilityEnabled:Z

    sget-object p0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    sget-object p0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    return-void
.end method
