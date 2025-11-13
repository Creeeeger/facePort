.class public final Lcom/android/wm/shell/draganddrop/DropTargetView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/draganddrop/DropTargetView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DropTargetView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView$1;->this$0:Lcom/android/wm/shell/draganddrop/DropTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView$1;->this$0:Lcom/android/wm/shell/draganddrop/DropTargetView;

    sget p1, Lcom/android/wm/shell/draganddrop/DropTargetView;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->updateBounds()V

    return-void
.end method
