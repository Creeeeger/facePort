.class public final Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$animT:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$leash:Landroid/view/SurfaceControl;

.field public final synthetic val$show:Z


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$leash:Landroid/view/SurfaceControl;

    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$show:Z

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$animT:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$leash:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$show:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$animT:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$leash:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$animT:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$animT:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$leash:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$show:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$animT:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$leash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$animT:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$leash:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$4;->val$leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_1
    :goto_0
    return-void
.end method
