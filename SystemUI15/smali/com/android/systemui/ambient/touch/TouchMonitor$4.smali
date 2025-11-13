.class public final Lcom/android/systemui/ambient/touch/TouchMonitor$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ambient/touch/TouchMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ambient/touch/TouchMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4;->this$0:Lcom/android/systemui/ambient/touch/TouchMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/systemui/ambient/touch/TouchMonitor$Evaluator;)Z
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4;->this$0:Lcom/android/systemui/ambient/touch/TouchMonitor;

    iget-object v1, v1, Lcom/android/systemui/ambient/touch/TouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1, v0}, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/ambient/touch/TouchMonitor$Evaluator;Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda7;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4;->this$0:Lcom/android/systemui/ambient/touch/TouchMonitor;

    iget-object v1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda5;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    return p1
.end method

.method public final observe(Ljava/util/function/Consumer;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$4;->this$0:Lcom/android/systemui/ambient/touch/TouchMonitor;

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/ambient/touch/TouchMonitor$3$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/systemui/ambient/touch/TouchMonitor$3$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/ambient/touch/TouchMonitor$3$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/ambient/touch/TouchMonitor$3$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda2;-><init>(Landroid/view/MotionEvent;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/ambient/touch/TouchMonitor$4;->evaluate(Lcom/android/systemui/ambient/touch/TouchMonitor$Evaluator;)Z

    move-result p0

    return p0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    new-instance v6, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;-><init>(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFI)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/ambient/touch/TouchMonitor$4;->evaluate(Lcom/android/systemui/ambient/touch/TouchMonitor$Evaluator;)Z

    move-result p0

    return p0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda0;-><init>(Landroid/view/MotionEvent;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/ambient/touch/TouchMonitor$4;->observe(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    new-instance v6, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda4;-><init>(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFI)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/ambient/touch/TouchMonitor$4;->evaluate(Lcom/android/systemui/ambient/touch/TouchMonitor$Evaluator;)Z

    move-result p0

    return p0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda0;-><init>(Landroid/view/MotionEvent;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/ambient/touch/TouchMonitor$4;->observe(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ambient/touch/TouchMonitor$4$$ExternalSyntheticLambda2;-><init>(Landroid/view/MotionEvent;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/ambient/touch/TouchMonitor$4;->evaluate(Lcom/android/systemui/ambient/touch/TouchMonitor$Evaluator;)Z

    move-result p0

    return p0
.end method
