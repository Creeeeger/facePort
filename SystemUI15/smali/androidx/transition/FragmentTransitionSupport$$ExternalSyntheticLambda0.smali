.class public final synthetic Landroidx/transition/FragmentTransitionSupport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;

.field public final synthetic f$1:Landroidx/transition/Transition;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/transition/Transition;Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/transition/FragmentTransitionSupport$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    iput-object p1, p0, Landroidx/transition/FragmentTransitionSupport$$ExternalSyntheticLambda0;->f$1:Landroidx/transition/Transition;

    iput-object p2, p0, Landroidx/transition/FragmentTransitionSupport$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 2

    iget-object v0, p0, Landroidx/transition/FragmentTransitionSupport$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    iget-object v1, p0, Landroidx/transition/FragmentTransitionSupport$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/transition/FragmentTransitionSupport$$ExternalSyntheticLambda0;->f$1:Landroidx/transition/Transition;

    invoke-virtual {p0}, Landroidx/transition/Transition;->cancel()V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
