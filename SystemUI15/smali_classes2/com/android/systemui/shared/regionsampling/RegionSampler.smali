.class public final Lcom/android/systemui/shared/regionsampling/RegionSampler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;


# instance fields
.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final darkForegroundColor:I

.field public final displaySize:Landroid/graphics/Point;

.field public initialSampling:Landroid/app/WallpaperColors;

.field public final isLockscreen:Z

.field public final layoutChangedListener:Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;

.field public final lightForegroundColor:I

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public regionDarkness:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

.field public final regionSamplingEnabled:Z

.field public final sampledView:Landroid/view/View;

.field public final samplingBounds:Landroid/graphics/Rect;

.field public final tmpScreenLocation:[I

.field public final updateForegroundColor:Lkotlin/jvm/functions/Function0;

.field public final wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shared/regionsampling/RegionSampler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/regionsampling/RegionSampler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZLkotlin/jvm/functions/Function0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Z",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/shared/regionsampling/RegionSampler;-><init>(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLandroid/app/WallpaperManager;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLandroid/app/WallpaperManager;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZ",
            "Landroid/app/WallpaperManager;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->bgExecutor:Ljava/util/concurrent/Executor;

    iput-boolean p4, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->regionSamplingEnabled:Z

    iput-boolean p5, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->isLockscreen:Z

    iput-object p6, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->wallpaperManager:Landroid/app/WallpaperManager;

    iput-object p7, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->updateForegroundColor:Lkotlin/jvm/functions/Function0;

    sget-object p2, Lcom/android/systemui/shared/regionsampling/RegionDarkness;->DEFAULT:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    iput-object p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->regionDarkness:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->samplingBounds:Landroid/graphics/Rect;

    const/4 p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->tmpScreenLocation:[I

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->lightForegroundColor:I

    const/high16 p2, -0x1000000

    iput p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->darkForegroundColor:I

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->displaySize:Landroid/graphics/Point;

    new-instance p3, Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;-><init>(Lcom/android/systemui/shared/regionsampling/RegionSampler;)V

    iput-object p3, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->layoutChangedListener:Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLandroid/app/WallpaperManager;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, p5

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, p6

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/shared/regionsampling/RegionSampler;-><init>(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLandroid/app/WallpaperManager;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLkotlin/jvm/functions/Function0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZ",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/shared/regionsampling/RegionSampler;-><init>(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLandroid/app/WallpaperManager;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static synthetic getDisplaySize$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final calculateScreenLocation(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->tmpScreenLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->samplingBounds:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    iput v0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->samplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->samplingBounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    if-le v0, v2, :cond_0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->samplingBounds:Landroid/graphics/Rect;

    invoke-direct {p1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public final convertBounds(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->displaySize:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget v2, p1, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/4 v3, 0x0

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/4 v4, 0x1

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v2, v0

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    int-to-float p0, p0

    div-float/2addr v0, p0

    iput v0, v1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p1, p0

    iput p1, v1, Landroid/graphics/RectF;->bottom:F

    return-object v1
.end method

.method public final onColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p2

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_0

    move p1, v0

    :cond_0
    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/systemui/shared/regionsampling/RegionDarkness;->DARK:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/systemui/shared/regionsampling/RegionDarkness;->LIGHT:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->regionDarkness:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->updateForegroundColor:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
