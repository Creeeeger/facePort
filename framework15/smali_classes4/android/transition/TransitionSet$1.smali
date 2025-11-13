.class Landroid/transition/TransitionSet$1;
.super Landroid/transition/TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/TransitionSet;->runAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/transition/TransitionSet;

.field final synthetic blacklist val$nextTransition:Landroid/transition/Transition;


# direct methods
.method constructor blacklist <init>(Landroid/transition/TransitionSet;Landroid/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/transition/TransitionSet$1;->this$0:Landroid/transition/TransitionSet;

    iput-object p2, p0, Landroid/transition/TransitionSet$1;->val$nextTransition:Landroid/transition/Transition;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    iget-object v0, p0, Landroid/transition/TransitionSet$1;->val$nextTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->runAnimators()V

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method
