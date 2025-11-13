.class public final Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public allowSurfaceChangesOnMove:Z

.field public final dragToDesktopAnimator:Landroid/animation/ValueAnimator;

.field public final mostRecentInput:Landroid/graphics/PointF;

.field public final position:Landroid/graphics/PointF;

.field public final startBounds:Landroid/graphics/Rect;

.field public final taskSurface:Landroid/view/SurfaceControl;

.field public final transactionFactory:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 8

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/Rect;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Landroid/view/SurfaceControl;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->startBounds:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->taskSurface:Landroid/view/SurfaceControl;

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->transactionFactory:Lkotlin/jvm/functions/Function0;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->mostRecentInput:Landroid/graphics/PointF;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 p3, 0x150

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance p3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f0702fc

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    new-instance p4, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$dragToDesktopAnimator$1$1;

    invoke-direct {p4, p0, p3, p1}, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$dragToDesktopAnimator$1$1;-><init>(Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;Landroid/view/SurfaceControl$Transaction;F)V

    invoke-virtual {p2, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->dragToDesktopAnimator:Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/graphics/PointF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->position:Landroid/graphics/PointF;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    sget-object p5, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$1;->INSTANCE:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$1;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final getScale()F
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->dragToDesktopAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public final setTaskPosition(FF)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->position:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->dragToDesktopAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->position:Landroid/graphics/PointF;

    iput p2, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method
