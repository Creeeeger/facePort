.class public abstract Lcom/android/systemui/qs/bar/BarItemImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

.field public mBarRootView:Landroid/view/View;

.field public mCallback:Lcom/android/systemui/qs/bar/BarController$4;

.field public mClonedBarView:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field public mIsOnCollapsedState:Z

.field public mIsUnderneathQqs:Z

.field public mListening:Z

.field public mQsExpanded:Z

.field public mShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsUnderneathQqs:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final createTilesViewAndDistribute(Landroid/view/View;Ljava/util/ArrayList;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Ljava/lang/Boolean;Lcom/android/systemui/qs/QSHost;)V
    .locals 5

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v0, Lcom/android/systemui/qs/customize/view/CustomizerNoLabelTileView;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p3}, Lcom/android/systemui/qs/customize/view/CustomizerNoLabelTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V

    goto :goto_2

    :cond_0
    if-eqz p5, :cond_1

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/android/systemui/qs/QSHost;->isNoBgLargeTile(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    new-instance v2, Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView;

    iget-object v4, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p3, v0}, Lcom/android/systemui/qs/tileimpl/CustomizerLargeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Z)V

    move-object v0, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/qs/QSTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->addBarBackground(Landroid/view/View;Z)V

    :cond_2
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    return-void
.end method

.method public getBarHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract getBarLayout()I
.end method

.method public getBarWidthWeight(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getClonedBarView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    return-object p0
.end method

.method public inflateViews(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarLayout()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->onFinishInflate()V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNeedToEdit()Z
    .locals 0

    instance-of p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    return p0
.end method

.method public makeCloneBar()V
    .locals 0

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    return-void
.end method

.method public onKnoxPolicyChanged()V
    .locals 0

    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    return-void
.end method

.method public orignBottomMargin()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07009c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public removeCloneTileBG()V
    .locals 0

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/bar/BarController$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mQsExpanded:Z

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    return-void
.end method

.method public setUnderneathQqs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsUnderneathQqs:Z

    return-void
.end method

.method public showBar(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "showBar : "

    invoke-static {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$4;->this$0:Lcom/android/systemui/qs/bar/BarController;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mBarListener:Lcom/android/systemui/qs/bar/BarController$3;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/systemui/qs/bar/BarController$3;->val$containerRunner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object p1, p1, Lcom/android/systemui/qs/bar/BarController$3;->val$animatorRunner:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarController;->updateBarUnderneathQqs()V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mBarOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->updateLastShowingBar()V

    :cond_3
    return-void
.end method

.method public updateClonedBar()V
    .locals 0

    return-void
.end method

.method public updateHeightMargins()V
    .locals 0

    return-void
.end method
