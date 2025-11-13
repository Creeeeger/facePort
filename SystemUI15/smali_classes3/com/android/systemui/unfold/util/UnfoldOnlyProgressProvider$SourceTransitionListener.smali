.class public final Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider$SourceTransitionListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider$SourceTransitionListener;->this$0:Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionFinished()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider$SourceTransitionListener;->this$0:Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;

    iget-boolean v0, p0, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;->isFolded:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;->scopedProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->setReadyToHandleTransition(Z)V

    :cond_0
    return-void
.end method
