.class public Lcom/google/android/material/chip/SeslExpandableContainer;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mChipGroupInitialized:Z

.field public mExpanded:Z

.field public final mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

.field public final mExpansionButtonContainerId:I

.field public final mFloatChangeAllowed:Z

.field public final mIsRtl:Z

.field public final mPaddingAllowed:Z

.field public final mPaddingView:Landroid/view/View;

.field public final mScrollView:Landroid/widget/HorizontalScrollView;

.field public mScrollViewPos:I

.field public final mScrollingChipsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/SeslExpandableContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/SeslExpandableContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/chip/SeslExpandableContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingAllowed:Z

    iput p2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollViewPos:I

    iput-boolean p3, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mFloatChangeAllowed:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p4

    if-ne p4, p3, :cond_0

    move p4, p3

    goto :goto_0

    :cond_0
    move p4, p2

    :goto_0
    iput-boolean p4, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mIsRtl:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0ad6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0dfd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v2, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/chip/SeslExpandableContainer;)V

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    const v1, 0x7f0a0dfe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0dfc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButtonContainerId:I

    new-instance v1, Lcom/google/android/material/chip/SeslExpansionButton;

    invoke-direct {v1, p1}, Lcom/google/android/material/chip/SeslExpansionButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, p2, v3, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f080bbb

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f080bbc

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-boolean p3, v1, Lcom/google/android/material/chip/SeslExpansionButton;->mAutoDisappear:Z

    iput-boolean p2, v1, Lcom/google/android/material/chip/SeslExpansionButton;->mExpanded:Z

    invoke-virtual {v1}, Landroid/widget/ImageView;->refreshDrawableState()V

    iput-boolean p3, v1, Lcom/google/android/material/chip/SeslExpansionButton;->mFloated:Z

    invoke-virtual {v1}, Landroid/widget/ImageView;->refreshDrawableState()V

    const/16 p2, 0x8

    invoke-virtual {v1, p2}, Lcom/google/android/material/chip/SeslExpansionButton;->setVisibility(I)V

    new-instance p2, Landroid/widget/RelativeLayout;

    invoke-direct {p2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    if-eqz p4, :cond_1

    const/4 p1, 0x3

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x5

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getScrollContentsWidth()I
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    instance-of v4, v3, Lcom/google/android/material/chip/SeslChipGroup;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/google/android/material/chip/SeslChipGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_2

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    if-le v4, v6, :cond_3

    iget v3, v3, Lcom/google/android/material/chip/SeslChipGroup;->chipSpacingHorizontal:I

    add-int/lit8 v4, v4, -0x2

    mul-int/2addr v4, v3

    add-int/2addr v5, v4

    :cond_3
    add-int/2addr v2, v5

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->refreshLayout()V

    return-void
.end method

.method public final refreshLayout()V
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    iput-boolean v2, v0, Lcom/google/android/material/chip/SeslExpansionButton;->mAutoDisappear:Z

    iget-object v0, v0, Lcom/google/android/material/chip/SeslExpansionButton;->mTimer:Lcom/google/android/material/chip/SeslExpansionButton$1;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollViewPos:I

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    new-array v3, v0, [Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    iget-boolean v5, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mIsRtl:Z

    move v6, v2

    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_1
    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v0, :cond_3

    aget-object v6, v3, v4

    iget-boolean v7, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingAllowed:Z

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    if-ne v7, v8, :cond_2

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v5, v1

    move v1, v7

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    if-lez v5, :cond_a

    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    invoke-virtual {p0, v2}, Lcom/google/android/material/chip/SeslExpansionButton;->setVisibility(I)V

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_a

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    iput-boolean v1, v0, Lcom/google/android/material/chip/SeslExpansionButton;->mAutoDisappear:Z

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    new-array v3, v0, [Landroid/view/View;

    iget-boolean v4, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mIsRtl:Z

    move v5, v2

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_6
    move v4, v2

    move v5, v4

    :goto_4
    if-ge v4, v0, :cond_9

    aget-object v6, v3, v4

    iget-boolean v7, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mChipGroupInitialized:Z

    if-nez v7, :cond_7

    instance-of v7, v6, Lcom/google/android/material/chip/SeslChipGroup;

    if-eqz v7, :cond_7

    move-object v7, v6

    check-cast v7, Lcom/google/android/material/chip/SeslChipGroup;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v10

    add-int/2addr v10, v9

    sub-int/2addr v8, v10

    iput v8, v7, Lcom/google/android/material/chip/SeslChipGroup;->mChipMaxWidth:I

    iput-boolean v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mChipGroupInitialized:Z

    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v8}, Landroid/widget/HorizontalScrollView;->getId()I

    move-result v8

    if-eq v7, v8, :cond_8

    iget v8, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButtonContainerId:I

    if-eq v7, v8, :cond_8

    iget-object v8, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    if-eq v7, v8, :cond_8

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    move v5, v8

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollViewPos:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->updateScrollExpansionButton()V

    :cond_a
    :goto_5
    return-void
.end method

.method public final updateScrollExpansionButton()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->getScrollContentsWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingAllowed:Z

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    sub-int v2, v0, v2

    if-gt v2, v1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    if-le v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    invoke-virtual {v0, v5}, Lcom/google/android/material/chip/SeslExpansionButton;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    new-instance v1, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/chip/SeslExpandableContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    invoke-virtual {v0, v4}, Lcom/google/android/material/chip/SeslExpansionButton;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    invoke-virtual {v0, v5}, Lcom/google/android/material/chip/SeslExpansionButton;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    new-instance v1, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/chip/SeslExpandableContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    invoke-virtual {v0, v4}, Lcom/google/android/material/chip/SeslExpansionButton;->setVisibility(I)V

    :cond_7
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mFloatChangeAllowed:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingAllowed:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mIsRtl:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_a

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mIsRtl:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->getScrollContentsWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_9

    goto :goto_1

    :cond_9
    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    iput-boolean v5, p0, Lcom/google/android/material/chip/SeslExpansionButton;->mFloated:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    goto :goto_2

    :cond_a
    :goto_1
    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/chip/SeslExpansionButton;->mFloated:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    :cond_b
    :goto_2
    return-void
.end method
