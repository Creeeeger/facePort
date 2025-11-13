.class public final Landroidx/transition/TransitionManager$MultiListener$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Landroidx/transition/TransitionManager$MultiListener;

.field public final synthetic val$runningTransitions:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Landroidx/transition/TransitionManager$MultiListener;Landroidx/collection/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/TransitionManager$MultiListener$1;->this$0:Landroidx/transition/TransitionManager$MultiListener;

    iput-object p2, p0, Landroidx/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Landroidx/collection/ArrayMap;

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

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)V

    return-void
.end method
