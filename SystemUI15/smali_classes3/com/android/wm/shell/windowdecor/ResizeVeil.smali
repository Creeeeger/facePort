.class public final Lcom/android/wm/shell/windowdecor/ResizeVeil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appIcon:Landroid/graphics/Bitmap;

.field public backgroundSurface:Landroid/view/SurfaceControl;

.field public final context:Landroid/content/Context;

.field public final darkColors:Landroidx/compose/material3/ColorScheme;

.field public final decorThemeUtil:Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;

.field public display:Landroid/view/Display;

.field public final displayController:Lcom/android/wm/shell/common/DisplayController;

.field public iconSize:I

.field public iconSurface:Landroid/view/SurfaceControl;

.field public isVisible:Z

.field public final lightColors:Landroidx/compose/material3/ColorScheme;

.field public final onDisplaysChangedListener:Lcom/android/wm/shell/windowdecor/ResizeVeil$onDisplaysChangedListener$1;

.field public parentSurface:Landroid/view/SurfaceControl;

.field public final surfaceControlBuilderFactory:Lcom/android/wm/shell/windowdecor/ResizeVeil$SurfaceControlBuilderFactory;

.field public final surfaceControlTransactionSupplier:Ljava/util/function/Supplier;

.field public final surfaceControlViewHostFactory:Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;

.field public final surfaceSession:Landroid/view/SurfaceSession;

.field public veilAnimator:Landroid/animation/ValueAnimator;

.field public veilSurface:Landroid/view/SurfaceControl;

