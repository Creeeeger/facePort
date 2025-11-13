.class Lcom/android/internal/widget/SlidingTab$2;
.super Ljava/lang/Object;
.source "SlidingTab.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SlidingTab;->startAnimating(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/SlidingTab;

.field final synthetic blacklist val$dx:I

.field final synthetic blacklist val$dy:I

.field final synthetic blacklist val$holdAfter:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/SlidingTab;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    iput-boolean p2, p0, Lcom/android/internal/widget/SlidingTab$2;->val$holdAfter:Z

    iput p3, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dx:I

    iput p4, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTab$2;->val$holdAfter:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dx:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dx:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dy:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dy:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/widget/SlidingTab;->-$$Nest$fputmAnimating(Lcom/android/internal/widget/SlidingTab;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab;->-$$Nest$mresetView(Lcom/android/internal/widget/SlidingTab;)V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab;->-$$Nest$fgetmAnimationDoneListener(Lcom/android/internal/widget/SlidingTab;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab;->-$$Nest$fgetmLeftSlider(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab;->-$$Nest$fgetmRightSlider(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
