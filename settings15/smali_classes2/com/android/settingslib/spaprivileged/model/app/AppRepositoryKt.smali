.class public abstract Lcom/android/settingslib/spaprivileged/model/app/AppRepositoryKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final rememberAppRepository(Landroidx/compose/runtime/Composer;)Lcom/android/settingslib/spaprivileged/model/app/AppRepositoryImpl;
    .locals 2

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x102129bb

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/settingslib/spaprivileged/model/app/AppRepositoryKt$rememberAppRepository$1;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/app/AppRepositoryKt$rememberAppRepository$1;

    invoke-static {v0, p0}, Lcom/android/settingslib/spa/framework/compose/RuntimeUtilsKt;->rememberContext(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/spaprivileged/model/app/AppRepositoryImpl;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v0
.end method
