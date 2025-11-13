.class Landroid/widget/SearchView$UpdatableTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdatableTouchDelegate"
.end annotation


# instance fields
.field private final greylist-max-o mActualBounds:Landroid/graphics/Rect;

.field private greylist-max-o mDelegateTargeted:Z

.field private final greylist-max-o mDelegateView:Landroid/view/View;

.field private final greylist-max-o mSlop:I

.field private final greylist-max-o mSlopBounds:Landroid/graphics/Rect;

.field private final greylist-max-o mTargetBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 1
    .param p1, "targetBounds"    # Landroid/graphics/Rect;
    .param p2, "actualBounds"    # Landroid/graphics/Rect;
    .param p3, "delegateView"    # Landroid/view/View;

    .line 2235
    invoke-direct {p0, p1, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 2236
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    .line 2237
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    .line 2238
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 2239
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    .line 2240
    invoke-virtual {p0, p1, p2}, Landroid/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2241
    iput-object p3, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 2242
    return-void
.end method


# virtual methods
.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2254
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 2255
    .local v1, "y":I
    const/4 v2, 0x0

    .line 2256
    .local v2, "sendToDelegate":Z
    const/4 v3, 0x1

    .line 2257
    .local v3, "hit":Z
    const/4 v4, 0x0

    .line 2259
    .local v4, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 2276
    :pswitch_0
    iget-boolean v2, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    .line 2277
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    goto :goto_0

    .line 2268
    :pswitch_1
    iget-boolean v2, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    .line 2269
    if-eqz v2, :cond_0

    .line 2270
    iget-object v5, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2271
    const/4 v3, 0x0

    goto :goto_0

    .line 2261
    :pswitch_2
    iget-object v5, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2262
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    .line 2263
    const/4 v2, 0x1

    .line 2280
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 2281
    if-eqz v3, :cond_1

    iget-object v5, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2285
    iget-object v5, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 2286
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 2285
    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    .line 2289
    :cond_1
    iget-object v5, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget-object v6, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2292
    :goto_1
    iget-object v5, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 2294
    :cond_2
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "desiredBounds"    # Landroid/graphics/Rect;
    .param p2, "actualBounds"    # Landroid/graphics/Rect;

    .line 2245
    iget-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2246
    iget-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2247
    iget-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    neg-int v2, v1

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 2248
    iget-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2249
    return-void
.end method
