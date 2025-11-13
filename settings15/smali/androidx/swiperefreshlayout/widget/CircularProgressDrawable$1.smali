.class public final Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

.field public final synthetic val$fourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;


# direct methods
.method public synthetic constructor <init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;I)V
    .locals 0

    iput p3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iput-object p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->val$fourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->val$fourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    int-to-float p1, p1

    iput p1, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mRotation:F

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->val$fourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mScreenDensity:F

    mul-float v2, p1, v1

    iput v2, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPosition:F

    const/high16 v2, 0x41300000    # 11.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr p1, v3

    mul-float/2addr p1, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr p1, v1

    add-float/2addr p1, v2

    iget v1, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mScale:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    iput p1, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mScale:F

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
