.class public final Landroidx/picker/features/composable/ComposableType$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $$INSTANCE:Landroidx/picker/features/composable/ComposableType$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static isSame$picker_app_release(Landroidx/picker/features/composable/ComposableType;Landroidx/picker/features/composable/ComposableType;)Z
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Landroidx/picker/features/composable/ComposableType;->getLeftFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object v1

    invoke-interface {p1}, Landroidx/picker/features/composable/ComposableType;->getLeftFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-interface {p0}, Landroidx/picker/features/composable/ComposableType;->getIconFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object v1

    invoke-interface {p1}, Landroidx/picker/features/composable/ComposableType;->getIconFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-interface {p0}, Landroidx/picker/features/composable/ComposableType;->getTitleFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object v1

    invoke-interface {p1}, Landroidx/picker/features/composable/ComposableType;->getTitleFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-interface {p0}, Landroidx/picker/features/composable/ComposableType;->getWidgetFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object p0

    invoke-interface {p1}, Landroidx/picker/features/composable/ComposableType;->getWidgetFrame()Landroidx/picker/features/composable/ComposableFrame;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method
