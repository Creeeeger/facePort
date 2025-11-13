.class Landroid/widget/Editor$InsertionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionHandleView"
.end annotation


# instance fields
.field private final blacklist mDeltaHeight:I

.field private final blacklist mDrawableOpacity:I

.field private greylist-max-o mHider:Ljava/lang/Runnable;

.field private blacklist mIsInActionMode:Z

.field private blacklist mIsTouchDown:Z

.field private blacklist mLastDownRawX:F

.field private blacklist mLastDownRawY:F

.field private blacklist mLastUpTime:J

.field private blacklist mOffsetChanged:Z

.field private blacklist mOffsetDown:I

.field private blacklist mPendingDismissOnUp:Z

.field private blacklist mTouchDownX:F

.field private blacklist mTouchDownY:F

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 7227
    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 7228
    const v4, 0x102037c

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView-IA;)V

    .line 7202
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    .line 7204
    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    .line 7230
    const/4 v0, 0x0

    .line 7231
    .local v0, "deltaHeight":I
    const/16 v1, 0xff

    .line 7232
    .local v1, "opacity":I
    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7233
    const/16 p1, 0x19

    const-string/jumbo v2, "widget__insertion_handle_delta_height"

    invoke-static {v2, p1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result p1

    .line 7236
    .end local v0    # "deltaHeight":I
    .local p1, "deltaHeight":I
    const-string/jumbo v0, "widget__insertion_handle_opacity"

    const/16 v2, 0x32

    invoke-static {v0, v2}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    .line 7240
    .end local v1    # "opacity":I
    .local v0, "opacity":I
    const/16 v1, -0x19

    if-lt p1, v1, :cond_0

    if-le p1, v2, :cond_1

    .line 7241
    :cond_0
    const/16 p1, 0x19

    .line 7243
    :cond_1
    const/16 v1, 0xa

    const/16 v2, 0x64

    if-lt v0, v1, :cond_2

    if-le v0, v2, :cond_3

    .line 7244
    :cond_2
    const/16 v0, 0x32

    .line 7247
    :cond_3
    mul-int/lit16 v1, v0, 0xff

    div-int/2addr v1, v2

    move v0, p1

    .line 7249
    .end local p1    # "deltaHeight":I
    .local v0, "deltaHeight":I
    .restart local v1    # "opacity":I
    :cond_4
    iput v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDeltaHeight:I

    .line 7250
    iput v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawableOpacity:I

    .line 7251
    return-void
.end method

.method private blacklist touchThrough(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 7384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 7385
    .local v0, "actionType":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 7399
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/Editor$InsertionHandleView;->mLastUpTime:J

    goto :goto_1

    .line 7387
    :pswitch_1
    iput-boolean v2, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    .line 7388
    iput-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    .line 7389
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetDown:I

    .line 7390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownX:F

    .line 7391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownY:F

    .line 7392
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Landroid/widget/Editor$InsertionHandleView;->mIsInActionMode:Z

    .line 7393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/Editor$InsertionHandleView;->mLastUpTime:J

    sub-long/2addr v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 7394
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 7396
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditorTouchState;->setIsOnHandle(Z)V

    .line 7397
    nop

    .line 7403
    :goto_1
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->transformEventForTouchThrough(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 7405
    .local v3, "ret":Z
    if-eq v0, v2, :cond_2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 7406
    :cond_2
    iput-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    .line 7407
    iget-boolean v4, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    if-eqz v4, :cond_3

    .line 7408
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->dismiss()V

    .line 7410
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/EditorTouchState;->setIsOnHandle(Z)V

    .line 7414
    :cond_4
    iget-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    if-nez v1, :cond_6

    .line 7415
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7416
    .local v1, "start":I
    iget-object v4, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 7417
    .local v4, "end":I
    if-ne v1, v4, :cond_5

    iget v5, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetDown:I

    if-eq v5, v1, :cond_6

    .line 7418
    :cond_5
    iput-boolean v2, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    .line 7423
    .end local v1    # "start":I
    .end local v4    # "end":I
    :cond_6
    iget-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    if-nez v1, :cond_8

    if-ne v0, v2, :cond_8

    .line 7424
    iget-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mIsInActionMode:Z

    if-eqz v1, :cond_7

    .line 7425
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopTextActionMode()V

    goto :goto_2

    .line 7427
    :cond_7
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 7430
    :cond_8
    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist transformEventForTouchThrough(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 7434
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 7435
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getCurrentCursorOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 7436
    .local v1, "line":I
    nop

    .line 7437
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 7443
    .local v2, "textHeight":I
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 7444
    .local v3, "m":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getMeasuredWidth()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownX:F

    sub-float/2addr v4, v5

    .line 7445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    shr-int/lit8 v6, v2, 0x1

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownY:F

    sub-float/2addr v5, v6

    .line 7444
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 7446
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 7448
    iget-object v4, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->toLocalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 7454
    return-object p1
.end method


# virtual methods
.method public blacklist dismiss()V
    .locals 2

    .line 7474
    iget-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7479
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    .line 7480
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 7482
    :cond_0
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 7483
    iput-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    .line 7485
    :goto_0
    return-void
.end method

.method public greylist-max-o getCurrentCursorOffset()I
    .locals 1

    .line 7495
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method greylist-max-o getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .locals 3
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 7299
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 7300
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$InsertionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v0

    .line 7301
    .local v0, "horizontal":F
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v1, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v0}, Landroid/widget/Editor;->-$$Nest$mclampHorizontalPosition(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    return v1

    .line 7303
    .end local v0    # "horizontal":F
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v0

    return v0
.end method

.method protected greylist-max-o getCursorOffset()I
    .locals 3

    .line 7288
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v0

    .line 7289
    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 7290
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 7291
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 7294
    :cond_0
    return v0
.end method

.method protected greylist-max-o getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .line 7283
    const/4 v0, 0x1

    return v0
.end method

.method protected greylist-max-o getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .line 7278
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected greylist-max-o getMagnifierHandleTrigger()I
    .locals 1

    .line 7566
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSkipHoverCursorChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7567
    const/4 v0, -0x1

    return v0

    .line 7570
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o hideAfterDelay()V
    .locals 4

    .line 7256
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 7257
    new-instance v0, Landroid/widget/Editor$InsertionHandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionHandleView$1;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    goto :goto_0

    .line 7263
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 7265
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7266
    return-void
.end method

.method public blacklist isShowing()Z
    .locals 1

    .line 7459
    iget-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    if-eqz v0, :cond_0

    .line 7460
    const/4 v0, 0x0

    return v0

    .line 7462
    :cond_0
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o onDetached()V
    .locals 0

    .line 7558
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 7559
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 7560
    return-void
.end method

.method greylist-max-o onHandleMoved()V
    .locals 0

    .line 7552
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 7553
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 7554
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 7308
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7309
    nop

    .line 7310
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getPreferredHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDeltaHeight:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 7309
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7311
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getPreferredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/widget/Editor$InsertionHandleView;->setMeasuredDimension(II)V

    .line 7312
    return-void

    .line 7314
    .end local v0    # "height":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->onMeasure(II)V

    .line 7315
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 7319
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->isFromPrimePointer(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7320
    return v1

    .line 7322
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmFlagCursorDragFromAnywhereEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7325
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->touchThrough(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 7327
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 7329
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 7371
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    .line 7373
    goto :goto_1

    .line 7343
    :pswitch_1
    goto :goto_1

    .line 7346
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->offsetHasBeenChanged()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7347
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 7348
    .local v1, "config":Landroid/view/ViewConfiguration;
    iget v2, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawX:F

    iget v3, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawY:F

    .line 7349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 7350
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    .line 7348
    invoke-static {v2, v3, v4, v5, v6}, Landroid/widget/EditorTouchState;->isDistanceWithin(FFFFI)Z

    move-result v2

    .line 7351
    .local v2, "isWithinTouchSlop":Z
    if-eqz v2, :cond_2

    .line 7353
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$mtoggleInsertionActionMode(Landroid/widget/Editor;)V

    .line 7355
    .end local v1    # "config":Landroid/view/ViewConfiguration;
    .end local v2    # "isWithinTouchSlop":Z
    :cond_2
    goto :goto_0

    .line 7356
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7357
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 7362
    :cond_4
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7363
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    goto :goto_1

    .line 7365
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    .line 7367
    goto :goto_1

    .line 7331
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawX:F

    .line 7332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawY:F

    .line 7334
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmIsThemeDeviceDefault(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7335
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 7379
    :cond_6
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected greylist-max-o removeHiderCallback()V
    .locals 2

    .line 7271
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 7272
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7274
    :cond_0
    return-void
.end method

.method public greylist-max-o show()V
    .locals 2

    .line 7467
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->show()V

    .line 7468
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    .line 7469
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawableOpacity:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7470
    return-void
.end method

.method protected blacklist updateDrawable(Z)V
    .locals 2
    .param p1, "updateDrawableWhenDragging"    # Z

    .line 7489
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->updateDrawable(Z)V

    .line 7490
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawableOpacity:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7491
    return-void
.end method

.method protected greylist-max-o updatePosition(FFZ)V
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "fromTouchScreen"    # Z

    .line 7508
    iget v0, p0, Landroid/widget/Editor$InsertionHandleView;->mLastParentYOnScreen:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mFirstParentY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 7509
    .local v0, "inWindowY":F
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 7511
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_2

    .line 7512
    iget v2, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 7513
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    .line 7515
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget v3, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    invoke-virtual {v2, v1, v3, v0}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v2

    .line 7516
    .local v2, "currLine":I
    invoke-virtual {p0, v1, v2, p1}, Landroid/widget/Editor$InsertionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v3

    .line 7518
    .local v3, "offset":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    .line 7519
    .local v4, "currentLineBottom":I
    iget v5, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    .line 7520
    .local v5, "previousLineBottom":I
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    .line 7521
    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    .line 7522
    .local v6, "verticalOffset":I
    sub-int v7, v4, v5

    sub-int/2addr v7, v6

    .line 7524
    .local v7, "diff":I
    iput v2, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    .line 7526
    iget v8, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchToWindowOffsetX:F

    add-float/2addr v8, p1

    iget v9, p0, Landroid/widget/Editor$InsertionHandleView;->mHotspotX:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getHorizontalOffset()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Landroid/widget/Editor$InsertionHandleView;->mHorizontalOffset:F

    sub-float/2addr v8, v9

    iget v9, p0, Landroid/widget/Editor$InsertionHandleView;->mLastParentXOnScreen:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p0, Landroid/widget/Editor$InsertionHandleView;->mLastParentX:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    float-to-int v8, v8

    .line 7529
    .local v8, "x_":I
    iget-boolean v9, p0, Landroid/widget/Editor$InsertionHandleView;->mIsVerticalScrolled:Z

    if-eqz v9, :cond_1

    .line 7530
    sub-int v9, v4, v7

    .local v9, "y_":I
    goto :goto_0

    .line 7532
    .end local v9    # "y_":I
    :cond_1
    iget v9, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchToWindowOffsetY:F

    add-float/2addr v9, p2

    iget v10, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchOffsetY:F

    sub-float/2addr v9, v10

    iget v10, p0, Landroid/widget/Editor$InsertionHandleView;->mVerticalScrolledYOffset:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Landroid/widget/Editor$InsertionHandleView;->mVerticalOffset:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    .line 7535
    .restart local v9    # "y_":I
    :goto_0
    invoke-virtual {p0, v8, v9}, Landroid/widget/Editor$InsertionHandleView;->updatePositionDuringDragging(II)V

    .line 7537
    .end local v2    # "currLine":I
    .end local v4    # "currentLineBottom":I
    .end local v5    # "previousLineBottom":I
    .end local v6    # "verticalOffset":I
    .end local v7    # "diff":I
    .end local v8    # "x_":I
    .end local v9    # "y_":I
    goto :goto_1

    .line 7538
    .end local v3    # "offset":I
    :cond_2
    const/4 v3, -0x1

    .line 7544
    .restart local v3    # "offset":I
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v3, v2, p3}, Landroid/widget/Editor$InsertionHandleView;->positionAtCursorOffset(IZZ)V

    .line 7545
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7546
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$minvalidateActionMode(Landroid/widget/Editor;)V

    .line 7548
    :cond_3
    return-void
.end method

.method public greylist-max-o updateSelection(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 7502
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 7504
    return-void
.end method
