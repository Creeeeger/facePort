.class public final Landroidx/window/layout/WindowMetricsCalculator$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$INSTANCE:Landroidx/window/layout/WindowMetricsCalculator$Companion;

.field public static final decorator:Lkotlin/jvm/functions/Function1;

.field public static final windowMetricsCalculatorCompat:Landroidx/window/layout/WindowMetricsCalculatorCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/window/layout/WindowMetricsCalculator$Companion;

    invoke-direct {v0}, Landroidx/window/layout/WindowMetricsCalculator$Companion;-><init>()V

    sput-object v0, Landroidx/window/layout/WindowMetricsCalculator$Companion;->$$INSTANCE:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    sget-object v0, Landroidx/window/layout/WindowMetricsCalculator$Companion$decorator$1;->INSTANCE:Landroidx/window/layout/WindowMetricsCalculator$Companion$decorator$1;

    sput-object v0, Landroidx/window/layout/WindowMetricsCalculator$Companion;->decorator:Lkotlin/jvm/functions/Function1;

    new-instance v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;-><init>(Landroidx/window/layout/util/DensityCompatHelper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/layout/WindowMetricsCalculator$Companion;->windowMetricsCalculatorCompat:Landroidx/window/layout/WindowMetricsCalculatorCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrCreate()Landroidx/window/layout/WindowMetricsCalculator;
    .locals 1

    sget-object v0, Landroidx/window/layout/WindowMetricsCalculator$Companion;->decorator:Lkotlin/jvm/functions/Function1;

    check-cast v0, Landroidx/window/layout/WindowMetricsCalculator$Companion$decorator$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/window/layout/WindowMetricsCalculator$Companion;->windowMetricsCalculatorCompat:Landroidx/window/layout/WindowMetricsCalculatorCompat;

    return-object v0
.end method

.method public static translateWindowMetrics$window_release(Landroid/view/WindowMetrics;)Landroidx/window/layout/WindowMetrics;
    .locals 4

    sget-object v0, Landroidx/window/layout/util/WindowMetricsCompatHelper;->Companion:Landroidx/window/layout/util/WindowMetricsCompatHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/window/layout/util/WindowMetricsCompatHelperApi34Impl;->INSTANCE:Landroidx/window/layout/util/WindowMetricsCompatHelperApi34Impl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/window/layout/WindowMetrics;

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getDensity()F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/window/layout/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroidx/core/view/WindowInsetsCompat;F)V

    return-object v0
.end method
