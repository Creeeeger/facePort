.class public final Lcom/android/wm/shell/freeform/DexSnappingGuide;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBoundaryFinger:I

.field public final mBoundaryMouse:I

.field public mIsAttached:Z

.field public mLastSnapType:I

.field public mPointerAlpha:I

.field public mPointerPosition:I

.field public final mSnappingBounds:Landroid/graphics/Rect;

.field public final mSnappingOtherBounds:Landroid/graphics/Rect;

.field public final mView:Lcom/android/wm/shell/freeform/DexSnappingGuideView;

.field public final mVisibleFrame:Landroid/graphics/Rect;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingOtherBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mVisibleFrame:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mLastSnapType:I

    iput v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerPosition:I

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mIsAttached:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object p1

    :goto_0
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00e3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/freeform/DexSnappingGuideView;

    iput-object v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mView:Lcom/android/wm/shell/freeform/DexSnappingGuideView;

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const v6, 0x10318

    const/4 v7, -0x2

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7f6

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v2, "DexSnappingGuideWindow"

    invoke-virtual {v8, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v2, 0x800033

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-interface {v0, v1, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mIsAttached:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070328

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mBoundaryMouse:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070327

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mBoundaryFinger:I

    return-void
.end method

.method public static calculateGuideSize(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    sub-int/2addr v0, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/2addr p2, v1

    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    :cond_0
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v2, 0x6

    if-ne p0, v2, :cond_2

    :cond_1
    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    :cond_2
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_3

    add-int v2, v0, p1

    iput v2, p3, Landroid/graphics/Rect;->left:I

    :cond_3
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_4

    iput p2, p3, Landroid/graphics/Rect;->top:I

    :cond_4
    const/4 p2, 0x1

    if-ne p0, p2, :cond_5

    add-int/2addr v0, p1

    iput v0, p4, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_5
    if-ne p0, v1, :cond_6

    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :cond_6
    const/4 p1, 0x4

    if-ne p0, p1, :cond_7

    iput v0, p4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_7
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final show(FFLandroid/app/TaskInfo;II)I
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mVisibleFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mBoundaryFinger:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mBoundaryMouse:I

    :goto_1
    if-ltz v5, :cond_2

    if-gt v5, v3, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v1

    :goto_2
    if-ltz v6, :cond_3

    if-gt v6, v3, :cond_3

    or-int/lit8 v7, v7, 0x2

    :cond_3
    sub-int/2addr v4, v3

    if-lt v5, v4, :cond_4

    or-int/lit8 v7, v7, 0x4

    :cond_4
    sub-int/2addr v0, v3

    if-lt v6, v0, :cond_5

    or-int/lit8 v7, v7, 0x8

    :cond_5
    const/16 v0, 0x8

    if-ne v7, v0, :cond_6

    move v7, v1

    :cond_6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    const/4 v3, 0x4

    if-nez v0, :cond_8

    and-int/lit8 v4, v7, 0x1

    if-eqz v4, :cond_7

    move v7, v2

    goto :goto_3

    :cond_7
    and-int/lit8 v4, v7, 0x4

    if-eqz v4, :cond_8

    move v7, v3

    :cond_8
    :goto_3
    invoke-virtual {p3}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->dexCompatEnabled:I

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mView:Lcom/android/wm/shell/freeform/DexSnappingGuideView;

    if-ne v4, v5, :cond_9

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_b

    iget-boolean v0, p3, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    if-nez v0, :cond_b

    :goto_4
    if-ne v7, v5, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mLastSnapType:I

    return v1

    :cond_b
    :goto_5
    invoke-virtual {p3}, Landroid/app/TaskInfo;->getWindowingMode()I

    move-result v0

    invoke-virtual {p3}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p3}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v2

    goto :goto_6

    :cond_c
    move v4, v1

    :goto_6
    if-eq v0, v2, :cond_d

    iget v8, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mLastSnapType:I

    if-ne v7, v8, :cond_d

    if-nez v4, :cond_d

    return v8

    :cond_d
    iget-object v8, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v8, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingOtherBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    if-eq v0, v2, :cond_12

    if-eqz v4, :cond_e

    goto :goto_7

    :cond_e
    if-nez v7, :cond_f

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_a

    :cond_f
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p3}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isDesktopModeEnabled()Z

    move-result p1

    if-nez p1, :cond_11

    const/4 p1, 0x3

    if-eq p4, p1, :cond_10

    return v1

    :cond_10
    if-eq v7, v5, :cond_11

    return v1

    :cond_11
    iget-object p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingBounds:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingOtherBounds:Landroid/graphics/Rect;

    invoke-static {v7, p5, p1, p2, p3}, Lcom/android/wm/shell/freeform/DexSnappingGuide;->calculateGuideSize(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, p1}, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->show(ILandroid/graphics/Rect;)V

    goto/16 :goto_a

    :cond_12
    :goto_7
    if-nez v7, :cond_18

    iget-object p4, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    iget-object p3, p3, Landroid/app/TaskInfo;->snappingGuideBounds:Landroid/graphics/Rect;

    iget-object p5, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingBounds:Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerPosition:I

    if-nez v0, :cond_14

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr p4, v0

    if-le v0, p4, :cond_13

    iput p4, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerAlpha:I

    iput v3, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerPosition:I

    goto :goto_8

    :cond_13
    iput v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerAlpha:I

    iput v2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerPosition:I

    :cond_14
    :goto_8
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p4

    add-int/2addr p4, p2

    iput p4, p5, Landroid/graphics/Rect;->bottom:I

    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerAlpha:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p4

    div-int/2addr p4, v5

    if-lt p2, p4, :cond_15

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/2addr p2, v5

    sub-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p5, Landroid/graphics/Rect;->right:I

    goto :goto_9

    :cond_15
    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerPosition:I

    if-ne p2, v2, :cond_16

    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerAlpha:I

    sub-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p5, Landroid/graphics/Rect;->right:I

    goto :goto_9

    :cond_16
    if-ne p2, v3, :cond_17

    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerAlpha:I

    add-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Rect;->left:I

    :cond_17
    :goto_9
    iget-object p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingOtherBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, p1}, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->show(ILandroid/graphics/Rect;)V

    goto :goto_a

    :cond_18
    and-int/lit8 p1, v7, 0x1

    if-nez p1, :cond_19

    and-int/lit8 p1, v7, 0x4

    if-eqz p1, :cond_1a

    :cond_19
    iget-object p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingBounds:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingOtherBounds:Landroid/graphics/Rect;

    invoke-static {v7, p5, p1, p2, p3}, Lcom/android/wm/shell/freeform/DexSnappingGuide;->calculateGuideSize(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, p1}, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->show(ILandroid/graphics/Rect;)V

    :cond_1a
    :goto_a
    iput v7, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mLastSnapType:I

    return v7
.end method
