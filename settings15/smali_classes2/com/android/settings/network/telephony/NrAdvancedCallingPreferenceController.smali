.class public final Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;
.super Lcom/android/settings/spa/preference/ComposePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\r\u0010\r\u001a\u00020\u000eH\u0017\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0010\u001a\u00020\u000cH\u0016J\u001a\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012\u00b2\u0006\n\u0010\u0013\u001a\u00020\u0014X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0015\u001a\u00020\u0014X\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;",
        "Lcom/android/settings/spa/preference/ComposePreferenceController;",
        "context",
        "Landroid/content/Context;",
        "key",
        "",
        "callStateRepository",
        "Lcom/android/settings/network/telephony/CallStateRepository;",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/CallStateRepository;)V",
        "repository",
        "Lcom/android/settings/network/telephony/VoNrRepository;",
        "subId",
        "",
        "Content",
        "",
        "(Landroidx/compose/runtime/Composer;I)V",
        "getAvailabilityStatus",
        "init",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core",
        "isInCall",
        "",
        "isEnabled"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final callStateRepository:Lcom/android/settings/network/telephony/CallStateRepository;

.field private repository:Lcom/android/settings/network/telephony/VoNrRepository;

.field private subId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/CallStateRepository;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/CallStateRepository;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callStateRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/spa/preference/ComposePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->callStateRepository:Lcom/android/settings/network/telephony/CallStateRepository;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->subId:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/CallStateRepository;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    new-instance p3, Lcom/android/settings/network/telephony/CallStateRepository;

    invoke-direct {p3, p1}, Lcom/android/settings/network/telephony/CallStateRepository;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/CallStateRepository;)V

    return-void
.end method

.method private static final Content$lambda$1(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final Content$lambda$3(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$Content$lambda$1(Landroidx/compose/runtime/State;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->Content$lambda$1(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$Content$lambda$3(Landroidx/compose/runtime/State;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->Content$lambda$3(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getRepository$p(Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;)Lcom/android/settings/network/telephony/VoNrRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->repository:Lcom/android/settings/network/telephony/VoNrRepository;

    return-object p0
.end method

.method public static synthetic init$default(Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;ILcom/android/settings/network/telephony/VoNrRepository;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Lcom/android/settings/network/telephony/VoNrRepository;

    iget-object p3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p4, "mContext"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p3, p1}, Lcom/android/settings/network/telephony/VoNrRepository;-><init>(Landroid/content/Context;I)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->init(ILcom/android/settings/network/telephony/VoNrRepository;)V

    return-void
.end method


# virtual methods
.method public Content(Landroidx/compose/runtime/Composer;I)V
    .locals 10

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x63b4ce34

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x7f141b30

    invoke-static {p1, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x622e629f

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->callStateRepository:Lcom/android/settings/network/telephony/CallStateRepository;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/CallStateRepository;->isInCallFlow()Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v4, 0x38

    invoke-static {v0, v3, p1, v4}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    const v0, 0x622e6327

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->repository:Lcom/android/settings/network/telephony/VoNrRepository;

    if-eqz v0, :cond_1

    iget-object v6, v0, Lcom/android/settings/network/telephony/VoNrRepository;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->subscriptionsChangedFlow(Landroid/content/Context;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    new-instance v8, Lcom/android/settings/network/telephony/VoNrRepository$isVoNrEnabledFlow$$inlined$map$1;

    invoke-direct {v8, v6, v0}, Lcom/android/settings/network/telephony/VoNrRepository$isVoNrEnabledFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/network/telephony/VoNrRepository;)V

    const/4 v6, -0x1

    invoke-static {v8, v6}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    new-instance v8, Lcom/android/settings/network/telephony/VoNrRepository$isVoNrEnabledFlow$2;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lcom/android/settings/network/telephony/VoNrRepository$isVoNrEnabledFlow$2;-><init>(Lcom/android/settings/network/telephony/VoNrRepository;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, v8}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    move-result-object v0

    sget-object v6, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v0, v6}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v0, v3}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v0, v3, p1, v4}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, p1}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v0

    :cond_4
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v0, v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v8, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController$Content$1;

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/internal/ContextScope;

    move-object v0, v8

    move-object v1, p1

    move-object v3, v5

    move-object v5, v6

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController$Content$1;-><init>(Landroidx/compose/runtime/Composer;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/internal/ContextScope;Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;)V

    invoke-static {v8, p1, v7}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceKt;->SwitchPreference(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController$Content$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController$Content$2;-><init>(Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 8

    iget-object p0, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->repository:Lcom/android/settings/network/telephony/VoNrRepository;

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    iget v1, p0, Lcom/android/settings/network/telephony/VoNrRepository;->subId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/network/telephony/VoNrRepository;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v4

    const-wide/32 v6, 0x80000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] has5gCapability: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VoNrRepository"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/telephony/VoNrRepository;->carrierConfigManager:Landroid/telephony/CarrierConfigManager;

    const-string v2, "vonr_enabled_bool"

    const-string v4, "vonr_setting_visibility_bool"

    const-string v5, "carrier_nr_availabilities_int_array"

    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {p0, v6, v1}, Lcom/android/settings/network/telephony/CarrierConfigManagerExtKt;->safeGetConfig(Landroid/telephony/CarrierConfigManager;Ljava/util/List;I)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    if-eqz p0, :cond_3

    array-length p0, p0

    if-nez p0, :cond_2

    move p0, v3

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    xor-int/2addr p0, v3

    goto :goto_2

    :cond_3
    move p0, v0

    :goto_2
    if-eqz p0, :cond_4

    move p0, v3

    goto :goto_4

    :cond_4
    :goto_3
    move p0, v0

    :goto_4
    if-ne p0, v3, :cond_5

    goto :goto_5

    :cond_5
    move v3, v0

    :goto_5
    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    const/4 v0, 0x2

    :goto_6
    return v0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public final init(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->init$default(Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;ILcom/android/settings/network/telephony/VoNrRepository;ILjava/lang/Object;)V

    return-void
.end method

.method public final init(ILcom/android/settings/network/telephony/VoNrRepository;)V
    .locals 1

    const-string v0, "repository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->subId:I

    iput-object p2, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->repository:Lcom/android/settings/network/telephony/VoNrRepository;

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/spa/preference/ComposePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/spa/preference/ComposePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/spa/preference/ComposePreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
