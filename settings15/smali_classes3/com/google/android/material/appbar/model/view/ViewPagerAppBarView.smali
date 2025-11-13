.class public Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;
.super Lcom/google/android/material/appbar/model/view/AppBarView;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0017\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u001f2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006!"
    }
    d2 = {
        "Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;",
        "Lcom/google/android/material/appbar/model/view/AppBarView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "bottomLayout",
        "Landroid/view/ViewGroup;",
        "getBottomLayout",
        "()Landroid/view/ViewGroup;",
        "setBottomLayout",
        "(Landroid/view/ViewGroup;)V",
        "indicator",
        "Landroidx/appcompat/widget/SeslIndicator;",
        "getIndicator",
        "()Landroidx/appcompat/widget/SeslIndicator;",
        "setIndicator",
        "(Landroidx/appcompat/widget/SeslIndicator;)V",
        "viewpager",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "getViewpager",
        "()Landroidx/viewpager2/widget/ViewPager2;",
        "setViewpager",
        "(Landroidx/viewpager2/widget/ViewPager2;)V",
        "getViewPagerBackgroundColorStateList",
        "Landroid/content/res/ColorStateList;",
        "getViewPagerIndicatorOffColor",
        "",
        "getViewPagerIndicatorOnColor",
        "inflate",
        "",
        "updateResource",
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
.field private bottomLayout:Landroid/view/ViewGroup;

.field private indicator:Landroidx/appcompat/widget/SeslIndicator;

.field private viewpager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->inflate()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getViewPagerBackgroundColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isDefaultTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0609aa

    goto :goto_0

    :cond_0
    const p0, 0x7f0609ab

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    const p0, 0x7f0609ac

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    const-string/jumbo p1, "valueOf(\n            Ses\u2026)\n            )\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getViewPagerIndicatorOffColor(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isDefaultTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0607cc

    goto :goto_0

    :cond_0
    const p0, 0x7f0607cd

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f0607cf

    goto :goto_0

    :cond_2
    const p0, 0x7f0607ce

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private final getViewPagerIndicatorOnColor(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isDefaultTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    const p0, 0x7f0607d2

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    const p0, 0x7f0607d3

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getBottomLayout()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->bottomLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getIndicator()Landroidx/appcompat/widget/SeslIndicator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->indicator:Landroidx/appcompat/widget/SeslIndicator;

    return-object p0
.end method

.method public final getViewpager()Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method public inflate()V
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0abd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    const v3, 0x7f0a0105

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v3, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    const v3, 0x7f0a024a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->bottomLayout:Landroid/view/ViewGroup;

    new-instance v3, Landroidx/appcompat/widget/SeslIndicator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "context"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v3, Landroidx/appcompat/widget/SeslIndicator;->indicator:Ljava/util/List;

    const v9, 0x7f080cab

    invoke-virtual {v6, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-static {v6}, Landroidx/appcompat/util/SeslMisc;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {v6}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    const v11, 0x7f0607cc

    goto :goto_1

    :cond_2
    const v11, 0x7f0607cd

    goto :goto_1

    :cond_3
    invoke-static {v6}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_4

    const v11, 0x7f0607cf

    goto :goto_1

    :cond_4
    const v11, 0x7f0607ce

    :goto_1
    invoke-virtual {v6, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_2

    :cond_5
    move-object v10, v5

    :goto_2
    iput-object v10, v3, Landroidx/appcompat/widget/SeslIndicator;->defaultCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-static {v6}, Landroidx/appcompat/util/SeslMisc;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v6}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    const v10, 0x7f0607d2

    goto :goto_3

    :cond_6
    invoke-static {v6}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    const v10, 0x7f0607d3

    :goto_3
    invoke-virtual {v6, v10}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_4

    :cond_7
    move-object v9, v5

    :goto_4
    iput-object v9, v3, Landroidx/appcompat/widget/SeslIndicator;->selectCircle:Landroid/graphics/drawable/Drawable;

    const/4 v6, -0x1

    iput v6, v3, Landroidx/appcompat/widget/SeslIndicator;->selectedPosition:I

    new-instance v6, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView$inflate$1$1;

    invoke-direct {v6, p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView$inflate$1$1;-><init>(Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;)V

    iput-object v6, v3, Landroidx/appcompat/widget/SeslIndicator;->itemClickListener:Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView$inflate$1$1;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;

    new-instance v10, Landroidx/appcompat/widget/SeslIndicator$$ExternalSyntheticLambda0;

    invoke-direct {v10, v6, v3}, Landroidx/appcompat/widget/SeslIndicator$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView$inflate$1$1;Landroidx/appcompat/widget/SeslIndicator;)V

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_8
    iput-object v3, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->indicator:Landroidx/appcompat/widget/SeslIndicator;

    iget-object v3, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v3, :cond_b

    iput-boolean v1, v3, Landroidx/viewpager2/widget/ViewPager2;->mIsSuggestionPagingEnabled:Z

    iget-object v6, v3, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectEnabled(Z)V

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v8, 0x190

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, v3, Landroidx/viewpager2/widget/ViewPager2;->mSuggestionStartDragAnimator:Landroid/animation/ValueAnimator;

    sget-object v10, Landroidx/viewpager2/widget/ViewPager2;->CONTAINER_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, v3, Landroidx/viewpager2/widget/ViewPager2;->mSuggestionStartDragAnimator:Landroid/animation/ValueAnimator;

    new-instance v11, Landroidx/viewpager2/widget/ViewPager2$5;

    invoke-direct {v11, v3, v4}, Landroidx/viewpager2/widget/ViewPager2$5;-><init>(Landroidx/viewpager2/widget/ViewPager2;I)V

    invoke-virtual {v6, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v3, Landroidx/viewpager2/widget/ViewPager2;->mSuggestionReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v3, Landroidx/viewpager2/widget/ViewPager2;->mSuggestionReleaseAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroidx/viewpager2/widget/ViewPager2$5;

    invoke-direct {v6, v3, v1}, Landroidx/viewpager2/widget/ViewPager2$5;-><init>(Landroidx/viewpager2/widget/ViewPager2;I)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v3, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v3, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_9
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080caa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_a
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->bottomLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    iget-object v3, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->indicator:Landroidx/appcompat/widget/SeslIndicator;

    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->updateResource(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
    .end array-data

    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final setBottomLayout(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->bottomLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public final setIndicator(Landroidx/appcompat/widget/SeslIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->indicator:Landroidx/appcompat/widget/SeslIndicator;

    return-void
.end method

.method public final setViewpager(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public updateResource(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getViewPagerBackgroundColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->indicator:Landroidx/appcompat/widget/SeslIndicator;

    if-eqz v0, :cond_3

    const v1, 0x7f080cab

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getViewPagerIndicatorOffColor(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SeslIndicator;->setDefaultCircle(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getViewPagerIndicatorOnColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object v3, v1

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/SeslIndicator;->setSelectCircle(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method
