.class public final Lcom/android/systemui/qp/customize/SubscreenCustomizerController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qp/SubscreenQSControllerContract$BaseViewController;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDragStart:Z

.field public final mHost:Lcom/android/systemui/qs/QSTileHost;

.field public final mLongClickListener:Lcom/android/systemui/qp/customize/SubscreenCustomizerController$1;

.field public mLongClickedView:Lcom/android/systemui/plugins/qs/QSTileView;

.field public mLongClickedViewInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

.field public mPointX:F

.field public mPointY:F

.field public final mQSHostCallback:Lcom/android/systemui/qp/customize/SubscreenCustomizerController$$ExternalSyntheticLambda0;

.field public final mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

.field public final mSubscreenRecords:Ljava/util/ArrayList;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/customize/SubscreenCustomizer;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qp/customize/SubscreenCustomizer;",
            "Lcom/android/systemui/qs/QSTileHost;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mSubscreenRecords:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/systemui/qs/QSEvents;->INSTANCE:Lcom/android/systemui/qs/QSEvents;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/qs/QSEvents;->qsUiEventsLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p1, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/customize/SubscreenCustomizerController;)V

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mQSHostCallback:Lcom/android/systemui/qp/customize/SubscreenCustomizerController$$ExternalSyntheticLambda0;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mDragStart:Z

    new-instance p1, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qp/customize/SubscreenCustomizerController$1;-><init>(Lcom/android/systemui/qp/customize/SubscreenCustomizerController;)V

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mLongClickListener:Lcom/android/systemui/qp/customize/SubscreenCustomizerController$1;

    iput-object p2, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object p1, p2, Lcom/android/systemui/qs/QSTileHost;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/qp/customize/SubscreenCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/systemui/qp/customize/SubscreenCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/systemui/qp/customize/SubscreenCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/systemui/qp/customize/SubscreenCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/systemui/qp/customize/SubscreenCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/systemui/qp/customize/SubscreenCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final onInit()V
    .locals 9

    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-nez v0, :cond_4

    const v0, 0x7f0a0c64

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-object v1, v0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, v0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qp/SubscreenTileLayout;

    iget v5, v4, Lcom/android/systemui/qp/SubscreenTileLayout;->mSquishinessFraction:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iput v6, v4, Lcom/android/systemui/qp/SubscreenTileLayout;->mSquishinessFraction:F

    iget-object v5, v4, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lcom/android/systemui/qp/SubscreenTileLayout;->layoutTileRecords$1(IZ)V

    iget-object v5, v4, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v6, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    instance-of v7, v6, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;

    if-eqz v7, :cond_1

    check-cast v6, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;

    iget v7, v4, Lcom/android/systemui/qp/SubscreenTileLayout;->mSquishinessFraction:F

    check-cast v6, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    iget v8, v6, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    cmpg-float v8, v8, v7

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    iput v7, v6, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    invoke-virtual {v6}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateHeight()V

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-virtual {p0}, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->updatePageIndicator$1$1()V

    return-void
.end method

.method public final onViewAttached()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mQSHostCallback:Lcom/android/systemui/qp/customize/SubscreenCustomizerController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->setTiles()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iget-boolean v1, v0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v2, v0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v0, v2, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mSubscreenRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v2, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->isListening()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v1, :cond_6

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object v2, v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mQuickSettingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->updatePageIndicator$1$1()V

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->setCurrentItem(IZ)V

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->updatePageIndicator$1$1()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v2, v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    if-eqz v2, :cond_7

    check-cast v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setTilePageHeight pageHeight: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SubscreenPagedTileLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    if-eq v2, v0, :cond_7

    iput v2, v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxHeight:I

    iput v0, v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->updateResources()Z

    :cond_8
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mQSHostCallback:Lcom/android/systemui/qp/customize/SubscreenCustomizerController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->removeAllTileViews$1()V

    return-void
.end method

.method public final removeAllTileViews$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mSubscreenRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v2, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    iget-object v2, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->callback:Lcom/android/systemui/qs/QSPanel$1;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mSubscreenRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final setTiles()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->removeAllTileViews$1()V

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

    move-result-object v2

    const-string v3, "adding Tilespec : "

    const-string v4, "SubscreenCustomizerController"

    invoke-static {v3, v2, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {v3, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/systemui/qp/SubRoomQsTileBaseView;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v3, v6}, Lcom/android/systemui/qp/SubRoomQsTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Z)V

    new-instance v2, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    iget-object v3, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mLongClickListener:Lcom/android/systemui/qp/customize/SubscreenCustomizerController$1;

    invoke-direct {v2, v1, v5, v3}, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/plugins/qs/QSTileView;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    iget-object v1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mSubscreenRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "addTile tile.getTileSpec():  record: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mSubscreenRecords.size(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;->mSubscreenRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method
