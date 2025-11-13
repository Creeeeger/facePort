.class public final Landroidx/transition/TransitionSet$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public val$nextTransition:Landroidx/transition/Transition;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/transition/TransitionSet$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/transition/Transition;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/transition/TransitionSet$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/TransitionSet$1;->val$nextTransition:Landroidx/transition/Transition;

    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2

    iget v0, p0, Landroidx/transition/TransitionSet$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/transition/TransitionSet$1;->val$nextTransition:Landroidx/transition/Transition;

    check-cast v0, Landroidx/transition/TransitionSet;

    iget v1, v0, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/transition/TransitionSet;->mStarted:Z

    invoke-virtual {v0}, Landroidx/transition/Transition;->end()V

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/transition/TransitionSet$1;->val$nextTransition:Landroidx/transition/Transition;

    invoke-virtual {v0}, Landroidx/transition/Transition;->runAnimators()V

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0

    iget p1, p0, Landroidx/transition/TransitionSet$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/transition/TransitionSet$1;->val$nextTransition:Landroidx/transition/Transition;

    check-cast p0, Landroidx/transition/TransitionSet;

    iget-boolean p1, p0, Landroidx/transition/TransitionSet;->mStarted:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/transition/Transition;->start()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/TransitionSet;->mStarted:Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