.field public viewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/windowdecor/ResizeVeil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/windowdecor/ResizeVeil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Landroid/graphics/Bitmap;Landroid/view/SurfaceControl;Ljava/util/function/Supplier;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Landroid/graphics/Bitmap;",
            "Landroid/view/SurfaceControl;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ")V"
        }
    .end annotation

    const/16 v9, 0x60

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/windowdecor/ResizeVeil;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Landroid/graphics/Bitmap;Landroid/view/SurfaceControl;Ljava/util/function/Supplier;Lcom/android/wm/shell/windowdecor/ResizeVeil$SurfaceControlBuilderFactory;Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;Landroid/app/ActivityManager$RunningTaskInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Landroid/graphics/Bitmap;Landroid/view/SurfaceControl;Ljava/util/function/Supplier;Lcom/android/wm/shell/windowdecor/ResizeVeil$SurfaceControlBuilderFactory;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Landroid/graphics/Bitmap;",
            "Landroid/view/SurfaceControl;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Lcom/android/wm/shell/windowdecor/ResizeVeil$SurfaceControlBuilderFactory;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ")V"
        }
    .end annotation

    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/windowdecor/ResizeVeil;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Landroid/graphics/Bitmap;Landroid/view/SurfaceControl;Ljava/util/function/Supplier;Lcom/android/wm/shell/windowdecor/ResizeVeil$SurfaceControlBuilderFactory;Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;Landroid/app/ActivityManager$RunningTaskInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Landroid/graphics/Bitmap;Landroid/view/SurfaceControl;Ljava/util/function/Supplier;Lcom/android/wm/shell/windowdecor/ResizeVeil$SurfaceControlBuilderFactory;Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Landroid/graphics/Bitmap;",
            "Landroid/view/SurfaceControl;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Lcom/android/wm/shell/windowdecor/ResizeVeil$SurfaceControlBuilderFactory;",
            "Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->displayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->appIcon:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->parentSurface:Landroid/view/SurfaceControl;

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->surfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->surfaceControlBuilderFactory:Lcom/android/wm/shell/windowdecor/ResizeVeil$SurfaceControlBuilderFactory;

    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->surfaceControlViewHostFactory:Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;

    new-instance p2, Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->decorThemeUtil:Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;

    invoke-static {p1}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicLightColorScheme(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->lightColors:Landroidx/compose/material3/ColorScheme;

    invoke-static {p1}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicDarkColorScheme(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->darkColors:Landroidx/compose/material3/ColorScheme;

    new-instance p1, Landroid/view/SurfaceSession;

    invoke-direct {p1}, Landroid/view/SurfaceSession;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->surfaceSession:Landroid/view/SurfaceSession;

    new-instance p1, Lcom/android/wm/shell/windowdecor/ResizeVeil$onDisplaysChangedListener$1;

    invoke-direct {p1, p8, p0}, Lcom/android/wm/shell/windowdecor/ResizeVeil$onDisplaysChangedListener$1;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/ResizeVeil;)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->onDisplaysChangedListener:Lcom/android/wm/shell/windowdecor/ResizeVeil$onDisplaysChangedListener$1;

    invoke-virtual {p0, p8}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->setupResizeVeil(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Landroid/graphics/Bitmap;Landroid/view/SurfaceControl;Ljava/util/function/Supplier;Lcom/android/wm/shell/windowdecor/ResizeVeil$SurfaceControlBuilderFactory;Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;Landroid/app/ActivityManager$RunningTaskInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/windowdecor/ResizeVeil$1;

    invoke-direct {v0}, Lcom/android/wm/shell/windowdecor/ResizeVeil$1;-><init>()V

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p6

    :goto_0
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/wm/shell/windowdecor/ResizeVeil$2;

    invoke-direct {v0}, Lcom/android/wm/shell/windowdecor/ResizeVeil$2;-><init>()V

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object/from16 v8, p7

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/windowdecor/ResizeVeil;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Landroid/graphics/Bitmap;Landroid/view/SurfaceControl;Ljava/util/function/Supplier;Lcom/android/wm/shell/windowdecor/ResizeVeil$SurfaceControlBuilderFactory;Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method


# virtual methods
.method public final relayout(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v3, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->iconSize:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->iconSize:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->iconSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p2, v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->parentSurface:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->parentSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2, p0, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    :goto_0
    return-void
.end method

.method public final setupResizeVeil(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 10

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->displayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->display:Landroid/view/Display;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->onDisplaysChangedListener:Lcom/android/wm/shell/windowdecor/ResizeVeil$onDisplaysChangedListener$1;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    return-void

    :cond_0
    const-string v0, "ResizeVeil#setupResizeVeil"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const-string v2, "Resize veil of Task="

    invoke-static {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->surfaceControlBuilderFactory:Lcom/android/wm/shell/windowdecor/ResizeVeil$SurfaceControlBuilderFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->parentSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilSurface:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const-string v3, "Resize veil background of Task="

    invoke-static {v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->surfaceSession:Landroid/view/SurfaceSession;

    new-instance v4, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v4, v3}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v4, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->backgroundSurface:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const-string v3, "Resize veil icon of Task="

    invoke-static {v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Builder;-><init>()V

    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->iconSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070322

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->iconSize:I

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00df

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0e06

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->iconSize:I

    const/4 v9, -0x2

    const/4 v7, 0x2

    const/16 v8, 0x8

    move-object v4, v1

    move v5, v6

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Resize veil icon window of Task="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    new-instance v3, Landroid/view/WindowlessWindowManager;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->iconSurface:Landroid/view/SurfaceControl;

    invoke-direct {v3, p1, v4, v2}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->display:Landroid/view/Display;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->surfaceControlViewHostFactory:Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/view/SurfaceControlViewHost;

    const-string v5, "ResizeVeil"

    invoke-direct {v4, p1, v2, v3, v5}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->viewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v4, v0, v1}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final showVeil(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 7

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->viewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->isVisible:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->isVisible:Z

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->backgroundSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->iconSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilSurface:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->parentSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1, v4, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->parentSurface:Landroid/view/SurfaceControl;

    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->decorThemeUtil:Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;

    invoke-virtual {p2, p4}, Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;->getAppTheme(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/windowdecor/common/Theme;

    move-result-object p2

    sget-object p4, Lcom/android/wm/shell/windowdecor/ResizeVeil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p4, p2

    if-eq p2, v1, :cond_4

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->darkColors:Landroidx/compose/material3/ColorScheme;

    iget-wide v5, p2, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    goto :goto_0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_4
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->lightColors:Landroidx/compose/material3/ColorScheme;

    iget-wide v5, p2, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    const p4, 0xea60

    invoke-virtual {p2, v4, p4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p2, v2, p4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result p4

    invoke-static {p4}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p4

    invoke-virtual {p2, v2, p4}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p3, p1}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->relayout(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p5, :cond_8

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_5
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->surfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->surfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/SurfaceControl$Transaction;

    new-array p4, v0, [F

    fill-array-data p4, :array_0

    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p4

    const-wide/16 v4, 0x64

    invoke-virtual {p4, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p5, Lcom/android/wm/shell/windowdecor/ResizeVeil$showVeil$1$1;

    invoke-direct {p5, p2, v2, p4}, Lcom/android/wm/shell/windowdecor/ResizeVeil$showVeil$1$1;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p4, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p5, Lcom/android/wm/shell/windowdecor/ResizeVeil$showVeil$1$2;

    invoke-direct {p5, p2, v2}, Lcom/android/wm/shell/windowdecor/ResizeVeil$showVeil$1$2;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {p4, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilAnimator:Landroid/animation/ValueAnimator;

    new-array p2, v0, [F

    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/android/wm/shell/windowdecor/ResizeVeil$showVeil$iconAnimator$1$1;

    invoke-direct {p4, p3, v3, p2}, Lcom/android/wm/shell/windowdecor/ResizeVeil$showVeil$iconAnimator$1$1;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p2, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p4, Lcom/android/wm/shell/windowdecor/ResizeVeil$showVeil$iconAnimator$1$2;

    invoke-direct {p4, p3, v3}, Lcom/android/wm/shell/windowdecor/ResizeVeil$showVeil$iconAnimator$1$2;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {p2, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v3}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_7
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_8
    invoke-virtual {p1, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, v3, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, v2, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_9
    :goto_1
    return-void

    :cond_a
    :goto_2
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final updateResizeVeil(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->isVisible:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->relayout(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
