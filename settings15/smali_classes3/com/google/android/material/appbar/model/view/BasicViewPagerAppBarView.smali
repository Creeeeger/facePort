.class public abstract Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;
.super Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Y\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0016\u0008\'\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0018\u001a\u00020\u0019H\u0004J\u000e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001cJ\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001cH\u0002J\u0018\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u001cH\u0002J\u000e\u0010\"\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u001cJ\u0010\u0010$\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001cH&J\u0016\u0010$\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020\u0014R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u0011*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \u0011*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0017\u00a8\u0006&"
    }
    d2 = {
        "Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;",
        "Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "deleteAlphaAnimator",
        "Landroid/animation/ValueAnimator;",
        "deleteAlphaDuration",
        "",
        "deleteAnimator",
        "Landroid/animation/AnimatorSet;",
        "deleteScaleAnimator",
        "deleteScaleDuration",
        "deleteScaleX",
        "Landroid/animation/PropertyValuesHolder;",
        "kotlin.jvm.PlatformType",
        "deleteScaleY",
        "isDeleteAnimatorRunning",
        "",
        "pageChangeCallback",
        "com/google/android/material/appbar/model/view/BasicViewPagerAppBarView$pageChangeCallback$1",
        "Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$pageChangeCallback$1;",
        "addIndicator",
        "",
        "initIndicator",
        "count",
        "",
        "internalRemoveItem",
        "index",
        "moveNextAndRemove",
        "viewPager",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "removeIndicator",
        "position",
        "removeItem",
        "animate",
        "material_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    const v0, 0x7f0c002a

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object p2, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$pageChangeCallback$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$pageChangeCallback$1;-><init>(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;)V

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->pageChangeCallback:Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$pageChangeCallback$1;

    return-void

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

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_4

    if-ltz p2, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p1, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-ne p2, v1, :cond_3

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

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    new-instance v0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;I)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->removeItem(I)V

    nop

    :cond_4
    :goto_1
    return-void
.end method

.method private static final moveNextAndRemove$lambda$11$lambda$10(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->isDeleteAnimatorRunning:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->removeItem(I)V

    return-void
.end method


# virtual methods
.method public final addIndicator()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getIndicator()Landroidx/appcompat/widget/SeslIndicator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslIndicator;->addIndicator()V

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

    invoke-virtual {p1, p0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

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

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

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

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

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
    invoke-static {p2}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAnimator:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-nez v1, :cond_4

    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    iget-object v6, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleX:Landroid/animation/PropertyValuesHolder;

    aput-object v6, v1, v3

    iget-object v6, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleY:Landroid/animation/PropertyValuesHolder;

    aput-object v6, v1, v4

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-wide v6, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleDuration:J

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c002b

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleAnimator:Landroid/animation/ValueAnimator;

    :cond_4
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v5, [Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_5

    aput-object v6, v5, v3

    iget-object v3, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v5, v4

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAnimator:Landroid/animation/AnimatorSet;

    goto :goto_1

    :cond_5
    const-string p0, "deleteScaleAnimator"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    new-instance v3, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$removeItem$1$1$3$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$removeItem$1$1$3$1;-><init>(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;Landroidx/viewpager2/widget/ViewPager2;I)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->deleteAnimator:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_7
    const-string p0, "deleteAnimator"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->internalRemoveItem(I)V

    :cond_9
    :goto_3
    return-void
.end method
