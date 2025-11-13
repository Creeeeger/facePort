.class final Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u000b\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "page",
        "Lcom/android/settingslib/spa/framework/common/SettingsPage;",
        "invoke",
        "(Lcom/android/settingslib/spa/framework/common/SettingsPage;Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $controller:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;

.field final synthetic $isPageEnabled:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1$1;->$isPageEnabled:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1$1;->$controller:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/settingslib/spa/framework/common/SettingsPage;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    const-string p3, "page"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const p3, 0x680d538f

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p3, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1$1;->$isPageEnabled:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_0

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    const p0, 0x680d53c3

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1$1$2;

    invoke-direct {p0, p1, v2}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1$1$2;-><init>(Lcom/android/settingslib/spa/framework/common/SettingsPage;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v1, p0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/16 p0, 0x8

    invoke-static {p1, p2, p0}, Lcom/android/settingslib/spa/framework/util/PageLoggerKt;->PageLogger(Lcom/android/settingslib/spa/framework/common/SettingsPage;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p1, p2, p0}, Lcom/android/settingslib/spa/framework/common/SettingsPage;->UiLayout(Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_0

    :cond_1
    const p1, 0x680d5494

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance p1, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1$1$3;

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1$1;->$controller:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;

    invoke-direct {p1, p0, v2}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1$1$3;-><init>(Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v1, p1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_0
    return-object v1
.end method
