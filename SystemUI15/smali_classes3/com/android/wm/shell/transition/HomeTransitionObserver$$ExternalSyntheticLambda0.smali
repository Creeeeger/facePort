.class public final synthetic Lcom/android/wm/shell/transition/HomeTransitionObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/transition/HomeTransitionObserver;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/HomeTransitionObserver;Lcom/android/wm/shell/transition/Transitions;I)V
    .locals 0

    iput p3, p0, Lcom/android/wm/shell/transition/HomeTransitionObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/transition/HomeTransitionObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/HomeTransitionObserver;

    iput-object p2, p0, Lcom/android/wm/shell/transition/HomeTransitionObserver$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/transition/HomeTransitionObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/transition/HomeTransitionObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/HomeTransitionObserver;

    iget-object p0, p0, Lcom/android/wm/shell/transition/HomeTransitionObserver$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions;

    check-cast p1, Lcom/android/wm/shell/transition/HomeTransitionObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/HomeTransitionObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/HomeTransitionObserver;

    iget-object p0, p0, Lcom/android/wm/shell/transition/HomeTransitionObserver$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions;

    check-cast p1, Lcom/android/wm/shell/transition/HomeTransitionObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/Transitions;->registerObserver(Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
