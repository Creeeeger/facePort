.class public final synthetic Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda3;Landroid/view/View;Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda6;->f$2:Landroid/view/View;

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda6;->f$2:Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->moveToFinalIndex(Landroid/view/View;ILcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;)V

    return-void
.end method
