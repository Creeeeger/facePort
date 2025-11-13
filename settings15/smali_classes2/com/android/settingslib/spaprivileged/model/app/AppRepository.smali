.class public interface abstract Lcom/android/settingslib/spaprivileged/model/app/AppRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public produceLabel(Landroid/content/pm/ApplicationInfo;ZLandroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;
    .locals 8

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x2e343b32

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    invoke-static {p3}, Lcom/android/settingslib/spaprivileged/framework/compose/StringResourcesKt;->placeholder(Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1;

    const/4 v6, 0x0

    move-object v1, v7

    move v2, p2

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/spaprivileged/model/app/AppRepository$produceLabel$1;-><init>(ZLcom/android/settingslib/spaprivileged/model/app/AppRepository;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lkotlin/coroutines/Continuation;)V

    const/16 p0, 0x240

    invoke-static {v0, p1, v7, p3, p0}, Landroidx/compose/runtime/SnapshotStateKt;->produceState(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method
