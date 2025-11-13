.class public Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
.super Lcom/android/systemui/plugins/qs/QSIconView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isNoBgLargeTile:Z

.field public mAnimationEnabled:Z

.field public final mColorAnimator:Landroid/animation/ValueAnimator;

.field public mDisabledByPolicy:Z

.field public mHighestScheduledIconChangeTransactionId:J

.field public final mIcon:Landroid/view/View;

.field public mIconSizePx:I

.field mLastIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public mScheduledIconChangeTransactionId:J

.field public final mSecQSIconViewImpl:Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;

.field public mState:I

.field public mTint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSIconView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mDisabledByPolicy:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mScheduledIconChangeTransactionId:J

    iput-wide v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mHighestScheduledIconChangeTransactionId:J

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    new-instance p1, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, p2}, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mSecQSIconViewImpl:Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->isNoBgLargeTile:Z

    iget-object p2, p1, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;->resourcePicker$delegate:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileImageSize(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    new-instance p1, Landroid/widget/ImageView;

    iget-object p2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const p2, 0x1020006

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setId(I)V

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-wide/16 p0, 0x15e

    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final disableAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    return-void
.end method

.method public final getColor(Lcom/android/systemui/plugins/qs/QSTile$State;)I
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->isNoBgLargeTile:Z

    sget-object v1, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;->Companion:Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SecQSIconViewImpl"

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "getIconColorForState: state = "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x7f0605d9

    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const v2, 0x7f0605d6

    if-eqz p0, :cond_3

    const/4 v3, 0x1

    if-eq p0, v3, :cond_2

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getIconCOlorForState: Invalid state "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_2
    const p0, 0x7f0605d5

    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    ushr-int/lit8 p0, p0, 0x18

    int-to-float p0, p0

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    const/high16 p1, 0x1000000

    mul-int/2addr p0, p1

    const p1, 0xffffff

    add-int/2addr p0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    and-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public final getIconView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mSecQSIconViewImpl:Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;->resourcePicker$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileImageSize(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070ddb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mSecQSIconViewImpl:Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;->resourcePicker$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object p2, p2, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileImageSize(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v0, p2}, Landroid/view/View;->measure(II)V

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mSecQSIconViewImpl:Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p2

    iget-boolean v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getColor(Lcom/android/systemui/plugins/qs/QSTile$State;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getColor(Lcom/android/systemui/plugins/qs/QSTile$State;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    iget v2, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mDisabledByPolicy:Z

    if-eq v1, v0, :cond_2

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getColor(Lcom/android/systemui/plugins/qs/QSTile$State;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    :goto_0
    iget v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    iget-boolean v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mDisabledByPolicy:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void

    :cond_3
    iget v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    if-ne v0, v1, :cond_5

    iget-boolean v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mDisabledByPolicy:Z

    if-eq v0, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    goto/16 :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getColor(Lcom/android/systemui/plugins/qs/QSTile$State;)I

    move-result v0

    iget v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    iget-boolean v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mDisabledByPolicy:Z

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    if-eqz v1, :cond_7

    if-eqz p3, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-wide v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mHighestScheduledIconChangeTransactionId:J

    const-wide/16 v3, 0x1

    add-long v7, v1, v3

    iput-wide v7, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mHighestScheduledIconChangeTransactionId:J

    iput-wide v7, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mScheduledIconChangeTransactionId:J

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;

    move-object v5, v2

    move-object v6, p0

    move-object v9, p1

    move-object v10, p2

    move v11, p3

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;JLandroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    iget-boolean p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    if-eqz p2, :cond_6

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "color"

    filled-new-array {v1, v0}, [I

    move-result-object p3

    invoke-static {p2, p3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mColorAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/widget/ImageView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$EndRunnableAnimatorListener;

    invoke-direct {p2, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$EndRunnableAnimatorListener;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    invoke-virtual {v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->run()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    :goto_2
    return-void
.end method

.method public final setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void
.end method

.method public final setTint(Landroid/widget/ImageView;I)V
    .locals 1

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iput p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", tint="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mLastIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", lastIcon="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mLastIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 9

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mScheduledIconChangeTransactionId:J

    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_0
    const v1, 0x7f0a0982

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x0

    if-eqz p3, :cond_6

    iget-boolean p3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    if-eqz p3, :cond_6

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mSecQSIconViewImpl:Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;

    const/4 v3, 0x1

    if-eqz p3, :cond_7

    iget-object p3, p3, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;->quickCustomTileIconResize:Lcom/android/systemui/qs/tileimpl/QuickCustomTileIconResize;

    if-eqz p3, :cond_5

    iget-object v4, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    const-string v5, ""

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    move-object v4, v5

    :cond_2
    const-string v6, "CustomTile"

    invoke-static {v4, v6, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->tileClassName:Ljava/lang/String;

    const-string v6, "NearbyShare"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move p3, v2

    goto :goto_2

    :cond_3
    iget-object p3, p3, Lcom/android/systemui/qs/tileimpl/QuickCustomTileIconResize;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v6, 0x7f130ed3

    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move-object v5, v4

    :goto_1
    invoke-static {p3, v5, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p3

    :goto_2
    if-nez p3, :cond_5

    move p3, v3

    goto :goto_3

    :cond_5
    move p3, v2

    :goto_3
    if-nez p3, :cond_6

    goto :goto_4

    :cond_6
    move v3, v2

    :cond_7
    :goto_4
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mLastIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 p3, 0x0

    if-eqz v0, :cond_9

    if-eqz v3, :cond_8

    iget-object v4, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_5

    :cond_8
    iget-object v4, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_5

    :cond_9
    move-object v4, p3

    :goto_5
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getPadding()I

    move-result v5

    goto :goto_6

    :cond_a
    move v5, v2

    :goto_6
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_b
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_c
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mSecQSIconViewImpl:Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;

    if-eqz v6, :cond_f

    iget-object v7, v6, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;->quickCustomTileIconResize:Lcom/android/systemui/qs/tileimpl/QuickCustomTileIconResize;

    if-eqz v7, :cond_e

    instance-of v8, v4, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v8, :cond_d

    goto :goto_7

    :cond_d
    move-object v7, p3

    :goto_7
    if-eqz v7, :cond_e

    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_e
    if-nez p3, :cond_f

    iget-boolean p3, v6, Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;->isNoBgLargeTile:Z

    if-eqz p3, :cond_f

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    :cond_f
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of v6, p3, Landroid/graphics/drawable/Animatable2;

    if-eqz v6, :cond_10

    check-cast p3, Landroid/graphics/drawable/Animatable2;

    invoke-interface {p3}, Landroid/graphics/drawable/Animatable2;->clearAnimationCallbacks()V

    :cond_10
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1, v2, v5, v2, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    instance-of p3, v4, Landroid/graphics/drawable/Animatable2;

    if-eqz p3, :cond_12

    check-cast v4, Landroid/graphics/drawable/Animatable2;

    invoke-interface {v4}, Landroid/graphics/drawable/Animatable2;->start()V

    if-eqz v3, :cond_11

    iget-boolean p1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-eqz p1, :cond_14

    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;

    invoke-direct {p1, p0, v4}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/graphics/drawable/Animatable2;)V

    invoke-interface {v4, p1}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    goto :goto_8

    :cond_11
    invoke-interface {v4}, Landroid/graphics/drawable/Animatable2;->stop()V

    goto :goto_8

    :cond_12
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mSecQSIconViewImpl:Lcom/android/systemui/qs/tileimpl/SecQSIconViewImpl;

    if-eqz p0, :cond_14

    if-eqz v4, :cond_14

    instance-of p0, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p0, :cond_14

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_8

    :cond_13
    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result p0

    if-nez p0, :cond_14

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_14
    :goto_8
    return-void
.end method
