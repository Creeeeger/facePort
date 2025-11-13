.class public final Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qp/SubscreenQSControllerContract$BaseViewController;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayListener:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$1;

.field public final mHost:Lcom/android/systemui/qs/QSTileHost;

.field public final mQSHostCallback:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0;

.field public final mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

.field public final mSubscreenRecords:Ljava/util/ArrayList;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;",
            "Lcom/android/systemui/qs/QSTileHost;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubscreenRecords:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/systemui/qs/QSEvents;->INSTANCE:Lcom/android/systemui/qs/QSEvents;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/qs/QSEvents;->qsUiEventsLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p1, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;)V

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mQSHostCallback:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$1;-><init>(Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;)V

    new-instance v0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$2;-><init>(Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;)V

    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object p2, p2, Lcom/android/systemui/qs/QSTileHost;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mContext:Landroid/content/Context;

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final onInit()V
    .locals 10

    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d04b7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    iput-object v1, v0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-object v2, v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    iget-object v5, v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qp/SubscreenTileLayout;

    iget v6, v5, Lcom/android/systemui/qp/SubscreenTileLayout;->mSquishinessFraction:F

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    iput v7, v5, Lcom/android/systemui/qp/SubscreenTileLayout;->mSquishinessFraction:F

    iget-object v6, v5, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/android/systemui/qp/SubscreenTileLayout;->layoutTileRecords$1(IZ)V

    iget-object v6, v5, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v7, v7, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    instance-of v8, v7, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;

    if-eqz v8, :cond_1

    check-cast v7, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;

    iget v8, v5, Lcom/android/systemui/qp/SubscreenTileLayout;->mSquishinessFraction:F

    check-cast v7, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    iget v9, v7, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    cmpg-float v9, v9, v8

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    iput v8, v7, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    invoke-virtual {v7}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateHeight()V

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iput-object v1, v0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->updatePageIndicator$1()V

    new-instance v0, Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    const v2, 0x7f0a0c56

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/qp/SubroomBrightnessSettingsView;)V

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mQSHostCallback:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->setTiles()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    invoke-virtual {v0}, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->addPagedTileLayout()V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->updateResources$1()V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mQSHostCallback:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->setListening$1(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->removeAllTileViews()V

    return-void
.end method

.method public final removeAllTileViews()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubscreenRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    check-cast v2, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v2, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    :cond_0
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->callback:Lcom/android/systemui/qs/QSPanel$1;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubscreenRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final setListening$1(Z)V
    .locals 3

    const-string/jumbo v0, "setListening"

    const-string v1, "SubscreenQsPanelControllerBase"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    iget-boolean v2, v0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, v0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v0, p1, v2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    iget-boolean p1, p1, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz p1, :cond_3

    const-string p1, "refreshAllTiles"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubscreenRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->isListening()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final setTiles()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string/jumbo v1, "setTiles "

    const-string v2, "SubscreenQsPanelControllerBase"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->removeAllTileViews()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    const-string v4, "adding Tilespec : "

    invoke-static {v4, v3, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {v4, v3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/systemui/qp/SubRoomQsTileBaseView;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v4, v6}, Lcom/android/systemui/qp/SubRoomQsTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Z)V

    new-instance v3, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    invoke-direct {v3, v1, v5}, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/plugins/qs/QSTileView;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubscreenRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "addTile tile.getTileSpec():  record: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mSubscreenRecords.size(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubscreenRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method
