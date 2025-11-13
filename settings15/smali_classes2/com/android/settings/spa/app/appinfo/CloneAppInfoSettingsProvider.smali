.class public final Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsProvider;

.field public static final parameter:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsProvider;->INSTANCE:Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsProvider;

    const-string v0, "packageName"

    sget-object v1, Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsProvider$parameter$1;->INSTANCE:Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsProvider$parameter$1;

    invoke-static {v0, v1}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v0

    const-string v1, "userId"

    sget-object v2, Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsProvider$parameter$2;->INSTANCE:Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsProvider$parameter$2;

    invoke-static {v1, v2}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v1

    filled-new-array {v0, v1}, [Landroidx/navigation/NamedNavArgument;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsProvider;->parameter:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final Page(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x28a3d741

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "userId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v4, :cond_0

    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v3, p2}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v3

    invoke-static {v3, p2}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v3

    :cond_0
    check-cast v3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v3, v3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const v5, -0x14250897

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_1

    new-instance v5, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    check-cast v3, Lkotlinx/coroutines/internal/ContextScope;

    invoke-direct {v5, v2, v0, v1, v3}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;ILkotlinx/coroutines/internal/ContextScope;)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast v5, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v0, 0x8

    invoke-static {v5, p2, v0}, Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsKt;->access$CloneAppInfoSettings(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v5, p2, v0}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->PackageFullyRemovedEffect(Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsProvider$Page$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsProvider$Page$1;-><init>(Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsProvider;Landroid/os/Bundle;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "CloneAppInfoSettingsProvider"

    return-object p0
.end method

.method public final getParameter()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsProvider;->parameter:Ljava/util/List;

    return-object p0
.end method
