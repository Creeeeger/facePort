.class public final synthetic Lcom/android/wm/shell/compatui/DialogAnimationController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/compatui/DialogAnimationController;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/DialogAnimationController;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/compatui/DialogAnimationController;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/DialogAnimationController$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/wm/shell/compatui/DialogAnimationController$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/compatui/DialogAnimationController;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
