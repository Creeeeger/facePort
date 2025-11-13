.class public Landroid/widget/ViewAnimator;
.super Landroid/widget/FrameLayout;
.source "ViewAnimator.java"


# instance fields
.field greylist-max-o mAnimateFirstTime:Z

.field greylist mFirstTime:Z

.field greylist-max-o mInAnimation:Landroid/view/animation/Animation;

.field greylist-max-o mOutAnimation:Landroid/view/animation/Animation;

.field greylist mWhichChild:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 47
    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ViewAnimator;->initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 47
    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 60
    sget-object v2, Lcom/android/internal/R$styleable;->ViewAnimator:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 61
    .local v2, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->ViewAnimator:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/ViewAnimator;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 64
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 65
    .local v3, "resource":I
    if-lez v3, :cond_0

    .line 66
    invoke-virtual {p0, p1, v3}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    .line 69
    :cond_0
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 70
    .end local v3    # "resource":I
    .local v0, "resource":I
    if-lez v0, :cond_1

    .line 71
    invoke-virtual {p0, p1, v0}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    .line 74
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 75
    .local v1, "flag":Z
    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setAnimateFirstView(Z)V

    .line 77
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;->initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method private greylist-max-o initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 87
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 89
    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mMeasureAllChildren:Z

    .line 90
    return-void

    .line 95
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 97
    .local v1, "a":Landroid/content/res/TypedArray;
    sget-object v4, Lcom/android/internal/R$styleable;->FrameLayout:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v1

    invoke-virtual/range {v2 .. v8}, Landroid/widget/ViewAnimator;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 99
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 101
    .local v0, "measureAllChildren":Z
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setMeasureAllChildren(Z)V

    .line 102
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 194
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 198
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :goto_0
    if-ltz p2, :cond_1

    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-lt v0, p2, :cond_1

    .line 202
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 204
    :cond_1
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 375
    const-class v0, Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAnimateFirstView()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    return v0
.end method

.method public whitelist getBaseline()I
    .locals 1

    .line 370
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBaseline()I

    move-result v0

    :goto_0
    return v0
.end method

.method public whitelist getCurrentView()Landroid/view/View;
    .locals 1

    .line 264
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayedChild()I
    .locals 1

    .line 131
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    return v0
.end method

.method public whitelist getInAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 277
    iget-object v0, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public whitelist getOutAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 302
    iget-object v0, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public whitelist removeAllViews()V
    .locals 1

    .line 208
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 211
    return-void
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 215
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 216
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 217
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->removeViewAt(I)V

    .line 219
    :cond_0
    return-void
.end method

.method public whitelist removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .line 223
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 224
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    .line 225
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 226
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 227
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    goto :goto_0

    .line 228
    :cond_0
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-lt v1, v0, :cond_1

    .line 230
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0

    .line 231
    :cond_1
    if-ne v1, p1, :cond_2

    .line 233
    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 235
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 238
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->removeView(Landroid/view/View;)V

    .line 239
    return-void
.end method

.method public whitelist removeViews(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 242
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    .line 243
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    goto :goto_0

    .line 246
    :cond_0
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-lt v0, p1, :cond_1

    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 248
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 250
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist removeViewsInLayout(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 253
    invoke-virtual {p0, p1, p2}, Landroid/widget/ViewAnimator;->removeViews(II)V

    .line 254
    return-void
.end method

.method public whitelist setAnimateFirstView(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .line 365
    iput-boolean p1, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 366
    return-void
.end method

.method public whitelist setDisplayedChild(I)V
    .locals 3
    .param p1, "whichChild"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 112
    iput p1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 113
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_0

    .line 114
    iput v2, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    goto :goto_0

    .line 115
    :cond_0
    if-gez p1, :cond_1

    .line 116
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 118
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    move v0, v1

    .line 120
    .local v0, "hasFocus":Z
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->showOnly(I)V

    .line 121
    if-eqz v0, :cond_3

    .line 123
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->requestFocus(I)Z

    .line 125
    :cond_3
    return-void
.end method

.method public whitelist setInAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .line 327
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 328
    return-void
.end method

.method public whitelist setInAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "inAnimation"    # Landroid/view/animation/Animation;

    .line 289
    iput-object p1, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    .line 290
    return-void
.end method

.method public whitelist setOutAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .line 340
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 341
    return-void
.end method

.method public whitelist setOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "outAnimation"    # Landroid/view/animation/Animation;

    .line 314
    iput-object p1, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    .line 315
    return-void
.end method

.method public whitelist showNext()V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 139
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 140
    return-void
.end method

.method greylist-max-o showOnly(I)V
    .locals 1
    .param p1, "childIndex"    # I

    .line 188
    iget-boolean v0, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 189
    .local v0, "animate":Z
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/widget/ViewAnimator;->showOnly(IZ)V

    .line 190
    return-void
.end method

.method greylist-max-r showOnly(IZ)V
    .locals 5
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    .line 162
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    .line 163
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 164
    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 165
    .local v2, "child":Landroid/view/View;
    if-ne v1, p1, :cond_1

    .line 166
    if-eqz p2, :cond_0

    iget-object v3, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_0

    .line 167
    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 169
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iput-boolean v3, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    goto :goto_2

    .line 172
    :cond_1
    if-eqz p2, :cond_2

    iget-object v3, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 173
    iget-object v3, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 174
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    if-ne v3, v4, :cond_3

    .line 175
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 176
    :cond_3
    :goto_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .end local v2    # "child":Landroid/view/View;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public whitelist showPrevious()V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 147
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 148
    return-void
.end method
