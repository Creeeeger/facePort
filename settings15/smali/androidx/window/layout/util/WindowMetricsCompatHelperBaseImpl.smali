.class public final Landroidx/window/layout/util/WindowMetricsCompatHelperBaseImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/window/layout/util/WindowMetricsCompatHelper;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/window/layout/util/WindowMetricsCompatHelperBaseImpl;",
        "Landroidx/window/layout/util/WindowMetricsCompatHelper;",
        "()V",
        "currentWindowMetrics",
        "Landroidx/window/layout/WindowMetrics;",
        "activity",
        "Landroid/app/Activity;",
        "densityCompatHelper",
        "Landroidx/window/layout/util/DensityCompatHelper;",
        "context",
        "Landroid/content/Context;",
        "maximumWindowMetrics",
        "translateWindowMetrics",
        "windowMetrics",
        "Landroid/view/WindowMetrics;",
        "density",
        "",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/window/layout/util/WindowMetricsCompatHelperBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/layout/util/WindowMetricsCompatHelperBaseImpl;

    invoke-direct {v0}, Landroidx/window/layout/util/WindowMetricsCompatHelperBaseImpl;-><init>()V

    sput-object v0, Landroidx/window/layout/util/WindowMetricsCompatHelperBaseImpl;->INSTANCE:Landroidx/window/layout/util/WindowMetricsCompatHelperBaseImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentWindowMetrics(Landroid/app/Activity;Landroidx/window/layout/util/DensityCompatHelper;)Landroidx/window/layout/WindowMetrics;
    .locals 3

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "densityCompatHelper"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/window/layout/WindowMetrics;

    new-instance v0, Landroidx/window/core/Bounds;

    sget-object v1, Landroidx/window/layout/util/BoundsHelper;->Companion:Landroidx/window/layout/util/BoundsHelper$Companion;

    invoke-virtual {v1}, Landroidx/window/layout/util/BoundsHelper$Companion;->getInstance()Landroidx/window/layout/util/BoundsHelper;

    move-result-object v1

    invoke-interface {v1, p1}, Landroidx/window/layout/util/BoundsHelper;->currentWindowBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;

    invoke-direct {v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;-><init>()V

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    const-string v2, "Builder().build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Landroidx/window/layout/util/DensityCompatHelper;->density(Landroid/content/Context;)F

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroidx/window/layout/WindowMetrics;-><init>(Landroidx/window/core/Bounds;Landroidx/core/view/WindowInsetsCompat;F)V

    return-object p0
.end method

.method public currentWindowMetrics(Landroid/content/Context;Landroidx/window/layout/util/DensityCompatHelper;)Landroidx/window/layout/WindowMetrics;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "densityCompatHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/layout/util/ContextCompatHelper;->INSTANCE:Landroidx/window/layout/util/ContextCompatHelper;

    invoke-virtual {v0, p1}, Landroidx/window/layout/util/ContextCompatHelper;->unwrapUiContext$window_release(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0, p2}, Landroidx/window/layout/util/WindowMetricsCompatHelperBaseImpl;->currentWindowMetrics(Landroid/app/Activity;Landroidx/window/layout/util/DensityCompatHelper;)Landroidx/window/layout/WindowMetrics;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p0, v0, Landroid/inputmethodservice/InputMethodService;

    if-eqz p0, :cond_1

    const-string/jumbo p0, "window"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/WindowManager;

    sget-object v0, Landroidx/window/layout/util/DisplayHelper;->INSTANCE:Landroidx/window/layout/util/DisplayHelper;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    const-string/jumbo v1, "wm.defaultDisplay"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroidx/window/layout/util/DisplayHelper;->getRealSizeForDisplay(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object p0

    new-instance v1, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p0, Landroidx/window/layout/WindowMetrics;

    invoke-interface {p2, p1}, Landroidx/window/layout/util/DensityCompatHelper;->density(Landroid/content/Context;)F

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/window/layout/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroidx/core/view/WindowInsetsCompat;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a UiContext"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public maximumWindowMetrics(Landroid/content/Context;Landroidx/window/layout/util/DensityCompatHelper;)Landroidx/window/layout/WindowMetrics;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "densityCompatHelper"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/window/layout/WindowMetrics;

    new-instance v0, Landroidx/window/core/Bounds;

    sget-object v1, Landroidx/window/layout/util/BoundsHelper;->Companion:Landroidx/window/layout/util/BoundsHelper$Companion;

    invoke-virtual {v1}, Landroidx/window/layout/util/BoundsHelper$Companion;->getInstance()Landroidx/window/layout/util/BoundsHelper;

    move-result-object v1

    invoke-interface {v1, p1}, Landroidx/window/layout/util/BoundsHelper;->maximumWindowBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;

    invoke-direct {v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;-><init>()V

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    const-string v2, "Builder().build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Landroidx/window/layout/util/DensityCompatHelper;->density(Landroid/content/Context;)F

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroidx/window/layout/WindowMetrics;-><init>(Landroidx/window/core/Bounds;Landroidx/core/view/WindowInsetsCompat;F)V

    return-object p0
.end method

.method public translateWindowMetrics(Landroid/view/WindowMetrics;F)Landroidx/window/layout/WindowMetrics;
    .locals 0

    const-string/jumbo p0, "windowMetrics"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "translateWindowMetrics not available before API30"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
