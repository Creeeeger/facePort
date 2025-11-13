.class public Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

.field public mDescription:Landroid/widget/TextView;

.field public mEmptyViewText:Landroid/widget/TextView;

.field public mProgressBar:Landroid/view/ViewGroup;

.field public mSearchMenu:Landroid/view/MenuItem;

.field public mSearchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f142693

    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/samsung/android/settings/usefulfeature/labs/LabsSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getListViewWithSpacing()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const p0, 0x10a72

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_advanced_features"

    return-object p0
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
    .locals 2

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;)V

    invoke-interface {p2, v1}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    const p2, 0x7f0a0d29

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

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
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const p2, 0x7f1420c7

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    new-instance p2, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;)V

    iput-object p2, p1, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p2, 0x7f0d08e6

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p2

    const p3, 0x7f0a0d68

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/picker/widget/SeslAppPickerView;

    iput-object p3, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroidx/picker/widget/SeslAppPickerView;->setAppListOrder(I)V

    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0, p2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const p3, 0x1020004

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mEmptyViewText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;)V

    iput-object v1, p3, Landroidx/picker/widget/SeslAppPickerView;->mOnStateChangeListener:Landroidx/picker/widget/AppPickerState$OnStateChangeListener;

    const p3, 0x7f0a08df

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mProgressBar:Landroid/view/ViewGroup;

    const p3, 0x7f0a04df

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mDescription:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingStart()I

    move-result p3

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mDescription:Landroid/widget/TextView;

    add-int/2addr p3, p2

    add-int/2addr v1, p2

    invoke-virtual {v2, p3, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mDescription:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f142691

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f142692

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance p2, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$LauncherAppListLoader;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$LauncherAppListLoader;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p1
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mProgressBar:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

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
