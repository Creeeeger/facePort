.class public final Lcom/android/wm/shell/windowdecor/HandleMenu;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAppIconBitmap:Landroid/graphics/Bitmap;

.field public final mAppName:Ljava/lang/CharSequence;

.field public final mCaptionHeight:I

.field public final mContext:Landroid/content/Context;

.field public final mGlobalMenuPosition:Landroid/graphics/Point;

.field public mHandleMenuAnimator:Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;

.field final mHandleMenuPosition:Landroid/graphics/PointF;

.field mHandleMenuViewContainer:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewContainer;

.field public final mLayoutResId:I

.field public final mMarginMenuStart:I

.field public final mMarginMenuTop:I

.field public final mMenuHeight:I

.field public final mMenuWidth:I

.field public final mOnClickListener:Landroid/view/View$OnClickListener;

.field public final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field public final mParentDecor:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

.field public final mShouldShowWindowingPill:Z

.field public final mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;ILandroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/splitscreen/SplitScreenController;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p7, Landroid/graphics/PointF;

    invoke-direct {p7}, Landroid/graphics/PointF;-><init>()V

    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuPosition:Landroid/graphics/PointF;

    new-instance p7, Landroid/graphics/Point;

    invoke-direct {p7}, Landroid/graphics/Point;-><init>()V

    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mGlobalMenuPosition:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mParentDecor:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iget-object p7, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p8, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mLayoutResId:I

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppIconBitmap:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppName:Ljava/lang/CharSequence;

    iput-boolean p9, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShouldShowWindowingPill:Z

    iput p10, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCaptionHeight:I

    invoke-virtual {p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07030b

    invoke-static {p1, p2}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    const p2, 0x7f070305

    invoke-static {p1, p2}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result p2

    if-nez p9, :cond_0

    const p3, 0x7f07030c

    invoke-static {p1, p3}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result p3

    sub-int/2addr p2, p3

    :cond_0
    const p3, 0x7f070308

    invoke-static {p1, p3}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuHeight:I

    const p2, 0x7f070307

    invoke-static {p1, p2}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuTop:I

    const p2, 0x7f070306

    invoke-static {p1, p2}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuStart:I

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/HandleMenu;->updateHandleMenuPillPositions()V

    return-void
.end method

.method public static loadDimensionPixelSize(Landroid/content/res/Resources;I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static pointInView(Landroid/view/View;FF)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p0, p2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final checkMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-static {}, Lcom/android/window/flags/Flags;->enableAdditionalWindowsAboveStatusBar()Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuViewContainer:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewContainer;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewContainer;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/HandleMenuImageButton;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuPosition:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, p0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget p0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p0, v1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->pointInView(Landroid/view/View;FF)Z

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setHovered(Z)V

    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    if-ne p1, v2, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    :cond_2
    return-void
.end method

.method public final updateHandleMenuPillPositions()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mGlobalMenuPosition:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuStart:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuTop:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mGlobalMenuPosition:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuStart:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuTop:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitPosition(I)I

    move-result v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mGlobalMenuPosition:Landroid/graphics/Point;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iget v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    iget v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuStart:I

    add-int/2addr v3, v2

    iget v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuTop:I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mGlobalMenuPosition:Landroid/graphics/Point;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuStart:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuTop:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    :cond_3
    :goto_0
    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mLayoutResId:I

    const v2, 0x7f0d00de

    if-ne v1, v2, :cond_4

    iget v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuStart:I

    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuTop:I

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/window/flags/Flags;->enableAdditionalWindowsAboveStatusBar()Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuTop:I

    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuPosition:Landroid/graphics/PointF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method
