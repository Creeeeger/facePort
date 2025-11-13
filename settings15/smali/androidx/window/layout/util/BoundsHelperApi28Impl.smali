.class final Landroidx/window/layout/util/BoundsHelperApi28Impl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/window/layout/util/BoundsHelper;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0017J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/window/layout/util/BoundsHelperApi28Impl;",
        "Landroidx/window/layout/util/BoundsHelper;",
        "()V",
        "currentWindowBounds",
        "Landroid/graphics/Rect;",
        "activity",
        "Landroid/app/Activity;",
        "maximumWindowBounds",
        "context",
        "Landroid/content/Context;",
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
.field public static final INSTANCE:Landroidx/window/layout/util/BoundsHelperApi28Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/layout/util/BoundsHelperApi28Impl;

    invoke-direct {v0}, Landroidx/window/layout/util/BoundsHelperApi28Impl;-><init>()V

    sput-object v0, Landroidx/window/layout/util/BoundsHelperApi28Impl;->INSTANCE:Landroidx/window/layout/util/BoundsHelperApi28Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentWindowBounds(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanUncheckedReflection",
            "BlockedPrivateApi"
        }
    .end annotation

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Landroid/content/res/Configuration;

    const-string/jumbo v4, "windowConfiguration"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Landroidx/window/layout/util/ActivityCompatHelperApi24;->INSTANCE:Landroidx/window/layout/util/ActivityCompatHelperApi24;

    invoke-virtual {v3, p1}, Landroidx/window/layout/util/ActivityCompatHelperApi24;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "null cannot be cast to non-null type android.graphics.Rect"

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v6, "getBounds"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v6, "getAppBounds"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_0
    instance-of v3, v0, Ljava/lang/NoSuchFieldException;

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    instance-of v3, v0, Ljava/lang/NoSuchMethodException;

    :goto_1
    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    instance-of v3, v0, Ljava/lang/IllegalAccessException;

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    :goto_3
    if-eqz v1, :cond_c

    sget-object v1, Landroidx/window/layout/util/BoundsHelper;->Companion:Landroidx/window/layout/util/BoundsHelper$Companion;

    invoke-virtual {v1}, Landroidx/window/layout/util/BoundsHelper$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1, p0}, Landroidx/window/layout/util/BoundsHelperKt;->access$getRectSizeFromDisplay(Landroid/app/Activity;Landroid/graphics/Rect;)V

    :goto_4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    sget-object v3, Landroidx/window/layout/util/ActivityCompatHelperApi24;->INSTANCE:Landroidx/window/layout/util/ActivityCompatHelperApi24;

    invoke-virtual {v3, p1}, Landroidx/window/layout/util/ActivityCompatHelperApi24;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {p1}, Landroidx/window/layout/util/BoundsHelperKt;->access$getNavigationBarHeight(Landroid/content/Context;)I

    move-result v4

    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    add-int v6, v5, v4

    iget v7, v1, Landroid/graphics/Point;->y:I

    if-ne v6, v7, :cond_4

    add-int/2addr v5, v4

    iput v5, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    :cond_4
    iget v5, p0, Landroid/graphics/Rect;->right:I

    add-int v6, v5, v4

    iget v7, v1, Landroid/graphics/Point;->x:I

    if-ne v6, v7, :cond_5

    add-int/2addr v5, v4

    iput v5, p0, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :cond_5
    iget v5, p0, Landroid/graphics/Rect;->left:I

    if-ne v5, v4, :cond_6

    iput v2, p0, Landroid/graphics/Rect;->left:I

    :cond_6
    :goto_5
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, v1, Landroid/graphics/Point;->x:I

    if-lt v4, v5, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    if-ge v4, v5, :cond_b

    :cond_7
    invoke-virtual {v3, p1}, Landroidx/window/layout/util/ActivityCompatHelperApi24;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-static {v0}, Landroidx/window/layout/util/BoundsHelperKt;->access$getCutoutForDisplay(Landroid/view/Display;)Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_b

    iget v0, p0, Landroid/graphics/Rect;->left:I

    sget-object v3, Landroidx/window/layout/util/DisplayCompatHelperApi28;->INSTANCE:Landroidx/window/layout/util/DisplayCompatHelperApi28;

    invoke-virtual {v3, p1}, Landroidx/window/layout/util/DisplayCompatHelperApi28;->safeInsetLeft(Landroid/view/DisplayCutout;)I

    move-result v4

    if-ne v0, v4, :cond_8

    iput v2, p0, Landroid/graphics/Rect;->left:I

    :cond_8
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v4

    invoke-virtual {v3, p1}, Landroidx/window/layout/util/DisplayCompatHelperApi28;->safeInsetRight(Landroid/view/DisplayCutout;)I

    move-result v4

    if-ne v0, v4, :cond_9

    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, p1}, Landroidx/window/layout/util/DisplayCompatHelperApi28;->safeInsetRight(Landroid/view/DisplayCutout;)I

    move-result v4

    add-int/2addr v4, v0

    iput v4, p0, Landroid/graphics/Rect;->right:I

    :cond_9
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, p1}, Landroidx/window/layout/util/DisplayCompatHelperApi28;->safeInsetTop(Landroid/view/DisplayCutout;)I

    move-result v4

    if-ne v0, v4, :cond_a

    iput v2, p0, Landroid/graphics/Rect;->top:I

    :cond_a
    iget v0, v1, Landroid/graphics/Point;->y:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-virtual {v3, p1}, Landroidx/window/layout/util/DisplayCompatHelperApi28;->safeInsetBottom(Landroid/view/DisplayCutout;)I

    move-result v1

    if-ne v0, v1, :cond_b

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, p1}, Landroidx/window/layout/util/DisplayCompatHelperApi28;->safeInsetBottom(Landroid/view/DisplayCutout;)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_b
    return-object p0

    :cond_c
    throw v0
.end method

.method public maximumWindowBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/window/layout/util/BoundsHelperApi24Impl;->INSTANCE:Landroidx/window/layout/util/BoundsHelperApi24Impl;

    invoke-virtual {p0, p1}, Landroidx/window/layout/util/BoundsHelperApi24Impl;->maximumWindowBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
