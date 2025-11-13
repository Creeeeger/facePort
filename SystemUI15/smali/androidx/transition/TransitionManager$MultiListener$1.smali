.class public final Landroidx/transition/TransitionManager$MultiListener$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroidx/transition/TransitionManager$MultiListener;

.field public final synthetic val$runningTransitions:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Landroidx/transition/TransitionManager$MultiListener;Landroidx/collection/ArrayMap;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/TransitionManager$MultiListener$1;->this$0:Landroidx/transition/TransitionManager$MultiListener;

    iput-object p2, p0, Landroidx/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Landroidx/collection/ArrayMap;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2

    iget-object v0, p0, Landroidx/transition/TransitionManager$MultiListener$1;->this$0:Landroidx/transition/TransitionManager$MultiListener;

    iget-object v0, v0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method
