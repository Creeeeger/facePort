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

.field private blacklist mShouldMagnifierCursorAdjust:Z

.field private blacklist mTouchDownX:F

.field private blacklist mTouchDownY:F

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mshouldMagnifierCursorAdjust(Landroid/widget/Editor$InsertionHandleView;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->shouldMagnifierCursorAdjust()Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    const v4, 0x1020384

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView-IA;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mShouldMagnifierCursorAdjust:Z

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p1, "widget__insertion_handle_delta_height"

    const/16 v2, 0x19

    invoke-static {p1, v2}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v0, "widget__insertion_handle_opacity"

    const/16 v2, 0x32

    invoke-static {v0, v2}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, -0x19

    if-lt p1, v1, :cond_0

    if-le p1, v2, :cond_1

    :cond_0
    const/16 p1, 0x19

    :cond_1
    const/16 v1, 0xa

    const/16 v2, 0x64

    if-lt v0, v1, :cond_2

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v0, 0x32

    :cond_3
    mul-int/lit16 v1, v0, 0xff

    div-int/2addr v1, v2

    move v0, p1

    :cond_4
    iput v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDeltaHeight:I

    iput v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawableOpacity:I

    return-void
.end method

.method private blacklist shouldMagnifierCursorAdjust()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mShouldMagnifierCursorAdjust:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifierIsShowing(Landroid/widget/Editor$MagnifierMotionAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist touchThrough(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/Editor$InsertionHandleView;->mLastUpTime:J

    goto :goto_1

    :pswitch_1
    iput-boolean v2, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    iput-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetDown:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownY:F

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

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/Editor$InsertionHandleView;->mLastUpTime:J

    sub-long/2addr v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditorTouchState;->setIsOnHandle(Z)V

    nop

    :goto_1
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->transformEventForTouchThrough(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eq v0, v2, :cond_2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    :cond_2
    iput-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    iget-boolean v4, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->dismiss()V

    :cond_3
    iget-object v4, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/EditorTouchState;->setIsOnHandle(Z)V

    :cond_4
    iget-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v4, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    if-ne v1, v4, :cond_5

    iget v5, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetDown:I

    if-eq v5, v1, :cond_6

    :cond_5
    iput-boolean v2, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    :cond_6
    iget-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    if-nez v1, :cond_8

    if-ne v0, v2, :cond_8

    iget-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mIsInActionMode:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopTextActionMode()V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startInsertionActionMode()V

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

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getCurrentCursorOffset()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$InsertionHandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    sub-int/2addr v2, v3

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

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

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->toLocalMotionEvent(Landroid/view/MotionEvent;)Z

    return-object p1
.end method


# virtual methods
.method public blacklist dismiss()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    iput-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    :goto_0
    return-void
.end method

.method public greylist-max-o getCurrentCursorOffset()I
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method greylist-max-o getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$InsertionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v0}, Landroid/widget/Editor;->-$$Nest$mclampHorizontalPosition(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v0

    return v0
.end method

.method protected greylist-max-o getCursorOffset()I
    .locals 3

    invoke-super {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

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

    :cond_0
    return v0
.end method

.method protected greylist-max-o getHorizontalGravity(Z)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected greylist-max-o getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected greylist-max-o getMagnifierHandleTrigger()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o hideAfterDelay()V
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$InsertionHandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionHandleView$1;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public blacklist isShowing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o onDetached()V
    .locals 0

    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    return-void
.end method

.method greylist-max-o onHandleMoved()V
    .locals 0

    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    nop

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getPreferredHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDeltaHeight:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getPreferredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/widget/Editor$InsertionHandleView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->onMeasure(II)V

    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->isFromPrimePointer(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmFlagCursorDragFromAnywhereEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->touchThrough(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->dismissMagnifier()V

    iput-boolean v3, p0, Landroid/widget/Editor$InsertionHandleView;->mShouldMagnifierCursorAdjust:Z

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->updateCursorPosition()V

    goto/16 :goto_3

    :pswitch_1
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmIsMagnifierHideByVelocityTracker(Landroid/widget/Editor;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->dismissMagnifier()V

    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->updateCursorPosition()V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->offsetHasBeenChanged()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iget v2, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawX:F

    iget v4, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    invoke-static {v2, v4, v5, v6, v7}, Landroid/widget/EditorTouchState;->isDistanceWithin(FFFFI)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v4, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$mtoggleInsertionActionMode(Landroid/widget/Editor;)V

    :cond_3
    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidateContentRect()V

    :cond_5
    :goto_1
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    :goto_2
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->dismissMagnifier()V

    iput-boolean v3, p0, Landroid/widget/Editor$InsertionHandleView;->mShouldMagnifierCursorAdjust:Z

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->updateCursorPosition()V

    goto :goto_3

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawY:F

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmIsThemeDeviceDefault(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    :cond_7
    invoke-virtual {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    iput-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mShouldMagnifierCursorAdjust:Z

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->updateCursorPosition()V

    nop

    :goto_3
    return v0

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

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public greylist-max-o show()V
    .locals 2

    invoke-super {p0}, Landroid/widget/Editor$HandleView;->show()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawableOpacity:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method protected blacklist updateDrawable(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->updateDrawable(Z)V

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawableOpacity:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method protected greylist-max-o updatePosition(FFZ)V
    .locals 11

    iget v0, p0, Landroid/widget/Editor$InsertionHandleView;->mLastParentYOnScreen:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mFirstParentY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget v3, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    invoke-virtual {v2, v1, v3, v0}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Landroid/widget/Editor$InsertionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iget v5, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v7, v4, v5

    sub-int/2addr v7, v6

    iput v2, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

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

    iget-boolean v9, p0, Landroid/widget/Editor$InsertionHandleView;->mIsVerticalScrolled:Z

    if-eqz v9, :cond_1

    sub-int v9, v4, v7

    goto :goto_0

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

    :goto_0
    invoke-virtual {p0, v8, v9}, Landroid/widget/Editor$InsertionHandleView;->updatePositionDuringDragging(II)V

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v3, v2, p3}, Landroid/widget/Editor$InsertionHandleView;->positionAtCursorOffset(IZZ)V

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$minvalidateActionMode(Landroid/widget/Editor;)V

    :cond_3
    return-void
.end method

.method public greylist-max-o updateSelection(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method
