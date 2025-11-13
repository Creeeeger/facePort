.class public abstract Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final LocalNavController:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt$LocalNavController$2;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt$LocalNavController$2;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->LocalNavController:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    return-void
.end method

.method public static final navigator(Landroidx/compose/runtime/Composer;Ljava/lang/String;)Lkotlin/jvm/functions/Function0;
    .locals 3

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0xd8c712a

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt$navigator$1;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt$navigator$1;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p1

    :cond_0
    sget-object v1, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->LocalNavController:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    new-instance v2, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt$navigator$2;

    invoke-direct {v2, v1, p1, v0}, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt$navigator$2;-><init>(Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v2
.end method
