.class public final synthetic Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;ZZI)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda13;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda13;->f$1:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda13;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(FF)V
    .locals 5

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda13;->f$2:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda13;->f$1:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda13;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    float-to-int p0, p1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result p1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    add-int/2addr v2, p0

    invoke-virtual {v1, p1, p0, v3, v2}, Landroid/widget/ImageView;->setLeftTopRightBottom(IIII)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    iput p0, v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterX:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    iput p0, v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterY:I

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateBgBlur(Z)V

    :cond_0
    return-void

    :pswitch_0
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    float-to-int p0, p1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    add-int/2addr v2, p0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, p0, p1, v2, v4}, Landroid/widget/ImageView;->setLeftTopRightBottom(IIII)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    iput p0, v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterX:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    iput p0, v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterY:I

    if-eqz v0, :cond_1

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateBgBlur(Z)V

    :cond_1
    return-void

    :pswitch_1
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    float-to-int p0, p1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result p1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    add-int/2addr v3, p0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    add-int/2addr v4, p0

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/widget/ImageView;->setLeftTopRightBottom(IIII)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    iput p0, v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterX:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    iput p0, v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mCenterY:I

    if-eqz v0, :cond_2

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateBgBlur(Z)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
