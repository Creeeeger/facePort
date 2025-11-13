.class public Lcom/samsung/android/animation/SemListSortAnimator;
.super Ljava/lang/Object;
.source "SemListSortAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemListSortAnimator$OnSortListener;
    }
.end annotation


# static fields
.field private static final blacklist ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static blacklist DELAY_BETWEEN_ANIMATIONS:I

.field private static blacklist FADE_IN_TRANSLATE_ANIMATION_DURATION:I

.field private static blacklist FADE_OUT_ANIMATION_DURATION:I


# instance fields
.field blacklist mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field final blacklist mListView:Landroid/widget/ListView;

.field blacklist mOnSortListener:Lcom/samsung/android/animation/SemListSortAnimator$OnSortListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mstartFadeInTranslateAnim(Lcom/samsung/android/animation/SemListSortAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemListSortAnimator;->startFadeInTranslateAnim()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 56
    const/16 v0, 0x96

    sput v0, Lcom/samsung/android/animation/SemListSortAnimator;->FADE_OUT_ANIMATION_DURATION:I

    .line 57
    const/16 v0, 0x12c

    sput v0, Lcom/samsung/android/animation/SemListSortAnimator;->FADE_IN_TRANSLATE_ANIMATION_DURATION:I

    .line 58
    const/16 v0, 0x64

    sput v0, Lcom/samsung/android/animation/SemListSortAnimator;->DELAY_BETWEEN_ANIMATIONS:I

    .line 60
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemListSortAnimator;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 61
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemListSortAnimator;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/ListView;Lcom/samsung/android/animation/SemListSortAnimator$OnSortListener;)V
    .locals 2
    .param p1, "list"    # Landroid/widget/ListView;
    .param p2, "onSortListener"    # Lcom/samsung/android/animation/SemListSortAnimator$OnSortListener;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 77
    iput-object p1, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    .line 78
    iput-object p2, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mOnSortListener:Lcom/samsung/android/animation/SemListSortAnimator$OnSortListener;

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
    .locals 8

    .line 147
    iget-object v0, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 148
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 149
    .local v1, "childHeight":I
    iget-object v2, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 152
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_2

    .line 153
    iget-object v4, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 154
    .local v4, "child":Landroid/view/View;
    int-to-float v5, v1

    neg-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 155
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 156
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    .line 157
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 158
    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 159
    invoke-virtual {v5, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget v5, Lcom/samsung/android/animation/SemListSortAnimator;->FADE_IN_TRANSLATE_ANIMATION_DURATION:I

    int-to-long v5, v5

    .line 160
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget v5, Lcom/samsung/android/animation/SemListSortAnimator;->DELAY_BETWEEN_ANIMATIONS:I

    mul-int/2addr v5, v2

    int-to-long v5, v5

    .line 161
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/animation/SemListSortAnimator;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 162
    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 163
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 164
    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    .line 165
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/animation/SemListSortAnimator$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/animation/SemListSortAnimator$3;-><init>(Lcom/samsung/android/animation/SemListSortAnimator;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 152
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "i":I
    :cond_2
    if-nez v0, :cond_3

    .line 177
    iget-object v2, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v2, :cond_3

    .line 178
    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 181
    :cond_3
    return-void
.end method


# virtual methods
.method public blacklist setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 195
    iput-object p1, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 196
    return-void
.end method

.method public whitelist sortTheList()V
    .locals 7

    .line 85
    iget-object v0, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 87
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v1, :cond_0

    .line 88
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 91
    :cond_0
    if-nez v0, :cond_1

    .line 93
    iget-object v1, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mOnSortListener:Lcom/samsung/android/animation/SemListSortAnimator$OnSortListener;

    invoke-interface {v1}, Lcom/samsung/android/animation/SemListSortAnimator$OnSortListener;->onSort()V

    .line 94
    iget-object v1, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 96
    iget-object v1, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/animation/SemListSortAnimator$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/animation/SemListSortAnimator$1;-><init>(Lcom/samsung/android/animation/SemListSortAnimator;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 104
    return-void

    .line 108
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 109
    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 110
    .local v2, "isLastChild":Z
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 111
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    .line 112
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget v5, Lcom/samsung/android/animation/SemListSortAnimator;->FADE_OUT_ANIMATION_DURATION:I

    int-to-long v5, v5

    .line 113
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 114
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/animation/SemListSortAnimator;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 115
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/animation/SemListSortAnimator$2;

    invoke-direct {v5, p0, v2, v3}, Lcom/samsung/android/animation/SemListSortAnimator$2;-><init>(Lcom/samsung/android/animation/SemListSortAnimator;ZLandroid/view/View;)V

    .line 116
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 142
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 108
    .end local v2    # "isLastChild":Z
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "i":I
    :cond_3
    return-void
.end method
