.class final Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/animation/AnimatedDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/AnimatedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$1;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$1;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/animation/AnimatedDialog;->isLaunching:Z

    iget-boolean v1, v0, Lcom/android/systemui/animation/AnimatedDialog;->dismissRequested:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$1;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    iget-object v1, v0, Lcom/android/systemui/animation/AnimatedDialog;->backgroundLayoutListener:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$1;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    iget-object v1, v1, Lcom/android/systemui/animation/AnimatedDialog;->backgroundLayoutListener:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$1;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    iget-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->hasInstrumentedJank:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object p0, p0, Lcom/android/systemui/animation/AnimatedDialog;->controller:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->getCuj()Lcom/android/systemui/animation/DialogCuj;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p0, p0, Lcom/android/systemui/animation/DialogCuj;->cujType:I

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
