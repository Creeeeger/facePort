.class public final synthetic Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/DoubleSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/SecQuickQSPanelController;

.field public final synthetic f$1:Lcom/android/systemui/qs/bar/BarController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQuickQSPanelController;Lcom/android/systemui/qs/bar/BarController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecQuickQSPanelController;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/qs/bar/BarController;

    return-void
.end method


# virtual methods
.method public final getAsDouble()D
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecQuickQSPanelController;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/qs/bar/BarController;

    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070eb9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->parallelStream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->sum()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    int-to-double v0, v0

    return-wide v0
.end method
