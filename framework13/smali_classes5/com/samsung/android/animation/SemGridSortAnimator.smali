.class public Lcom/samsung/android/animation/SemGridSortAnimator;
.super Ljava/lang/Object;
.source "SemGridSortAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemGridSortAnimator$OnSortListener;
    }
.end annotation


# static fields
.field private static blacklist DELAY_BETWEEN_ANIMATIONS:I

.field private static final blacklist FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static blacklist FADE_IN_TRANSLATE_ANIMATION_DURATION:I

.field private static blacklist FADE_OUT_ANIMATION_DURATION:I

.field private static final blacklist FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field blacklist mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field final blacklist mGridView:Landroid/widget/GridView;

.field blacklist mOnSortListener:Lcom/samsung/android/animation/SemGridSortAnimator$OnSortListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mstartFadeInTranslateAnim(Lcom/samsung/android/animation/SemGridSortAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemGridSortAnimator;->startFadeInTranslateAnim()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    .line 56
    const/16 v0, 0x96

    sput v0, Lcom/samsung/android/animation/SemGridSortAnimator;->FADE_OUT_ANIMATION_DURATION:I

    .line 57
    const/16 v0, 0x190

    sput v0, Lcom/samsung/android/animation/SemGridSortAnimator;->FADE_IN_TRANSLATE_ANIMATION_DURATION:I

    .line 58
    const/16 v0, 0x46

    sput v0, Lcom/samsung/android/animation/SemGridSortAnimator;->DELAY_BETWEEN_ANIMATIONS:I

    .line 60
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemGridSortAnimator;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 61
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemGridSortAnimator;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/GridView;Lcom/samsung/android/animation/SemGridSortAnimator$OnSortListener;)V
    .locals 2
    .param p1, "list"    # Landroid/widget/GridView;
    .param p2, "onSortListener"    # Lcom/samsung/android/animation/SemGridSortAnimator$OnSortListener;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 77
    iput-object p1, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    .line 78
    iput-object p2, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mOnSortListener:Lcom/samsung/android/animation/SemGridSortAnimator$OnSortListener;

    .line 79
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constructor arguments should be non-null references."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist startFadeInTranslateAnim()V
    .locals 10

    .line 148
    iget-object v0, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 149
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 150
    .local v1, "columnCount":I
    const/4 v2, 0x0

    .line 151
    .local v2, "childHeight":I
    if-lez v0, :cond_0

    .line 152
    iget-object v3, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 154
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_2

    .line 155
    iget-object v5, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v5, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 156
    .local v5, "child":Landroid/view/View;
    rem-int v6, v3, v1

    .line 157
    .local v6, "columnIndex":I
    int-to-float v7, v2

    neg-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 158
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 159
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    .line 160
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 161
    invoke-virtual {v8, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 162
    invoke-virtual {v7, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget v7, Lcom/samsung/android/animation/SemGridSortAnimator;->FADE_IN_TRANSLATE_ANIMATION_DURATION:I

    int-to-long v7, v7

    .line 163
    invoke-virtual {v4, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget v7, Lcom/samsung/android/animation/SemGridSortAnimator;->DELAY_BETWEEN_ANIMATIONS:I

    mul-int/2addr v7, v6

    int-to-long v7, v7

    .line 164
    invoke-virtual {v4, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v7, Lcom/samsung/android/animation/SemGridSortAnimator;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 165
    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 166
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 167
    add-int/lit8 v4, v0, -0x1

    if-ne v3, v4, :cond_1

    .line 168
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v7, Lcom/samsung/android/animation/SemGridSortAnimator$3;

    invoke-direct {v7, p0}, Lcom/samsung/android/animation/SemGridSortAnimator$3;-><init>(Lcom/samsung/android/animation/SemGridSortAnimator;)V

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 154
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "columnIndex":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    .end local v3    # "i":I
    :cond_2
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v3, :cond_3

    .line 180
    invoke-interface {v3, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 182
    :cond_3
    return-void
.end method


# virtual methods
.method public blacklist setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 196
    iput-object p1, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 197
    return-void
.end method

.method public whitelist sortTheGrid()V
    .locals 7

    .line 85
    iget-object v0, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 87
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v1, :cond_0

    .line 88
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 91
    :cond_0
    if-nez v0, :cond_1

    .line 94
    iget-object v1, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mOnSortListener:Lcom/samsung/android/animation/SemGridSortAnimator$OnSortListener;

    invoke-interface {v1}, Lcom/samsung/android/animation/SemGridSortAnimator$OnSortListener;->onSort()V

    .line 95
    iget-object v1, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->invalidate()V

    .line 97
    iget-object v1, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/animation/SemGridSortAnimator$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/animation/SemGridSortAnimator$1;-><init>(Lcom/samsung/android/animation/SemGridSortAnimator;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 105
    return-void

    .line 109
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 110
    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 111
    .local v2, "isLastChild":Z
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 112
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    .line 113
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget v5, Lcom/samsung/android/animation/SemGridSortAnimator;->FADE_OUT_ANIMATION_DURATION:I

    int-to-long v5, v5

    .line 114
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 115
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/animation/SemGridSortAnimator;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 116
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/animation/SemGridSortAnimator$2;

    invoke-direct {v5, p0, v2, v3}, Lcom/samsung/android/animation/SemGridSortAnimator$2;-><init>(Lcom/samsung/android/animation/SemGridSortAnimator;ZLandroid/view/View;)V

    .line 117
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 143
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 109
    .end local v2    # "isLastChild":Z
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "i":I
    :cond_3
    return-void
.end method
