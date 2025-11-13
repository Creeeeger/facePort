.class public final Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1$onStartAnimator$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $this_apply:Landroid/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1$onStartAnimator$1$2;->$this_apply:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1$onStartAnimator$1$2;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1$onStartAnimator$1$2;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1$onStartAnimator$1$2;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->bringToFront()V

    goto/16 :goto_12

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1$onStartAnimator$1$2;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

    if-nez v1, :cond_1

    goto/16 :goto_12

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->haveLongPressPropertiesBeenReset:Z

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    iput-boolean v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->haveLongPressPropertiesBeenReset:Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initialLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v1, :cond_3

    iget v2, v1, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->height:F

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->finalLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v3, :cond_4

    iget v4, v3, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->height:F

    goto :goto_1

    :cond_4
    move v4, v0

    :goto_1
    invoke-static {v4, v2, p1, v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v2

    float-to-int v2, v2

    if-eqz v1, :cond_5

    iget v4, v1, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->width:F

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    if-eqz v3, :cond_6

    iget v3, v3, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->width:F

    goto :goto_3

    :cond_6
    move v3, v0

    :goto_3
    invoke-static {v3, v4, p1, v4}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v3

    float-to-int v3, v3

    if-eqz v1, :cond_7

    iget v4, v1, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->height:F

    float-to-int v4, v4

    goto :goto_4

    :cond_7
    move v4, v6

    :goto_4
    if-eqz v1, :cond_8

    iget v1, v1, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->width:F

    float-to-int v1, v1

    goto :goto_5

    :cond_8
    move v1, v6

    :goto_5
    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    neg-int v7, v1

    neg-int v8, v4

    sub-int/2addr v3, v1

    sub-int/2addr v2, v4

    invoke-virtual {v5, v7, v8, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initialLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v1, :cond_9

    iget v1, v1, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->cornerRadius:F

    goto :goto_6

    :cond_9
    move v1, v0

    :goto_6
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->finalLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v2, :cond_a

    iget v0, v2, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->cornerRadius:F

    :cond_a
    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->changeCornerRadius(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorEvaluator:Landroid/animation/ArgbEvaluator;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initialLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v1, :cond_b

    iget v1, v1, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->backgroundColor:I

    goto :goto_7

    :cond_b
    move v1, v6

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->finalLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v2, :cond_c

    iget v2, v2, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->backgroundColor:I

    goto :goto_8

    :cond_c
    move v2, v6

    :goto_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorEvaluator:Landroid/animation/ArgbEvaluator;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initialLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v2, :cond_d

    iget v2, v2, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->labelColor:I

    goto :goto_9

    :cond_d
    move v2, v6

    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->finalLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v3, :cond_e

    iget v3, v3, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->labelColor:I

    goto :goto_a

    :cond_e
    move v3, v6

    :goto_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorEvaluator:Landroid/animation/ArgbEvaluator;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initialLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v3, :cond_f

    iget v3, v3, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->secondaryLabelColor:I

    goto :goto_b

    :cond_f
    move v3, v6

    :goto_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->finalLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v4, :cond_10

    iget v4, v4, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->secondaryLabelColor:I

    goto :goto_c

    :cond_10
    move v4, v6

    :goto_c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorEvaluator:Landroid/animation/ArgbEvaluator;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initialLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v4, :cond_11

    iget v4, v4, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->chevronColor:I

    goto :goto_d

    :cond_11
    move v4, v6

    :goto_d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->finalLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v5, :cond_12

    iget v5, v5, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->chevronColor:I

    goto :goto_e

    :cond_12
    move v5, v6

    :goto_e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, p1, v4, v5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorEvaluator:Landroid/animation/ArgbEvaluator;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initialLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v5, :cond_13

    iget v5, v5, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->overlayColor:I

    goto :goto_f

    :cond_13
    move v5, v6

    :goto_f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->finalLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v7, :cond_14

    iget v7, v7, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->overlayColor:I

    goto :goto_10

    :cond_14
    move v7, v6

    :goto_10
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, p1, v5, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setAllColors(IIIII)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->icon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorEvaluator:Landroid/animation/ArgbEvaluator;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initialLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v3, :cond_15

    iget v3, v3, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->iconColor:I

    goto :goto_11

    :cond_15
    move v3, v6

    :goto_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->finalLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz p0, :cond_16

    iget v6, p0, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->iconColor:I

    :cond_16
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p1, v3, p0}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    :cond_17
    :goto_12
    return-void
.end method
