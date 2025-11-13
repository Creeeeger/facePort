.class public final Lcom/android/wm/shell/draganddrop/DropTargetView$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/draganddrop/DropTargetView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DropTargetView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView$3;->this$0:Lcom/android/wm/shell/draganddrop/DropTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView$3;->this$0:Lcom/android/wm/shell/draganddrop/DropTargetView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget v0, Lcom/android/wm/shell/draganddrop/DropTargetView;->$r8$clinit:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/draganddrop/DropTargetView;->setBlurEffect(I)V

    return-void
.end method
