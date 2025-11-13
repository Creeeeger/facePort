.class public final Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/UnfoldLatencyTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldLatencyTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener$1;->this$0:Lcom/android/systemui/unfold/UnfoldLatencyTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener$1;->this$0:Lcom/android/systemui/unfold/UnfoldLatencyTracker;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->folded:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->folded:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->unfoldInProgress:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->unfoldInProgress:Z

    iget-object p1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    const-string p1, "Switch displays during unfold"

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, p1, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->transitionProgressProvider:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->Companion:Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Companion;

    iget-object v2, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Companion;->areAnimationsEnabled(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->isTransitionEnabled:Ljava/lang/Boolean;

    :cond_2
    return-void
.end method
