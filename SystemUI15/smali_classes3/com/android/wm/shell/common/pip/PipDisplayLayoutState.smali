.class public final Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplayId:I

.field public final mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field public mScreenEdgeInsets:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mScreenEdgeInsets:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/wm/shell/common/DisplayLayout;

    invoke-direct {p1}, Lcom/android/wm/shell/common/DisplayLayout;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->reloadResources()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "  PipDisplayLayoutState"

    const-string v1, "    mDisplayId="

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayId:I

    const-string v2, "    getDisplayBounds="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    mScreenEdgeInsets="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mScreenEdgeInsets:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getDisplayBounds()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;
    .locals 1

    new-instance v0, Lcom/android/wm/shell/common/DisplayLayout;

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-object v0
.end method

.method public final getInsetBounds()Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v3

    iget v3, v3, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    iget v5, v5, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, p0

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public final reloadResources()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1303de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/common/pip/PipUtils;->isPip2ExperimentEnabled:Ljava/lang/Boolean;

    const/4 v5, 0x1

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {v2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mScreenEdgeInsets:Landroid/graphics/Point;

    return-void
.end method

.method public final rotateTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/common/DisplayLayout;->rotateTo(Landroid/content/res/Resources;I)V

    return-void
.end method
