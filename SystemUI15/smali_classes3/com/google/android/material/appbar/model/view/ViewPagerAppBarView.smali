.class public Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;
.super Lcom/google/android/material/appbar/model/view/AppBarView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private bottomLayout:Landroid/view/ViewGroup;

.field private indicator:Landroidx/appcompat/widget/SeslIndicator;

.field private viewpager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/AppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    .locals 4

    sget-object p0, Landroidx/appcompat/util/theme/SeslThemeResourceHelper;->Companion:Landroidx/appcompat/util/theme/SeslThemeResourceHelper$Companion;

    new-instance v0, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;

    new-instance v1, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;

    const v2, 0x7f060870

    const v3, 0x7f060871

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;-><init>(II)V

    new-instance v2, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;

    const v3, 0x7f060872

    invoke-direct {v2, v3}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;-><init>(I)V

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;-><init>(Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Landroidx/appcompat/util/theme/SeslThemeResourceHelper$Companion;->getColorInt(Landroid/content/Context;Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private final getViewPagerIndicatorOffColor(Landroid/content/Context;)I
    .locals 5

    sget-object p0, Landroidx/appcompat/util/theme/SeslThemeResourceHelper;->Companion:Landroidx/appcompat/util/theme/SeslThemeResourceHelper$Companion;

    new-instance v0, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;

    new-instance v1, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;

    const v2, 0x7f0606c5

    const v3, 0x7f0606c6

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;-><init>(II)V

    new-instance v2, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;

    const v3, 0x7f0606c8

    const v4, 0x7f0606c7

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;-><init>(II)V

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;-><init>(Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Landroidx/appcompat/util/theme/SeslThemeResourceHelper$Companion;->getColorInt(Landroid/content/Context;Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;)I

    move-result p0

    return p0
.end method

.method private final getViewPagerIndicatorOnColor(Landroid/content/Context;)I
    .locals 4

    sget-object p0, Landroidx/appcompat/util/theme/SeslThemeResourceHelper;->Companion:Landroidx/appcompat/util/theme/SeslThemeResourceHelper$Companion;

    new-instance v0, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;

    new-instance v1, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;

    const v2, 0x7f0606cb

    invoke-direct {v1, v2}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;-><init>(I)V

    new-instance v2, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;

    const v3, 0x7f0606cc

    invoke-direct {v2, v3}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;-><init>(I)V

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;-><init>(Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Landroidx/appcompat/util/theme/SeslThemeResourceHelper$Companion;->getColorInt(Landroid/content/Context;Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;)I

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
    .locals 10

    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d03e0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    const v2, 0x7f0a00ef

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v2, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    const v2, 0x7f0a01ac

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->bottomLayout:Landroid/view/ViewGroup;

    new-instance v2, Landroidx/appcompat/widget/SeslIndicator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, v4, v0, v4}, Landroidx/appcompat/widget/SeslIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView$inflate$1$1;

    invoke-direct {v5, p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView$inflate$1$1;-><init>(Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;)V

    iput-object v5, v2, Landroidx/appcompat/widget/SeslIndicator;->itemClickListener:Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView$inflate$1$1;

    iget-object v6, v2, Landroidx/appcompat/widget/SeslIndicator;->indicator:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;

    new-instance v8, Landroidx/appcompat/widget/SeslIndicator$$ExternalSyntheticLambda0;

    invoke-direct {v8, v5, v2}, Landroidx/appcompat/widget/SeslIndicator$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView$inflate$1$1;Landroidx/appcompat/widget/SeslIndicator;)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->indicator:Landroidx/appcompat/widget/SeslIndicator;

    iget-object v2, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v2, :cond_6

    const/4 v5, 0x1

    iput-boolean v5, v2, Landroidx/viewpager2/widget/ViewPager2;->mIsSuggestionPagingEnabled:Z

    iget-object v5, v2, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    iget-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mIsEdgeEffectEnabled:Z

    if-eqz v6, :cond_3

    iput-boolean v3, v5, Landroidx/recyclerview/widget/RecyclerView;->mIsEdgeEffectEnabled:Z

    :cond_3
    new-array v5, v0, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, v2, Landroidx/viewpager2/widget/ViewPager2;->mSuggestionStartDragAnimator:Landroid/animation/ValueAnimator;

    sget-object v8, Landroidx/viewpager2/widget/ViewPager2;->CONTAINER_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, v2, Landroidx/viewpager2/widget/ViewPager2;->mSuggestionStartDragAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Landroidx/viewpager2/widget/ViewPager2$5;

    invoke-direct {v9, v2}, Landroidx/viewpager2/widget/ViewPager2$5;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v2, Landroidx/viewpager2/widget/ViewPager2;->mSuggestionReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v2, Landroidx/viewpager2/widget/ViewPager2;->mSuggestionReleaseAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroidx/viewpager2/widget/ViewPager2$6;

    invoke-direct {v5, v2}, Landroidx/viewpager2/widget/ViewPager2$6;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v2, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v2, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f08121a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_5
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->bottomLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->indicator:Landroidx/appcompat/widget/SeslIndicator;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->updateResource(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

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

    const v1, 0x7f08121b

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
