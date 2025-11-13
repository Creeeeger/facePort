.class public final Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final callbacks:Ljava/util/Set;

.field public final carouselSizes:Ljava/util/Map;

.field public final controllers:Ljava/util/Set;

.field public final mediaHostStates:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->callbacks:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->controllers:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->carouselSizes:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final updateCarouselDimensions(ILcom/android/systemui/media/controls/ui/view/MediaHostState;)Lcom/android/systemui/util/animation/MeasurementOutput;
    .locals 8

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "MediaHostStatesManager#updateCarouselDimensions"

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/systemui/util/animation/MeasurementOutput;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/android/systemui/util/animation/MeasurementOutput;-><init>(II)V

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->controllers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-object v5, v4, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v7, "MediaViewController#getMeasurementsForState"

    invoke-static {v7}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    invoke-virtual {v4, p2, v2}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->obtainViewState(Lcom/android/systemui/media/controls/ui/view/MediaHostState;Z)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_4

    if-eqz v6, :cond_3

    :try_start_2
    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    :try_start_3
    invoke-virtual {v4}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureWidth()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/util/animation/MeasurementOutput;->setMeasuredWidth(I)V

    invoke-virtual {v4}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureHeight()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/systemui/util/animation/MeasurementOutput;->setMeasuredHeight(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_5

    :try_start_4
    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_5
    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredHeight()I

    move-result v6

    if-le v4, v6, :cond_6

    invoke-virtual {v5}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/util/animation/MeasurementOutput;->setMeasuredHeight(I)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {v5}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredWidth()I

    move-result v6

    if-le v4, v6, :cond_1

    invoke-virtual {v5}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/util/animation/MeasurementOutput;->setMeasuredWidth(I)V

    goto :goto_0

    :catchall_1
    move-exception p0

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_7
    throw p0

    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->carouselSizes:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_9
    return-object v1

    :goto_3
    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_a
    throw p0
.end method
