.class public final Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy$onTransitionProgress$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $progress:F

.field public final synthetic this$0:Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy$onTransitionProgress$1;->this$0:Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;

    iput p2, p0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy$onTransitionProgress$1;->$progress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy$onTransitionProgress$1;->this$0:Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;

    iget-object v0, v0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy;->listener:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    iget p0, p0, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$TransitionProgressListerProxy$onTransitionProgress$1;->$progress:F

    invoke-interface {v0, p0}, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;->onTransitionProgress(F)V

    return-void
.end method
