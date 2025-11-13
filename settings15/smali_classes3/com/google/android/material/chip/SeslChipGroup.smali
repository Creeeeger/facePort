.class public Lcom/google/android/material/chip/SeslChipGroup;
.super Landroid/view/ViewGroup;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

.field public final chipSpacingHorizontal:I

.field public final chipSpacingVertical:I

.field public final defaultCheckedId:I

.field public itemSpacing:I

.field public lineSpacing:I

.field public mChipMaxWidth:I

.field public final mDynamicChipTextTruncation:Z

.field public mEmptyContainerHeight:I

.field public final mLayoutTransition:Landroid/animation/LayoutTransition;

.field public mRowCount:I

.field public final passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

.field public singleLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/SeslChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040100

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/SeslChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const v3, 0x7f150899

    invoke-static {p1, p2, p3, v3}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/google/android/material/chip/SeslChipGroup;->singleLine:Z

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v3, Lcom/google/android/material/R$styleable;->FlowLayout:[I

    invoke-virtual {p1, p2, v3, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/chip/SeslChipGroup;->lineSpacing:I

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/chip/SeslChipGroup;->itemSpacing:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/google/android/material/internal/CheckableGroup;

    invoke-direct {p1}, Lcom/google/android/material/internal/CheckableGroup;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/SeslChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    new-instance v3, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v3, p0}, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/google/android/material/chip/SeslChipGroup;)V

    iput-object v3, p0, Lcom/google/android/material/chip/SeslChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/google/android/material/R$styleable;->ChipGroup:[I

    const v8, 0x7f150899

    new-array v9, v1, [I

    move-object v5, p2

    move v7, p3

    invoke-static/range {v4 .. v9}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iget v4, p0, Lcom/google/android/material/chip/SeslChipGroup;->chipSpacingHorizontal:I

    if-eq v4, v3, :cond_0

    iput v3, p0, Lcom/google/android/material/chip/SeslChipGroup;->chipSpacingHorizontal:I

    iput v3, p0, Lcom/google/android/material/chip/SeslChipGroup;->itemSpacing:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    const/4 v3, 0x3

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iget v4, p0, Lcom/google/android/material/chip/SeslChipGroup;->chipSpacingVertical:I

    if-eq v4, p3, :cond_1

    iput p3, p0, Lcom/google/android/material/chip/SeslChipGroup;->chipSpacingVertical:I

    iput p3, p0, Lcom/google/android/material/chip/SeslChipGroup;->lineSpacing:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    const/4 p3, 0x5

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/chip/SeslChipGroup;->singleLine:Z

    const/4 p3, 0x6

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iget-boolean v4, p1, Lcom/google/android/material/internal/CheckableGroup;->singleSelection:Z

    if-eq v4, p3, :cond_3

    iput-boolean p3, p1, Lcom/google/android/material/internal/CheckableGroup;->singleSelection:Z

    iget-object p3, p1, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    check-cast p3, Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    move-result p3

    xor-int/2addr p3, v0

    iget-object v4, p1, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/internal/MaterialCheckable;

    invoke-virtual {p1, v5, v1}, Lcom/google/android/material/internal/CheckableGroup;->uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChanged()V

    :cond_3
    const/4 p1, 0x4

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iget-object v4, p0, Lcom/google/android/material/chip/SeslChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    iput-boolean p3, v4, Lcom/google/android/material/internal/CheckableGroup;->selectionRequired:Z

    const/4 p3, -0x1

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/chip/SeslChipGroup;->defaultCheckedId:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p2, p0, Lcom/google/android/material/chip/SeslChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    new-instance p3, Lcom/google/android/material/chip/ChipGroup$1;

    invoke-direct {p3, p0}, Lcom/google/android/material/chip/ChipGroup$1;-><init>(Lcom/google/android/material/chip/SeslChipGroup;)V

    iput-object p3, p2, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChangeListener:Lcom/google/android/material/chip/ChipGroup$1;

    iget-object p2, p0, Lcom/google/android/material/chip/SeslChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, p2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    sget-object p2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iput-boolean v0, p0, Lcom/google/android/material/chip/SeslChipGroup;->mDynamicChipTextTruncation:Z

    new-instance p2, Landroid/animation/LayoutTransition;

    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/SeslChipGroup;->mLayoutTransition:Landroid/animation/LayoutTransition;

    iput v1, p0, Lcom/google/android/material/chip/SeslChipGroup;->mEmptyContainerHeight:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v4, 0x7f070261

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    invoke-virtual {p2, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {p2, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {p2, p1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {p2, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {p2, v0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v2, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    invoke-virtual {p2, v3, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    invoke-virtual {p2, p1, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    invoke-virtual {p2, v1, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    invoke-virtual {p2, v0, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v6, 0x7f0b00c0

    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    new-array v6, v2, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->ofFloat([F)Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;

    move-result-object v6

    int-to-long v7, p3

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p3, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda0;

    invoke-direct {p3, v1}, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v6, p3}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p3, Lcom/google/android/material/chip/SeslChipGroup$3;

    invoke-direct {p3}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    invoke-virtual {v6, p3}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2, v2, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    new-array p3, v2, [F

    fill-array-data p3, :array_1

    invoke-static {p3}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->ofFloat([F)Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;

    move-result-object p3

    invoke-virtual {p3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p3, v4}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/google/android/material/chip/SeslChipGroup$3;

    invoke-direct {v4}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    invoke-virtual {p3, v4}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2, v3, p3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const v4, 0x7f0c0027

    invoke-static {p3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p3

    invoke-virtual {p2, v3, p3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, v2, p3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, p1, p3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, v1, p3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, v0, p3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/google/android/material/chip/SeslChipGroup$2;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

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


# virtual methods
.method public final addRemoveAnim()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->isLineAddedOrRemoved()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/SeslChipGroup;->getInternalHeight(F)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070258

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0027

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/google/android/material/chip/SeslChipGroup$1;

    invoke-direct {v3, p0}, Lcom/google/android/material/chip/SeslChipGroup$1;-><init>(Lcom/google/android/material/chip/SeslChipGroup;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/chip/SeslChipGroup;II)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/chip/SeslChipGroup;->mEmptyContainerHeight:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/SeslChipGroup;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->isLineAddedOrRemoved()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->addRemoveAnim()V

    instance-of p2, p1, Lcom/google/android/material/chip/Chip;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/google/android/material/chip/Chip;

    iget-boolean p2, p0, Lcom/google/android/material/chip/SeslChipGroup;->mDynamicChipTextTruncation:Z

    if-eqz p2, :cond_3

    iget p0, p0, Lcom/google/android/material/chip/SeslChipGroup;->mChipMaxWidth:I

    if-lez p0, :cond_2

    invoke-virtual {p1, p0}, Lcom/google/android/material/chip/Chip;->setMaxWidth(I)V

    :cond_2
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p0}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_3
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance p0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    new-instance p0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final getInternalHeight(F)I
    .locals 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/chip/SeslChipGroup;->chipSpacingHorizontal:I

    add-int v5, v2, v3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    add-int/2addr v6, v4

    const/4 v5, 0x1

    move v7, v6

    move v6, v5

    :goto_0
    if-ge v5, v0, :cond_2

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/chip/Chip;

    iget-object v8, v8, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v8}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    move-result v8

    add-int v9, v7, v8

    int-to-float v9, v9

    cmpg-float v9, v9, p1

    if-gez v9, :cond_1

    add-int/2addr v8, v4

    add-int/2addr v8, v7

    :goto_1
    move v7, v8

    goto :goto_2

    :cond_1
    add-int/2addr v8, v4

    add-int/2addr v8, v2

    add-int/2addr v8, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/google/android/material/chip/SeslChipGroup;->chipSpacingVertical:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p1

    mul-int/2addr v0, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    add-int/2addr p0, v1

    sub-int/2addr p0, p1

    return p0
.end method

.method public final isLineAddedOrRemoved()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/SeslChipGroup;->getInternalHeight(F)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslChipGroup;->singleLine:Z

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    iget v0, p0, Lcom/google/android/material/chip/SeslChipGroup;->defaultCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/chip/SeslChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/MaterialCheckable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableGroup;->checkInternal(Lcom/google/android/material/internal/MaterialCheckable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslChipGroup;->singleLine:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/material/chip/Chip;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :cond_2
    iget v0, p0, Lcom/google/android/material/chip/SeslChipGroup;->mRowCount:I

    iget-object p0, p0, Lcom/google/android/material/chip/SeslChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    iget-boolean p0, p0, Lcom/google/android/material/internal/CheckableGroup;->singleSelection:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x2

    :goto_1
    invoke-static {v0, v1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(III)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object p0

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput v3, v0, Lcom/google/android/material/chip/SeslChipGroup;->mRowCount:I

    return-void

    :cond_0
    iput v1, v0, Lcom/google/android/material/chip/SeslChipGroup;->mRowCount:I

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    iget v7, v0, Lcom/google/android/material/chip/SeslChipGroup;->lineSpacing:I

    iget v8, v0, Lcom/google/android/material/chip/SeslChipGroup;->itemSpacing:I

    sub-int v9, p4, p2

    sub-int v5, v9, v5

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v9, v5

    :goto_3
    move v11, v3

    move v12, v4

    move v10, v6

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-ge v11, v13, :cond_9

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    const v3, 0x7f0a0cd5

    if-ne v14, v15, :cond_5

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v3, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_8

    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    instance-of v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_6

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v14}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v14

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_5
    add-int v16, v12, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v3, v17, v16

    iget-boolean v1, v0, Lcom/google/android/material/chip/SeslChipGroup;->singleLine:Z

    if-nez v1, :cond_7

    if-le v3, v5, :cond_7

    add-int v10, v6, v7

    iget v1, v0, Lcom/google/android/material/chip/SeslChipGroup;->mRowCount:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/material/chip/SeslChipGroup;->mRowCount:I

    move v12, v4

    goto :goto_6

    :cond_7
    const/4 v3, 0x1

    :goto_6
    iget v1, v0, Lcom/google/android/material/chip/SeslChipGroup;->mRowCount:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f0a0cd5

    invoke-virtual {v13, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int v1, v12, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v10

    if-eqz v2, :cond_8

    sub-int v1, v9, v3

    sub-int v3, v9, v12

    sub-int/2addr v3, v15

    invoke-virtual {v13, v1, v10, v3, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    :cond_8
    invoke-virtual {v13, v1, v10, v3, v6}, Landroid/view/View;->layout(IIII)V

    :goto_7
    add-int/2addr v15, v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v15

    add-int/2addr v1, v8

    add-int/2addr v12, v1

    const/4 v1, 0x1

    :goto_8
    add-int/2addr v11, v1

    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/chip/SeslChipGroup;->onMeasure$com$google$android$material$internal$FlowLayout(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/google/android/material/chip/SeslChipGroup;->mEmptyContainerHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public final onMeasure$com$google$android$material$internal$FlowLayout(II)V
    .locals 19

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const v7, 0x7fffffff

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    sub-int/2addr v7, v10

    move v11, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-ge v12, v14, :cond_7

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v10, 0x8

    if-ne v15, v10, :cond_2

    move/from16 v10, p1

    move/from16 v15, p2

    goto :goto_5

    :cond_2
    move/from16 v10, p1

    move/from16 v15, p2

    invoke-virtual {v0, v14, v10, v15}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_3

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    add-int v16, v8, v6

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move/from16 v18, v8

    add-int v8, v17, v16

    if-le v8, v7, :cond_4

    iget-boolean v8, v0, Lcom/google/android/material/chip/SeslChipGroup;->singleLine:Z

    if-nez v8, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    iget v11, v0, Lcom/google/android/material/chip/SeslChipGroup;->lineSpacing:I

    add-int/2addr v11, v9

    goto :goto_4

    :cond_4
    move/from16 v8, v18

    :goto_4
    add-int v9, v8, v6

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v9, v16, v9

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v16, v11

    if-le v9, v13, :cond_5

    move v13, v9

    :cond_5
    add-int/2addr v6, v5

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v6

    iget v6, v0, Lcom/google/android/material/chip/SeslChipGroup;->itemSpacing:I

    add-int/2addr v9, v6

    add-int/2addr v9, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v12, v6, :cond_6

    add-int/2addr v13, v5

    :cond_6
    move v8, v9

    move/from16 v9, v16

    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    goto :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v9

    const/high16 v7, -0x80000000

    if-eq v2, v7, :cond_8

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v2, v8, :cond_9

    move v1, v5

    goto :goto_6

    :cond_8
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_9
    :goto_6
    if-eq v4, v7, :cond_a

    if-eq v4, v8, :cond_b

    move v3, v6

    goto :goto_7

    :cond_a
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_b
    :goto_7
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public final removeAllViews()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->setStaticHeight()V

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->addRemoveAnim()V

    return-void
.end method

.method public final removeAllViewsInLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->setStaticHeight()V

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->addRemoveAnim()V

    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/SeslChipGroup;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->setStaticHeight()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->addRemoveAnim()V

    return-void
.end method

.method public final removeViewAt(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->setStaticHeight()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->addRemoveAnim()V

    return-void
.end method

.method public final removeViewInLayout(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->setStaticHeight()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->addRemoveAnim()V

    return-void
.end method

.method public final removeViews(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->setStaticHeight()V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->addRemoveAnim()V

    return-void
.end method

.method public final removeViewsInLayout(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->setStaticHeight()V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->addRemoveAnim()V

    return-void
.end method

.method public final setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/SeslChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public final setStaticHeight()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/chip/SeslChipGroup;->mEmptyContainerHeight:I

    return-void
.end method
