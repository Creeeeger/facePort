.class public final Lcom/android/settings/network/telephony/MobileNetworkSwitchController;
.super Lcom/android/settings/spa/preference/ComposePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B+\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\r\u0010\r\u001a\u00020\u000eH\u0017\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0010\u001a\u00020\u000cH\u0016J\u000e\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000c\u0010\u0012\u001a\u00020\u0013*\u00020\u0003H\u0002R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014\u00b2\u0006\u000c\u0010\u0015\u001a\u0004\u0018\u00010\u0013X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0016\u001a\u00020\u0013X\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/android/settings/network/telephony/MobileNetworkSwitchController;",
        "Lcom/android/settings/spa/preference/ComposePreferenceController;",
        "context",
        "Landroid/content/Context;",
        "preferenceKey",
        "",
        "subscriptionRepository",
        "Lcom/android/settings/network/telephony/SubscriptionRepository;",
        "subscriptionActivationRepository",
        "Lcom/android/settings/network/telephony/SubscriptionActivationRepository;",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/SubscriptionRepository;Lcom/android/settings/network/telephony/SubscriptionActivationRepository;)V",
        "subId",
        "",
        "Content",
        "",
        "(Landroidx/compose/runtime/Composer;I)V",
        "getAvailabilityStatus",
        "init",
        "isVisible",
        "",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core",
        "checked",
        "changeable"
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
.field private subId:I

.field private final subscriptionActivationRepository:Lcom/android/settings/network/telephony/SubscriptionActivationRepository;

.field private final subscriptionRepository:Lcom/android/settings/network/telephony/SubscriptionRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/SubscriptionRepository;Lcom/android/settings/network/telephony/SubscriptionActivationRepository;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/SubscriptionRepository;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/SubscriptionRepository;Lcom/android/settings/network/telephony/SubscriptionActivationRepository;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/SubscriptionRepository;Lcom/android/settings/network/telephony/SubscriptionActivationRepository;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionActivationRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/spa/preference/ComposePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->subscriptionRepository:Lcom/android/settings/network/telephony/SubscriptionRepository;

    iput-object p4, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->subscriptionActivationRepository:Lcom/android/settings/network/telephony/SubscriptionActivationRepository;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->subId:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/SubscriptionRepository;Lcom/android/settings/network/telephony/SubscriptionActivationRepository;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    new-instance p3, Lcom/android/settings/network/telephony/SubscriptionRepository;

    invoke-direct {p3, p1}, Lcom/android/settings/network/telephony/SubscriptionRepository;-><init>(Landroid/content/Context;)V

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    new-instance p4, Lcom/android/settings/network/telephony/SubscriptionActivationRepository;

    invoke-direct {p4, p1}, Lcom/android/settings/network/telephony/SubscriptionActivationRepository;-><init>(Landroid/content/Context;)V

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/network/telephony/SubscriptionRepository;Lcom/android/settings/network/telephony/SubscriptionActivationRepository;)V

    return-void
.end method

.method private static final Content$lambda$2(Landroidx/compose/runtime/State;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method private static final Content$lambda$4(Landroidx/compose/runtime/State;)Z
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

.method public static final synthetic access$Content$lambda$2(Landroidx/compose/runtime/State;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->Content$lambda$2(Landroidx/compose/runtime/State;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$Content$lambda$4(Landroidx/compose/runtime/State;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->Content$lambda$4(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getSubId$p(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->subId:I

    return p0
.end method

.method public static final synthetic access$getSubscriptionActivationRepository$p(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)Lcom/android/settings/network/telephony/SubscriptionActivationRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->subscriptionActivationRepository:Lcom/android/settings/network/telephony/SubscriptionActivationRepository;

    return-object p0
.end method

.method private final isVisible(Landroid/content/Context;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->subscriptionRepository:Lcom/android/settings/network/telephony/SubscriptionRepository;

    iget-object v0, v0, Lcom/android/settings/network/telephony/SubscriptionRepository;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->getSelectableSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->subId:I

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroid/telephony/SubscriptionInfo;

    const/4 p0, 0x0

    if-nez v1, :cond_2

    return p0

    :cond_2
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->requireSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->canDisablePhysicalSubscription()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p0, 0x1

    :cond_4
    return p0
.end method


# virtual methods
.method public Content(Landroidx/compose/runtime/Composer;I)V
    .locals 8

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x532f727e

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x6e4d3942

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->isVisible(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$Content$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$Content$2;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void

    :cond_2
    const v0, 0x6e4d3983

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->subscriptionRepository:Lcom/android/settings/network/telephony/SubscriptionRepository;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->subId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/SubscriptionRepository;->isSubscriptionEnabledFlow(I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p1, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v1, 0x0

    const/16 v3, 0x38

    invoke-static {v0, v1, p1, v3}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    const v0, 0x6e4d3a27

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->subscriptionActivationRepository:Lcom/android/settings/network/telephony/SubscriptionActivationRepository;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/SubscriptionActivationRepository;->isActivationChangeableFlow()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p1, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1, p1, v3}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_5

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, p1}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v0

    :cond_5
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v0, v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$Content$3;

    move-object v5, v0

    check-cast v5, Lkotlinx/coroutines/internal/ContextScope;

    move-object v0, v7

    move-object v1, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$Content$3;-><init>(Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/internal/ContextScope;Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)V

    invoke-static {v7, p1, v6}, Lcom/android/settingslib/spa/widget/preference/MainSwitchPreferenceKt;->MainSwitchPreference(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$Content$4;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$Content$4;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

    return p0
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
    .locals 0

    iput p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->subId:I

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
