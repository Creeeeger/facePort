.class public final Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic val$fourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;


# direct methods
.method public constructor <init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$3;->val$fourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$3;->val$fourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mRotation:F

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
