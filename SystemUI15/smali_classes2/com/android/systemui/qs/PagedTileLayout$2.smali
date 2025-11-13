.class public final Lcom/android/systemui/qs/PagedTileLayout$2;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCurrentScrollState:I

.field public mIsScrollJankTraceBegin:Z

.field public final synthetic this$0:Lcom/android/systemui/qs/PagedTileLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/PagedTileLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->mCurrentScrollState:I

    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->mIsScrollJankTraceBegin:Z

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->mCurrentScrollState:I

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->mIsScrollJankTraceBegin:Z

    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->mCurrentScrollState:I

    return-void
.end method

.method public final onPageScrolled(FI)V
    .locals 2

    iget-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->mIsScrollJankTraceBegin:Z

    iget-object p2, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->mCurrentScrollState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    const/4 v1, 0x6

    invoke-virtual {p1, p2, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->mIsScrollJankTraceBegin:Z

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/PagedTileLayout;->SCROLL_CUBIC:Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 7

    sget-object p1, Lcom/android/systemui/qs/PagedTileLayout;->SCROLL_CUBIC:Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/TileLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setSelected(Z)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, p1

    :goto_1
    iget-object v3, v1, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, v1, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/qs/QSEvent;->QS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsSpec()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v3

    check-cast v4, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {v4, v5, p1, v6, v3}, Lcom/android/internal/logging/UiEventLoggerImpl;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    return-void
.end method
