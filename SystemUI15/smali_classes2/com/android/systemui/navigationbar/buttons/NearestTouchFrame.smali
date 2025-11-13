.class public Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAttachedChildren:Ljava/util/List;

.field public final mChildRegionComparator:Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame$$ExternalSyntheticLambda0;

.field public final mClickableChildren:Ljava/util/List;

.field public final mIsActive:Z

.field public mIsVertical:Z

.field public final mOffset:[I

.field public final mTmpInt:[I

.field public final mTouchableRegions:Ljava/util/Map;

.field public mTouchingChild:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/Configuration;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mClickableChildren:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mAttachedChildren:Ljava/util/List;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTmpInt:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mOffset:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTouchableRegions:Ljava/util/Map;

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mChildRegionComparator:Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame$$ExternalSyntheticLambda0;

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget p3, p3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-ge p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    iput-boolean p3, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mIsActive:Z

    const p3, 0x7f04035a

    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mIsVertical:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final addClickableChildren(Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mClickableChildren:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->addClickableChildren(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mClickableChildren:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mAttachedChildren:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTouchableRegions:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0, p0}, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->addClickableChildren(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mOffset:[I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mClickableChildren:Ljava/util/List;

    iget-object p2, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mChildRegionComparator:Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame$$ExternalSyntheticLambda0;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mClickableChildren:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mAttachedChildren:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame$$ExternalSyntheticLambda2;

    invoke-direct {p3, p2}, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object p3, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mAttachedChildren:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_9

    iget-object p3, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mAttachedChildren:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p4

    if-nez p4, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object p4, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTmpInt:[I

    invoke-virtual {p3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object p4, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTmpInt:[I

    aget p5, p4, p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mOffset:[I

    aget v1, v0, p1

    sub-int/2addr p5, v1

    const/4 v1, 0x1

    aget p4, p4, v1

    aget v0, v0, v1

    sub-int/2addr p4, v0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p4

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p5, p4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-nez p2, :cond_3

    iget-boolean p4, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mIsVertical:Z

    if-eqz p4, :cond_2

    iput p1, v3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_2
    iput p1, v3, Landroid/graphics/Rect;->left:I

    :goto_1
    iget-object p4, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTouchableRegions:Ljava/util/Map;

    check-cast p4, Ljava/util/HashMap;

    invoke-virtual {p4, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_3
    iget-object p4, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mAttachedChildren:Ljava/util/List;

    add-int/lit8 p5, p2, -0x1

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    iget-object p5, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTouchableRegions:Ljava/util/Map;

    check-cast p5, Ljava/util/HashMap;

    invoke-virtual {p5, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    iget-boolean p5, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mIsVertical:Z

    if-eqz p5, :cond_5

    iget p5, v3, Landroid/graphics/Rect;->top:I

    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p5, v0

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr p5, v4

    iput p5, v3, Landroid/graphics/Rect;->top:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    move p5, v1

    goto :goto_2

    :cond_4
    move p5, p1

    :goto_2
    sub-int/2addr v4, p5

    add-int/2addr v4, v0

    iput v4, p4, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_5
    iget p5, v3, Landroid/graphics/Rect;->left:I

    iget v0, p4, Landroid/graphics/Rect;->right:I

    sub-int v2, p5, v0

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr p5, v4

    iput p5, v3, Landroid/graphics/Rect;->left:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    move p5, v1

    goto :goto_3

    :cond_6
    move p5, p1

    :goto_3
    sub-int/2addr v4, p5

    add-int/2addr v4, v0

    iput v4, p4, Landroid/graphics/Rect;->right:I

    :goto_4
    iget-object p4, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mClickableChildren:Ljava/util/List;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v1

    if-ne p2, p4, :cond_8

    iget-boolean p4, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mIsVertical:Z

    if-eqz p4, :cond_7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    iput p4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    iput p4, v3, Landroid/graphics/Rect;->right:I

    :cond_8
    :goto_5
    iget-object p4, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTouchableRegions:Ljava/util/Map;

    check-cast p4, Ljava/util/HashMap;

    invoke-virtual {p4, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_7
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mIsActive:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mClickableChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;II)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTouchingChild:Landroid/view/View;

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTouchingChild:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget-object v2, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTouchingChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTouchingChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTouchingChild:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setIsVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mIsVertical:Z

    return-void
.end method
