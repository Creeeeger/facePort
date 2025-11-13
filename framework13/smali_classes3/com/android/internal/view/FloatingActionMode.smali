.class public final Lcom/android/internal/view/FloatingActionMode;
.super Landroid/view/ActionMode;
.source "FloatingActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;
    }
.end annotation


# static fields
.field private static final blacklist MAX_HIDE_DURATION:I = 0xbb8

.field private static final blacklist MOVING_HIDE_DELAY:I = 0x32


# instance fields
.field private final blacklist mBottomAllowance:I

.field private final blacklist mCallback:Landroid/view/ActionMode$Callback2;

.field private final blacklist mContentRect:Landroid/graphics/Rect;

.field private final blacklist mContentRectOnScreen:Landroid/graphics/Rect;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDisplaySize:Landroid/graphics/Point;

.field private blacklist mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

.field private blacklist mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

.field private final blacklist mHideOff:Ljava/lang/Runnable;

.field private final blacklist mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private final blacklist mMovingOff:Ljava/lang/Runnable;

.field private final blacklist mOriginatingView:Landroid/view/View;

.field private final blacklist mPreviousContentRectOnScreen:Landroid/graphics/Rect;

.field private final blacklist mPreviousViewPositionOnScreen:[I

.field private final blacklist mPreviousViewRectOnScreen:Landroid/graphics/Rect;

.field private final blacklist mRootViewPositionOnScreen:[I

.field private final blacklist mScreenRect:Landroid/graphics/Rect;

.field private final blacklist mViewPositionOnScreen:[I

.field private final blacklist mViewRectOnScreen:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Lcom/android/internal/view/FloatingActionMode;)Landroid/view/ActionMode$Callback2;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFloatingToolbarVisibilityHelper(Lcom/android/internal/view/FloatingActionMode;)Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misViewStillActive(Lcom/android/internal/view/FloatingActionMode;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->isViewStillActive()Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;
    .param p4, "floatingToolbar"    # Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 85
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 62
    new-instance v0, Lcom/android/internal/view/FloatingActionMode$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/FloatingActionMode$1;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lcom/android/internal/view/FloatingActionMode$2;

    invoke-direct {v0, p0}, Lcom/android/internal/view/FloatingActionMode$2;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    .line 86
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ActionMode$Callback2;

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    .line 88
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 90
    invoke-virtual {p0, v1}, Lcom/android/internal/view/FloatingActionMode;->setType(I)V

    .line 91
    new-instance v1, Lcom/android/internal/view/FloatingActionMode$3;

    invoke-direct {v1, p0}, Lcom/android/internal/view/FloatingActionMode$3;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    .line 103
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    .line 104
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    .line 105
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mScreenRect:Landroid/graphics/Rect;

    .line 109
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    const v1, 0x10500e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105051e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 114
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/FloatingActionMode;->mBottomAllowance:I

    .line 119
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mDisplaySize:Landroid/graphics/Point;

    .line 120
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    .line 121
    return-void
.end method

.method private static blacklist intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p0, "a"    # Landroid/graphics/Rect;
    .param p1, "b"    # Landroid/graphics/Rect;

    .line 252
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isContentRectWithinBounds()Z
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mScreenRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mScreenRect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/android/internal/view/FloatingActionMode;->intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    .line 245
    invoke-static {v0, v1}, Lcom/android/internal/view/FloatingActionMode;->intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 244
    :goto_0
    return v3
.end method

.method private blacklist isViewStillActive()Z
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    .line 335
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0
.end method

.method private blacklist repositionToolbar()V
    .locals 8

    .line 186
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 206
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->isContentRectWithinBounds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setOutOfBounds(Z)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 210
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 211
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 212
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v5, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/android/internal/view/FloatingActionMode;->mBottomAllowance:I

    add-int/2addr v6, v7

    .line 213
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 209
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 216
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 221
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0, v4}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setMoving(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->setContentRect(Landroid/graphics/Rect;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 229
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->updateLayout()Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0, v4}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setOutOfBounds(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 235
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    .line 237
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 238
    return-void
.end method

.method private blacklist reset()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    .line 328
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->deactivate()V

    .line 329
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 330
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 331
    return-void
.end method

.method private blacklist updateViewLocationInWindow(Z)V
    .locals 5
    .param p1, "forceRepositionToolbar"    # Z

    .line 170
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 173
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 175
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    .line 176
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    .line 177
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->repositionToolbar()V

    .line 179
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    aget v3, v1, v2

    aput v3, v0, v2

    .line 180
    aget v1, v1, v4

    aput v1, v0, v4

    .line 181
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 183
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist finish()V
    .locals 1

    .line 297
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->reset()V

    .line 298
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    invoke-virtual {v0, p0}, Landroid/view/ActionMode$Callback2;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 299
    return-void
.end method

.method public blacklist getContentRectOnScreen()Landroid/graphics/Point;
    .locals 5

    .line 419
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->getMovedPos()Landroid/graphics/Point;

    move-result-object v0

    .line 420
    .local v0, "movedPos":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    .line 421
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget v4, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 420
    return-object v1
.end method

.method public whitelist getCustomView()Landroid/view/View;
    .locals 1

    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMenu()Landroid/view/Menu;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public whitelist getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 323
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist hide(J)V
    .locals 2
    .param p1, "duration"    # J

    .line 258
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 259
    invoke-static {}, Landroid/view/ViewConfiguration;->getDefaultActionModeHideDuration()J

    move-result-wide p1

    .line 261
    :cond_0
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 262
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 263
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setHideRequested(Z)V

    .line 267
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    .line 268
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 270
    :goto_0
    return-void
.end method

.method public whitelist invalidate()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 151
    .local v0, "mMenuItemSize":I
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p0, v2}, Landroid/view/ActionMode$Callback2;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 153
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->isMovingStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/FloatingActionMode;->invalidateContentRect()V

    .line 157
    :cond_1
    return-void
.end method

.method public whitelist invalidateContentRect()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/view/FloatingActionMode;->updateViewLocationInWindow(Z)V

    .line 163
    return-void
.end method

.method synthetic blacklist lambda$setFloatingToolbar$0$com-android-internal-view-FloatingActionMode(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 128
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .line 291
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setWindowFocused(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    .line 293
    return-void
.end method

.method public whitelist setCustomView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 146
    return-void
.end method

.method public blacklist setFloatingToolbar(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V
    .locals 2
    .param p1, "floatingToolbar"    # Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 126
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 127
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->setMenu(Landroid/view/Menu;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    move-result-object v0

    new-instance v1, Lcom/android/internal/view/FloatingActionMode$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/view/FloatingActionMode$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 129
    new-instance v1, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-direct {v1, v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;-><init>(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    iput-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    .line 130
    invoke-virtual {v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->activate()V

    .line 131
    return-void
.end method

.method public blacklist setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "outsideTouchable"    # Z
    .param p2, "onDismiss"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 286
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)V

    .line 287
    return-void
.end method

.method public whitelist setSubtitle(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 143
    return-void
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 140
    return-void
.end method

.method public whitelist setTitle(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 137
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 134
    return-void
.end method

.method public blacklist updateViewLocationInWindow()V
    .locals 1

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/FloatingActionMode;->updateViewLocationInWindow(Z)V

    .line 167
    return-void
.end method
