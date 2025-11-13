.class public abstract Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;
.super Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final deleteAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final deleteAlphaDuration:J

.field private deleteAnimator:Landroid/animation/AnimatorSet;

.field private deleteScaleAnimator:Landroid/animation/ValueAnimator;

.field private final deleteScaleDuration:J

.field private final deleteScaleX:Landroid/animation/PropertyValuesHolder;

.field private final deleteScaleY:Landroid/animation/PropertyValuesHolder;

.field private isDeleteAnimatorRunning:Z

.field private final pageChangeCallback:Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$pageChangeCallback$1;


# direct methods
.method public static synthetic $r8$lambda$cBIZGnMedDKUJNYRyI-guQz9fMI(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->moveNextAndRemove$lambda$11$lambda$10(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleDuration:J

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAlphaDuration:J

    sget-object p2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleX:Landroid/animation/PropertyValuesHolder;

    sget-object p2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {p2, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleY:Landroid/animation/PropertyValuesHolder;

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    invoke-static {v3, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const v0, 0x7f0c0028

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object p2, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$pageChangeCallback$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$pageChangeCallback$1;-><init>(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;)V

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->pageChangeCallback:Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$pageChangeCallback$1;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$isDeleteAnimatorRunning$p(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->isDeleteAnimatorRunning:Z

    return p0
.end method

.method public static final synthetic access$moveNextAndRemove(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->moveNextAndRemove(Landroidx/viewpager2/widget/ViewPager2;I)V

    return-void
.end method

.method private final internalRemoveItem(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->removeItem(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->removeIndicator(I)V

    return-void
.end method

.method private final moveNextAndRemove(Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 3

    iget-object v0, p1, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_5

    if-ltz p2, :cond_5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p1, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-ne p2, v1, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ne p2, v1, :cond_1

    add-int/lit8 v0, p2, -0x1

    goto :goto_0

    :cond_1
    if-ge p2, v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->isDeleteAnimatorRunning:Z

    iget-object v1, p1, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

    iget-object v1, v1, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    iget-boolean v1, v1, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    if-nez v1, :cond_3

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItemInternal(I)V

    new-instance v0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;I)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot change current item when ViewPager2 is fake dragging"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->removeItem(I)V

    nop

    :cond_5
    :goto_1
    return-void
.end method

.method private static final moveNextAndRemove$lambda$11$lambda$10(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->isDeleteAnimatorRunning:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->removeItem(I)V

    return-void
.end method


# virtual methods
.method public final addIndicator()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getIndicator()Landroidx/appcompat/widget/SeslIndicator;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Landroidx/appcompat/widget/SeslIndicator;->defaultCircle:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->defaultCircle:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, v0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->isActive:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->setActive(Z)V

    iget-object v1, p0, Landroidx/appcompat/widget/SeslIndicator;->selectCircle:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->selectCircle:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, v0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->isActive:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->setActive(Z)V

    new-instance v1, Landroidx/appcompat/widget/SeslIndicator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SeslIndicator$$ExternalSyntheticLambda1;-><init>(Landroidx/appcompat/widget/SeslIndicator;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Landroidx/appcompat/widget/SeslIndicator;->indicator:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/appcompat/widget/SeslIndicator$addIndicator$1;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/SeslIndicator$addIndicator$1;-><init>(Landroidx/appcompat/widget/SeslIndicator;Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07135e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Landroidx/appcompat/widget/SeslIndicator;->selectedPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/SeslIndicator;->setSelectedPosition(I)V

    :cond_0
    return-void
.end method

.method public final initIndicator(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->addIndicator()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getViewpager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->pageChangeCallback:Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$pageChangeCallback$1;

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object p1, p1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final removeIndicator(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getIndicator()Landroidx/appcompat/widget/SeslIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslIndicator;->removeIndicator(I)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getViewpager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslIndicator;->removeIndicator(I)V

    :cond_0
    return-void
.end method

.method public abstract removeItem(I)V
.end method

.method public final removeItem(IZ)V
    .locals 8

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->internalRemoveItem(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getViewpager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object v0, p2, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_9

    if-ltz p1, :cond_9

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_9

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroidx/core/view/ViewGroupKt;->get(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_8

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAnimator:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-nez v2, :cond_4

    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    iget-object v6, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleX:Landroid/animation/PropertyValuesHolder;

    aput-object v6, v2, v0

    iget-object v6, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleY:Landroid/animation/PropertyValuesHolder;

    aput-object v6, v2, v4

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-wide v6, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleDuration:J

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0029

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleAnimator:Landroid/animation/ValueAnimator;

    :cond_4
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v5, [Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleAnimator:Landroid/animation/ValueAnimator;

    if-nez v6, :cond_5

    move-object v6, v3

    :cond_5
    aput-object v6, v5, v0

    iget-object v0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v0, v5, v4

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAnimator:Landroid/animation/AnimatorSet;

    :cond_6
    iget-object v0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    new-instance v2, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$removeItem$1$1$3$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$removeItem$1$1$3$1;-><init>(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;Landroidx/viewpager2/widget/ViewPager2;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAnimator:Landroid/animation/AnimatorSet;

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    move-object v3, p0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_8
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->internalRemoveItem(I)V

    :cond_9
    :goto_3
    return-void
.end method
