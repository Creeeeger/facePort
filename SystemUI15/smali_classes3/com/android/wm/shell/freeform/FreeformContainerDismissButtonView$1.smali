.class public final Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic val$dismissIconRunnable:Ljava/lang/Runnable;

.field public final synthetic val$dismissingIconView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$1;->val$dismissingIconView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$1;->val$dismissIconRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$1;->val$dismissingIconView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$1;->val$dismissIconRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
