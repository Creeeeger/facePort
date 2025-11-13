.class public Lcom/android/settings/applications/RunningServices;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/development/DeveloperOptionAwareMixin;


# instance fields
.field public mLoadingContainer:Landroid/view/View;

.field public mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field public mOptionsMenu:Landroid/view/Menu;

.field public final mRunningProcessesAvail:Lcom/android/settings/applications/RunningServices$1;

.field public mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/applications/RunningServices$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningServices$1;-><init>(Lcom/android/settings/applications/RunningServices;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesAvail:Lcom/android/settings/applications/RunningServices$1;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x194

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f141f71

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/applications/RunningServices;->mOptionsMenu:Landroid/view/Menu;

    const/4 p2, 0x1

    const v0, 0x7f142bcb

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 p2, 0x2

    const v0, 0x7f142ba9

    invoke-interface {p1, v1, p2, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServices;->updateOptionsMenu$2()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p2, 0x7f0d046d

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0ce0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/applications/RunningProcessesView;

    iput-object p2, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p2, Lcom/android/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d07be

    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p2, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    const v1, 0x1020004

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p2, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p2, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p2, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v2, p2, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-direct {v1, p2, v2}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/settings/applications/RunningProcessesView;Lcom/android/settings/applications/RunningState;)V

    iput-object v1, p2, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v2, p2, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f0d07bc

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    iget-object v1, p2, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v0, p2, Lcom/android/settings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v1, 0x7f0a03b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p2, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Landroid/widget/ProgressBar;

    const v2, 0x7f0604f6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p2, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Landroid/widget/ProgressBar;

    const v2, 0x1010435

    invoke-static {v0, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p2, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Landroid/widget/ProgressBar;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p2, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Landroid/widget/ProgressBar;

    const v3, 0x7f0604f5

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p2, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p2, Lcom/android/settings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v1, 0x7f0a06b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v0, p2, Lcom/android/settings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v1, 0x7f0a012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/settings/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/android/settings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v1, 0x7f0a0fa4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/android/settings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v1, 0x7f0a06b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/settings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/android/settings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v1, 0x7f0a012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/settings/applications/RunningProcessesView;->mAppsProcessText:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/android/settings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v1, 0x7f0a0fa3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object p2, p2, Lcom/android/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p2, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    const p2, 0x7f0a08de

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/RunningServices;->mLoadingContainer:Landroid/view/View;

    new-instance v0, Lcom/android/settings/widget/LoadingViewController;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-direct {v0, p2, v1, p3}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServices;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    return-object p1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object p1, p1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object p1, p1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServices;->updateOptionsMenu$2()V

    return v1
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object p0, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServices;->updateOptionsMenu$2()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesAvail:Lcom/android/settings/applications/RunningServices$1;

    iput-object p0, v0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v2, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/RunningState;->resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    iget-object v2, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v3, v2, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, v2, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    iget-object p0, p0, Lcom/android/settings/applications/RunningServices;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    goto :goto_0

    :cond_0
    iput-object v1, v0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/settings/applications/RunningServices;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p0, v3, v3, v3}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(ZZZ)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateOptionsMenu$2()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    iget-object v1, p0, Lcom/android/settings/applications/RunningServices;->mOptionsMenu:Landroid/view/Menu;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/android/settings/applications/RunningServices;->mOptionsMenu:Landroid/view/Menu;

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    xor-int/2addr v0, v2

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method
