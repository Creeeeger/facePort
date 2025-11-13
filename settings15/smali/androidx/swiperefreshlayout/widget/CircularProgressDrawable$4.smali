.class public final Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

.field public final synthetic val$fourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;


# direct methods
.method public constructor <init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iput-object p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;->val$fourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;->val$fourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    const/4 v0, 0x0

    iput v0, p1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mRotation:F

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mIsRunning:Z

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-object p1, p1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mDotAnimation:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;->val$fourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    const/4 v0, 0x0

    iput v0, p1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mAlpha:I

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mDotAnimation:Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mDotAnimation:Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    new-instance v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$5;

    invoke-direct {v0, p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$5;-><init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
