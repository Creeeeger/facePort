.class Lcom/samsung/android/multiwindow/OverlayHandlerView$2;
.super Ljava/lang/Object;
.source "OverlayHandlerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/multiwindow/OverlayHandlerView;->createHandlerAffordanceAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/multiwindow/OverlayHandlerView;

    .line 521
    iput-object p1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$2;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 535
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$2;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->setScaleX(F)V

    .line 536
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$2;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->setScaleY(F)V

    .line 537
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 528
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$2;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->setScaleX(F)V

    .line 529
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$2;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->setScaleY(F)V

    .line 530
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$2;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->-$$Nest$mschedulePopupAffordance(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V

    .line 531
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 541
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 524
    return-void
.end method
