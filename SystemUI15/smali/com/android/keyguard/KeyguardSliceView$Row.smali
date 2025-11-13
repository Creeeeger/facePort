.class public Lcom/android/keyguard/KeyguardSliceView$Row;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDarkAmount:F

.field public final mKeepAwakeListener:Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;

.field public final mKeyguardSliceTextViewSet:Ljava/util/Set;

.field public mLayoutTransition:Landroid/animation/LayoutTransition;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSliceView$Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSliceView$Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/KeyguardSliceView$Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mKeyguardSliceTextViewSet:Ljava/util/Set;

    new-instance p1, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mKeepAwakeListener:Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;

    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    instance-of p2, p1, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mKeyguardSliceTextViewSet:Ljava/util/Set;

    check-cast p1, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onFinishInflate()V
    .locals 8

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v1, 0x226

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    filled-new-array {v0, v3}, [I

    move-result-object v4

    const-string v5, "left"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const-string v5, "right"

    filled-new-array {v0, v3}, [I

    move-result-object v6

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v7, v0

    aput-object v5, v7, v3

    const/4 v4, 0x0

    invoke-static {v4, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v7, v0, v5}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v7, v3, v5}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    sget-object v7, Lcom/android/app/animation/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v0, v7}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v5, v3, v7}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v5, v0, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v5, v3, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    new-array v1, v6, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v4, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v6, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    sget-object v3, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    new-array v1, v6, [F

    fill-array-data v1, :array_1

    invoke-static {v4, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    sget-object v3, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v5, 0x89

    invoke-virtual {v2, v4, v5, v6}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, v4, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    instance-of v0, p1, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mKeyguardSliceTextViewSet:Ljava/util/Set;

    check-cast p1, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
