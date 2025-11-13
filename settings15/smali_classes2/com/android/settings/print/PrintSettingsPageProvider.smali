.class public final Lcom/android/settings/print/PrintSettingsPageProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# static fields
.field public static final INSTANCE:Lcom/android/settings/print/PrintSettingsPageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/print/PrintSettingsPageProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/print/PrintSettingsPageProvider;->INSTANCE:Lcom/android/settings/print/PrintSettingsPageProvider;

    return-void
.end method

.method public static final access$PrintServices(Lcom/android/settings/print/PrintSettingsPageProvider;Lcom/android/settings/print/PrintRepository;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v1, 0x5dab33ba

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0x31bfa87f

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/settings/print/PrintRepository;->printManager:Landroid/print/PrintManager;

    const-string v2, "<this>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/settings/print/PrintRepository$Companion$printServicesChangeFlow$1;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/settings/print/PrintRepository$Companion$printServicesChangeFlow$1;-><init>(Landroid/print/PrintManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    sget-object v3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v4, Lcom/android/settings/print/PrintRepository$printServicesFlow$$inlined$map$1;

    invoke-direct {v4, v1, p1, v0}, Lcom/android/settings/print/PrintRepository$printServicesFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/print/PrintRepository;I)V

    invoke-static {v4, v2}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v4, Lcom/android/settings/print/PrintRepository$printServicesFlow$$inlined$map$1;

    const/4 v5, 0x1

    invoke-direct {v4, v1, p1, v5}, Lcom/android/settings/print/PrintRepository$printServicesFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/print/PrintRepository;I)V

    invoke-static {v4, v2}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/16 v2, 0x38

    invoke-static {v1, v0, p2, v2}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    const v1, 0x7f141d08

    invoke-static {p2, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/print/PrintSettingsPageProvider$PrintServices$1;

    invoke-direct {v2, v0}, Lcom/android/settings/print/PrintSettingsPageProvider$PrintServices$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    const v0, -0x7e46a1ea

    invoke-static {v0, v2, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v2, 0x30

    invoke-static {v1, v0, p2, v2}, Lcom/android/settingslib/spa/widget/ui/CategoryKt;->Category(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/android/settings/print/PrintSettingsPageProvider$PrintServices$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/print/PrintSettingsPageProvider$PrintServices$2;-><init>(Lcom/android/settings/print/PrintSettingsPageProvider;Lcom/android/settings/print/PrintRepository;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void
.end method


# virtual methods
.method public final Page(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x777ab3e5

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x7f141d05

    invoke-static {p2, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/settings/print/ComposableSingletons$PrintSettingsPageProviderKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/16 v4, 0x180

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/scaffold/RegularScaffoldKt;->RegularScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/android/settings/print/PrintSettingsPageProvider$Page$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/print/PrintSettingsPageProvider$Page$1;-><init>(Lcom/android/settings/print/PrintSettingsPageProvider;Landroid/os/Bundle;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public final PrintService(Lcom/android/settings/print/PrintRepository$PrintServiceDisplayInfo;Landroidx/compose/runtime/Composer;I)V
    .locals 3

    const-string v0, "displayInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x5bf64544

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$1;

    invoke-direct {v1, v0, p1}, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$1;-><init>(Landroid/content/Context;Lcom/android/settings/print/PrintRepository$PrintServiceDisplayInfo;)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2, p2, v2, v0}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/print/PrintSettingsPageProvider$PrintService$2;-><init>(Lcom/android/settings/print/PrintSettingsPageProvider;Lcom/android/settings/print/PrintRepository$PrintServiceDisplayInfo;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "PrintSettings"

    return-object p0
.end method
