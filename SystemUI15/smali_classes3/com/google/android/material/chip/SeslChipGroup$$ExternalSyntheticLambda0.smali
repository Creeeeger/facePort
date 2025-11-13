.class public final synthetic Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x43480000    # 200.0f

    iget p0, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/google/android/material/chip/SeslChipGroup;->sChipInitialWidth:I

    move-object p0, p1

    check-cast p0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;

    iget-object p0, p0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->mTargetView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v6, p0, Lcom/google/android/material/chip/SeslChip;

    if-eqz v6, :cond_2

    check-cast p0, Lcom/google/android/material/chip/SeslChip;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget v7, Lcom/google/android/material/chip/SeslChipGroup;->sChipInitialWidth:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v8}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    move-result v8

    sget v9, Lcom/google/android/material/chip/SeslChipGroup;->sChipInitialWidth:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v7

    float-to-int v7, v8

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getLeft()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/CheckBox;->setRight(I)V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    iget v8, v8, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/widget/CheckBox;->setBottom(I)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v7

    long-to-int p1, v7

    int-to-float p1, p1

    div-float/2addr p1, v5

    sub-float p1, v4, p1

    invoke-static {p1, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/SeslChip;->setInternalsAlpha(I)V

    mul-float/2addr v6, v2

    float-to-int p1, v6

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v2, p1}, Lcom/google/android/material/chip/ChipDrawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz p1, :cond_1

    iget v2, p1, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iput v3, p1, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    iput-boolean v0, p1, Lcom/google/android/material/chip/ChipDrawable;->isSeslFullText:Z

    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void

    :pswitch_0
    sget p0, Lcom/google/android/material/chip/SeslChipGroup;->sChipInitialWidth:I

    move-object p0, p1

    check-cast p0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;

    iget-object p0, p0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->mTargetView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    instance-of v6, p0, Lcom/google/android/material/chip/SeslChip;

    if-eqz v6, :cond_5

    check-cast p0, Lcom/google/android/material/chip/SeslChip;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getLeft()I

    move-result v7

    sget v8, Lcom/google/android/material/chip/SeslChipGroup;->sChipInitialWidth:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v8}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    move-result v8

    sget v9, Lcom/google/android/material/chip/SeslChipGroup;->sChipInitialWidth:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/widget/CheckBox;->setRight(I)V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    iget v8, v8, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/widget/CheckBox;->setBottom(I)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v7

    long-to-int p1, v7

    add-int/lit8 p1, p1, -0x64

    int-to-float p1, p1

    div-float/2addr p1, v5

    invoke-static {p1, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/SeslChip;->setInternalsAlpha(I)V

    mul-float/2addr v6, v2

    float-to-int p1, v6

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v2, p1}, Lcom/google/android/material/chip/ChipDrawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz p1, :cond_4

    iget v2, p1, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    iput v3, p1, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    iput-boolean v0, p1, Lcom/google/android/material/chip/ChipDrawable;->isSeslFullText:Z

    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
