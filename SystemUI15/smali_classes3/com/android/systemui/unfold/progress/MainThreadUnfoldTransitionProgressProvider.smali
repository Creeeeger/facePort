.class public final Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;


# instance fields
.field public final listenerMap:Ljava/util/Map;

.field public final mainHandler:Landroid/os/Handler;

.field public final rootProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;->mainHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;->rootProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;->listenerMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    new-instance v0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;-><init>(Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    iget-object v1, p0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;->rootProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-interface {v1, v0}, Lcom/android/systemui/unfold/util/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;->listenerMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    iget-object v0, p0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider;->rootProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-interface {p0, p1}, Lcom/android/systemui/unfold/util/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
