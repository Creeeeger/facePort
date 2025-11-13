.class public Lcom/samsung/android/core/CompatTranslator;
.super Ljava/lang/Object;
.source "CompatTranslator.java"


# instance fields
.field private blacklist mBoundsPosition:Landroid/graphics/Point;

.field private final blacklist mParent:Lcom/samsung/android/core/CompatTranslator;

.field private blacklist mWindowPosition:Landroid/graphics/Point;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/core/CompatTranslator;)V
    .locals 1
    .param p1, "parent"    # Lcom/samsung/android/core/CompatTranslator;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/CompatTranslator;->mBoundsPosition:Landroid/graphics/Point;

    .line 36
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/CompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    .line 39
    iput-object p1, p0, Lcom/samsung/android/core/CompatTranslator;->mParent:Lcom/samsung/android/core/CompatTranslator;

    .line 40
    return-void
.end method

.method private blacklist getWindowPositionX()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/core/CompatTranslator;->mParent:Lcom/samsung/android/core/CompatTranslator;

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {v0}, Lcom/samsung/android/core/CompatTranslator;->getWindowPositionX()I

    move-result v0

    return v0

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/core/CompatTranslator;->shouldSavePositionInBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/core/CompatTranslator;->mBoundsPosition:Landroid/graphics/Point;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/core/CompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    :goto_0
    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method private blacklist getWindowPositionY()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/core/CompatTranslator;->mParent:Lcom/samsung/android/core/CompatTranslator;

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {v0}, Lcom/samsung/android/core/CompatTranslator;->getWindowPositionY()I

    move-result v0

    return v0

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/core/CompatTranslator;->shouldSavePositionInBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/core/CompatTranslator;->mBoundsPosition:Landroid/graphics/Point;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/core/CompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    :goto_0
    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method private blacklist shouldSavePositionInBounds()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/core/CompatTranslator;->mBoundsPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/core/CompatTranslator;->mBoundsPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public blacklist savePositionInBounds(II)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I

    .line 43
    iget-object v0, p0, Lcom/samsung/android/core/CompatTranslator;->mBoundsPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/core/CompatTranslator;->mBoundsPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 44
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/core/CompatTranslator;->mBoundsPosition:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist savePositionInScreen(II)Z
    .locals 1
    .param p1, "windowLeft"    # I
    .param p2, "windowTop"    # I

    .line 55
    iget-object v0, p0, Lcom/samsung/android/core/CompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/core/CompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 56
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/core/CompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist translateToScreen(Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "outPos"    # Landroid/graphics/PointF;

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/core/CompatTranslator;->getWindowPositionX()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/samsung/android/core/CompatTranslator;->getWindowPositionY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->offset(FF)V

    .line 86
    return-void
.end method

.method public blacklist translateToScreen(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outFrame"    # Landroid/graphics/Rect;

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/core/CompatTranslator;->getWindowPositionX()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/core/CompatTranslator;->getWindowPositionY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 82
    return-void
.end method

.method public blacklist translateToWindow(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "outPos"    # Landroid/graphics/Point;

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/core/CompatTranslator;->getWindowPositionX()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0}, Lcom/samsung/android/core/CompatTranslator;->getWindowPositionY()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->offset(II)V

    .line 71
    return-void
.end method

.method public blacklist translateToWindow(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outFrame"    # Landroid/graphics/Rect;

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/core/CompatTranslator;->getWindowPositionX()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0}, Lcom/samsung/android/core/CompatTranslator;->getWindowPositionY()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 67
    return-void
.end method

.method public blacklist translateToWindow(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "outEvent"    # Landroid/view/MotionEvent;

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/core/CompatTranslator;->getWindowPositionX()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0}, Lcom/samsung/android/core/CompatTranslator;->getWindowPositionY()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setWindowOffset(II)V

    .line 75
    return-void
.end method
