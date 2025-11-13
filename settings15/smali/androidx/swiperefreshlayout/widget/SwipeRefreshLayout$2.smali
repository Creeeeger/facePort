.class public final Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;
.super Landroid/view/animation/Animation;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public synthetic constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;I)V
    .locals 0

    iput p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void

    :pswitch_0
    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget v0, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget p2, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr v0, p2

    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float p2, v0

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object p2, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void

    :pswitch_1
    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget v0, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mStartingScale:F

    neg-float v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v0

    const v0, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v0

    iget-object v0, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    iget p2, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mStartingOpacity:F

    neg-float v2, p2

    mul-float/2addr v2, p1

    add-float/2addr v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object p2, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mStartingOpacity:F

    neg-float v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v0, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p2, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->stop()V

    :cond_0
    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
