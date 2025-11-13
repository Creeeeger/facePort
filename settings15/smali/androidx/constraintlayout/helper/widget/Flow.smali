.class public Landroidx/constraintlayout/helper/widget/Flow;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mApplyElevationOnAttach:Z

.field public mApplyVisibilityOnAttach:Z

.field public mFlow:Landroidx/constraintlayout/core/widgets/Flow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final applyLayoutFeaturesInConstraintSet(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->applyLayoutFeatures(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public final init(Landroid/util/AttributeSet;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_0

    iput-boolean v1, p0, Landroidx/constraintlayout/helper/widget/Flow;->mApplyVisibilityOnAttach:Z

    goto :goto_1

    :cond_0
    const/16 v7, 0x16

    if-ne v6, v7, :cond_1

    iput-boolean v1, p0, Landroidx/constraintlayout/helper/widget/Flow;->mApplyElevationOnAttach:Z

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    new-instance v3, Landroidx/constraintlayout/core/widgets/Flow;

    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/Flow;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_1e

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    if-nez v4, :cond_4

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    goto/16 :goto_3

    :cond_4
    if-ne v4, v1, :cond_5

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingTop:I

    iput v4, v5, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    iput v4, v5, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingStart:I

    iput v4, v5, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingEnd:I

    goto/16 :goto_3

    :cond_5
    const/16 v5, 0x12

    if-ne v4, v5, :cond_6

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingStart:I

    iput v4, v5, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    iput v4, v5, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    goto/16 :goto_3

    :cond_6
    const/16 v5, 0x13

    if-ne v4, v5, :cond_7

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingEnd:I

    goto/16 :goto_3

    :cond_7
    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    goto/16 :goto_3

    :cond_8
    const/4 v6, 0x3

    if-ne v4, v6, :cond_9

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingTop:I

    goto/16 :goto_3

    :cond_9
    const/4 v6, 0x4

    if-ne v4, v6, :cond_a

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    goto/16 :goto_3

    :cond_a
    const/4 v6, 0x5

    if-ne v4, v6, :cond_b

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    goto/16 :goto_3

    :cond_b
    const/16 v6, 0x36

    if-ne v4, v6, :cond_c

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    goto/16 :goto_3

    :cond_c
    const/16 v6, 0x2c

    if-ne v4, v6, :cond_d

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    goto/16 :goto_3

    :cond_d
    const/16 v6, 0x35

    if-ne v4, v6, :cond_e

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    goto/16 :goto_3

    :cond_e
    const/16 v6, 0x26

    if-ne v4, v6, :cond_f

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    goto/16 :goto_3

    :cond_f
    const/16 v6, 0x2e

    if-ne v4, v6, :cond_10

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    goto/16 :goto_3

    :cond_10
    const/16 v6, 0x28

    if-ne v4, v6, :cond_11

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    goto/16 :goto_3

    :cond_11
    const/16 v6, 0x30

    if-ne v4, v6, :cond_12

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    goto/16 :goto_3

    :cond_12
    const/16 v6, 0x2a

    const/high16 v7, 0x3f000000    # 0.5f

    if-ne v4, v6, :cond_13

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    goto/16 :goto_3

    :cond_13
    const/16 v6, 0x25

    if-ne v4, v6, :cond_14

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    goto/16 :goto_3

    :cond_14
    const/16 v6, 0x2d

    if-ne v4, v6, :cond_15

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    goto/16 :goto_3

    :cond_15
    const/16 v6, 0x27

    if-ne v4, v6, :cond_16

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    goto :goto_3

    :cond_16
    const/16 v6, 0x2f

    if-ne v4, v6, :cond_17

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    goto :goto_3

    :cond_17
    const/16 v6, 0x33

    if-ne v4, v6, :cond_18

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    goto :goto_3

    :cond_18
    const/16 v6, 0x29

    if-ne v4, v6, :cond_19

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v6, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    goto :goto_3

    :cond_19
    const/16 v6, 0x32

    if-ne v4, v6, :cond_1a

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v6, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    goto :goto_3

    :cond_1a
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_1b

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    goto :goto_3

    :cond_1b
    const/16 v5, 0x34

    if-ne v4, v5, :cond_1c

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    goto :goto_3

    :cond_1c
    const/16 v5, 0x31

    if-ne v4, v5, :cond_1d

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    const/4 v6, -0x1

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v5, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    :cond_1d
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_1e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1f
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/core/widgets/HelperWidget;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    return-void
.end method

.method public final loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/core/widgets/HelperWidget;Landroidx/constraintlayout/widget/Constraints$LayoutParams;Landroid/util/SparseArray;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintHelper;->loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/core/widgets/HelperWidget;Landroidx/constraintlayout/widget/Constraints$LayoutParams;Landroid/util/SparseArray;)V

    instance-of p0, p2, Landroidx/constraintlayout/core/widgets/Flow;

    if-eqz p0, :cond_0

    check-cast p2, Landroidx/constraintlayout/core/widgets/Flow;

    iget p0, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    iput p0, p2, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    :cond_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mApplyVisibilityOnAttach:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mApplyElevationOnAttach:Z

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_3

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v2

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    aget v4, v4, v3

    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_2

    iget-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mApplyVisibilityOnAttach:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->mApplyElevationOnAttach:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getTranslationZ()F

    move-result v5

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationZ(F)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/helper/widget/Flow;->onMeasure(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V

    return-void
.end method

.method public final onMeasure(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V
    .locals 2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, p2, v1, p3}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measure(IIII)V

    iget p2, p1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredWidth:I

    iget p1, p1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredHeight:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public final resolveRtl(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .locals 1

    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    iget p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingStart:I

    if-gtz p1, :cond_0

    iget v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingEnd:I

    if-lez v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    iget p2, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingEnd:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    goto :goto_0

    :cond_1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    iget p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingEnd:I

    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final setElevation(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->applyLayoutFeatures(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    return-void
.end method

.method public final setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->applyLayoutFeatures(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    return-void
.end method
