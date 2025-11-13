.class public Landroid/window/SnapshotDrawerUtils$SnapshotSurface;
.super Ljava/lang/Object;
.source "SnapshotDrawerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SnapshotDrawerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotSurface"
.end annotation


# instance fields
.field private final blacklist mFrame:Landroid/graphics/Rect;

.field private final blacklist mRootSurface:Landroid/view/SurfaceControl;

.field private blacklist mSizeMismatch:Z

.field private final blacklist mSnapshot:Landroid/window/TaskSnapshot;

.field private final blacklist mSnapshotH:I

.field private final blacklist mSnapshotW:I

.field private blacklist mSystemBarBackgroundPainter:Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;

.field private final blacklist mSystemBarInsets:Landroid/graphics/Rect;

.field private final blacklist mTitle:Ljava/lang/CharSequence;

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdrawSnapshot(Landroid/window/SnapshotDrawerUtils$SnapshotSurface;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->drawSnapshot(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSystemBarInsets:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    iput-object p2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    iput-object p3, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotW:I

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotH:I

    return-void
.end method

.method private blacklist drawSizeMatchSnapshot()V
    .locals 3

    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private blacklist drawSizeMismatchSnapshot()V
    .locals 15

    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mFrame:Landroid/graphics/Rect;

    iget v3, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotW:I

    iget v4, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotH:I

    invoke-static {v2, v3, v4}, Landroid/window/SnapshotDrawerUtils;->-$$Nest$smisAspectRatioMatch(Landroid/graphics/Rect;II)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/window/flags/Flags;->drawSnapshotAspectRatioMatch()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v4, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v4, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - task-snapshot-surface"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    iget-object v5, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    const-string v5, "TaskSnapshotWindow.drawSizeMismatchSnapshot"

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iget-object v5, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v5}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v5

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-eqz v2, :cond_4

    const/4 v8, 0x0

    iget v9, v5, Landroid/graphics/Rect;->left:I

    if-nez v9, :cond_1

    iget v9, v5, Landroid/graphics/Rect;->top:I

    if-nez v9, :cond_1

    iget v9, v5, Landroid/graphics/Rect;->right:I

    if-nez v9, :cond_1

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    if-eqz v9, :cond_2

    :cond_1
    invoke-virtual {p0, v5}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->calculateSnapshotCrop(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-static {v9, v8}, Landroid/window/SnapshotDrawerUtils;->-$$Nest$smisAspectRatioMatch(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    xor-int/2addr v9, v3

    move v2, v9

    :cond_2
    if-eqz v2, :cond_3

    iget-object v9, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v9}, Landroid/window/TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->calculateSnapshotCrop(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    iget v10, v9, Landroid/graphics/Rect;->left:I

    int-to-float v6, v10

    iget v10, v9, Landroid/graphics/Rect;->top:I

    int-to-float v7, v10

    :cond_3
    invoke-virtual {p0, v8}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    iget-object v10, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10, v4, v8}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    const/4 v8, 0x0

    cmpl-float v10, v6, v8

    if-nez v10, :cond_5

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_6

    :cond_5
    iget-object v8, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    neg-float v10, v6

    iget-object v11, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget-object v11, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v11}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    neg-float v11, v7

    iget-object v12, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    iget-object v12, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v12}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {v8, v4, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_6
    iget-object v8, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget v10, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotW:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    iget-object v10, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotH:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget-object v11, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v11, v4, v8, v10}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v11, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v12, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v12}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    iget-object v11, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v12, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v12}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    if-eqz v2, :cond_9

    iget-object v11, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget-object v12, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    const/16 v13, 0x920

    invoke-static {v11, v12, v3, v13}, Landroid/graphics/GraphicBuffer;->create(IIII)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/graphics/GraphicBuffer;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v11

    goto :goto_2

    :cond_7
    const/4 v11, 0x0

    :goto_2
    if-nez v11, :cond_8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to draw snapshot: failed to allocate graphic buffer for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "SnapshotDrawerUtils"

    invoke-static {v13, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v12}, Landroid/view/SurfaceControl$Transaction;->clear()V

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->release()V

    return-void

    :cond_8
    invoke-virtual {p0, v11, v9}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {v3, v11}, Landroid/graphics/GraphicBuffer;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    iget-object v12, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v13, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    invoke-static {v3}, Landroid/hardware/HardwareBuffer;->createFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    :cond_9
    iget-object v3, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method

.method private blacklist drawSnapshot(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drawing snapshot surface sizeMismatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSizeMismatch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SnapshotDrawerUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSizeMismatch:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->drawSizeMismatchSnapshot()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->drawSizeMatchSnapshot()V

    :goto_0
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist calculateSnapshotCrop(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotW:I

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotH:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotW:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotH:I

    int-to-float v2, v2

    iget-object v4, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v4}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget-object v4, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    :goto_1
    iget v6, p1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    invoke-virtual {v0, v5, v3, v6, v7}, Landroid/graphics/Rect;->inset(IIII)V

    return-object v0
.end method

.method public blacklist calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    iget v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotW:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotH:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v5, v4

    float-to-int v4, v5

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    return-object v2
.end method

.method public blacklist drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10

    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSystemBarBackgroundPainter:Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;

    invoke-virtual {v0}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget v2, p2, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    move v2, v3

    if-eqz v1, :cond_4

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v3

    iget-object v3, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSystemBarBackgroundPainter:Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;

    invoke-static {v3}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->-$$Nest$fgetmStatusBarColor(Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_2

    int-to-float v3, v0

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    move v6, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v7, v3

    if-eqz v2, :cond_3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    :goto_3
    int-to-float v3, v3

    move v8, v3

    invoke-static {}, Landroid/window/SnapshotDrawerUtils;->-$$Nest$sfgetsBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    if-eqz v2, :cond_5

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v7, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v8, v3

    invoke-static {}, Landroid/window/SnapshotDrawerUtils;->-$$Nest$sfgetsBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v9

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    iget-object v3, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSystemBarBackgroundPainter:Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;

    invoke-virtual {v3, p1, p2}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist drawNavigationBarBackground(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSystemBarBackgroundPainter:Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;

    invoke-virtual {v0, p1}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->drawNavigationBarBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public blacklist drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSystemBarBackgroundPainter:Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSystemBarBackgroundPainter:Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;

    invoke-virtual {v1}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public blacklist initiateSystemBarPainter(IIILandroid/app/ActivityManager$TaskDescription;I)V
    .locals 8

    new-instance v7, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;FI)V

    iput-object v7, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSystemBarBackgroundPainter:Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;

    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v0

    invoke-static {}, Landroid/window/SnapshotDrawerUtils;->-$$Nest$sfgetsBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v1

    if-eqz v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public blacklist setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSystemBarInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotW:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotH:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSizeMismatch:Z

    iget-boolean v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSizeMismatch:Z

    if-nez v0, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "SnapshotDrawerUtils"

    const-string v3, "Size mismatch by letterbox."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSizeMismatch:Z

    :cond_3
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSystemBarBackgroundPainter:Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;

    invoke-virtual {v0, p2}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;)V

    return-void
.end method
