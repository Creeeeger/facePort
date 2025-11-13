.class public final Lcom/android/systemui/qs/QSFragmentLegacy;
.super Lcom/android/systemui/util/LifecycleFragment;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS;


# instance fields
.field public final mQsComponentFactory:Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;

.field public mQsImpl:Lcom/android/systemui/qs/QSImpl;

.field public final mQsImplProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleFragment;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsComponentFactory:Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImplProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final animateHeaderSlidingOut()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->animateHeaderSlidingOut()V

    :cond_0
    return-void
.end method

.method public final closeCustomizer()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->closeDetail()V

    :cond_0
    return-void
.end method

.method public final closeDetail()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->closeDetail()V

    :cond_0
    return-void
.end method

.method public final getDesiredHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->getDesiredHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getHeader()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getHeightDiff()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->getHeightDiff()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getQsMinExpansionHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->getQsMinExpansionHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hideImmediately()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->hideImmediately()V

    :cond_0
    return-void
.end method

.method public final isCustomizing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isFullyCollapsed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->isFullyCollapsed()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isShowingDetail()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->isShowingDetail()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyCustomizeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->notifyCustomizeChanged()V

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    :try_start_0
    const-string p3, "QSFragment#onCreateView"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f140614

    invoke-direct {p3, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p1, 0x0

    const p3, 0x7f0d0305

    invoke-virtual {p0, p3, p2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSImpl;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSImpl;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsComponentFactory:Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;->create(Landroid/view/View;)Lcom/android/systemui/qs/dagger/QSFragmentComponent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSImpl;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    iget-object v1, v0, Lcom/android/systemui/qs/QSImpl;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "QSImpl"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSImpl;->onComponentCreated(Lcom/android/systemui/qs/dagger/QSComponent;Landroid/os/Bundle;)V

    return-void
.end method

.method public final setCollapseExpandAction(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSImpl;->setCollapseExpandAction(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final setCollapsedMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final setContainerController(Lcom/android/systemui/plugins/qs/QSContainerController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSImpl;->setContainerController(Lcom/android/systemui/plugins/qs/QSContainerController;)V

    :cond_0
    return-void
.end method

.method public final setExpanded(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSImpl;->setExpanded(Z)V

    :cond_0
    return-void
.end method

.method public final setFancyClipping(IIIIIZZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/qs/QSImpl;->setFancyClipping(IIIIIZZ)V

    :cond_0
    return-void
.end method

.method public final setHasNotifications(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final setHeaderClickable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final setHeaderListening(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSImpl;->setHeaderListening(Z)V

    :cond_0
    return-void
.end method

.method public final setHeightOverride(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSImpl;->setHeightOverride(I)V

    :cond_0
    return-void
.end method

.method public final setInSplitShade(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSImpl;->setInSplitShade(Z)V

    :cond_0
    return-void
.end method

.method public final setIsNotificationPanelFullWidth(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSImpl;->mIsSmallScreen:Z

    :cond_0
    return-void
.end method

.method public final setListening(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSImpl;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public final setOverScrollAmount(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSImpl;->setOverScrollAmount(I)V

    :cond_0
    return-void
.end method

.method public final setOverscrolling(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSImpl;->setOverscrolling(Z)V

    :cond_0
    return-void
.end method

.method public final setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/qs/QSImpl;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    :cond_0
    return-void
.end method

.method public final setQsExpansion(FFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/QSImpl;->setQsExpansion(FFFF)V

    :cond_0
    return-void
.end method

.method public final setQsVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSImpl;->setQsVisible(Z)V

    :cond_0
    return-void
.end method

.method public final setScrollListener(Lcom/android/systemui/plugins/qs/QS$ScrollListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/qs/QSImpl;->mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

    :cond_0
    return-void
.end method

.method public final setShouldUpdateSquishinessOnMedia(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSImpl;->mShouldUpdateMediaSquishiness:Z

    :cond_0
    return-void
.end method

.method public final setTransitionToFullShadeProgress(ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSImpl;->setTransitionToFullShadeProgress(ZFF)V

    :cond_0
    return-void
.end method
