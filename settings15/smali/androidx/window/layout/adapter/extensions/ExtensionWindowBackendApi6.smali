.class public final Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi6;
.super Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi2;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/window/RequiresWindowSdkExtension;
    version = 0x6
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi6;",
        "Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi2;",
        "component",
        "Landroidx/window/extensions/layout/WindowLayoutComponent;",
        "adapter",
        "Landroidx/window/core/ConsumerAdapter;",
        "(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/window/core/ConsumerAdapter;)V",
        "supportedPostures",
        "",
        "Landroidx/window/layout/SupportedPosture;",
        "getSupportedPostures",
        "()Ljava/util/List;",
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


# direct methods
.method public constructor <init>(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/window/core/ConsumerAdapter;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi2;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/window/core/ConsumerAdapter;)V

    return-void
.end method


# virtual methods
.method public getSupportedPostures()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/window/layout/SupportedPosture;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->INSTANCE:Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;

    invoke-virtual {p0}, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;->getComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;

    move-result-object p0

    invoke-interface {p0}, Landroidx/window/extensions/layout/WindowLayoutComponent;->getSupportedWindowFeatures()Landroidx/window/extensions/layout/SupportedWindowFeatures;

    move-result-object p0

    const-string v1, "component.supportedWindowFeatures"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->translate$window_release(Landroidx/window/extensions/layout/SupportedWindowFeatures;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
