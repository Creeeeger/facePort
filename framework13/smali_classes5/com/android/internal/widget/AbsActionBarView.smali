.class public abstract Lcom/android/internal/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final blacklist FADE_DURATION:I = 0xc8

.field private static final blacklist sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field protected blacklist mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field protected blacklist mContentHeight:I

.field private blacklist mEatingHover:Z

.field private blacklist mEatingTouch:Z

.field protected blacklist mIsThemeDeviceDefaultFamily:Z

.field protected blacklist mMenuView:Landroid/widget/ActionMenuView;

.field protected final blacklist mPopupContext:Landroid/content/Context;

.field protected blacklist mSplitActionBar:Z

.field protected blacklist mSplitView:Landroid/view/ViewGroup;

.field protected blacklist mSplitWhenNarrow:Z

.field protected final blacklist mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

.field protected blacklist mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    .line 85
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 86
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101048d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    .line 94
    :goto_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 95
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v4, 0x11200b9

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 97
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mIsThemeDeviceDefaultFamily:Z

    .line 99
    .end local v1    # "outValue":Landroid/util/TypedValue;
    return-void
.end method

.method protected static blacklist next(IIZ)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "val"    # I
    .param p2, "isRtl"    # Z

    .line 332
    if-eqz p2, :cond_0

    sub-int v0, p0, p1

    goto :goto_0

    :cond_0
    add-int v0, p0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist animateToVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 255
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    .line 256
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 257
    return-void
.end method

.method public blacklist canShowOverflowMenu()Z
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-r dismissPopupMenus()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 318
    :cond_0
    return-void
.end method

.method public blacklist getAnimatedVisibility()I
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    return v0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public blacklist getContentHeight()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public blacklist hideOverflowMenu()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    return v0

    .line 288
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOverflowMenuShowPending()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    return v0

    .line 302
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOverflowMenuShowing()Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    return v0

    .line 295
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOverflowReserved()Z
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected blacklist measureChildView(Landroid/view/View;III)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .line 322
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 326
    sub-int/2addr p2, p4

    .line 328
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 103
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->ActionBar:[I

    const/4 v2, 0x0

    const v3, 0x10102ce

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setContentHeight(I)V

    .line 110
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    iget-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v1, p1}, Landroid/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 118
    :cond_1
    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 152
    .local v0, "action":I
    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 153
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingHover:Z

    .line 156
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingHover:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 157
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 158
    .local v3, "handled":Z
    if-ne v0, v2, :cond_1

    if-nez v3, :cond_1

    .line 159
    iput-boolean v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingHover:Z

    .line 163
    .end local v3    # "handled":Z
    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 165
    :cond_2
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingHover:Z

    .line 168
    :cond_3
    return v4
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 128
    .local v0, "action":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 129
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingTouch:Z

    .line 132
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 133
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 134
    .local v2, "handled":Z
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 135
    iput-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingTouch:Z

    .line 139
    .end local v2    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 140
    :cond_2
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingTouch:Z

    .line 143
    :cond_3
    return v3
.end method

.method protected blacklist positionChild(Landroid/view/View;IIIZ)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 337
    .local v0, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 338
    .local v1, "childHeight":I
    sub-int v2, p4, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    .line 340
    .local v2, "childTop":I
    if-eqz p5, :cond_0

    .line 341
    sub-int v3, p2, v0

    add-int v4, v2, v1

    invoke-virtual {p1, v3, v2, p2, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 343
    :cond_0
    add-int v3, p2, v0

    add-int v4, v2, v1

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 346
    :goto_0
    if-eqz p5, :cond_1

    neg-int v3, v0

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    return v3
.end method

.method public blacklist postShowOverflowMenu()V
    .locals 1

    .line 277
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$1;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 282
    return-void
.end method

.method public blacklist setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 188
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->requestLayout()V

    .line 190
    return-void
.end method

.method public blacklist setSplitToolbar(Z)V
    .locals 0
    .param p1, "split"    # Z

    .line 176
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    .line 177
    return-void
.end method

.method public blacklist setSplitView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    .line 197
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    .line 198
    return-void
.end method

.method public blacklist setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "splitWhenNarrow"    # Z

    .line 184
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    .line 185
    return-void
.end method

.method public whitelist setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 265
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 267
    :cond_1
    return-void
.end method

.method public blacklist setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
    .locals 7
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .line 211
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 215
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_3

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AbsActionBarView;->setAlpha(F)V

    .line 218
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v3, :cond_1

    .line 219
    invoke-virtual {v3, v0}, Landroid/widget/ActionMenuView;->setAlpha(F)V

    .line 222
    :cond_1
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v1

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 223
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 224
    sget-object v3, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 225
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v3, :cond_2

    .line 226
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 227
    .local v3, "set":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    aput v4, v2, v1

    invoke-static {v5, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 228
    .local v1, "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 229
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 230
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 231
    return-object v3

    .line 233
    .end local v1    # "splitAnim":Landroid/animation/ObjectAnimator;
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 234
    return-object v0

    .line 237
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_3
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v2, [F

    aput v0, v4, v1

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 238
    .local v3, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 239
    sget-object v4, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 240
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v4, :cond_4

    .line 241
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 242
    .local v4, "set":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    aput v0, v2, v1

    invoke-static {v5, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 243
    .local v0, "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 244
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 245
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 246
    return-object v4

    .line 248
    .end local v0    # "splitAnim":Landroid/animation/ObjectAnimator;
    .end local v4    # "set":Landroid/animation/AnimatorSet;
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    return-object v3
.end method

.method public blacklist showOverflowMenu()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    return v0

    .line 273
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
