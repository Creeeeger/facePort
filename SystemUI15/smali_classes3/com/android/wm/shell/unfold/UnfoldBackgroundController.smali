.class public final Lcom/android/wm/shell/unfold/UnfoldBackgroundController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBackgroundColor:[F

.field public mBackgroundColorSet:[F

.field public mBackgroundLayer:Landroid/view/SurfaceControl;

.field public final mSplitScreenBackgroundColor:[F

.field public mSplitScreenVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mSplitScreenVisible:Z

    const v0, 0x7f060ac5

    invoke-static {v0, p1}, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->getRGBColorFromId(ILandroid/content/Context;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundColor:[F

    const v0, 0x7f06094f

    invoke-static {v0, p1}, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->getRGBColorFromId(ILandroid/content/Context;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mSplitScreenBackgroundColor:[F

    return-void
.end method

.method public static getRGBColorFromId(ILandroid/content/Context;)[F
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 p1, 0x1

    aput v1, v0, p1

    const/4 p1, 0x2

    aput p0, v0, p1

    return-object v0
.end method


# virtual methods
.method public final ensureBackground(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mSplitScreenVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mSplitScreenBackgroundColor:[F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundColor:[F

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundLayer:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundColorSet:[F

    if-eq v2, v0, :cond_1

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundColorSet:[F

    :cond_1
    return-void

    :cond_2
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v2, "app-unfold-background"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "AppUnfoldTransitionController"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundLayer:Landroid/view/SurfaceControl;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundColorSet:[F

    return-void
.end method
