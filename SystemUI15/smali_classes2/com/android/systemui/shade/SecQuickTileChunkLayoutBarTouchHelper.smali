.class public final Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public actionDownStartInChunkBar:Z

.field public final clearVelocityTrackerRunnable:Ljava/lang/Runnable;

.field public final currentQsVelocitySupplier:Ljava/util/function/DoubleSupplier;

.field public draggedHeight:F

.field public expandHelper:Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;

.field public final initVelocityTrackerRunnable:Ljava/lang/Runnable;

.field public final initialTouchXSupplier:Ljava/util/function/DoubleSupplier;

.field public final initialTouchYSupplier:Ljava/util/function/DoubleSupplier;

.field public isExpanding:Z

.field public final qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

.field public final qsSupplier:Ljava/util/function/Supplier;

.field public final scrollIndicatorAccessibilityDelegate:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$scrollIndicatorAccessibilityDelegate$1;

.field public tileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

.field public final trackMovementConsumer:Ljava/util/function/Consumer;

.field public final trackingPointerConsumer:Ljava/util/function/IntConsumer;

.field public final trackingPointerSupplier:Ljava/util/function/IntSupplier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/IntConsumer;Ljava/util/function/IntSupplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/DoubleConsumer;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/DoubleConsumer;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/plugins/qs/QS;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Ljava/util/function/IntConsumer;",
            "Ljava/util/function/IntSupplier;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->clearVelocityTrackerRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->currentQsVelocitySupplier:Ljava/util/function/DoubleSupplier;

    iput-object p5, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->initialTouchXSupplier:Ljava/util/function/DoubleSupplier;

    iput-object p7, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->initialTouchYSupplier:Ljava/util/function/DoubleSupplier;

    iput-object p8, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->initVelocityTrackerRunnable:Ljava/lang/Runnable;

    iput-object p9, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

    iput-object p10, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->qsSupplier:Ljava/util/function/Supplier;

    iput-object p11, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->trackMovementConsumer:Ljava/util/function/Consumer;

    iput-object p12, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->trackingPointerConsumer:Ljava/util/function/IntConsumer;

    iput-object p13, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->trackingPointerSupplier:Ljava/util/function/IntSupplier;

    new-instance p1, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$scrollIndicatorAccessibilityDelegate$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$scrollIndicatorAccessibilityDelegate$1;-><init>(Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;)V

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->scrollIndicatorAccessibilityDelegate:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$scrollIndicatorAccessibilityDelegate$1;

    return-void
.end method


# virtual methods
.method public final preparePointerIndex(Landroid/view/MotionEvent;)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->trackingPointerSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->trackingPointerConsumer:Ljava/util/function/IntConsumer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    move p0, v0

    :goto_0
    return p0
.end method

.method public final updateChunkLayoutBar(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->isExpanding:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->expandHelper:Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->currentQsVelocitySupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {p0}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    double-to-float p0, v0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->setTracking(FZ)Z

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Drag"

    const-string v0, "QUICK_PANEL_LAYOUT"

    const-string v1, "QPPE1036"

    const-string v2, ""

    invoke-static {p0, v1, v2, p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
